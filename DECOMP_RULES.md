# Règles de décompilation (local, jamais poussé)

Ce fichier est un **résumé actionnable**, pas un journal -- `SESSION_NOTES.md`
reste la trace chronologique complète (rounds, tentatives échouées, détail
des diffs). Celui-ci extrait les règles réutilisables, organisées par sujet,
pour qu'on n'ait plus à relire 800+ lignes de notes pour savoir "c'est quoi
déjà l'histoire du masque `& 0xFFFF` ?". Mets-le à jour à chaque round qui
découvre une règle généralisable -- pas chaque tentative, seulement ce qui
survit à plus d'un cas.

Rappel de contexte permanent : ce dépôt (`fomt-decomp`, clone de
`StanHash/fomt`) est un chantier strictement interne. `origin` a une URL de
push volontairement cassée (`DISABLED-local-only-see-CLAUDE-md`) --
**jamais** la restaurer, **jamais** `git push`, **jamais** de PR. Commits
locaux uniquement. Un seul agent actif à la fois sur ce dépôt sauf mention
explicite contraire (cf. le round 4, shape-hunting parallèle assumé).

## Discipline non négociable

- **Ne jamais commiter un match qui ne matche pas.** `make compare` doit
  passer bit-exact (`sha1sum -c fomt.sha1` réussi) avant TOUT commit
  touchant `src/`, `asm/`, ou `fomt.lds`.
- Toujours vérifier via un **rebuild propre**, pas juste le dernier `make`
  incrémental : `rm -rf build fomt.gba fomt.elf fomt.map && make compare`.
  Le coût est faible (~5-10s pour ce dépôt), donc pas de raccourci.
- Si une tentative ne converge pas : `git checkout -- <fichiers modifiés>`
  + suppression des nouveaux fichiers, PUIS reconfirmer `make compare`
  propre avant de documenter l'échec. Ne jamais laisser un état cassé,
  même temporairement, entre deux tentatives.
- Avant CHAQUE commit : `git status --short` en entier, pas seulement les
  fichiers qu'on pense avoir touchés. `git add -A -- <pathspec explicite>`
  ne stage pas fiablement les suppressions de fichiers hors du pathspec
  donné (bug vécu réellement : commit `3b2a40d`, fixé par `682e105`) --
  soit utiliser `git add -A` sans restriction (puis vérifier `git status`
  avant de commiter), soit lister explicitement CHAQUE fichier modifié/
  supprimé/ajouté.
- **Un seul agent actif sur ce dépôt à la fois**, sauf accord explicite
  (le round 4 a eu un "shape hunting" parallèle assumé sur un near-miss
  précis -- exception documentée, pas la norme). Si `git log`/`git status`
  montre une activité qu'on n'a pas soi-même produite : ne pas l'écraser,
  vérifier qu'elle est bit-exact, documenter, continuer par-dessus.

## Anti-patterns de traduction C -> asm connus (agbcp, egcs ~1999)

agbcp est un compilateur faible, non-optimisant sur beaucoup d'axes : il
prend le C **très littéralement**. La leçon générale : quand un chemin
"idiomatique" en C moderne ne matche pas, essayer la forme la plus
**littérale** possible de ce que montre le désassemblage, même si elle
semble redondante ou dépréciée en C moderne.

### 1. Masque `& 0xFFFF` vs double-shift littéral

`x & 0xFFFF` compile en un **load de constante depuis le pool littéral**
(`ldr rX, [pc, #N]` + `ands`) -- 4 octets de plus qu'espéré si l'original
utilise en fait un double-shift (`lsls #16` puis `lsrs #16`, ou combiné
avec un shift supplémentaire type `lsrs #13` pour `(x & 0xFFFF) << 3`).
**Toujours écrire le double-shift littéralement** (`(x << 16) >> 16`,
ou `(x << 16) >> 13` pour un mask+shift combiné) plutôt que `x & mask`,
dès que le désassemblage montre une paire `lsls`/`lsrs` sans littéral.
Vu 2 fois, généralise (`func_0800736C` round 2, `func_0804E8F0`/
`func_0804E958` round 3).

### 2. Branches "mortes" redondantes -> `switch`/`default` explicite,
pas `if`/`else if`

Un original peut garder une comparaison **prouvablement redondante**
(deux tests sur la même valeur, ou un chemin par défaut qui ne peut
jamais être pris en pratique) parce que le C source l'écrivait
explicitement -- agbcp (compilateur faible) ne fait pas le value-numbering/
CSE qui l'éliminerait. Un `if (a == 1) {...} else if (a == 2) {...}`
moderne, lui, collapse ce genre de chemin. **Écrire un `switch` avec un
`default:` explicite** (même s'il est censé être inatteignable au
runtime) reproduit fidèlement ce genre de garde-fou défensif de l'original.
Vu 2 fois (`func_0800736C` round 2 -- non convergé sur ce point précis,
`func_0804E8F0`/`func_0804E958` round 3 -- convergé).

### 3. Type des paramètres appelés = ne JAMAIS deviner depuis une
pseudo-signature Ghidra sans vérifier le corps compilé

Ghidra peut afficher `franglais_scene_object_base_ctor(param_1)` (1 seul
argument visible) alors que la vraie fonction en prend 2 -- Ghidra devine
depuis les usages qu'IL a réussi à décompiler, pas depuis le vrai
prototype. **Si une fonction déjà portée dans ce dépôt est appelée comme
boîte noire (`ALIAS()`, jamais inspectée), et qu'un near-miss d'1
registre résiste à toute reformulation du CALLEUR, la cause est presque
toujours dans le VRAI prototype du CALLÉ, pas dans la forme du site
d'appel.** Solution qui a marché (round 4, `func_08004C54`) : désassembler
le `.o` DÉJÀ COMPILÉ et vérifié du callé (`build/src/scene.o` pour
`func_080007EC` alias `_._6AScene`) plutôt que deviner -- ça a révélé un
flag `in_chrg` caché (ABI ARM/CFront C++ pour les destructeurs
deleting/non-deleting) invisible dans toute pseudo-signature Ghidra.
**Règle pratique : avant de shape-hunt un near-miss d'1 registre sur un
appel à une fonction déjà `ALIAS()`ée dans ce dépôt, désassembler le
`.o` compilé de cette fonction callée EN PREMIER**, pas en dernier
recours après 10 variantes du côté appelant.

### 4. Ordre des instructions = ordre des statements C, littéralement

Confirmé dès le round 1 (`func_0805E6CC`) et jamais contredit depuis :
écrire le C dans le MÊME ORDRE que les lectures/calculs/écritures visibles
dans le désassemblage original, même quand un ordre différent serait
sémantiquement équivalent. agbcp ne réordonne quasiment rien -- le
statement order EST l'instruction order, décalé par le register
allocation.

## Classe de problème "pression de registres" -- ne PAS re-tenter sans
gros budget

**4 échecs sur 4 tentatives** à ce jour sur cette classe précise :
`func_0805E790` (round 1, re-tenté et toujours échoué round 6 malgré un
shape-hunting systématique -- voir `SESSION_NOTES.md` round 6, le blocage
est descendu à une décision précise d'allocation de registre pour UNE
seule variable (le paramètre pointeur de sortie, évincé vers `ip` par
l'original dès la 1re instruction, jamais reproduit malgré une forme C
jugée par ailleurs correcte), `func_0800736C` (round 2), `func_0804E4AC`
(round 3, `DrawGlyphAt`). Signature du problème : une fonction avec
**beaucoup de valeurs simultanément vivantes** (dépilement de liste
libre, parcours de section déroulée, ou ici un blit conditionnel à 4
tuiles avec flags), qui sature `r4`-`r7` + `r8`/`sb`/`sl`/`ip`, et où
CHAQUE reformulation C testée garde une valeur de moins en vie
simultanément que l'original à un point donné -- ce qui n'est pas
récupérable juste en relisant l'ordre des instructions, il faut deviner
la forme EXACTE de l'expression C source pour forcer le même pic de
pression de registres. **Ne pas re-tenter cette classe sans budget de
plusieurs rounds dédiés.** Signal d'alerte AVANT de commencer une
tentative : si le désassemblage utilise déjà `r8`+`sb`+`sl`+`ip`
simultanément dans le corps (pas juste au prologue/épilogue), c'est
probablement cette classe.

À l'inverse, la classe "boucle simple, peu de valeurs vivantes,
délègue le gros du travail à un appel `bl` opaque" (les 2 boucles
`DrawString`) matche du premier ou deuxième coup à chaque fois essayée.
**Ne pas supposer qu'une famille entière de fonctions documentée dans
un seul fichier de doc (`docs/VWF.md` etc.) a la même difficulté** --
`DrawString` (boucle) et `DrawGlyphAt` (blit multi-tuiles) sont dans la
même section de doc mais dans deux classes de difficulté totalement
différentes.

## Classe de problème "ABI partagée entre `bl`" -- INFAISABLE en C,
ne pas re-tenter (constat, pas un échec de tentative)

Round dédié `Unpack` (`0x080D102C`, worktree `parallel-1`) : contrairement
à la classe "pression de registres" ci-dessus (qui reste un problème DE
FORME C, récupérable avec assez de budget), cette classe est un problème
DE NATURE -- aucune reformulation C, quel que soit le budget, ne peut
produire la séquence observée, parce qu'elle **viole la convention
d'appel elle-même**, pas juste la forme d'une expression.

Constat sur `Unpack` (`0x080D102C`) et tout son arbre d'appel
(`func_080D10F0`, `func_080D1186`, `func_080D11A4`/`sub_080D11B8`
= lecteur de bits bit-à-bit, `sub_080D1224`/`129A`/`12EC`/`139C`/`1204`
= les 5 modes de corps, `func_080D1518`/`1548`/`1564`/`1574` = les 4
post-filtres, tous dans `asm/code_809E804.s` autour de la ligne 103423) :
l'état du lecteur de bits (`buf` en r2, `avail` en r3) est **passé par
valeur dans r2/r3 à travers une longue chaîne de `bl` vers des fonctions
distinctes** (`Unpack` -> `func_080D11A4` -> `func_080D10F0` ->
`sub_080D1224` etc.), SANS AUCUN rechargement entre deux `bl` consécutifs
qui utilisent tous les deux ce même état. Exemple concret vérifié :
`sub_080D1224` (mode de corps 0) commence directement par `bl
func_080D14EC` puis `bl func_080D11A4`, tous deux consommant `r2`/`r3`
comme lecteur de bits déjà initialisé -- ces registres n'ont pourtant été
positionnés que dans `Unpack`, plusieurs `bl` plus haut, et rien dans
`sub_080D1224` ne les recharge depuis la mémoire ou un registre
callee-saved. Or `r0`-`r3` sont **caller-saved dans TOUTE convention
d'appel ARM/Thumb standard** (APCS, AAPCS, et la convention utilisée par
agbcp lui-même pour tout code qu'il génère) -- un compilateur C, quelle
que soit la forme du code source, DOIT toujours supposer que `r0`-`r3`
sont détruits par un appel `bl` et les recharger avant réutilisation.
Voir la même valeur cette nuit-là côté dépôt patch (docs, section
"Pourquoi pas la décompilation Ghidra directe" de
`docs/BACKGROUNDS_INVENTORY.md` du dépôt `harvest-moon-franglais`) : "de
l'assembleur Thumb écrit à la main, optimisé, pas une sortie de
compilateur" -- ce round confirme ce constat de façon INDÉPENDANTE et
plus précise (identification du mécanisme exact de la violation, pas
seulement l'observation générale que Ghidra échoue dessus).

**Conclusion : `Unpack` et tout son arbre d'appel ne sont PAS des cibles
de décompilation C valides.** Ce n'est pas "pas encore réussi", c'est
"structurellement impossible" -- toute tentative de porter une de ces
fonctions comme fonction C libre appelant les autres via `bl` produirait
nécessairement un code différent (rechargements de `r2`/`r3` que
l'original n'a pas), donc jamais bit-exact. Seule option théorique
(non tentée, jugée hors scope d'un round de décompilation C) : porter le
bloc entier comme un unique gros morceau d'assembleur inline, ce qui ne
serait qu'une recopie du `.s` existant sans valeur ajoutée. **Retirer
`Unpack` de la liste des cibles priorisées** (voir en fin de fichier) --
ne pas re-tenter sans une raison nouvelle et spécifique de penser que ce
diagnostic était faux.

Signal d'alerte généralisable pour de futures cibles : avant de commencer
une tentative sur une fonction qui appelle plusieurs `bl` vers d'autres
fonctions non triviales, vérifier si un registre `r0`-`r3` est
**réutilisé après un `bl` sans rechargement visible entre-temps**, à la
fois dans l'appelant ET dans le corps du callé juste après son propre
prologue. Si oui, c'est cette classe -- pas la peine de tenter une
reformulation C, le problème n'est pas la forme du source.

## Méthode de découpage d'un fichier `asm/*.s` monolithique

1. `grep -n "thumb_func_start"` pour trouver la ligne de la fonction
   cible ET celle de la fonction SUIVANTE.
2. `sed` : tout jusqu'à (pas inclus) `thumb_func_start` de la cible reste
   sous le nom de fichier d'origine ; tout à partir de (inclus)
   `thumb_func_start` de la fonction SUIVANTE part dans un nouveau
   fichier nommé d'après l'adresse de CETTE fonction suivante, avec le
   header standard (`.INCLUDE "asm/macro.inc"` / `.SYNTAX UNIFIED`)
   prepend. Le corps de la fonction cible elle-même est purement
   supprimé des deux fichiers (il devient le `.cc`).
3. Écrire le port dans `src/code_<ADDR>.cc`.
4. Insérer LES DEUX nouvelles entrées dans `fomt.lds`, à l'endroit exact
   où était l'unique entrée d'origine, dans l'ordre :
   `asm/code_OLD.o(.text); src/code_ADDR.o(.text); asm/code_NEXT.o(.text);`
5. `rm -rf build fomt.gba fomt.elf fomt.map && make compare`.
6. Si la cible est la TOUTE PREMIÈRE fonction d'un fichier existant déjà
   isolé (cas `func_0804E958`/`func_08004C54`) : il n'y a pas de "partie
   avant" à garder, tout le fichier devient soit le nouveau fichier
   asm (fonction suivante renommée d'après sa propre adresse), soit
   disparaît entièrement si la fonction cible était seule dans le
   fichier.
7. **Piège `objdump -bbinary`** : `asmdiff.sh` appelle
   `arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb` SANS
   `--adjust-vma=0x08000000`. Sans ce flag, une adresse ROM réelle passée
   en `--start-address` sort silencieusement une sortie VIDE (hors plage
   pour `-bbinary`, pas d'erreur). Toujours ajouter
   `--adjust-vma=0x08000000` à la main.

## Vérifier taille puis contenu, dans cet ordre

1. `arm-none-eabi-readelf -S build/src/code_ADDR.o | grep -A1 '\.text '`
   -- comparer la taille `.text` à `next_addr - this_addr`. Si ça ne
   matche pas, la STRUCTURE du C diverge (embranchement manquant/en trop,
   littéral vs shift, etc.) -- pas la peine de comparer le contenu tant
   que la taille diverge, ça va juste montrer une cascade de décalages
   sans intérêt.
2. Une fois la taille bonne : diffs de désassemblage BORNÉS à la taille
   réelle de la fonction (`--start-address=X --stop-address=X+size`), pas
   une fenêtre plus large qui inclurait le contenu (différent) de la
   fonction suivante si un décalage résiduel existe ailleurs dans le
   fichier objet global.

## Itération rapide sans passer par le link complet

Pour chasser un near-miss d'1-2 registres sur UNE fonction, le cycle
`make compare` complet (~5-10s) est cher répété 10+ fois. Utiliser un
harnais direct compilateur+assembleur, sans lien :

```bash
arm-none-eabi-cpp -I tools/agbcc/include -I tools/libagbc++ \
  -I tools/libsix/include -iquote . -iquote include -Wno-trigraphs \
  -fno-exceptions "$FILE" \
  | tools/agbcc/bin/agbcp -quiet -fno-exceptions -fno-rtti \
      -fvtable-thunks -g -mthumb-interwork -Wimplicit -Wparentheses \
      -Werror -O2 -fhex-asm -o /tmp/qt.s
arm-none-eabi-as -I tools/agbcc/include -I . -I include \
  -mcpu=arm7tdmi -mthumb-interwork /tmp/qt.s -o /tmp/qt.o
arm-none-eabi-objdump -d -Mforce-thumb /tmp/qt.o
```

~1s/itération au lieu de ~10s. **Ne remplace pas** la vérification finale
`make compare` bit-exact avant tout commit -- sert uniquement à
converger plus vite pendant la phase de tâtonnement.

**Piège vécu (round 6) : `/tmp/qt.s`/`/tmp/qt.o` ne sont PAS isolés par
session.** Une première itération a silencieusement lu un `/tmp/qt.s`
laissé par un autre processus sans rapport (désassemblage de 5 fonctions
totalement étrangères au `.cc` d'entrée, aucune erreur signalée).
**Toujours rediriger vers un chemin unique à la session** (répertoire de
scratch dédié) plutôt que les chemins nus `/tmp/qt.s`/`/tmp/qt.o` de la
recette ci-dessus -- `/tmp` est partagé avec tout ce qui tourne par
ailleurs sur la machine.

## Appel explicite de destructeur sur un membre polymorphe : toujours qualifier

Une classe qui POSSÈDE (pas juste pointe) un membre d'un type ayant un
destructeur `virtual`, et dont le désassemblage montre un `bl` DIRECT
vers le symbole mangle du destructeur du membre (pas un dispatch virtuel
via SA PROPRE vtable) : le code C++ source doit utiliser la forme
**qualifiée** de l'appel explicite de destructeur (`membre.Base::~Base()`
via un pointeur `((Base*)ptr)->Base::~Base()`), **jamais** la forme nue
(`membre.~Base()` / `ptr->~Base()`). Vécu round 6 (`func_08010158`) :
`((AScriptEngine*)(self+8))->~AScriptEngine()` (forme nue, C++ valide)
compile en un VRAI appel virtuel (`ldr` la vtable du membre embarqué à
son offset propre, `ldr` le slot 2, `bl _call_via_r2`) parce que
`AScriptEngine` a un destructeur `virtual` -- alors que l'original
appelle `_._13AScriptEngine` directement, sans aucune indirection, la
destruction statique d'un membre de type connu n'ayant jamais besoin de
dispatch virtuel. Corrigé en qualifiant :
`((AScriptEngine*)(self+8))->AScriptEngine::~AScriptEngine();`.

## Conventions de nommage

- **Les fonctions portées gardent leur symbole `func_ADDR` comme nom
  canonique visible des appelants asm**, via `EC RetType func_ADDR(...)
  ALIAS(nom_semantique);` -- PAS en renommant le symbole `func_ADDR`
  directement, qui casserait tous les `bl func_ADDR` encore présents
  dans les fichiers `asm/*.s` non portés (potentiellement des dizaines
  de sites d'appel par fonction, cf. `func_0804E8F0`/`func_0804E958`).
  La vraie définition (le corps) vit sous le nom sémantique choisi (cf.
  règle "point de vue vanilla" ci-dessous) ; `func_ADDR` devient un
  simple alias de compatibilité, sans corps, sans coût de code généré
  (`ALIAS()` ne fait qu'ajouter une entrée dans la table des symboles,
  vérifié `make compare` toujours bit-exact après renommage).
- **Point de vue vanilla, jamais de nom/jargon lié à notre projet de
  patch dans un symbole** (correction round 5, appliquée à
  `franglais_vwf_draw_string_plain`/`_recolor` -> `DrawString`/
  `DrawStringRecolor`) : ce dépôt (`fomt-decomp`) documente le jeu
  ORIGINAL, pas notre patch `franglais`. Un nom de symbole doit décrire
  le rôle générique du moteur vanilla, dans le style déjà établi par
  `StanHash/fomt` lui-même (CamelCase C++, ex. `AScene::~AScene()`,
  `DrawGlyphAt`) -- jamais `franglais_...`, jamais notre vocabulaire
  interne au patch (`vwf` par exemple est NOTRE terme pour désigner ce
  système, pas forcément celui du jeu ou du projet `fomt`). Raison :
  garder ouverte l'option de proposer un jour ces matchs en amont vers
  `StanHash/fomt` (pas décidé, mais l'option ne doit pas être fermée par
  un choix de nom prématuré). Le commentaire d'en-tête peut toujours
  pointer vers `docs/VWF.md` etc. du dépôt patch comme SOURCE de
  l'analyse -- c'est la provenance de la compréhension, pas le nom du
  symbole lui-même, qui doit rester neutre.
- **Choix C libre vs méthode C++ = refléter la structure RÉELLE du
  binaire, jamais une préférence de style uniforme** (règle round 5) :
  si le désassemblage montre un vrai objet (`this` en r0, vtable,
  héritage -- comme `func_08004C54`/`AScene`), porter la fonction comme
  MÉTHODE de la classe réelle dans les `.hh` du dépôt (`include/*.hh`),
  pas comme fonction C libre qui bricole une vtable à la main pour
  produire les mêmes octets -- ça suit la convention déjà posée par
  `fomt` et généralise souvent gratuitement à des fonctions sœurs
  (ex. la famille de ~24 destructeurs apparentés à `func_08004C54`). Si
  la fonction est du C procédural pur dans l'original (pas de `this`,
  pas de vtable -- utilitaires bas niveau type décompression/rendu,
  comme `DrawString`/`DrawStringRecolor` qui prennent `dims, dest, x, y,
  s` en arguments plats), rester en C simple -- inventer une structure
  OO qui n'existe pas dans le binaire serait deviner, contraire à la
  discipline du dépôt (cf. règle "ne jamais deviner un type/prototype
  sans vérifier le corps compilé" plus haut).
- **Quand une fonction fraîchement portée appelle une fonction DÉJÀ
  portée (déjà matchée dans ce dépôt), référencer son nom sémantique,
  pas son alias `func_ADDR`** -- ça rend le corps du call-site
  auto-documenté (on voit "j'appelle `DrawString`" au lieu de "j'appelle
  `func_0804E8F0`, va relire le commentaire d'en-tête pour savoir ce que
  c'est"). Ne s'applique évidemment qu'aux fonctions déjà portées avec
  un corps réel dans ce dépôt -- tant que le callé est encore en asm
  (cas de `func_0804E4AC`/`func_0804E5AC`, `DrawGlyphAt`, appelés par
  les deux `DrawString`), il n'y a pas de nom sémantique "réel" à
  référencer, `func_ADDR` reste le seul choix honnête.
- **Variables locales** : nommer selon la sémantique comprise dès qu'elle
  est claire (`right_edge_x`, `glyph_kind` plutôt que `right`, `kind` --
  ou pire, les noms bruts `uVar4`/`param_1` que Ghidra produirait). Pas
  besoin d'attendre une doc externe qui "confirme" formellement le nom
  si le rôle est évident depuis le call site et le désassemblage.
- **Commentaire d'en-tête obligatoire sur chaque fichier `src/code_ADDR.cc`
  ou `src/*.cc` nouvellement porté** : nom sémantique, rôle, pointeur
  vers la section de doc du dépôt patch (`docs/VWF.md`, `docs/ENGINE.md`,
  etc.) qui a établi ce nom/rôle. Le nom canonique du symbole ne portant
  pas l'info sémantique (cf. point ci-dessus), le commentaire est
  l'unique endroit où cette info vit dans ce dépôt.
- Champs de struct dont le rôle reste incertain : garder le préfixe
  `unk_` (ou le type/nom Ghidra `undefined4`/`DAT_ADDR` traduit en
  `unk_ADDR`), ne pas inventer un nom qui suggère une certitude non
  acquise.

## Historique des matchs confirmés (voir `SESSION_NOTES.md` pour le détail)

| fonction | rôle | round | commit |
|---|---|---|---|
| `func_0805E6CC` | `DefinedSprite`, constructeur d'archive | 1 | `648d15f` |
| `DrawString` (`func_0804E8F0`) | boucle DrawString, police normale | 3, renommé 5 | `ecef66e`, `48ebfa3` + round 5 |
| `DrawStringRecolor` (`func_0804E958`) | boucle DrawString, recolorée | 3, renommé 5 | `3b2a40d`, `48ebfa3` + round 5 |
| `func_08004C54` | destructeur dérivé, enregistrement #12 de la table de scène | 4 | `8ecf106` |
| `func_080E09B0` | destructeur dérivé "vide" (pas de vtable propre, tail-forward pur vers `func_080007EC`) | 5 | (voir `git log`) |
| `func_08010158` | destructeur dérivé, classe construite par `func_080D3EF4` (0x554 octets, membre `ScriptEngine` à +8) -- variante SIMPLE (appels directs, pas de dispatch virtuel) de la famille "riche" | 6 | `a85f4b1` |
||||||| 43c9148
| `func_0800371C`, `func_08004BDC`, `func_080059D0`, `func_080070A4` | famille "riche" : destructeur dérivé + teardown conditionnel d'un champ enfant à `self+4` | 6 | `ef58287` |

## Mécanique de découpage d'une section `.text.code_ADDR` (linkonce/COMDAT)

Contrairement à un fichier `asm/*.s` monolithique en `.text` implicite,
`asm/code_linkonce.s` a QUELQUES (4, pas une par fonction) `.section
".text.code_ADDR"` explicites regroupant chacune plusieurs fonctions --
le découpage suit la MÊME méthode générale que le fichier monolithique
(cf. section dédiée plus haut), sauf sur un piège spécifique :

**Un wildcard `*(.gnu.linkonce.t.NOM_MANGLE)` dans `fomt.lds`, placé
juste après une entrée `asm/code_linkonce.o(.text.code_ADDR)`, N'EST
PAS FORCÉMENT INERTE.** Round 5 (`func_080E09B0`) : ce wildcard matchait
en réalité une vraie instanciation de template C++ de ~60 octets,
compilée depuis un fichier `.cc` DÉJÀ porté ailleurs dans le dépôt
(`src/script_engine.cc` ici), et occupant un vrai gap d'adresses juste
AVANT la section `.text.code_ADDR` suivante (pas après celle qu'on
découpe). Symptôme si on se trompe d'ordre : `make compare` échoue avec
UN GROS bloc de diffs contigu (pas un near-miss de quelques octets) qui
démarre PILE à l'adresse de la fonction découpée et s'arrête pile à la
frontière de la section suivante -- diagnostic rapide : comparer
`fomt.map` (adresse réellement assignée à l'objet fraîchement séparé)
à l'adresse attendue (son nom `code_ADDR`) ; si elles ne correspondent
pas, c'est un problème d'ORDRE des entrées dans `fomt.lds`, pas un
problème de contenu du `.s`/`.cc`. **Règle pratique : les nouvelles
entrées `src/code_ADDR.o(.text)` / `asm/code_ADDR_suivant.o(.text)`
doivent être insérées immédiatement après l'entrée
`asm/code_linkonce.o(.text.code_ADDR_section)` d'origine, AVANT tout
wildcard `*(.gnu.linkonce.t...)` qui suivait déjà cette entrée dans le
`fomt.lds` d'origine** -- ne jamais supposer qu'un tel wildcard est un
vestige inerte sans avoir vérifié son adresse assignée dans `fomt.map`
sur un build propre AVANT de toucher au fichier.

## La famille "riche" des ~37 destructeurs à teardown d'enfant (round 6)

Layout désormais caractérisé (voir commit `ef58287`, 4 matchs) : `self+4`
contient un pointeur brut vers un objet enfant (alloué par
`__builtin_new`, ex. 0x1A0 octets pour la famille de `func_08004BDC`,
construit par `func_080041DC`). **Le pointeur de dispatch de cet enfant
vit à l'offset +4 DE LUI-MÊME, pas +0** -- confirmé en lisant
`func_080041DC` : elle appelle `func_08008574` sur l'objet neuf AVANT de
stamper `vtable_unk_080E5A5C` à `[r7, #4]`, cohérent avec un sous-objet
non-polymorphe de 4 octets en tête (offset 0) suivi de la partie
polymorphe (vtable à +4) -- typique d'un héritage multiple où la base
polymorphe n'est pas listée en premier. Le rôle exact de ce sous-objet
de 4 octets (`func_08008574`) n'est PAS caractérisé -- **ne pas
inventer sa classe C++** : porter ces destructeurs comme pointeur brut
(`void**`/arithmétique d'adresses), pas comme appel de méthode C++,
exactement le corps utilisé dans `src/code_0800371C.cc` (et ses 3
soeurs) :
```c
void *child = *(void **)((char *)self + 4);
if (child != nullptr) {
    void **vt = *(void ***)((char *)child + 4);
    void (*fn)(void *, int) = (void (*)(void *, int))vt[2];
    fn(child, 3);
}
```
Toutes les fonctions de cette famille partagent EXACTEMENT ce corps,
seule la constante `vtable_unk_ADDR` propre change -- vérifié bit-exact
sur les 4 premiers cas via harnais rapide (compilateur+assembleur, sans
lien) puis `make compare` en rebuild propre (x2).

**Scan complet des 47 sites `bl func_080007EC`** (script en
`/tmp/.../scratchpad/callsites.txt` de la session round 6, non commité,
à refaire au besoin) : 37 sur 47 matchent ce patron "riche" (les 10
autres restent la variante "vide" de `func_08004C54`/`func_080E09B0`,
ou un autre patron pas encore vu). Triés par adresse croissante :
0800371C, 08004BDC (**4 premiers, matchés round 6**), 080059D0,
080070A4, puis 080521BC, 08057E1C, 0805CEFC, 0805E658, 0805FD04,
08069E58, 0806D918, 0806EA00, 080709D8, 0807561C, 0807DD68, 0807EE44,
0807F5B0, 0808048C, 08080DC4, 08081A70, 08082144, 08083AEC, 08085528,
080881AC, 0808AB68, 0808C59C, 0808ED08, 08090E84, 080925C4, 080931E0,
08093A88, 0809A518, 080B3C0C, 080BC8C0, 080C0D44, 080C7ED0, 080E41B0.
**Round 6 (worktree w3) a pris les 4 premiers par adresse croissante** ;
un worktree parallèle (w7) travaille la seconde moitié -- pas de
recoupement possible, worktrees git séparés.

## Prochaines cibles priorisées (voir `SESSION_NOTES.md` round 4-6 pour le détail complet)

1. ~~`func_080E09B0`~~ -- matché round 5.
2. La famille de ~22 destructeurs "plus riches" restants (vtable +
   teardown d'enfant) -- round 6 a montré que TOUS ne partagent pas
   forcément le shape "appel virtuel" initialement supposé
   (`func_08010158` s'est avéré une 3e variante, appels DIRECTS
   uniquement, matchée du premier coup) : **re-scanner chaque site avant
   de le classer "virtuel/dur"**, certains matcheront aussi facilement
   que `func_08010158`. Pour ceux qui montrent vraiment un dispatch
   virtuel sur le champ enfant (`ldr [r1,#4]; ldr [r0,#8]; bl
   _call_via_r2`), toujours **ne pas deviner le layout du champ enfant à
   l'offset +4 avant de le caractériser côté dépôt patch** (Ghidra sur
   2-3 exemples).
||||||| 43c9148
2. La famille de ~23 destructeurs "plus riches" (vtable + teardown
   d'enfant via appel virtuel) -- **ne pas deviner le layout du champ
   enfant à l'offset +4 avant de le caractériser côté dépôt patch**
   (Ghidra sur 2-3 exemples).
2. ~~4 premiers de la famille "riche"~~ -- matchés round 6
   (`func_0800371C`, `func_08004BDC`, `func_080059D0`, `func_080070A4`,
   commit `ef58287`). **Reste ~33 sites de la même famille** (liste
   complète ci-dessus) -- même corps exact, changer seulement la
   constante `vtable_unk_ADDR` par site ; mécanique de découpage `.s`
   déjà rodée sur 4 exemples (dont un découpage triple dans un même
   fichier, `asm/code_08004C68.s` -- attention au piège vécu round 6 :
   NE PAS oublier une fonction non-portée intercalée entre deux
   découpages dans le même fichier, cf. `func_080070D4` oubliée puis
   retrouvée via `undefined reference` au link).
3. Reste ouvert depuis les rounds 1-3 : la fonction documentée
   `franglais_transition_ctl_query` côté dépôt patch (`0x08050DF0`,
   NdR : ce nom-là vient de `docs/*.md` du dépôt patch, uniquement comme
   pointeur de recherche -- si/quand cette fonction est portée ICI,
   lui donner un nom neutre côté vanilla, pas ce nom-là littéralement,
   cf. règle "point de vue vanilla" ci-dessus), table de dispatch
   script (`0x0803F900`), `DrawGlyphAt`/`DrawGlyphAt`-recolor (classe
   "pression de registres", cf. section dédiée ci-dessus -- pas sans
   gros budget), `docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
   `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`.
4. ~~`Unpack` (`0x080D102C`)~~ -- **retiré définitivement** de cette
   liste (round dédié worktree `parallel-1`) : classe "ABI partagée
   entre `bl`", structurellement infaisable en C, cf. section dédiée
   ci-dessus. Ne pas re-tenter.
||||||| 43c9148
4. `franglais_boot_fsm_run` (`func_08093364`, `asm/code_0805E760.s`) --
   la FSM de démarrage documentée dans `docs/ENGINE.md` (round 27 côté
   dépôt patch). Dimensionnée round 6 : 0x6F4 octets (~800 lignes de
   `.s`), prologue `push {r4,r5,r6,r7,lr}; mov r7,sl; mov r6,sb` --
   signature "pression de registres" identique à `DrawGlyphAt`/
   `func_0805E790`. **Pas tentée, même classe de difficulté, pas de
   budget dédié.**
