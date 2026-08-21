# Archive de décompilation (historique, familles, cibles)

Compagnon de `DECOMP_RULES.md` (lire ce dernier en premier -- discipline
et pièges de traduction s'appliquent à tout). Ce fichier-ci rassemble ce
qui ne sert que pour une famille de fonctions précise ou pour choisir la
prochaine cible : historique des matchs, récits complets des classes de
difficulté, listes de cibles avec statut à jour.

Créé en scindant `DECOMP_RULES.md` (qui avait atteint ~950 lignes, coûteux
à relire en entier à chaque round) -- voir `SESSION_NOTES.md` pour le
round qui a fait ce ménage. Le contenu ci-dessous a aussi été
**dédupliqué** : plusieurs sections de l'ancien fichier avaient fini par
contenir la même info répétée 3 à 5 fois (paragraphes réécrits round après
round sans jamais retirer la version précédente lors de merges "garder
les deux côtés"). Seule la version la plus à jour de chaque fait est
gardée ici.

## Historique des matchs confirmés (voir `SESSION_NOTES.md` pour le détail)

| fonction | rôle | round | commit |
|---|---|---|---|
| `func_0805E6CC` | `DefinedSprite`, constructeur d'archive | 1 | `648d15f` |
| `DrawString` (`func_0804E8F0`) | boucle DrawString, police normale | 3, renommé 5 | `ecef66e`, `48ebfa3` + round 5 |
| `DrawStringRecolor` (`func_0804E958`) | boucle DrawString, recolorée | 3, renommé 5 | `3b2a40d`, `48ebfa3` + round 5 |
| `func_08004C54` | destructeur dérivé, enregistrement #12 de la table de scène | 4 | `8ecf106` |
| `func_080E09B0` | destructeur dérivé "vide" (pas de vtable propre, tail-forward pur vers `func_080007EC`) | 5 | (voir `git log`) |
| `func_08010158` | destructeur dérivé, classe construite par `func_080D3EF4` (0x554 octets, membre `ScriptEngine` à +8) -- variante SIMPLE (appels directs, pas de dispatch virtuel) de la famille "riche" | 6 | `a85f4b1` |
| `func_0800371C`, `func_08004BDC`, `func_080059D0`, `func_080070A4` | famille "riche" : destructeur dérivé + teardown conditionnel d'un champ enfant à `self+4` | 6 | `ef58287` |
| `func_0809A518` | destructeur "riche" de la famille des ~37, 2 enfants (offset+4 MI, offset+8 plain) | 6 (w7) | `95a55f3` |
| `func_080C7ED0` | destructeur "riche", 1 enfant offset+4 (MI) | 6 (w7) | `e902a6c` |
| `func_080BC8C0` | destructeur "riche", 1 enfant offset+4 (MI) | 6 (w7) | `3f33b7d` |
| `func_080B3C0C` | destructeur "riche", 1 enfant offset+4 (MI) | 6 (w7) | `e5a8f43` |
| `func_080521BC`, `func_08057E1C`, `func_0805CEFC`, `func_0805E658`, `func_0805FD04`, `func_08069E58`, `func_0807561C`, `func_0807DD68`, `func_0807EE44`, `func_0807F5B0`, `func_0808048C` | destructeur "riche", 2 enfants (offset+4 MI, offset+8 plain) | 6 (w11) | commits successifs (voir `git log`) |
| `func_0806D918`, `func_0806EA00`, `func_080709D8` | destructeur "riche", 1 enfant offset+4 (MI) | 6 (w11) | commits successifs (voir `git log`) |
| `func_08080DC4`, `func_08081A70`, `func_08082144`, `func_08083AEC`, `func_08085528`, `func_080881AC`, `func_0808AB68`, `func_0808C59C`, `func_0808ED08`, `func_08090E84`, `func_080925C4`, `func_080931E0`, `func_08093A88` | destructeur "riche", 2 enfants (offset+4 MI, offset+8 plain), même corps que `func_0809A518` | 7 (w12) | `e1b1931`, `1f085cf`, `7c09c6d`, `0271566`, `91f7ebe`, `5b09238`, `0f8825f`, `3c6bf9f`, `7631bff`, `228b133`, `9b04a4d`, `d1cc3d2`, `ef78680` (1 commit/fonction) |
| `func_080C0D44` | destructeur "riche", 1 enfant offset+4 (MI) | 7 (w12) | `18e8b5e` |
| `func_080E41B0` | destructeur "riche", 2 enfants (offset+4 MI, offset+8 plain), **variante sans restamp de vtable propre** | 7 (w12) | `ae97047` |
| `func_08010F04`, `func_08010F1C` | getters `GameState` (bit `0x10` octet 0 ; champ 6 bits octet 3 bits[1:6]) -- complètent les 4 setters round 6 | 7 (w14) | (voir `git log`) |
| `func_08010F14` | getter `GameState` NON catalogué (7 bits à `P=2` du halfword `self+2`, adjacent au champ 5 bits de `func_08010F0C` sur le même mot `self+0`) -- ex-`.byte` bruts sans symbole, décodé et porté | 8 (w17) | `05e966f` |
| `func_0806EA6C`, `func_08007110`, `func_08005A3C` | getters `*(self+4)+OFFSET` sur les 3 familles de widgets de `func_08004C68` (saisie texte, confirmation, sélecteur) | 8 (w15) | `95de198`, `bbf7765`, `476d93c` |
| `func_08007078`, `func_0800598C`, `func_0806E9D8` | constructeurs de placement des mêmes 3 familles de widgets (stamp vtable, `operator new`, init opaque, stocke à `self+4`, `return self`) | 8 (w15) | `476d93c`, `9c50133` |
| `func_08008DB8` | wrapper `m4aSongNumStartOrChange` (troncature u16) | 8 (w15) | `b7e035a` |
| `func_0800711C` | accesseur pointeur+offset (`self + 0x461C`) NON catalogué, ex-`.byte` bruts juste après le pool littéral de `func_08007110` | 9 (w18) | `4329ae7` |
| `func_0800057C`, `func_08000580`, `func_08000584`, `func_08000590` | 4 fonctions NON cataloguées, ex-`.byte` bruts après `func_08000568` : 2 stubs placement-new (`operator new(size_t,void*)`/`new[]`), 2 thunks vers `operator new`/`delete` | 9 (w18) | `7fd2ab1` |
| `func_080099EC`, `func_08009A04`, `func_08009A2C`, `func_08009A38` | 4 fonctions NON cataloguées, ex-`.byte` bruts après `func_080099D4` : 2 constructeurs qui stampent des vtables déjà connues, 1 prédicat "sentinelle vide" assorti, 1 utilitaire sans rapport | 9 (w18) | `d417e87` |
| `func_080100F0`, `func_08010104`, `func_08010118`, `func_08010128`, `func_08010138`, `func_08010148`, `func_0801014C` | 7 accesseurs NON catalogués, ex-`.byte` bruts après `func_0801004C` : 6 lisent le global déjà connu `gUnk_0300040C`, 1 retourne une constante entière brute | 9 (w18) | `dc8fd26` |
| `func_08008A68` | teardown de `func_08008980` (registre du root object démarrage, `AgbMain`/`func_0801004C`) | 9 (w21) | `2bab4c4` |
| `func_0807EE14` | constructeur de placement, contrepartie du destructeur "riche" 2-enfants `func_0807EE44` déjà matché (`vtable_unk_080E7C4C`) : alloc+init opaque du champ MI à self+4, "move-in" du champ plain à self+8 depuis un out-param | 10 (w24) | `55821f1` |
| `func_0805218C`, `func_080755EC`, `func_0807DD38`, `func_0807F580`, `func_0808045C`, `func_08080D94`, `func_08081A40`, `func_08082114`, `func_0808AB38`, `func_0808C56C`, `func_0808ECD8`, `func_08090E54`, `func_080931B0`, `func_08093A58` | 14 sœurs de `func_0807EE14` (même forme exacte), une par site restant de la famille "riche" 2-enfants déjà cataloguée | 10 (w24) | `42960fa` |
| `func_080A3744` | 15e sœur de `func_0807EE14`, mais AUCUN destructeur stampant `vtable_unk_080E8278` trouvé dans le dépôt -- porté par pure similarité de forme | 10 (w24) | `16aac6b` |
| `func_080BC898`, `func_080C7EA8`, `func_080C0D1C` | 3 constructeurs de placement, variante 1-enfant (sans move-in), contreparties des destructeurs "riches" 1-enfant `func_080BC8C0`/`func_080C7ED0`/`func_080C0D44` déjà matchés | 10 (w24) | `3e23c90` |
| `func_08004C48` | constructeur de base sœur de `func_08004C54` (destructeur "riche" round 4), même vtable `vtable_unk_080E5A88` | 10 (w26) | `25ff995` |
| `func_080098DC` | init-step sœur de la classe documentée dans `src/code_080099EC.cc` (blob caché round 9) | 10 (w26) | `6f788cc` |
| `func_080D79CC`, `func_080D7AD4` | paire de constructeurs du sous-objet dont le teardown est dans `func_08008A68` (round 9/w21), même paire de vtables `vtable_unk_080E5B0C`/`080E5B18` | 10 (w26) | `7201ee1` |
| `func_0803A804`, `func_0803A80C`, `func_0803A814`, `func_0803A820`, `func_0803A840`, `func_0803A870`, `func_0803A8A0` | 7 fonctions NON cataloguées, ex-`.byte` bruts (160 octets) après `func_0803A798` : accesseurs/prédicat/wrapper sur `UnknownEntityThing::sprite_animator`, helper `SetAnim` dédupliqué (sœur de `AActorEntity::RefreshSprite`), getter trivial `UnknownEntityThingBase::dummy` | 10 (w23) | `0ae8f12` |
| `func_08011ED8` | 2e overload du constructeur de la classe bâtie par `func_08011DC4` (asm, non porté) -- construit une `Location` locale avec un seul champ initialisé (les 2 autres restent non-initialisés, comme l'original), ex-`.byte` bruts (272 octets) après `func_08011DC4` | 10 (w23) | `51cbacc` |
| `func_08050DF0` (`TransitionCtlQuery`) | handle -> discriminant à +8, retourne 0 si ==6 sinon champ à +0x158 | w38 | `5570e1e` |
| `func_08050E50`, `func_08050E5C`, `func_08050E74`, `func_08050E80`, `func_08050E8C` | thunks de forwarding handle (déréférence puis tail-call vers un callé opaque), voisins directs de `TransitionCtlQuery` | w39 | `dfd228e` |

## Classe de problème "pression de registres" -- ne PAS re-tenter sans
budget dédié et une idée réellement neuve

Signature du problème : une fonction avec **beaucoup de valeurs
simultanément vivantes** (dépilement de liste libre, parcours de section
déroulée, ou un blit conditionnel à 4 tuiles avec flags), qui sature
`r4`-`r7` + `r8`/`sb`/`sl`/`ip`, et où CHAQUE reformulation C testée garde
une valeur de moins en vie simultanément que l'original à un point donné
-- ce n'est pas récupérable juste en relisant l'ordre des instructions,
il faut deviner la forme EXACTE de l'expression C source pour forcer le
même pic de pression de registres.

**Bilan des tentatives à ce jour** :

- `func_0805E790` (round 1, re-tenté round 6 avec shape-hunting
  systématique) -- toujours échoué. Le blocage est descendu à une
  décision précise d'allocation de registre pour UNE seule variable (le
  paramètre pointeur de sortie, évincé vers `ip` par l'original dès la
  1re instruction, jamais reproduit malgré une forme C jugée par ailleurs
  correcte).
- `func_0800736C` (round 2, re-tenté round 6 -- 5 variantes systématiques
  via le harnais rapide) -- écart réduit de -8/-16 octets à -12 octets
  (structure très proche : accumulateur unique + épilogue partagé +
  reload du masque `& 0xFFFF`, cf. règle 4bis) mais **jamais convergé**.
  Piste explicitement fermée : lire `h->unk_00` dans une variable locale
  distincte pour le second check "redondant" -- testée round 6 via
  `h->AllocEntry(ent)` lié à une variable `ent2` distincte, résultat
  identique à ne pas utiliser `AllocEntry` du tout (`AllocEntry` est
  toujours inliné par agbcp, son élimination du branchement redondant
  opère sur l'IDENTITÉ DE REGISTRE, pas l'identité de variable source --
  aucune des 5 formulations testées n'a préservé le second check).
- ~~`func_0804E4AC` (`DrawGlyphAt`, plain)~~ -- **MATCHÉE round 9 (agent
  modèle "fable", worktree `w22`, commit `247e6f3`), le mur de 2 octets
  est tombé.** Rounds 3/6/7/8 avaient tous convergé sur le même écart
  irréductible d'1 instruction (un "spill fantôme" de `tile_x` juste
  avant le blit BR), attribué à un artefact de l'allocateur `agbcp` --
  **ce diagnostic était FAUX**. La vraie cause : l'original C source
  **alias les valeurs dans des variables COPIES redondantes, et c'est la
  copie -- pas l'original -- que le blit suivant relit** :
  ```c
  u32 tile_x = x >> 3;
  u32 br_tile_x = tile_x;   // aucun registre en moins : l'init EST le str,
                            // son seul usage BR EST le ldr
  ```
  Le même idiome se répète 4 fois dans la fonction avec des variantes :
  `grid_rows` copie `height_tiles` (le clip guard relit le temp `r0`
  chaud, `has_bottom` relit la copie chez `ip`) ; une variable
  `right_addr` unique partagée par les blits TR et BR (pseudo-globale,
  aucune liaison locale -> séquence `mov`/`adds` à 3 opérandes) ;
  l'adresse BR construite par trois réassignations successives ; un seul
  `return kind` atteint via `goto` (inverse la course d'allocation
  `sb`/`sl` entre `kind` et `dest`) ; ordre initialisé-avant-déclaration-
  nue (slot de pile `0x84` vs `0x88`). **Généralisation pour toute future
  cible "pression de registres"** : avant de conclure à un mur
  d'allocateur, chercher si le désassemblage relit une valeur depuis un
  emplacement mémoire/registre DIFFÉRENT de celui où elle vient d'être
  écrite -- si oui, c'est probablement une variable-copie explicite dans
  la source, pas un artefact. Vérifié bit-exact (harnais rapide 256/256,
  seul le padding final de 2 octets diffère -- zéro-rempli par
  `align_sections.sh` dans le vrai build). Mergé dans `main` (`247e6f3`).
  **`func_0804E5AC` (variante recoloration) : 4 tentatives, toujours pas
  matchée, mais progrès net et mesuré à chaque round** -- round 9,
  généralisation directe échouée (8 octets courts, `dest` swappé en `r9`
  au lieu de `sl`, mauvaise paire de registres par rapport au corps
  plain) ; round 10/w22, piste identifiée pas résolue ; round 10/w27,
  piste `anchor`/`delta` résolue (`anchor` doit être RECALCULÉ dans
  chaque bloc TL/BL/TR/BR, pas partagé comme `delta` qui lui est un vrai
  temporaire de portée fonction) mais nouveau résidu de 44 octets trouvé
  (forme verbeuse `mov r0,sl`+`adds` 3-opérandes non reproduite,
  s'effondre en 1 instruction compacte) ; round 4/w29, résidu réduit de
  44 à 24 octets (bloc TL correctement reproduit), cause isolée à une
  collision de registre entre `anchor` (alloué en `r2`) et le pointeur
  de fin de boucle `end` (que l'original garde en `r2`, libre) ; round
  5/w31, résidu réduit à 4 octets, blocage localisé à un seul point
  (pointeur de fin de boucle du bloc TL en registre haut `ip` au lieu
  d'un registre bas) ; round 6/w34, **6e échec** -- 2 améliorations
  mesurées (résidu 24->16->12 octets) mais chaque correction fait
  RESSURGIR le résidu ailleurs (`dest` réalloué en `r9` au lieu de
  `sl`), preuve que la pression de registres est pire que prévu, pas
  juste un idiome manquant. **PAUSE recommandée par round 6 lui-même** :
  ne pas retenter par itération de forme C -- la seule piste non
  essayée est une comparaison avec une décompilation Ghidra amont de
  `StanHash/fomt` pour cette adresse si elle existe. Voir
  `SESSION_NOTES.md` rounds 9/w22, 10/w27, 4/w29, 5/w31, 6/w34 pour le
  détail complet de chaque itération.
- `func_08008980` (callee bloquant de `func_08004C68`) -- **caractérisée
  en détail round 9/w21**, confirmée classe "pression de registres" par
  inspection directe (`r4-r7` + `r8`/`sb`/`ip` vivants simultanément sur
  tout le corps), PLUS un double-stamp de vtable inexpliqué sur un
  sous-objet (même question ouverte que le piège `SmartPtr<T>`
  sous-classe pour `func_08004C68`). Pas attaquée -- c'est la première
  vraie inspection (pas une retentative à l'aveugle), donc la
  classification est fiable plutôt que suspectée.
- `franglais_boot_fsm_run` (`func_08093364`, `asm/code_0805E760.s`) --
  FSM de démarrage documentée dans `docs/ENGINE.md` côté dépôt patch.
  Dimensionnée round 6 : 0x6F4 octets (~800 lignes de `.s`), prologue
  `push {r4,r5,r6,r7,lr}; mov r7,sl; mov r6,sb` -- signature identique à
  `DrawGlyphAt`/`func_0805E790`. **Pas tentée, pas de budget dédié.**

À l'inverse, la classe "boucle simple, peu de valeurs vivantes, délègue
le gros du travail à un appel `bl` opaque" (les 2 boucles `DrawString`)
matche du premier ou deuxième coup à chaque fois essayée. **Ne pas
supposer qu'une famille entière de fonctions documentée dans un seul
fichier de doc (`docs/VWF.md` etc.) a la même difficulté** -- `DrawString`
(boucle) et `DrawGlyphAt` (blit multi-tuiles) sont dans la même section
de doc mais dans deux classes de difficulté totalement différentes.

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
distinctes**, SANS AUCUN rechargement entre deux `bl` consécutifs qui
utilisent tous les deux ce même état. Exemple concret vérifié :
`sub_080D1224` (mode de corps 0) commence directement par `bl
func_080D14EC` puis `bl func_080D11A4`, tous deux consommant `r2`/`r3`
comme lecteur de bits déjà initialisé -- ces registres n'ont pourtant été
positionnés que dans `Unpack`, plusieurs `bl` plus haut, et rien dans
`sub_080D1224` ne les recharge. Or `r0`-`r3` sont **caller-saved dans
TOUTE convention d'appel ARM/Thumb standard** (APCS, AAPCS, et la
convention utilisée par agbcp lui-même pour tout code qu'il génère) -- un
compilateur C, quelle que soit la forme du code source, DOIT toujours
supposer que `r0`-`r3` sont détruits par un appel `bl` et les recharger
avant réutilisation. Voir la même conclusion, atteinte indépendamment,
côté dépôt patch (`docs/BACKGROUNDS_INVENTORY.md`, section "Pourquoi pas
la décompilation Ghidra directe") : "de l'assembleur Thumb écrit à la
main, optimisé, pas une sortie de compilateur".

**Conclusion : `Unpack` et tout son arbre d'appel ne sont PAS des cibles
de décompilation C valides.** Ce n'est pas "pas encore réussi", c'est
"structurellement impossible". Seule option théorique (non tentée, jugée
hors scope) : porter le bloc entier comme un unique gros morceau
d'assembleur inline, ce qui ne serait qu'une recopie du `.s` existant
sans valeur ajoutée. **Retiré de la liste des cibles priorisées.**

Empreinte plus large que documenté à l'origine : la famille existe aussi
dans `asm/code_080C7F00.s` (fragments de continuation après `mov lr,pc;
bx sb`, autour de `.L080D12D0`-`.L080D1426`), pas seulement dans
`asm/code_809E804.s`. Confirmé round 9 lors du scan systématique des
blobs cachés -- ces blobs-là sont correctement IGNORÉS par le scanner
(leur "bloc précédent" est une étiquette de branchement interne, pas un
`thumb_func_start`), et une inspection manuelle confirme que ce sont de
vrais octets Thumb valides appartenant à cette même famille infaisable.

Signal d'alerte généralisable pour de futures cibles : avant de commencer
une tentative sur une fonction qui appelle plusieurs `bl` vers d'autres
fonctions non triviales, vérifier si un registre `r0`-`r3` est
**réutilisé après un `bl` sans rechargement visible entre-temps**, à la
fois dans l'appelant ET dans le corps du callé juste après son propre
prologue. Si oui, c'est cette classe -- pas la peine de tenter une
reformulation C, le problème n'est pas la forme du source.

## Layout des vtables sous `-fvtable-thunks` : 2 mots nuls de préfixe
avant le premier slot déclaré

Confirmé round 6 en lisant les octets bruts de `vtable_unk_080E5A88`
(`func_08004C54`, déjà vérifiée bit-exact round 4) directement dans
`baserom.gba` : mot0/mot1 = `0`, mot2 (offset +8) = le destructeur, mot3
(offset +12) = la méthode virtuelle suivante déclarée. **Toute classe C++
écrite dans ce dépôt pour matcher un vtable existant doit donc compter
le premier slot utile à l'offset +8, pas +0** -- une classe locale avec UNE
SEULE méthode virtuelle déclarée (pas de destructeur) place cette méthode
à l'offset +8 automatiquement, ce qui matche directement le pattern
`ldr rX, [rY, #8]` vu dans la famille des "37 destructeurs riches" sans
qu'il faille ajouter un destructeur ou une méthode placeholder pour
"pousser" le slot -- la première tentative round 6 a fait exactement
cette erreur (ajouté un destructeur virtuel + une méthode placeholder en
pensant "reconstituer" 3 slots utiles) et a produit l'offset +16 au lieu
de +8, corrigé en ne déclarant QUE la méthode réellement appelée.

## La famille "riche" des 37 destructeurs à teardown d'enfant -- COMPLÈTE
(37/37 matchés)

Layout caractérisé (commit `ef58287`, 4 premiers matchs) : `self+4`
contient un pointeur brut vers un objet enfant (alloué par
`__builtin_new`, ex. 0x1A0 octets pour la famille de `func_08004BDC`,
construit par `func_080041DC`). **Le pointeur de dispatch de cet enfant
vit à l'offset +4 DE LUI-MÊME, pas +0** -- confirmé en lisant
`func_080041DC` : elle appelle `func_08008574` sur l'objet neuf AVANT de
stamper `vtable_unk_080E5A5C` à `[r7, #4]`, cohérent avec un sous-objet
non-polymorphe de 4 octets en tête (offset 0) suivi de la partie
polymorphe (vtable à +4) -- typique d'un héritage multiple où la base
polymorphe n'est pas listée en premier. Le rôle exact de ce sous-objet
de 4 octets (`func_08008574`) n'est PAS caractérisé -- **ne pas inventer
sa classe C++** : porter ces destructeurs comme pointeur brut
(`void**`/arithmétique d'adresses), pas comme appel de méthode C++ :

```c
void *child = *(void **)((char *)self + 4);
if (child != nullptr) {
    void **vt = *(void ***)((char *)child + 4);
    void (*fn)(void *, int) = (void (*)(void *, int))vt[2];
    fn(child, 3);
}
```

Toutes les fonctions de cette famille partagent EXACTEMENT ce corps,
seule la constante `vtable_unk_ADDR` propre change.

**Variantes rencontrées** :
- 1-enfant (offset+4 MI uniquement) -- forme ci-dessus.
- 2-enfants (`self+8` plain checké en premier, PUIS `self+4` MI) -- 24
  sites (11 round 6/w11, 13 round 7/w12).
- **"Sans restamp de vtable propre"** (round 7, seul site vu :
  `func_080E41B0`) : corps "2 enfants" identique, mais **ne stocke aucune
  valeur à `[r4]` (self+0) et ne référence aucun littéral
  `vtable_unk_ADDR`** -- confirmé en lisant le désassemblage brut au
  complet. Ne pas deviner pourquoi (candidats non vérifiés : classe
  intermédiaire dont le vtable stamp est fait ailleurs par un caller, ou
  élision d'un stamp redondant par le compilateur) -- porté strictement
  tel quel : la struct C locale garde un champ `unk_00` (offset 0) jamais
  écrit, seuls `unk_04`/`unk_08` sont lus. Si un futur site montre ce
  même manque de stamp, vérifier d'abord s'il partage un point commun
  structurel (ex. appelé UNIQUEMENT depuis un autre destructeur "riche"
  déjà-stampé plutôt que directement depuis une vtable) avant de
  généraliser une explication.

Répartition du travail (pour référence, tous complétés) : round 6/w3 a
pris les 4 premiers par adresse croissante (`0800371C`, `08004BDC`,
`080059D0`, `080070A4`) ; w7 a pris `0809A518`/`080C7ED0`/`080BC8C0`/
`080B3C0C` ; w11 a pris 11+3 sites (2-enfants et 1-enfant) ; round 7/w12
a pris les 15 derniers (`08080DC4` -> `080E41B0`), tous matchés du
premier coup en suivant l'un des 3 corps déjà connus.

## Les constructeurs de placement, contreparties de la famille "riche" des destructeurs (round 10, w24)

Trouvés par méthode sœur pure (round 10) : chaque destructeur "riche" déjà
matché (vtable + teardown d'un ou deux champs enfant, section précédente)
a un CONSTRUCTEUR jumeau ailleurs dans `asm/*.s`, jamais répertorié tant
qu'on ne cherchait que le côté destructeur. Signature grep pour les
retrouver : un bloc `thumb_func_start` qui contient À LA FOIS un littéral
`vtable_unk_ADDR` ET un `bl __builtin_new` -- un script Python parcourant
tous les blocs de `asm/*.s` avec ce double critère, croisé avec
`arm-none-eabi-nm build/src/*.o | grep ' T func_'` pour exclure les
fonctions déjà portées, suffit à les lister tous d'un coup (script laissé
en scratch, non commité -- à refaire au besoin ; attention à un piège
vécu round 10 : un `grep func_ADDR src/*.cc` naïf produit de faux
positifs "déjà porté" car il matche aussi les déclarations `extern` de
callés encore opaques, pas seulement les vraies définitions -- `nm` sur
le build réel est le seul oracle fiable).

Deux variantes vues, toutes deux avec EXACTEMENT le même corps d'un site
à l'autre (seuls la constante `vtable_unk_ADDR`, la taille d'allocation,
et le nom de la fonction d'init opaque changent) :

**Variante 2-enfants** (contrepartie de la famille "riche" 2-enfants,
`self+4` MI / `self+8` plain) -- `func_0807EE14` et 14 sœurs :
```c
void *ctor(void *self, void **a1, void *a2)
{
    *(void **)self = vtable_unk_ADDR;
    void *obj = operator new(SIZE);
    obj = init_opaque(obj, a2);
    *(void **)((char *)self + 4) = obj;      // champ MI (self+4)
    void *stolen = *a1;                       // "move-in" du champ plain
    *a1 = nullptr;                             // (self+8) depuis un
    *(void **)((char *)self + 8) = stolen;    // out-param appelant
    return self;
}
```
Le second champ (`self+8`) n'est PAS alloué ici -- il est "volé" à un
pointeur passé par le CALLEUR (`void **a1`) : lecture, mise à zéro de la
case appelante, puis stockage dans l'objet neuf. 14 des 15 sites stampent
une vtable déjà vue dans un destructeur "riche" 2-enfants déjà matché
(vérifiable par `grep -l vtable_unk_ADDR src/*.cc`) -- confirme le lien
constructeur/destructeur avant même de compiler. Le 15e (`func_080A3744`,
`vtable_unk_080E8278`) n'a aucun destructeur correspondant matché dans ce
dépôt à ce jour -- probablement encore en asm quelque part, non recherché
plus loin -- mais a été porté quand même par pure similarité de forme,
bit-exact confirmé comme les 14 autres.

**Variante 1-enfant** (contrepartie de la famille "riche" 1-enfant,
`self+4` seulement, pas de champ plain à `self+8`) -- `func_080BC898`,
`func_080C7EA8`, `func_080C0D1C`, contreparties de `func_080BC8C0`/
`func_080C7ED0`/`func_080C0D44` : corps identique au constructeur de
placement déjà connu depuis le round 8 (`func_08007078`/`func_0800598C`),
pas de move-in, juste vtable + alloc + init + store à self+4 + return
self.

### Round 11 (w33) -- 15 sites supplémentaires + 2 sous-variantes nouvelles

Le round 10/w24 n'avait pas balayé exhaustivement : reprise de la même
méthode (script Python sur les blocs `thumb_func_start` combinant un
littéral `vtable_unk_ADDR` ET un `bl __builtin_new`, croisé avec
`arm-none-eabi-nm build/src/*.o | grep ' T func_'`) a trouvé 15 sites de
plus. 12 sont des instances directes des deux variantes déjà connues
ci-dessus (2-enfants move-in : `func_08057DD8`, `func_0805CEB8`,
`func_0805E624`, `func_0805FCD0`, `func_08069E14`, `func_08077C40`,
`func_0807B038`, `func_0807E438`, `func_080854F4`, `func_0809A4D4` ;
1-enfant : `func_080B3BE4`, `func_080036F8`).

3 sont des sous-variantes réellement nouvelles :
- **Layout inversé** (`func_080756B0`) : le littéral vtable est stampé à
  `self+4` et l'objet neuf est stocké à `self+0` -- ordre exactement
  inversé par rapport à la forme standard. Confirmé en lisant le
  désassemblage brut au complet (le `str` vers `[self+4]` précède
  strictement le `bl __builtin_new`, le `str` vers `[self+0]` le suit
  strictement) -- probablement le constructeur d'un des sous-objets non-
  polymorphes de 4 octets encore non caractérisés référencés par la
  famille des 37 destructeurs "riches" (cf. `func_08008574` plus haut),
  pas confirmé.
- **Layout étendu** (`func_0807D070` et `func_08088168`) : après le corps
  standard 2-enfants (vtable, alloc, init, store self+4, move-in self+8),
  deux arguments supplémentaires du CALLEUR sont stockés TELS QUELS (pas
  déplacés, pas alloués) à `self+0xc` et `self+0x10`. Deux instances
  indépendantes confirment que c'est une vraie sous-famille récurrente,
  pas un accident isolé.

**Piège vécu et corrigé avant commit** : 4 des 15 sites (`func_08077C40`,
`func_0807B038`, `func_0807D070`, `func_0807E438`) ont un blob `.byte`
caché encore non matché, coincé entre leur propre fin et le
`thumb_func_start` réel suivant (cf. "Scan systématique des blobs `.byte`
cachés" dans `DECOMP_RULES.md`) -- un découpage naïf du fichier `asm/*.s`
aurait supprimé silencieusement ces octets, décalant l'adresse absolue de
TOUTES les fonctions suivantes dans la ROM finale. Détecté en comparant la
taille `.text` compilée à l'écart d'adresse `next_addr - this_addr` (le
`.o` compilé était systématiquement plus PETIT que l'écart attendu),
corrigé en réinjectant le blob `.byte` intact dans le nouveau fichier
`asm/code_NEXT.s`, avant le `thumb_func_start` réel. Revérifié après coup
via `fomt.map` : tous les symboles en aval (`func_08077CE0`,
`func_0807B0F0`, `func_0807D194`, `func_0807E4B8`, etc.) retombent
exactement sur leur adresse vanilla attendue.

## Mécanique de découpage d'une section `.text.code_ADDR` (linkonce/COMDAT)

Voir `DECOMP_RULES.md`, méthode de découpage, point 8 -- déplacé là car
c'est une règle générique, pas un fait d'historique.

## `func_08004C68` (New Game `Run()`) -- bloquée, 4 callees restants sur 15

Identifié avec certitude structurelle comme `Run()` de la classe scène de
l'enregistrement #12 (séquence de saisie New Game : nom joueur, sélecteur
1 octet, nom ferme, nom chien -- voir `SESSION_NOTES.md` round 6 pour le
détail complet du layout `+0x04`/`+0x14`/`+0x24`/`+0x28`). Round 8 (w15)
a matché 10 de ses 15 callees : les 3 familles de widgets (saisie texte,
écran confirmation, sélecteur) partagent toutes la même forme
"constructeur de placement" (stamp vtable, `operator new(SIZE)`, appel
d'init opaque, stocke à `self+4`, `return self`) -- généralise
gratuitement, aucun shape-hunting nécessaire une fois la forme identifiée
une fois. Round 9/w21 a matché `func_08008A68` et re-classé
`func_0806EA30`.

**Reste bloqué par 4 callees** :

- `func_080070D4`/`func_08005A00`/`func_0806EA30` (**3 sites, pas 2** --
  round 9/w21 a confirmé que `func_0806EA30` est une 3e instance BYTE
  POUR BYTE IDENTIQUE de la même forme, pas un cas "pression de
  registres" séparé comme classé par erreur round 8 ; seul le callé
  opaque diffère, `func_0806DB38` au lieu de `func_08005B68`/
  `func_080050F8`) : "assignation de champ SmartPtr", classe de
  difficulté nouvelle et distincte de "pression de registres" et du
  piège `SmartPtr<T>` déjà connu (règle 9 de `DECOMP_RULES.md`). **7
  hypothèses testées au total (4 round 8 + 3 round 9), toutes
  négatives** : syntaxe `=` vs `()` pour l'init (identique, même échec de
  compilation), convention out-param explicite (compile mais produit une
  forme vérifiablement différente -- confirme que `field` n'est PAS un
  `SmartPtr<T>*` passant par `operator=(T*)`), alias manuel reproduisant
  l'exact désassemblage (agbcp le promeut entièrement en registres et
  l'élimine, encore plus agressivement que la tentative round 8 #1),
  `*field = func_08005B68(arg).Move();` (round 8 #2 -- compile, mais
  agbcp élimine le check mort : 16 instructions au lieu des 33
  attendues -- `SmartPtr::Move()` n'est PAS la pièce manquante, elle est
  déjà implémentée, cf. règle 9 de `DECOMP_RULES.md`). **Règle
  généralisable découverte round 9** : le peephole d'élimination
  dead-store/dead-load d'agbcp s'applique à **toute variable locale dont
  l'adresse est prise, tant que son cycle de vie complet reste visible
  dans UNE fonction sans que l'adresse ne s'échappe vers un appel externe
  opaque** -- le seul cas testé qui n'a PAS été replié est celui où
  `&tmp` s'échappe vers l'appel opaque `func_08005B68` (convention
  out-param), mais cette forme ne matche pas la cible pour une autre
  raison (compare sur l'ancienne valeur de `field`). **Piste concrète non
  encore testée** (à essayer en priorité) : combiner LES DEUX ingrédients
  qui marchent séparément -- construire `tmp` via la convention
  hidden-return-value (`SmartPtr<Widget> tmp = func_08005B68(arg);`,
  seule forme de construction qui compile ET ne pré-zéro pas) **ET**
  typer `field` comme `T**`/`void**` BRUT (jamais `SmartPtr<T>*`), pour
  qu'aucune surcharge `operator=` ne puisse jamais être sélectionnée
  quelle que soit la forme de l'assignation. Round 9/w21 a retenté 3
  variantes supplémentaires (syntaxe `=`/out-param/alias manuel, détail
  ci-dessus) mais PAS cette combinaison précise -- reste la piste
  prioritaire pour un round 10.
- `func_08008980` -- voir section "pression de registres" ci-dessus,
  caractérisée round 9/w21, pas attaquée.
- ~~`func_08008A68`~~ -- **matchée round 9/w21** (`2bab4c4`) : utilise
  seulement `r4-r7`, pas `r8`/`sb`/`ip` -- shape simple malgré le
  voisinage avec `func_08008980`, matchée du premier coup.

**Avant de retenter `func_08004C68` elle-même** : soit fermer ces
callees, soit au minimum établir un prototype `extern "C"` correct pour
chacun (ce qui NE nécessite PAS de les porter bit-exact -- suffit pour
les appeler depuis `func_08004C68` en tant que boîte noire). Le
double-stamp de vtable de `func_08008980` (sous-classe C++ réelle avec
override de méthode virtuelle pure) reste une question ouverte
indépendante des callees.

## Autres cibles ouvertes

Nettoyée round w37 (vérification entrée par entrée, cf. `SESSION_NOTES.md`
round w36 pour l'audit initial qui a signalé cette section comme
largement périmée) -- entrées obsolètes retirées :
`franglais_transition_ctl_query` (déjà matché, round "3 angles neufs"/w32) ;
`asm/code_entities_08034CEC.s` (déjà matché, round 10/w23, commit `0ae8f12`,
groupe `func_0803A804`/7 fonctions) ; `asm/code_actor_0809BFE8.s`/
`.L0809E1B4` (dead-end confirmé deux fois -- round 10/w23 : ~10 réécritures
C distinctes, même swap de registres `r4`/`r5` irréductible ; recontrôlé
round w36 : aucune nouvelle piste, aucun appelant, verdict stable --
ne pas retenter sans technique inédite, ex. hint de registre via `asm()`,
jamais utilisée dans ce dépôt).

- Table de dispatch script (`0x0803F900`) : **en recoupement avec le
  travail en cours de w35** sur la famille dispatch/composite constructor
  -- ne pas s'engager dessus sans re-vérifier d'abord que w35 ne l'a pas
  déjà couverte.
- `func_08010F14` (déjà matché, round 8/w17) : entrée purement
  documentaire, pas une cible -- aucun appelant symbolique trouvé dans
  `asm/`/`src/` (grep négatif), peut-être appelé via une table indirecte,
  ou mort.
- `asm/code_08010F54.s` (272 octets) : écartée par consigne explicite
  (round w36) -- chevauche possiblement `franglais_boot_fsm_run`, classe
  "pression de registres" ; ne s'engager que sur idée neuve.
- `func_08075334` (`asm/code_08070A08.s`) : vrai helper de push de
  file/tableau dynamique (`malloc`, ring buffer à `self+0x594`), 8 sites
  d'appel symboliques déjà dans le dépôt (contexte d'appel abondant,
  contrairement à `.L0809E1B4`). Identifiée round w36, évaluée-mais-pas-
  engagée round w37 ("pression de registres" confirmée à la lecture).
  **Round w57 dédié : near-miss caractérisé précisément, PAS commité** --
  les 12 premiers octets du corps (au-delà du prologue) sont bit-exacts
  une fois l'ordre d'assignation des champs de l'item local corrigé
  (`f4=a1` avant `f0=(u16)a2`, ordre du désassemblage, pas celui du
  struct), mais 3 variantes testées au-delà divergent toutes sur
  l'allocation des 4 registres callee-saved (`r5`/`r8`/`r9`/`sl`) qui
  doivent simultanément survivre à 2 appels opaques (`malloc`, `free`) --
  piste concrète laissée pour la suite (permutation de l'ordre de
  première-utilisation des 4 valeurs en jeu) : voir `SESSION_NOTES.md`
  round w57 pour le détail exact des 3 variantes déjà écartées.
- `func_08050E98`/`func_08050EBC` (setters de bitfield 6 bits sur le
  même champ `self+0x550`, voisins de `TransitionCtlQuery`) : near-miss
  round w39, PAS committé -- extraction du champ bas (double-shift)
  reproduite du premier coup, mais le masque des 2 bits hauts (`~0x3F`)
  se fait toujours plier par agbcp en immédiat direct `0xc0` chez nous,
  alors que la cible construit `0xFFFFFFC0` par négation explicite
  (`movs #0x40; rsbs`) et garde la valeur lue vivante dans `r4`
  (`push {r4,lr}`/`pop{r4};pop{r1};bx r1`) -- aucune de nos formulations
  n'a eu besoin de ce registre. **Root-cause partiel round w49** (cf.
  `func_08050EE4`/`func_080512D8` ci-dessous pour la percée sur les
  SIBLINGS ctors) : l'idée "bitfield struct réel" qui a débloqué les
  ctors NE S'APPLIQUE PAS directement ici -- le masque de ces 2 setters
  est construit à partir d'un paramètre d'APPEL dynamique (`bics r2,r1`,
  `r1` est un masque fourni par l'appelant), pas une largeur de champ
  fixée à la compilation comme dans une affectation de bitfield normale.
  Sous-cas distinct, toujours PAS résolu -- piste non tentée : voir si le
  paramètre "masque" est en fait la valeur d'un AUTRE bitfield struct
  (`self->x = self->y;` où `y` est lui-même un bitfield d'une largeur qui,
  une fois relu, agbcp doit re-décomposer par négation) plutôt qu'un
  entier brut.
- Blob `.byte` caché massif, `.L08050EE4` dans `asm/code_08050E98.s`
  (**1084 octets** à l'origine, entre `func_08050EBC` et `func_08051320`) --
  découvert round w39 (**angle mort du scanner automatique**,
  `scan_hidden_code_blobs.py` ne couvre que 4-40 octets, ce bloc était 27x
  plus gros), **cartographié entièrement par w41** : 8 fonctions
  distinctes séparées par 4 pools littéraux (détail complet,
  `SESSION_NOTES.md` round w41). **7/8 matchées** (`func_08050F60`,
  `func_08050F70`, `func_080512B8`, `func_080512C8`, `func_080512D0`,
  commit `0ba5e82` ; `func_08050EE4`/`func_080512D8`, round w49, cf.
  ci-dessous). Restent en `.byte`, dans `asm/code_08050F4C.s`/
  `asm/code_08050F74.s` :
  - **`func_08050EE4` (88o) et `func_080512D8` (60o+pool) -- MATCHÉS
    round w49** (`SESSION_NOTES.md`) : la classe "masque construit par
    négation" est en fait le codegen NORMAL d'agbcp pour une vraie
    affectation de bitfield struct C (widths 5/10/4/4 pour `08050EE4`,
    2 mots pleins + 14+1+1 bits pour `080512D8`) -- pas un artefact
    d'expression `v & ~mask` manuelle sur un entier brut (les 2
    hypothèses déjà réfutées w39/w41). Écart résiduel d'épilogue
    (`pop{r1};bx r1` vs `pop{r0};bx r0`) expliqué par le ctor qui
    retourne `self` (convention ARM/CFront, r0 occupé par la valeur de
    retour). Généralise potentiellement à TOUTE future cible de cette
    classe : avant de conclure à un "mur agbcp" sur un masque construit
    par négation, vérifier si le champ a une largeur FIXE (compile-time)
    -- si oui, modéliser en bitfield struct réel plutôt qu'en masque
    manuel, et vérifier si la fonction est un ctor candidat au `return
    self`.
  - `func_08050F4C` (18o) -- near-miss "copie explicite élidée" (`v?1:v`
    normalisation booléenne), reconfirmé round w44 (essai `!!(v)` façon
    anti-pattern #12 : toujours 16 octets au lieu de 18).
  - `func_08050F74` (44o) -- near-miss registre r4/r5 échangé + wraparound
    `__umodsi3`, détail `SESSION_NOTES.md` round w41.
  - `08050FA0`/`080510E8`/`0805116C` (312o/128o/328o) -- 3 fonctions
    "pression de registres" (`r8`/`r9`/`sl` vivants dans le corps),
    identifiées mais jamais tentées, candidates pour escalade `fable`.
  Round w44 (sweep étendu `scan_hidden_code_blobs_v2.py`, toute taille) a
  reconfirmé que ces fragments sont les SEULS candidats "medium" restants
  dans tout `asm/*.s` avec `.L0809E1B4` ci-dessous -- aucun nouveau blob
  caché de taille intermédiaire/plus grande ailleurs dans le dépôt.
- Docs de référence côté dépôt patch pour choisir de futures cibles :
  `docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
  `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`.
- **Famille "entity factory" `func_080324BC`, 3 sites restants** (round
  worktree w40 a matché 38 des 41 sites connus, cf. `SESSION_NOTES.md`) :
  `asm/code_080E41E8.s`, `asm/code_entities_080320DC.s` (2 sites),
  `asm/code_entities.s` (1 site) contiennent chacun un appel `bl
  func_080324BC` avec exactement le même shape (alloc 0x8c + store
  f0/f4/f8/fc sur la pile + `func_080324BC(obj, ctx, kind, subkind, f0,
  f4, f8, (bool)fc)`, callee traité en boîte noire). Candidat direct pour
  un prochain round : même méthode, même prototype, piège `bool`/`char`
  déjà documenté (`DECOMP_RULES.md` #13). `func_080324BC` lui-même reste
  non porté (`r8`/`sb` utilisés tout du long -- signal "pression de
  registres", pas attaqué).
- **`func_08050E68` (`asm/code_08050E68.s`) : PAS une cible valide, à
  RETIRER définitivement** (découvert round w43) -- ce "thunk" (`ldr
  r3,=0x08801C25; bx r3`, tail jump direct) pointe vers
  `0x08801C24`, une adresse qui tombe dans `franglais_payload_start`-
  `franglais_payload_end` (`0x08800000`-`0x08801000`, région réservée par
  CE dépôt pour le payload du patch franglais), PAS dans la ROM vanilla
  (`baserom.gba` fait 8 Mo, `0x08000000`-`0x087FFFFF` seulement). C'est un
  point d'accroche du patch déjà injecté dans le désassemblage, pas du
  code de jeu original -- le porter documenterait le mécanisme du patch,
  pas le jeu.
- **`func_0803A798`/`func_0803BF78`, 2 cibles caractérisées mais non
  portées (round w43)** : `func_0803A798` (`asm/code_08039A5C.s`, juste
  avant le groupe `func_0803A804`) alloue 0x20o, construit un `Location`
  local partiellement initialisé (motif `func_08011ED8`) puis appelle
  **`AEntity::AEntity(GameObject*, Location const&)` -- DÉJÀ implémentée
  dans `src/entity.cc`, pas une boîte noire** -- via placement-new, puis
  stampe une 2e vtable (`vtable_unk_080E7568`) à +0x14. Layout exact du
  `Location` local à élucider (3 paires `ldrh`/`ldrb` chevauchantes,
  masques `0xFC00`/`3`) avant de coder. `func_0803BF78`
  (`asm/code_0803A8A4.s`) n'est PAS lui-même "pression de registres" mais
  appelle en boîte noire `func_0803BDFC` (qui l'est, voir ci-dessous) ;
  stampe ensuite `vtable_unk_080E77A4` à +4 (écrase celle du callee),
  alloue 0x41Co, appelle l'opaque `func_080E0A94`, initialise 4 champs
  octet à `self+0xc..0xf`. Nécessite de reconfirmer précisément les
  arguments pile de l'appel à `func_0803BDFC` avant de coder. Voir
  `SESSION_NOTES.md` round w43 pour le détail complet.
- **Nouvelle classe de near-miss "ordre d'évaluation des arguments d'appel"
  (round w43)** : `func_08037B48`/`func_08037B80` (`asm/code_08037A04.s`)
  -- ctor trivial (vtable + `new(0x44)` + `bl func_08037008(obj,a1,a2,
  LITERAL_r3,LITERAL_pile)` + vtable @+0x14 + return obj), taille
  identique à la cible (0 octet d'écart) mais ORDRE inversé : la cible
  calcule l'argument pile (5e) AVANT l'argument registre `r3` (4e,
  littéral), alors que 6 formulations C testées (littéral inline,
  variable nommée seule sur chaque argument, les deux en variables,
  ordre de déclaration inversé, struct POD par valeur) produisent
  systématiquement l'ordre inverse (r3 d'abord). Piste non testée : le
  vrai 4e argument dépend peut-être d'un registre déjà occupé (pas un
  littéral nu), ou le nombre réel d'arguments diffère. Candidat probable
  pour un 2e cas : `func_08037A5C`/`func_08037AD0` (même fichier, mêmes
  callees `func_08037008`+`func_08037244`, PLUS un near-miss
  masque-par-négation déjà connu sur `self+0x44 & ~3`) -- pas testés,
  probablement affectés par les deux classes à la fois.
- **2 nouvelles fonctions "pression de registres" (round w43)** :
  `func_0803BDFC` (`asm/code_0803A8A4.s`) et `func_08083A7C`
  (`asm/code_08082184.s`) -- `r8`/`sb`(/`sl`) vivants à travers 2 `bl`
  successifs (`__builtin_new` puis un helper 7-8 arguments). Ne pas
  tenter sans budget dédié ; utilisables en boîte noire par des wrappers
  dérivés plus simples (cf. `func_0803BF78` ci-dessus).
- **Famille "entity factory" `func_080324BC`, 3 sites restants** (round
  worktree w40 a matché 38 des 41 sites connus, cf. `SESSION_NOTES.md`) :
  `asm/code_080E41E8.s`, `asm/code_entities_080320DC.s` (2 sites),
  `asm/code_entities.s` (1 site) contiennent chacun un appel `bl
  func_080324BC` avec exactement le même shape (alloc 0x8c + store
  f0/f4/f8/fc sur la pile + `func_080324BC(obj, ctx, kind, subkind, f0,
  f4, f8, (bool)fc)`, callee traité en boîte noire). Candidat direct pour
  un prochain round : même méthode, même prototype, piège `bool`/`char`
  déjà documenté (`DECOMP_RULES.md` #13). `func_080324BC` lui-même reste
  non porté (`r8`/`sb` utilisés tout du long -- signal "pression de
  registres", pas attaqué).
- **Famille "entity factory" `func_080324BC`, 3 sites restants -- statut
  affiné round w42 (39e site matché, 2 restants reclassés)** : des 4 sites
  d'appel `bl func_080324BC` recensés hors `code_entities_08034CEC.s`
  (`asm/code_080E41E8.s` x1, `asm/code_entities_080320DC.s` x2,
  `asm/code_entities.s` x1), un seul (`func_080E44E4`,
  `asm/code_080E41E8.s`) était réellement une instance du shape exact des
  38 déjà matchés (alloc 0x8c + store f0/f4/f8/fc sur la pile +
  `func_080324BC(obj, ctx, kind, subkind, f0, f4, f8, (bool)fc)`, AUCUN
  littéral `vtable_unk_ADDR` dans le bloc) -- **matché round w42**
  (kind=5/subkind=27/a=1/b=0/c=0/d=false), byte-exact (harnais rapide +
  réassemblage du bloc original avec les mêmes outils, cf. `git log`).
  **Les 2 autres sites (`func_08032A00` dans
  `asm/code_entities_080320DC.s`, `func_080222A8` dans
  `asm/code_entities.s`) sont une SOUS-VARIANTE DIFFÉRENTE, pas le même
  shape** : ici `self` est déjà alloué par l'APPELANT (passé en r0/r6, pas
  de `bl __builtin_new` dans le bloc), le bloc délègue à `func_080324BC`
  PUIS stampe sa PROPRE vtable à `self+4` juste après (`func_08032A00` :
  `vtable_unk_080E6864` ; `func_080222A8` : `vtable_unk_080E64B4`, celui-ci
  utilise en plus `r8` et appelle 2 helpers -- `func_08022320`/
  `func_08022334` -- pour construire les 2 premiers arguments-pile avant
  l'appel). Un 3e site (`func_08034A14`, `asm/code_entities_080320DC.s`,
  91 lignes) est une fonction bien plus grosse et complexe (utilise
  `r8`/`sb` tout du long, plusieurs `bl` vers des callees différents en
  plus de `func_080324BC`) -- signal "pression de registres" au sens de
  la classe documentée plus haut, PAS un simple wrapper, à ne pas confondre
  avec la famille "entity factory". Vérifié par scan exhaustif des blocs
  `thumb_func_start` de ces 3 fichiers (`bl __builtin_new` + AUCUN littéral
  `vtable_unk_` + alloc 0x8c) : aucun autre candidat non catalogué du shape
  exact trouvé dans ces 3 fichiers. **`func_08032A00`/`func_080222A8` sont
  maintenant matchés (round w46, commits `ff4fa30`/`6709750`)** -- la
  sous-variante "self déjà alloué + stamp vtable propre après délégation"
  est CLOSE, ses 2 seuls sites connus étant portés (`func_08032A00`
  convergé du premier coup ; `func_080222A8`, malgré l'usage de `r8` +
  2 helpers `func_08022320`/`func_08022334` -- simples dispatchs feuille
  par valeur, boîte noire -- convergé du premier coup aussi, la crainte
  "pression de registres" ne s'est pas matérialisée). Détail dans
  `SESSION_NOTES.md` round w46. `func_080324BC` lui-même reste non porté
  (`r8`/`sb` utilisés tout du long -- signal "pression de registres", pas
  attaqué).
