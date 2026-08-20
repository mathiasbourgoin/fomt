# Règles de décompilation (local, jamais poussé) -- QUICK-START

Ce fichier est le **point d'entrée obligatoire** avant toute tentative de
match : discipline, pièges de traduction C->asm connus, méthodologie,
conventions de nommage. Tout ce qui est utile à CHAQUE round, quelle que
soit la cible.

L'historique détaillé (table des matchs, récits complets des classes de
difficulté, liste des cibles priorisées avec leur statut) vit maintenant
dans **`DECOMP_ARCHIVE.md`** -- à consulter seulement si la cible touche
une famille déjà documentée (destructeurs "riches", `SmartPtr`, pression
de registres, etc.) ou pour choisir la prochaine cible. Pas la peine de le
lire en entier avant de commencer : ce fichier-ci suffit pour les 80% de
règles qui s'appliquent à tout.

`SESSION_NOTES.md` reste la trace chronologique complète (rounds,
tentatives échouées, détail des diffs) -- n'y aller que pour le détail
d'un round précis déjà référencé depuis `DECOMP_ARCHIVE.md`.

Rappel de contexte permanent : ce dépôt (`fomt-decomp`, clone de
`StanHash/fomt`) est un chantier strictement interne. `origin` a une URL de
push volontairement cassée (`DISABLED-local-only-see-CLAUDE-md`) --
**jamais** la restaurer, **jamais** `git push`, **jamais** de PR. Commits
locaux uniquement. Règle standing actuelle de Mathias : **toujours
exactement 3 agents actifs en parallèle** sur ce portage (worktrees
isolés `fomt-decomp-worktrees/wN`, branches `parallel-N`) -- pas la
règle historique "un seul agent à la fois" qu'on peut encore lire dans de
vieilles notes.

## Discipline non négociable

- **Ne jamais commiter un match qui ne matche pas.**
  **`sha1sum -c fomt.sha1` (ROM entière contre `baserom.gba`) NE PASSE
  PLUS depuis le commit `cb06198`** ("port hooks to source build") : un
  vrai payload franglais est maintenant lié dans la ROM (`fomt.lds`
  référence `build/franglais_stub.bin`, absent d'un checkout nu -- un
  `head -c 4096 /dev/zero > build/franglais_stub.bin` suffit pour faire
  passer le LINK, pas le check sha1, qui échouera TOUJOURS même sur un
  match parfait puisque la ROM est désormais intentionnellement non-
  vanilla). **Nouveau standard de vérification** (`main`, confirmé avec
  Mathias) : vérifier CHAQUE fonction ISOLÉMENT --
  1. taille du `.text` du `.o` fraîchement compilé comparée à
     `next_addr - this_addr` (`arm-none-eabi-objdump -h build/src/code_ADDR.o`) ;
  2. diff de désassemblage borné à cette taille exacte contre l'original
     (`--adjust-vma=0x08000000`, piège déjà documenté plus bas) --
     **vérifier le vrai CONTENU octet à octet, pas seulement que le
     symbole atterrit à la bonne adresse dans `fomt.map`/le lien.** Bug
     réel vécu (round 12/w35) : un premier commit passait le check
     "adresse correcte après lien" alors que le nombre d'instructions
     était identique mais leur ORDRE/registres différaient -- seul un
     diff direct de l'ELF lié contre `baserom.gba` à l'adresse cible l'a
     révélé. L'adresse qui atterrit juste ne prouve que la TAILLE est
     bonne, pas le contenu ;
  3. optionnellement, un lien complet (avec le `franglais_stub.bin`
     factice ci-dessus) pour vérifier l'absence d'erreur structurelle
     (référence non définie, définition multiple) -- ça prouve l'absence
     de régression de lien, pas la correction de la fonction elle-même.
  Le harnais rapide (compilateur+assembleur sans lien, section dédiée
  plus bas) reste la meilleure vérification PENDANT le tâtonnement, quel
  que soit ce standard.
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
- **Avant de créer un nouveau worktree avec `git worktree add ... main`,
  vérifier que le checkout principal est vraiment SUR `main`** (`git
  branch --show-current`), pas juste faire confiance au nom de branche
  passé en argument. Bug réel vécu : le checkout principal s'est
  retrouvé basculé sur une autre branche locale (`franglais-poc`, créée
  par un agent externe) sans que personne ne le remarque -- tous les
  merges ont continué à landing sur cette branche, `main` est resté figé
  ~19 commits en arrière pendant plusieurs heures, et deux nouveaux
  worktrees ont été créés par erreur depuis ce `main` périmé (détecté
  seulement en comparant `git log --oneline -3` du nouveau worktree
  contre le checkout principal -- décalage flagrant). Fixé par fast-
  forward (`git branch -f main franglais-poc && git checkout main`) une
  fois confirmé que les deux branches n'avaient pas divergé
  (`git merge-base --is-ancestor main franglais-poc`). Réflexe : après
  toute intervention d'un agent externe sur ce dépôt, revérifier
  `git branch --show-current` avant de continuer à merger/créer des
  worktrees.
- **Après un merge, même sans conflit signalé par git : chercher les
  doublons silencieux.** Bug réel vécu (merge `parallel-18`, commit
  documenté dans `git log`) : deux worktrees indépendants peuvent chacun
  ajouter le même contenu sans que git ne voie de conflit -- un côté sous
  un label local `.LADDRESS` (octets bruts jamais matchés), l'autre en
  C fraîchement matché (`src/code_ADDR.cc`). Aucune collision de symbole
  global, donc AUCUNE erreur de link, juste une ROM plus grosse que
  prévu. Réflexe après tout merge touchant des fonctions nouvellement
  matchées : `grep -rl -- ".LADDRESS" asm/*.s` pour chaque adresse
  nouvellement matchée par les DEUX branches fusionnées. Si le rebuild
  final ne matche pas malgré des fichiers individuellement corrects,
  comparer la taille du binaire/`l_iwram_lma` à l'attendu -- un écart net
  de N octets pointe directement vers un blob dupliqué de N octets.

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

### 1bis. Formule pour déduire la largeur/position exacte d'un bitfield
lu via double-shift AVANT d'écrire le C

Quand le désassemblage lit directement un champ via `ldrb`/`ldrh`/`ldr`
suivi d'une paire `lsls #S1` puis `lsrs #S2` (sans `ands` entre les deux),
c'est l'extraction d'un champ non-signé de largeur `N = 32 - S2` bits,
démarrant au bit `P = (32 - S1) - N` du mot chargé. Vérifié round 7
(`func_08010F04`, `S1=27,S2=31` -> 1 bit à `P=4` soit masque `0x10` ;
`func_08010F1C`, `S1=25,S2=26` -> 6 bits à `P=1` soit masque `0x7E>>1`).
Écrire le C en double-shift littéral (`(u32)(champ) << S1 >> S2`), pas en
`(champ >> P) & mask`, cohérent avec l'anti-pattern #1 ci-dessus -- les
deux formes ont le même résultat arithmétique mais seule la première
reproduit l'absence de `ands`/littéral dans le désassemblage cible.

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

### 4bis. `champ_u16 & 0xFFFF` en une seule expression se fait éliminer
par agbcp -- séparer le load dans une statement à part

Découverte round 6 (`func_0800736C`) : contrairement à l'anti-pattern #1
(qui parle d'un masque plus GROS que prévu), agbcp a un vrai peephole,
étroit mais réel, qui élimine un `champ & 0xFFFF` quand `champ` est un
membre `u16` lu et masqué dans LA MÊME expression (ex. `return
((ent->champ & 0xFFFF) << 4) | ...;`) -- le `ands` disparaît
complètement, aucun load de littéral. Si le désassemblage montre un
`ldrh` immédiatement suivi d'un `ands`, mais qu'écrire `champ & 0xFFFF`
directement dans l'expression finale fait disparaître le `ands` chez
nous, **séparer le load dans une statement à part** (`unsigned int tmp =
ent->champ; return ((tmp & 0xFFFF) << 4) | ...;`) déjoue ce peephole
précis et reproduit le `ldrh`+`ands` exact. Généralisé round 9 : ce
peephole n'est pas limité à "une seule variable, même expression" --
empiriquement, il s'applique à **toute variable locale dont l'adresse est
prise, tant que son cycle de vie complet reste visible dans UNE fonction
sans que l'adresse ne s'échappe vers un appel externe opaque**. Voir
`DECOMP_ARCHIVE.md`, saga `SmartPtr`/`func_08004C68`, pour le détail
complet des 7 hypothèses testées sur ce terrain.

### 5. Ordre des instructions = ordre des statements C, littéralement

Confirmé dès le round 1 (`func_0805E6CC`) et jamais contredit depuis :
écrire le C dans le MÊME ORDRE que les lectures/calculs/écritures visibles
dans le désassemblage original, même quand un ordre différent serait
sémantiquement équivalent. agbcp ne réordonne quasiment rien -- le
statement order EST l'instruction order, décalé par le register
allocation.

**5bis. La règle #5 s'applique aussi à l'ordre des SOUS-EXPRESSIONS à
l'intérieur d'une même expression arithmétique**, pas seulement à l'ordre
des statements entiers. Vu round (worktree w20, `func_080D6D98`) :
`self + num - 1` (parsé `(self+num)-1`, associativité gauche standard du
C) compile un `adds` avant le `subs` ; le désassemblage cible faisait le
`subs #4` AVANT le `adds`. Seule la parenthèse explicite `self + (num -
1)` reproduit cet ordre exact, alors que les deux formes sont
arithmétiquement identiques. Signal pratique : si une expression
mélange `+`/`-` sur un pointeur et que la taille matche mais l'ORDRE des
deux instructions correspondantes est inversé, tenter de reparenthéser
l'expression avant de chercher une explication plus compliquée.

### 5ter. Guard clause précoce vs `if (valide) { ... } return invalide;`
en fin de fonction

Un `if (cond_invalide) return valeur_par_défaut;` placé EN PREMIER dans une
lecture naturelle du C n'est pas forcément placé en premier dans la vraie
source. Si le désassemblage montre le stub "cas invalide" collé juste
AVANT l'épilogue (fall-through direct, aucun branchement nécessaire pour
lui), et le chemin valide se terminant par un branchement explicite qui
saute PAR-DESSUS ce stub pour atteindre l'épilogue, c'est le signe que la
vraie source enveloppe le chemin valide dans un bloc et laisse le retour
par défaut en DERNIER : `if (valide) { ...corps entier...; return kind; }
return 0;`, pas `if (!valide) return 0; ...corps...`. Vu 2 fois dans la
même fonction (round 6, `func_0804E4AC`) : une fois pour la validité du
code de retour de `ResolveGlyph`, une fois pour le dispatch aligné/non
aligné (le bloc "non aligné" est physiquement en fin de fonction, pas
inline après le test).

### 6. Comparaisons/tests booléens répétés -> variables de drapeau
séparées, jamais un `&&` combiné

Généralisation du motif déjà noté pour `func_0800736C` (round 2) : quand
le désassemblage montre un test booléen construit explicitement en deux
temps (`movs r,#0; ...cmp/branche...; movs r,#1;` PUIS un second test
séparé sur ce registre, `cmp r,#0; beq`), la source C réelle a très
probablement deux VARIABLES DE DRAPEAU distinctes testées l'une après
l'autre (`x_ok = (x&7)==0; if (x_ok) { y_ok = (y&7)==0; if (y_ok) {...} }`),
pas un unique `if (cond1 && cond2)` combiné -- même si sémantiquement
identique sous évaluation court-circuit, la forme combinée compile sans
la construction explicite de drapeau (juste `ands`+`cmp`+`bne` direct par
condition, sans le double `movs`). Vu sur `func_0804E4AC` round 6 (test
d'alignement x/y) en plus du cas round 2 déjà connu.

### 7. Type des variables de "code retour discriminant" (`kind`,
`résultat`, etc.) = TOUJOURS unsigned si comparé avec un idiome de
range-check

Si le désassemblage utilise une comparaison UNSIGNED (`bls`/`bhi`/`bcs`/
`bcc`) sur une variable qui contient un petit résultat discriminant
(0/1/2, jamais négatif), la typer `int` produit un `ble`/`bgt` SIGNÉ à la
place -- byte-identique en taille, mais un mnémonique différent, donc pas
bit-exact. Toujours typer ces variables `u32`/`unsigned`, jamais `int`,
dès que UNE SEULE comparaison sur elles est unsigned dans le
désassemblage (round 6, `func_0804E4AC`, `kind`).

### 8. Appel explicite de destructeur sur un membre polymorphe : toujours
qualifier

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

### 9. `SmartPtr<T>` : ne jamais nommer localement une valeur de retour

`SmartPtr<T>::SmartPtr(SmartPtr&)` (`include/smart_ptr.hh:47`) est
**privé et no-op** (ne recopie même pas `inner`). Conséquence directe
pour tout `Run()`/méthode qui retourne un `SmartPtr<T>` par valeur :
`SmartPtr<T> ret(ptr); return ret;` **ne compile pas** (tentative
d'appel au copy-ctor privé). Le seul idiome correct est de construire
le temporaire directement dans l'expression `return` :
`return SmartPtr<T>(ptr);` -- le compilateur construit alors la valeur
directement dans le slot de retour caché (convention ABI CFront/ARM
pour les types à destructeur non-trivial). `SmartPtr<T>::Move()` (ligne
38-43 du même header) **est déjà implémenté**, pas un stub -- ne pas
supposer que c'est la pièce manquante d'un near-miss sans l'avoir vérifié
(confusion vécue round 9/w21, corrigée : le `// TODO` du header porte
sur autre chose).

### 10. Taille d'une allocation (`operator new(SIZE)`) : toujours un
littéral hex simple, jamais la décomposition `movs #k; lsls #n` à la main

Quand le désassemblage montre une taille d'allocation matérialisée via
`movs #k; lsls #n` (ex. `0xe2 << 3` pour `0x710`), écrire directement le
littéral final en C (`operator new(0x710)`) -- **ne pas** essayer de
reproduire la décomposition shift à la main. agbcp choisit lui-même
l'encodage depuis la valeur littérale simple, aussi bien pour les tailles
shift-décomposables (`k<<n`, `k` tenant sur 8 bits) que pour celles qui
retombent sur un vrai chargement depuis le pool littéral (aucune
décomposition `k<<n` possible, ex. `0xB78`/`0x98C`) -- vérifié bit-exact
sur 18 sites round 10 sans qu'aucun n'ait nécessité d'écriture manuelle
de la constante. Généralisation directe de l'anti-pattern #1 (masques) à
un autre contexte de matérialisation de littéral : laisser le
compilateur choisir la forme, ne pas la deviner depuis le désassemblage.

### 11. Un "spill" apparent avant un mur de pression de registres peut
être une variable-copie explicite de la source, pas un artefact
d'allocateur

Avant de conclure qu'un near-miss d'1 instruction sur une fonction à
forte pression de registres est un mur d'allocateur (irrécupérable) :
vérifier si le désassemblage relit une valeur depuis un emplacement
mémoire/registre DIFFÉRENT de celui où elle vient d'être écrite. Si oui,
c'est probablement une VARIABLE-COPIE explicite dans la source C
originale (`u32 br_tile_x = tile_x;` -- l'écriture initiale EST le
"spill" apparent, sa seule relecture plus tard EST le "reload" apparent),
pas un artefact de l'allocateur. A débloqué `DrawGlyphAt`/`func_0804E4AC`
(round 9, agent `fable`) après 4 tentatives fermées à tort comme "mur
d'allocateur agbcp" -- voir `DECOMP_ARCHIVE.md` pour le détail complet
(4 variantes du même idiome dans une seule fonction). Généralise à toute
future cible de la classe "pression de registres" : chercher l'aliasing
explicite avant d'abandonner.

### 12. `x & 1` testé dans un `if` : `!!(x & 1)` force l'écriture du
résultat DANS le registre-maison de `x`, `x & 1` nu le laisse dans un
registre scratch

Near-miss d'1 instruction vu round 10 (`func_080D7944`, worktrees w28 puis
w30) : le désassemblage cible fait `movs r0,#1` puis `ands r5,r0` (le
masque écrase le registre déjà alloué au paramètre `flags`, ici `r5`),
alors que TOUTE formulation naïve de `if (flags & 1)` -- y compris
`flags &= 1; if (flags)`, `flags = flags & 1;`, `if ((flags &= 1) != 0)`,
une variable intermédiaire nommée, ou un `do {} while(0)` autour -- compile
systématiquement en `ands r0,r5` (résultat dans un registre scratch,
`flags` intact mais mort ensuite, la "sauvegarde" vers son propre registre
étant éliminée comme store mort). La seule formulation qui a fonctionné :
la double négation explicite **`if (!!(flags & 1))`** -- le `!!` déclenche
chez agbcp un chemin de normalisation booléenne différent qui réécrit le
résultat dans le registre du paramètre au lieu de le garder en scratch,
même si `flags` n'est jamais relu après. Signal pratique : si un `if (x &
CONST)` résiste à toute reformulation de l'expression/l'assignation et
que l'écart residuel est *exactement* "le AND écrit dans le mauvais
registre" (taille identique, un seul encodage différent), essayer `!!()`
avant de conclure à un mur d'allocateur irrécupérable.

### 13. Argument scalaire "flag" débordant sur la pile (au-delà de r0-r3) :
typer `bool`, pas `char`/`u8`

Quand un appel passe plus de 4 arguments et que le désassemblage montre,
pour l'un des arguments en trop (stocké sur la pile), une paire `add rX,
sp, #N; strb rY, [rX]` (store d'un OCTET via adresse calculée) plutôt
qu'un `str rY, [sp, #N]` (mot) direct : typer ce paramètre `char`/`u8`
dans le prototype C++ compile mais produit un `str` (mot) -- agbcp
promeut apparemment `char` comme les autres scalaires dans ce contexte
d'argument-sur-pile. Typer **`bool`** (et passer `true`/`false`) restaure
exactement la paire `add`+`strb`. Vu round (worktree w40, famille
"entity factory" de 38 sites autour de `func_080324BC`) : bit-exact sur
tous les sites une fois `char d` remplacé par `bool d`.

### 14. Découpage : un `.align 2, 0` en fin de bloc cible appartient à la
frontière suivante, pas à la fonction portée

Si le bloc `thumb_func_start` de la cible se termine par un `.align 2, 0`
explicite juste après son dernier `bx`/`pop`/branchement de retour (padding
zéro visible quand la fonction compte un nombre impair d'instructions
16-bit) : NE PAS l'inclure dans le C à porter ni le supprimer avec le
reste du bloc -- le faire migrer en tête du fragment `asm/*.s` SUIVANT
(avant son propre `thumb_func_start`), comme une ligne de plus dans le
header standard. Le padding implicite de fin de section qu'`as` ajoute
déjà à l'objet compilé de la fonction portée rend cet `.align` déplacé un
no-op inoffensif la plupart du temps (pas de doublon de padding) --
vérifier via `objcopy -O binary --only-section=.text` + inspection des
derniers octets (`00 00` attendu, pas un nop `c0 46`) plutôt que de
supposer. Vu round (worktree w40) : 8 sites sur 38 concernés, détecté par
une comparaison octet-à-octet (pas seulement mnémonique) entre le bloc
original réassemblé tel quel et le C compilé.

### 15. Argument d'appel nécessitant un littéral non shift-décomposable :
TOUJOURS hissé avant le montage des arguments-pile, indépendamment de
l'ordre déclaré en C

Near-miss root-causé pour de bon round (worktree w47, `func_08037B48`/
`func_08037B80`) : quand un appel à 5+ arguments passe une constante
"kind"/"tag" qui doit être chargée depuis le pool littéral (impaire, ou
`> 0xFF`, donc pas exprimable en `movs #k; lsls #n`), agbcp calcule
TOUJOURS ce littéral AVANT de monter le(s) argument(s) passé(s) sur la
pile -- quelle que soit la position de cet argument dans la liste
déclarée en C, et quel que soit l'ordre des sous-expressions écrit
(cf. règle 5bis). Contrairement aux autres near-miss de ce fichier, **ce
n'est pas un idiome C à trouver -- c'est structurellement infaisable**
tant que la constante en cause n'est pas shift-décomposable : le seul
gain possible serait de rendre le littéral décomposable, ce qui changerait
la valeur elle-même, ou de renoncer si aucune formulation ne fait passer
le calcul du littéral après le montage de la pile. Signal pratique : si un
near-miss résiste à 5+ reformulations C ET que l'écart concerne
spécifiquement quel calcul (littéral vs argument-pile) est fait en
premier, vérifier si la constante en cause est shift-décomposable AVANT
de chercher encore une forme C -- si non, fermer la piste plutôt que de
continuer à itérer.

### 16. Masque de clear construit par négation (`movs #N; negs`) sur un champ
de largeur FIXE : c'est le codegen d'une vraie affectation de bitfield
struct, pas un artefact d'expression `v & ~mask` à deviner

Near-miss root-causé pour de bon round w49 (`func_08050EE4`/
`func_080512D8`, après 2 échecs w39/w41 sur `v & ~0x3F`/`v & ~0x1F` en
`u8`/`u32` local) : quand le désassemblage construit le masque de clear
d'un champ via `movs rX,#N; negs rX,rX` (`N` = largeur du champ codée en
positif, `~mask = -(mask+1) = -N`) plutôt qu'un immédiat direct, **et que
la largeur du champ est FIXE à la compilation** (pas un paramètre
d'appel), ce n'est presque jamais reproductible en écrivant `v & ~mask`
à la main sur un entier brut -- agbcp plie systématiquement ce genre
d'expression en immédiat direct, quelle que soit la formulation
(variable locale nommée ou non, `u8` ou `u32`). **C'est le codegen normal
d'agbcp pour une vraie affectation `self->champ = valeur;` sur un membre
`: N` d'un `struct` C avec bitfields** (style déjà utilisé partout dans ce
dépôt, `barn.hh`/`coop.hh`/`bachelorette.hh`) : le compilateur choisit lui-
même l'unité d'accès (octet/demi-mot/mot) la plus étroite qui couvre
entièrement le champ visé, et matérialise le masque de clear via
négation quand `largeur_masque+1` tient dans un immédiat 8 bits (sinon,
littéral pool 32 bits direct pour le masque déjà négé). Modéliser le
mot/octet packé comme un vrai `struct { u32 a:5; u32 b:10; ...};` et
assigner champ par champ (dans l'ordre du désassemblage, cf. règle 5)
reproduit l'unité d'accès ET la construction du masque, y compris le cas
où 2 bitfields de largeur 1 partageant le MÊME octet se retrouvent
fusionnés en un seul `ldrb`/`strb` (un seul accès mémoire couvrant les 2
micro-champs). **Signal pratique pour distinguer ce cas du cas non
résolu** (masque construit à partir d'un paramètre d'appel dynamique,
ex. `func_08050E98`/`func_08050EBC`, toujours ouvert) : si le "masque" à
appliquer vient d'un REGISTRE ARGUMENT (pas d'un littéral connu à la
lecture du désassemblage), ce n'est PAS une simple affectation de
bitfield à largeur fixe -- cette règle ne s'applique pas, ne pas
retenter la modélisation bitfield-struct sans nuance.

**16bis. Reste de l'écart après le fix bitfield-struct, spécifique aux
constructeurs : si le désassemblage restaure `lr` dans un registre
scratch DIFFÉRENT de celui qu'une version `void` naïve produit (ex.
`pop {r1}; bx r1` au lieu de `pop {r0}; bx r0`), essayer `return self;`
(ou `return self_;`) explicite avant de chercher ailleurs** -- une fois
`r0` occupé par la valeur de retour vivante (convention ARM/CFront pour
les ctors, cf. règle 9/`SmartPtr`), agbcp restaure `lr` dans le prochain
registre scratch libre (`r1`) plutôt que `r0`. Vu 2 fois d'affilée same
round (`func_08050EE4`, `func_080512D8`) : le fix bitfield seul ne
suffisait pas tant que la fonction restait typée `void`.

## Classes de difficulté à connaître AVANT de choisir une cible

Deux classes ont un historique de récidive documenté en détail dans
`DECOMP_ARCHIVE.md` -- lire la section correspondante avant de s'engager :

- **"Pression de registres"** : fonctions à beaucoup de valeurs vivantes
  simultanément (`r4`-`r7`+`r8`/`sb`/`sl`/`ip`). Plusieurs échecs
  documentés, dont `DrawGlyphAt` fermée après 4 tentatives sérieuses avec
  un écart irréductible de 2 octets. **Ne pas s'engager sans budget dédié
  et une idée réellement neuve.**
- **"ABI partagée entre `bl`"** (`Unpack` et son arbre d'appel) :
  **structurellement infaisable en C**, pas un problème de forme --
  retirée définitivement de la liste des cibles.

Signal d'alerte AVANT de commencer une tentative : si le désassemblage
utilise déjà `r8`/`sb`/`sl`/`ip` simultanément dans le corps (pas juste au
prologue/épilogue), ou si un registre `r0`-`r3` est réutilisé après un
`bl` sans rechargement visible, s'arrêter et lire `DECOMP_ARCHIVE.md`
avant de continuer.

**Stratégie d'escalade sur une cible bloquée (préférence de Mathias)** :
`DrawGlyphAt` (round 9, worktree `w22`) a montré qu'un modèle `fable`
peut débloquer une cible "pression de registres" fermée après plusieurs
échecs `sonnet` -- l'idée neuve manquait, pas l'exécution. Deux options
d'escalade, dans cet ordre de préférence :
1. **Plus économe (préférée)** : demander à un agent `fable` seulement
   des PISTES/hypothèses neuves sur la cible bloquée (pas d'exécution),
   puis confier ces pistes à un agent `sonnet` pour les tenter. La valeur
   de `fable` ici est l'angle créatif, pas le travail d'exécution brut.
2. **Plus coûteuse (repli)** : dédier un agent `fable` complet à
   l'attaque de bout en bout (ce qui a été fait pour `DrawGlyphAt`,
   justifié par 4 échecs `sonnet` déjà accumulés sur exactement le même
   écart).
Par défaut, préférer l'option 1 sauf si la cible a déjà échoué plusieurs
rounds ou bloque un bug ouvert (justifiant le coût de l'option 2).

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
8. **Mécanique `.text.code_ADDR` (linkonce/COMDAT)** : `asm/code_linkonce.s`
   regroupe QUELQUES sections `.text.code_ADDR` explicites par plusieurs
   fonctions. Un wildcard `*(.gnu.linkonce.t.NOM_MANGLE)` juste après une
   entrée `asm/code_linkonce.o(.text.code_ADDR)` dans `fomt.lds` N'EST PAS
   FORCÉMENT INERTE -- il peut matcher une vraie instanciation de template
   occupant un gap d'adresses juste AVANT la section suivante. Si
   `make compare` échoue avec un GROS bloc de diffs contigu démarrant
   pile à l'adresse de la fonction découpée, comparer `fomt.map` à
   l'adresse attendue : un désaccord pointe vers un problème d'ORDRE dans
   `fomt.lds`, pas de contenu. Les nouvelles entrées doivent être insérées
   immédiatement après l'entrée `asm/code_linkonce.o(.text.code_ADDR)`
   d'origine, AVANT tout wildcard qui suivait déjà cette entrée.

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

## Scan systématique des blobs `.byte` cachés

`python3 tools/scripts/scan_hidden_code_blobs.py` (aucune dépendance hors
stdlib, déjà commité) parcourt tout `asm/*.s`, repère les blocs purement
`.byte` (jamais `.4byte` -- convention du dépôt : `.4byte` =
littéral/pointeur légitime, `.byte` = octets bruts jamais désassemblés)
de 4 à 40 octets coincés entre deux VRAIES fonctions (`thumb_func_start`),
et tente un désassemblage Thumb partiel maison pour juger la plausibilité
(tous les halfwords doivent décoder vers un mnémonique connu, le dernier
doit être un branchement/`bx` -- signal fort, pas une preuve : la
vérification réelle reste toujours désassemblage manuel -> harnais rapide
-> `make compare`). Round 9 a matché 16 fonctions en une passe avec cette
méthode -- voir `DECOMP_ARCHIVE.md` pour le détail.

**Piège de parsing vécu** : `thumb_func_start NAME` apparaît textuellement
comme fin du bloc PRÉCÉDENT dans un parseur ligne-par-ligne naïf (pas comme
un "préfixe" du bloc `NAME:` qui suit) -- toujours vérifier l'adjacence
`thumb_func_start` en regardant la QUEUE du bloc précédent.

**Discipline appliquée à chaque candidat** (à ne pas raccourcir même sous
pression de temps) : désassembler les octets bruts (`arm-none-eabi-objdump
-D -bbinary -marmv4t -Mforce-thumb --adjust-vma=0x08000000`), vérifier
qu'aucun appelant symbolique n'existe (grep négatif attendu, pas anormal
en soi), écrire le C candidat, compiler via le harnais rapide, comparer
octet à octet, PUIS SEULEMENT appliquer au fichier `asm/*.s` + `fomt.lds`
+ rebuild propre complet + `sha1sum -c fomt.sha1` avant CHAQUE commit (un
blob = un commit). Ne jamais laisser un candidat "vérifié en harnais"
sans l'appliquer immédiatement.

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
  (ex. la famille de ~37 destructeurs apparentés à `func_08004C54`). Si
  la fonction est du C procédural pur dans l'original (pas de `this`,
  pas de vtable -- utilitaires bas niveau type décompression/rendu,
  comme `DrawString`/`DrawStringRecolor` qui prennent `dims, dest, x, y,
  s` en arguments plats), rester en C simple -- inventer une structure
  OO qui n'existe pas dans le binaire serait deviner, contraire à la
  discipline du dépôt.
- **Quand une fonction fraîchement portée appelle une fonction DÉJÀ
  portée (déjà matchée dans ce dépôt), référencer son nom sémantique,
  pas son alias `func_ADDR`** -- ça rend le corps du call-site
  auto-documenté. Ne s'applique évidemment qu'aux fonctions déjà portées
  avec un corps réel dans ce dépôt.
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
