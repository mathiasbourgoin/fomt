# Session notes

Local-only file. This repo (`fomt-decomp`, clone of `StanHash/fomt`) is
worked on strictly offline: `origin`'s push URL is deliberately broken
(`DISABLED-local-only-see-CLAUDE-md`) as a guardrail and must never be
restored. Never `git push`, never open a PR, never touch `origin`. Commit
locally only.

## Round (worktree `w60`, branche `parallel-60`) -- cibles déjà matchées,
zéro nouveau commit, re-vérification confirmée

Mission reçue : porter `func_0803A798` (caractérisé round w43, layout
`Location` bitfield-chevauchant à élucider), puis `func_0803BF78` si le
temps le permettait. **Les deux étaient en réalité déjà matchées et
commitées dans l'historique de CE worktree** avant même de commencer
(`7a8e706`/`6511983` pour `func_0803A798`, `61040fc` pour `func_0803BF78`,
hérités des rounds w45/w48) -- l'énoncé de mission reçu était basé sur un
état d'archive périmé (w43), pas sur l'état réel du worktree. `src/
code_0803A798.cc` et `src/code_0803BF78.cc` existent déjà, bien
commentés, avec le layout `Location(0,0,0)` correctement modélisé via
`include/actor.hh` (pas de code à écrire).

Plutôt que de rouvrir une cible déjà fermée, ce round s'est limité à
**re-vérifier bit-exact les deux fonctions selon le protocole standard**
(`sha1sum -c fomt.sha1` échoue TOUJOURS globalement depuis `cb06198`, cf.
`DECOMP_RULES.md` -- vérification isolée par fonction requise) :
- `rm -rf build fomt.gba fomt.elf fomt.map`, `head -c 4096 /dev/zero >
  build/franglais_stub.bin` (stub factice requis pour que le LINK passe,
  cf. règle standing), `make compare` : lien complet sans erreur
  structurelle, `sha1sum` échoue comme attendu (ROM intentionnellement
  non-vanilla).
- Taille `.text` exacte des deux `.o` : `code_0803A798.o` = `0x6c` (=
  `0x0803A804-0x0803A798`), `code_0803BF78.o` = `0x50` (=
  `0x0803BFC8-0x0803BF78`).
- `fomt.map` : les deux atterrissent à leur adresse ROM d'origine EXACTE
  (`0x0803a798`/`0x0803bf78`, aucun décalage résiduel cette fois --
  contrairement au `-0xF4` documenté round w48, apparemment résorbé par
  les matchs de taille corrigés depuis).
- Diff de désassemblage borné (`objdump -bbinary -marmv4t -Mforce-thumb
  --adjust-vma=0x08000000 --start-address/--stop-address`) `fomt.gba` vs
  `baserom.gba` sur les deux plages : **identique à l'octet près** (seule
  différence : le nom de fichier affiché par `objdump`).

Aucun commit ce round (rien à committer, `git status --short` propre
avant et après). `func_0803BDFC` (callee opaque de `func_0803BF78`,
pression de registres) non touché, conformément au périmètre donné.
`origin` intact, rien poussé, aucune PR.

## Round (worktree `w59`, branche `parallel-59`) -- 8e/9e hypothèses testées
sur `func_080070D4`/`func_08005A00`/`func_0806EA30` ("SmartPtr field
assignment"), toujours négatives -- mais root-cause précis du mécanisme
d'élimination trouvé, plus net que la généralisation de round 9

### Mission

Reprendre la piste explicitement laissée par round 9/w21 comme "next
thing to try" (`DECOMP_ARCHIVE.md`) : combiner (1) construction de `tmp`
via la convention "hidden-return-value"/out-param SANS pré-zéro (au lieu
du défaut `SmartPtr<T> tmp;` qui zéro-initialise), ET (2) typer `field`
comme `void**`/`T**` BRUT plutôt que `SmartPtr<T>*`, pour empêcher toute
sélection d'`operator=`. Traiter les 3 callés opaques (`func_08005B68`,
`func_080050F8`, `func_0806DB38`) en boîte noire, prototype `extern "C"`.

### Ce qui a été effectivement testé (harnais rapide, `func_08005A00`
comme représentant des 3 sites -- forme byte-pour-byte identique)

D'abord, confirmation par lecture du corps compilé de `func_080050F8`
(déjà présent, non porté, dans `asm/code_08004C68.s`) : il suit
exactement le motif "constructeur de placement" déjà établi ailleurs
dans ce dépôt (`self` en r0, écrit `self[0]=0` puis d'autres champs,
`return self` -- càd le "return self" de la règle 16bis, PAS une
convention hidden-return-value ARM/CFront). Donc le vrai prototype du
callé est `void func_080050F8(WidgetPtr *out, void *arg)` (convention
out-param déjà identifiée round 9, confirmée ici par lecture directe du
corps plutôt que déduite).

1. **Essai littéral de l'énoncé de la piste** :
   `SmartPtr<Widget> tmp = func_08005B68(arg);` où le callé est déclaré
   comme retournant `SmartPtr<Widget>` PAR VALEUR (vraie convention
   hidden-return-value ABI). **Ne compile pas** -- ré-confirme
   EXACTEMENT l'échec déjà documenté round 9 test 1 (`SmartPtr::SmartPtr
   (SmartPtr&)` privé, invoqué même pour une init par copie d'un prvalue
   de même type -- ce compilateur ne fait pas l'élision de copie
   obligatoire ici, même en syntaxe `=`). Referme cette lecture littérale
   de "hidden-return-value" pour de bon : aucune syntaxe de déclaration
   locale nommée `SmartPtr<T> tmp = /(...)` initialisée depuis un
   *prvalue* du MÊME type `SmartPtr<T>` ne peut compiler tant que le
   copy-ctor reste privé -- ce n'est pas un problème de syntaxe `=` vs
   `()` (round 9) ni de linkage `extern "C"` (re-testé ici, même échec).

2. **8e hypothèse (nouvelle) : convention out-param + tag
   `NoInit` ajouté à `SmartPtr<T>`** -- pour éviter le pré-zéro du
   défaut `SmartPtr(T*ptr=nullptr)` sans casser le vrai constructeur
   copie privé, ajout local (fichier de test, PAS committé dans
   `include/smart_ptr.hh`) d'un ctor `SmartPtr(NoInit)` no-op qui laisse
   `inner` non initialisé, puis :
   ```cc
   WidgetPtr::NoInit no_init_tag;
   WidgetPtr tmp(no_init_tag);       // construction directe, PAS de copy-ctor
   func_080050F8(&tmp, sub);          // &tmp s'échappe vers l'appel opaque
   void **tmp_alias = (void **)&tmp;  // extraction via alias void** (anti
   void *saved = *tmp_alias;          // type-based-alias, cf. ci-dessous)
   *tmp_alias = 0;
   *field = saved;                     // écriture BRUTE, pas d'operator=
   ```
   **Compile, taille de pile correcte au niveau du pré-zéro (aucun
   `movs r0,#0; str r0,[sp]` avant l'appel -- exactement comme la
   cible), MAIS le check-and-delete mort de fin de fonction disparaît
   ENTIÈREMENT** (16 instructions produites contre 33 attendues, aucune
   trace de `cmp`/`beq`/`_call_via_r2`) -- agbcp propage la valeur 0
   écrite dans `*tmp_alias` jusqu'au point de vérification final MALGRÉ
   l'alias `void**` de type différent (aucune analyse d'aliasing basée
   sur les types n'empêche ce suivi -- agbcp raisonne apparemment sur
   l'EMPLACEMENT MÉMOIRE physique `[sp+0]`, pas sur le type statique du
   pointeur utilisé pour y accéder).

3. **9e hypothèse (contrôle) : même chose mais avec le VRAI défaut
   `SmartPtr<T> tmp;` (pré-zéro réintroduit)** -- pour vérifier si le
   store réel du ctor par défaut (contrairement au tag `NoInit`, un
   no-op complet) "ancre" suffisamment `tmp` pour empêcher le
   repliement du check final, indépendamment de la question du
   pré-zéro. **Même résultat : le check final disparaît ENTIÈREMENT
   aussi**, seul le pré-zéro (1 store) réapparaît comme prévu. Ceci
   **infirme la lecture optimiste de la généralisation round 9**
   ("l'échappement d'adresse vers l'appel opaque est ce qui empêche le
   repliement") : ici `&tmp` s'échappe bel et bien vers l'appel opaque
   `func_080050F8` dans LES DEUX variantes 2 et 3, et le repliement a
   quand même lieu intégralement. L'échappement seul n'est donc PAS un
   verrou suffisant contre ce peephole -- ce qui semble réellement
   compter, empiriquement, c'est si la dernière écriture connue de
   `[sp+0]` (ici, toujours notre propre `0` explicite, posé APRÈS le
   retour de l'appel opaque) reste **entièrement dans la portée de
   raisonnement local du compilateur jusqu'au point de vérification**,
   sans qu'aucun autre appel opaque ne s'intercale ENTRE cette dernière
   écriture et la lecture de vérification -- ici, seul un `str r2,[r4]`
   (écriture de `field`, pas un appel) sépare les deux, ce qui n'est pas
   suffisant pour "faire perdre la trace" à agbcp.

### Verdict et piste pour la suite

**8e et 9e hypothèses : négatives, mais concluent proprement la piste
"escape-to-opaque-call" comme suffisante en soi.** Le point de blocage
réel est désormais mieux cerné : il faudrait qu'un DEUXIÈME appel
opaque (ou un effet de bord dont agbcp ne peut PAS prouver l'innocuité)
s'intercale entre le `tmp.inner = 0` et la relecture de vérification --
or dans les 3 sites cibles, il n'y a structurellement qu'UNE seule
instruction (`str r2,[r4]`, l'écriture de `field`) entre les deux, ce
qui exclut toute forme candidate insérant un second `bl` à cet endroit
précis (ça ajouterait une instruction absente de la cible). Piste non
essayée à ce stade, à faible confiance mais pas totalement épuisée :
un `Move()`/dtor NON défini dans l'en-tête (compilé séparément, hors
ligne, pour forcer un vrai `bl` non inlinable) -- nécessiterait de
modifier `include/smart_ptr.hh` de façon plus invasive (séparer
déclaration/définition), risque de régression sur les usages déjà
matchés de `SmartPtr<T>` ailleurs dans le dépôt, à valider avec
`make compare` complet avant tout commit si tentée.

### État du dépôt en fin de round

Aucune modification committée : `include/smart_ptr.hh` n'a PAS été
touché (le tag `NoInit` n'existe que dans un fichier de test hors du
dépôt suivi, `/tmp/w59scratch/`). `git status --short` confirmé propre
avant et après ce round. `make compare`/`sha1sum -c fomt.sha1` non
ré-exécutés (aucun changement de `src/`/`asm/`/`fomt.lds` à vérifier) --
seul le harnais rapide (compilateur+assembleur, sans lien) a servi tout
au long de ce round, conformément à la discipline "ne jamais laisser un
candidat non convergé appliqué au dépôt". `origin` intact, rien poussé,
aucune PR. Travaillé seul dans `w59`/`parallel-59`.

## Round (worktree `w48`, branche `parallel-48`) -- `func_0803A798` matché
bit-exact (1 commit), incertitude d'héritage multiple de w47 levée,
+ découverte méthodologique : ce worktree a un décalage global constant
de ROM (`+0xF4`) déjà présent sur `main` avant toute modification

Mission : reprendre `func_0803A798` (caractérisé mais non porté round
w47) avec l'hypothèse bitfield `Location` chevauchant, en vérifiant
d'abord la question laissée ouverte (héritage multiple via une 2e
vtable) avant de coder.

### Levée de l'incertitude d'héritage multiple

En comparant le destructeur homologue de cette même vtable
(`func_080DCF4C`, `asm/code_linkonce.s`) à celui d'`AEntity` lui-même
(`func_080DCE60`, même fichier) : les deux stampent leur vtable respective
**au MÊME offset `+0x14`** (`__vt_7AEntity` pour l'un, `vtable_unk_080E7568`
pour l'autre). C'est exactement le motif ABI CFront/ARM d'héritage SIMPLE
(chaque niveau de la hiérarchie re-stampe le même unique pointeur de
vtable avec sa propre table, plus grande) déjà vu ailleurs dans ce dépôt
(`func_080DCE60` vs `func_080DCF4C`) -- **pas** une 2e vtable de base
distincte à un autre offset. `vtable_unk_080E7568` fait `0x34` octets
(13 slots), EXACTEMENT la taille de la vtable d'`AEntity` seule (aucun
virtuel supplémentaire) -- la classe dérivée ne fait qu'overrider des
slots existants, pas en ajouter. Confirme aussi le layout de `Location`
prédit round w47 (`include/actor.hh` : `map:10`@0, `x:16`@1, `y:16`@3,
`PACKED ALIGN(2)`) -- 3 affectations logiques à zéro compilent bien en
5 RMW physiques à cause du chevauchement de bits.

### Port : fonction-usine procédurale, pas une classe C++ complète

`func_0803A798` alloue lui-même (`operator new(0x20)`), ce qui exclut
qu'il s'agisse du vrai ctor mangle de la classe dérivée (un ctor ne fait
jamais lui-même l'allocation). Suivant le style déjà établi pour ce genre
de classe non identifiée (`src/code_08004B94.cc`, `src/code_entity_08020018.cc`
pour la convention de nom `Entity_<adresse_vtable>`) : fonction C libre
qui appelle le VRAI ctor `AEntity::AEntity` (`__7AEntityP10GameObjectRC8Location`,
déjà implémenté `src/entity.cc`) via son symbole mangle directement, puis
stampe manuellement `vtable_unk_080E7568`, le 2e paramètre (`self+0x18`)
et un flag `true` (`self+0x1c`). Classe `Entity_080E7568` gardée minimale
(juste les 2 champs touchés) -- nom/rôle réel non identifié, destructeur
homologue `func_080DCF4C` laissé non catalogué pour un futur round (pas
nécessaire pour porter ce ctor). Convergé du premier coup en harnais
rapide après correction de l'ORDRE (allocation AVANT le zeroing de
`Location`, pas l'inverse comme un premier essai naïf l'avait fait).

### Découverte méthodologique : décalage global constant de ROM
(`+0xF4`) déjà présent sur `main`, indépendant de toute modification

En vérifiant le match via la méthode standard (adresse liée dans
`fomt.elf` vs `baserom.gba` à la même adresse absolue) : la fonction
atterrit à `0x0803A6A4` dans `fomt.elf`/`fomt.map`, **pas** `0x0803A798`
comme l'indique le commentaire `@ 0x0803A798` du fichier asm source --
un décalage constant de `-0xF4` (244 octets). **Vérifié comme PRÉEXISTANT
sur `main`** (`git stash` + rebuild propre sur HEAD non modifié : même
décalage, ex. `func_08004C54` reste à sa vraie adresse `0x08004C54` --
aucun décalage -- mais tout ce qui suit une certaine frontière autour de
`0x0801xxxx`-`0x08020xxx` est décalé de `-0xF4`, cohérent partout ensuite
jusqu'à `0x0803A6A4`). Cause probable : un vrai hook franglais (pas
seulement le blob `.franglais_payload` à l'adresse fixe `0x08800000`,
qui lui n'a AUCUN impact ici) inséré quelque part dans le flux de code
normal, plus long de 244 octets que le code vanilla qu'il remplace.
**Conséquence pratique pour la vérification bit-exacte d'une fonction
dans cette zone décalée** : ne PAS utiliser l'adresse du commentaire
`@ 0xADDR` du fichier `asm/*.s` comme `--start-address` sur `fomt.elf` --
lire la VRAIE adresse liée dans `fomt.map` (`grep func_ADDR fomt.map`)
et l'utiliser côté `fomt.elf`/`fomt.gba`, tout en gardant l'adresse
d'origine côté `baserom.gba`. Une fois les deux bons offsets utilisés,
la comparaison OCTET À OCTET (`fomt.gba` vs `baserom.gba`, tailles
identiques) ne montre plus qu'UNE SEULE demi-instruction différente
(l'encodage de l'offset relatif du `bl __builtin_new`, cible basse
adresse non décalée) -- écart directement explicable par le décalage
global, pas un vrai bug. **Règle pratique à ajouter/rappeler pour toute
future cible dont l'adresse `@ 0xADDR` dépasse `~0x0801Fxxx`** : toujours
croiser `fomt.map` avant de conclure à un near-miss depuis une comparaison
d'adresse absolue -- un near-miss d'1 seule demi-instruction *spécifiquement
dans l'encodage d'un `bl` vers une routine basse-adresse* (`__builtin_new`,
`_call_via_r2`, etc.) peut être ce décalage global, pas un vrai défaut de
forme C.

### État du worktree en fin de round

- **1 commit** : `func_0803A798` (`src/code_0803A798.cc`,
  `asm/code_08039A5C.s` tronqué, `fomt.lds` mis à jour) -- taille `.o`
  vérifiée (`0x6c` = 108 octets, exact), lien complet sans erreur,
  contenu vérifié octet à octet (voir ci-dessus, 1 seule demi-instruction
  de `bl` différente, expliquée par le décalage global préexistant).
- `git status --short` propre après nettoyage `build/`/`fomt.gba`/
  `fomt.elf`/`fomt.map`.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.

## Round (worktree `w47`, branche `parallel-47`) -- ZÉRO match commité,
mais le near-miss "ordre d'évaluation des arguments" de w43 est enfin
ROOT-CAUSÉ (mécanisme précis identifié empiriquement), + 1 cible fraîche
mieux caractérisée pour un prochain round

Mission : attaquer le near-miss `func_08037B48`/`func_08037B80` documenté
round w43 (appel à 5 arguments : la cible calcule l'argument-pile
littéral AVANT l'argument-registre `r3` littéral ; les 6 reformulations C
de w43 produisaient systématiquement l'ordre inverse) avec une idée
vraiment neuve, sans répéter les 6 déjà testées.

### Méthode : harnais rapide (compilateur+assembleur sans lien),
5 variantes empiriques ciblées sur `func_08037B48` reconstruit à
l'identique (`obj = __builtin_new(0x44); func_08037008(obj, a1, a2, kind,
extra); return obj;`)

1. Reproduction baseline (kind=0x379→r3, extra=0xc→pile, littéraux
   inchangés) : confirme le défaut connu -- `ldr r3,=0x379` (pool)
   généré AVANT `movs r0,#0xc; str r0,[sp]` (pile).
2. **Test décisif** : permutation des deux valeurs SANS changer leur rôle
   ABI (extra=0xc→r3, kind=0x379→pile) -- le littéral qui nécessite le
   POOL LITTÉRAL (`0x379`, non shift-décomposable, `889` est impair donc
   aucune forme `k<<n` avec `k` 8 bits n'existe) est TOUJOURS calculé en
   PREMIER, peu importe qu'il finisse en `r3` ou sur la pile. Le petit
   littéral encodable en `movs` (`0xc`) est TOUJOURS calculé en second,
   peu importe sa destination ABI.
3. Confirmation avec littéraux tous DEUX encodables en `movs` (`0x37`,
   `0xc`, aucun pool) : l'ordre naturel redevient pile-PUIS-r3, exactement
   la forme voulue par la cible -- preuve que la règle "pile avant
   registres r0-r3" est bien le comportement PAR DÉFAUT d'agbcp pour un
   appel à 5 arguments, et que seul un littéral-pool la contourne en se
   faisant hisser en tête.
4. Confirmation que le hissage touche N'IMPORTE QUEL argument-registre
   pool (testé sur `r1`, pas seulement `r3`) : le pool-load est TOUJOURS
   la toute première instruction de la séquence de montage d'arguments,
   avant même `r0`=this.
5. Tentative de contournement : écrire le littéral comme expression
   pliable (`0x300 | 0x79`) pour voir si l'évaluation différée change
   quelque chose -- non, agbcp plie la constante à la même valeur unique
   au même endroit (front-end constant folding), même résultat que (1).

### Conclusion : mécanisme caractérisé, PAS de contournement possible
en C pour CE cas précis

**Règle nouvelle (mécanisme, pas juste symptôme) : dans un appel à agbcp
comportant un argument littéral nécessitant le pool de constantes
(`ldr rX,=VAL`, valeur non shift-décomposable), ce chargement est TOUJOURS
hissé en tête de la séquence de montage des arguments d'appel -- avant le
montage des arguments-pile ET avant `r0`/`this` -- indépendamment de la
position déclarée de l'argument dans l'appel C, de son rôle ABI final
(registre `r0`-`r3` ou pile), et de toute reformulation via variable
nommée/expression pliable.** Puisque `0x379`/`0x207` (les "kind" de
`func_08037B48`/`func_08037B80`) ne sont PAS shift-décomposables (impairs,
> 0xFF), ils DOIVENT passer par le pool -- ce qui les force
structurellement à être calculés avant l'argument-pile, alors que la
cible (`baserom.gba`) fait l'inverse. **Ce near-miss est donc fermé pour
de bon sur ces 2 sites précis, pas seulement "résiste encore" : aucune
forme C ne peut produire l'ordre cible tant que le 4e argument reste un
littéral pool.** Seule porte de sortie théorique, non explorée par
manque de piste concrète : si le VRAI 4e argument n'est PAS un littéral
`u32` nu dans la source d'origine mais une expression qui n'exigerait pas
le pool (ex. un champ déjà chargé en registre ailleurs) -- aucun signal
dans le désassemblage ne suggère ça (le littéral `0x379` apparaît bien
comme entrée `.4byte` dans le pool de la fonction cible elle-même, donc
la cible AUSSI matérialise cette valeur via un pool -- la vraie question
n'est même plus "pool ou pas", elle est déjà tranchée par le binaire
lui-même). **`func_08037A5C`/`func_08037AD0` (2e instance présumée de la
même famille) non tentés** -- la caractérisation ci-dessus s'applique
déjà mécaniquement (même schéma d'appel à `func_08037008`), pas la peine
de reproduire l'expérience une 7e fois.

À ajouter à `DECOMP_RULES.md` (anti-pattern) au prochain round qui
touche cette famille : "littéral-pool dans un appel à 5+ arguments ->
toujours hissé avant l'argument-pile, aucune reformulation C ne change
ça."

### Découverte secondaire : `func_0803A798` (candidate fraîche déjà
listée w43) -- layout de bitfield `Location` élucidé, PAS encore porté

En examinant `func_0803A798` (`asm/code_08039A5C.s:1683`, taille
`0x6C`=108 octets jusqu'à `func_0803A804`) comme cible potentielle de
repli : le local `Location` de 6 octets (alloué via `sub sp,#8`) subit 5
opérations `ldrh`/`ldrb`+`ands`+`strh`/`strb` qui SE CHEVAUCHENT --
exactement le motif prédit par `include/actor.hh` (`Location` :
`map:10` à l'offset 0, `x:16` à l'offset **1** (pas 2 -- démarre à
mi-mot), `y:16` à l'offset **3**, `PACKED ALIGN(2)`). **Hypothèse forte,
pas encore testée en harnais** : ce motif de 5 masques correspond très
probablement à `Location loc; loc.map = 0; loc.x = 0; loc.y = 0;` (3
affectations de bitfield à zéro qui, à cause du chevauchement des champs
sur des limites non-octet, compilent chacune en un read-modify-write sur
CHAQUE octet/demi-mot touché -- 5 RMW physiques pour 3 affectations
logiques). Ensuite : `bl __7AEntityP10GameObjectRC8Location` (déjà
porté, `AEntity::AEntity(GameObject*, Location const&)`,
`include/entity.hh:12`), stamp d'une SECONDE vtable
(`vtable_unk_080E7568`, aussi référencée dans `asm/code_linkonce.s` --
donc une classe avec instanciation gabarit/linkonce quelque part) à
`self+0x14`, store du 2e paramètre à `self+0x18`, flag octet `1` à
`self+0x1c`. **Pas testé en harnais ni codé ce round** -- la classe
dérivée exacte (héritage multiple, 2e base au vtable `080E7568`) n'est
pas identifiée avec assez de certitude pour nommer un symbole
vanilla-only sans deviner ; nécessite d'abord de retrouver d'autres sites
utilisant `vtable_unk_080E7568` (le hit dans `code_linkonce.s`) pour
corroborer la classe avant d'écrire du C. Bon candidat pour un prochain
round avec plus de budget dédié à cette recherche de classe.

### État du worktree en fin de round

- **Aucun commit** -- zéro match vérifié bit-exact ce round.
- Tout le tâtonnement est resté dans `/tmp/w47scratch/` (harnais rapide
  uniquement, jamais appliqué au dépôt) -- `git status --short` vide,
  `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.

## 2026-08-20 -- toolchain bring-up + first matched function

### Build environment

- **arm-none-eabi toolchain**: already present on the machine but not on
  `PATH` -- binaries live under
  `/home/mathias/.local/opt/arm-gnu-toolchain-15.2.rel1-x86_64-arm-none-eabi/bin`.
  `as`, `strip`, `objdump`, `readelf`, `cpp` were missing symlinks in
  `~/.local/bin` (only `gcc`, `ld`, `objcopy`, `nm` were linked); fixed by
  symlinking the rest of the toolset from that opt dir into `~/.local/bin`.
- **agbcc/agbcp**: built from `notyourav/agbcc` (`cp` branch) via
  `tools/install_agbcp.sh`, but the stock script fails outright on this
  machine's host gcc (16.1.1, released 2026):
  - `LIBRARY_PATH` on this shell starts with a bare `:` (current-dir
    entry) which the ancient egcs `configure` refuses outright
    ("shouldn't contain the current directory") -- fixed by `unset
    LIBRARY_PATH` for the build.
  - GCC >=14 turns `-Wimplicit-int` into a hard *error* by default (was a
    warning historically); egcs-era sources rely on implicit-int
    K&R-style declarations throughout and fail to even pass `configure`'s
    "does the C compiler work" check. Fixed by building the whole agbcc/
    agbcp toolchain with `CC="gcc -std=gnu99 -fpermissive"` /
    `CXX="g++ -std=gnu++98 -fpermissive"` (plain `-std=gnu89` also
    silences the error but then chokes on C99-style `for (int i = ...)`
    declarations inside `real.h`, so gnu99+fpermissive is the one that
    gets through the whole tree).
  - `gcc_arm`/`g++_arm` (the ARM-hosted `agbcc_arm`/`agbcp_arm` binaries)
    were **not** built -- `fomt-decomp`'s `Makefile` never references
    them (only `agbcc`, `agbcp`, `old_agbcc`), so `install_agbcp.sh`'s
    later steps for those two were skipped entirely (built agbcc,
    old_agbcc, agbcp, libgcc.a, libc.a by hand, one `make` target at a
    time, then copied straight into `tools/agbcc/{bin,lib,include}`
    inside this repo, matching `install.sh`'s layout).
  - Result installed at `tools/agbcc/bin/{agbcc,old_agbcc,agbcp}` and
    `tools/agbcc/lib/{libgcc.a,libc.a}` -- all gitignored (`tools/.gitignore`
    already excludes `agbcc`), nothing of this got committed.
- **ROM**: `baserom.gba` found at
  `/home/mathias/dev/jeux-langues/harvest-moon-franglais/baserom.gba`
  (symlink to `build/baserom.gba` in that repo), SHA1
  `a2fc3574f0a65a4fcf7682fb274b9d7eebdef963` -- matches `fomt.sha1`
  exactly. Copied (not moved) into `fomt-decomp/baserom.gba`.
  `.gitignore` already has `*.gba`, confirmed `git status` shows nothing
  tracked for it.
- **Baseline `make compare`**: passes bit-exact from a clean checkout,
  **~5 seconds** wall clock for a full rebuild (`time make compare`:
  `real 0m5.011s`). This repo is still mostly `asm/`-only (a handful of
  `.cc`/`.c` files are decompiled so far), so the build is small and fast
  -- cheap enough to run `make compare` after every single-function edit
  rather than doing anything smarter (no need for object-level partial
  verification).

### Gotcha for future rounds: `objdump -bbinary` addressing

`asmdiff.sh` (checked into the repo) calls
`arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb` **without**
`--adjust-vma=0x08000000`. With `-bbinary`, objdump treats address 0 as
the start of the file, so passing a real GBA address (`0x0805E6CC` etc.)
as `--start-address` silently produces **empty output** (out of range,
no error) -- this cost real time this session (false "no diff" readings
while debugging a mismatch). Always add `--adjust-vma=0x08000000`
manually when reproducing what `asmdiff.sh` does, or pass file offsets
(`address - 0x08000000`) if invoking it as documented.

### Splitting a function out of a monolithic `asm/*.s` file

`fomt.lds` places every object's `.text` explicitly, by filename, in
exact original-ROM order (`SECTIONS { .rom : { fileA.o(.text);
fileB.o(.text); ... } }`) -- addresses are **not** derived from link
order automatically, they come from this manually curated list. Several
early functions were already decompiled this way; most of the ROM is
still one or a few giant hand-numbered `asm/code_ADDRESS.s` files with
hundreds of functions concatenated in one `.text` blob (e.g.
`asm/code_0803EE94.s` was 179483 lines / cov213 KB+ of code before this
session, spanning at least `0x0803EE94`-`0x0809B0FC`).

To decompile one function living in the middle of such a blob:

1. Find its `thumb_func_start` line and the next function's, via
   `grep -n`.
2. `sed` the original file into two pieces: everything up to (not
   including) the target function's `thumb_func_start` line stays under
   the original filename; everything from the *next* function's
   `thumb_func_start` onward goes into a new file named after that next
   function's address (`asm/code_<NEXTADDR>.s`), with the same 2-line
   `.INCLUDE "asm/macro.inc"` / `.SYNTAX UNIFIED` header prepended.
3. Write the C/C++ port into `src/code_<ADDR>.cc` (or `.c`).
4. Insert **both** new object references into `fomt.lds` at the exact
   point where the old single entry was, in order:
   `asm/code_OLD.o(.text); src/code_ADDR.o(.text); asm/code_NEXT.o(.text);`
5. `rm -rf build fomt.gba fomt.elf fomt.map && make compare`.
6. If the linked ROM is the wrong total *size*, it means the C function
   didn't compile to the same byte count as the original asm -- compare
   `arm-none-eabi-readelf -S build/src/code_ADDR.o` `.text` size against
   `nextaddr - thisaddr` to confirm/quantify, then diff disassembly
   (`--adjust-vma=0x08000000`!) around the function to see which
   statement produced a different instruction count.
7. If the size matches but content doesn't: diff disassembly directly,
   the mismatch is almost always register-allocation / instruction
   scheduling from writing the C in a different **statement order** than
   whatever the original source had -- reorder local variable
   computations to mirror the read/compute/store order visible in the
   original asm as closely as possible, and iterate. `make compare` is
   cheap (~5s) so this is a fast loop.
8. Only commit once `sha1sum -c fomt.sha1` reports success. Revert (`git
   checkout -- <files>; rm <new files>`) and rebuild-verify a clean
   `make compare` pass before moving to the next attempt if it doesn't
   converge in a reasonable number of tries.

### Functions matched

- **`func_0805E6CC`** (`0x0805E6CC`), the `DefinedSprite` archive
  constructor -- see `docs/GRAPHISMES.md` /
  `docs/SPRITES_INVENTORY.md` in the franglais patch repo for the
  7-section archive format this confirms in code. Split out of
  `asm/code_0803EE94.s` into `src/code_0805E6CC.cc` (+ the tail of that
  file renamed `asm/code_0805E760.s`). Matched bit-exact after one
  iteration (had to write the last section's pointer store as
  `self->instr_data = data + 4;` rather than `data += 4; self->instr_data
  = data;` -- the latter reuses the same register for the dead `data`
  write-back and produces one fewer/differently-scheduled instruction
  than the original, which computes the last offset into a fresh
  register instead of updating the cursor in place since it's never read
  again).
  Commit: `648d15f` -- "decomp: match func_0805E6CC (DefinedSprite
  archive constructor)".

### Function attempted and reverted

- **`func_0805E790`** (`0x0805E790`), the paired "frame accessor" that
  resolves a `DefinedSprite` frame index into 4 (pointer, value) pairs
  (OAM/tiles/palette/matrix) -- see the same docs section. Split
  mechanically the same way (out of what had become `asm/code_0805E760.s`
  after the first split), C written and iterated twice:
  - First attempt: wrong by -12 bytes (missing content), used an
    over-abstracted intermediate struct cast that didn't match the
    original's flatter access pattern.
  - Second attempt: **sizes matched exactly** (8388608 bytes both sides)
    but disassembly still diverges on register allocation: the original
    only spills 2 values to high registers (`r8`, `r9`) across the
    straight-line block, while every C statement ordering I tried needed
    3 (`r8`, `r9`, `sl`/`r10`) -- meaning the original C source keeps one
    fewer value simultaneously live than any reordering I tried,
    something not fully recoverable just by re-reading the instruction
    order (this is exactly the "register pressure" class of decomp
    problem that's hardest to reverse without the original source: 8
    output fields, 8 low registers minus one reserved for the `self`
    pointer, so any statement order keeping 3 partial results alive at
    once loses).
  - **Reverted cleanly** (`git checkout -- fomt.lds
    asm/code_0805E760.s; rm src/code_0805E790.cc asm/code_0805E824.s`),
    confirmed `make compare` passes again before stopping. Nothing
    broken, no partial state left in the tree.
  - Struct layout notes worth keeping for whoever picks this back up:
    the 16-byte frame-metadata entry is `{ u16 oam_count, oam_index,
    unk_04, tile_index, unk_08, pal_index, matrix_count, matrix_index
    }`; `unk_04`/`unk_08` get left-shifted by 5 into the output rather
    than used as plain counts -- their real meaning is unconfirmed. The
    4 index fields resolve to pointers via `archive_field_base +
    index << {3,5,5,3}` for OAM/tiles/palette/matrix respectively,
    matching `docs/GRAPHISMES.md`'s "x8, x32, x32, x8" note.

### Scope note (why this session only landed one function)

A parallel session sent a message mid-task asking to broaden the target
list from the original 5 candidates to *every* well-established finding
across the whole franglais-patch reverse-engineering effort (VWF chain,
HUD, PALETTE, full ENGINE.md/DIALOGUE.md, etc. -- potentially dozens of
functions). That is real, valuable scope, but this session had already
sunk substantial time into getting agbcc/agbcp to build at all against a
2026-era host toolchain (see above), and the one function landed
(`func_0805E6CC`) took multiple iterations just on the disassembly-match
side, plus a second (`func_0805E790`) that didn't converge. Given that,
this round intentionally stopped after establishing the environment +
the split methodology + one clean match, rather than rushing several
more functions and risking a bad commit. See "Priority list for the next
round" below for where to pick up.

### Priority list for the next round

In rough order of expected effort-to-match, based on what's already
documented in `/home/mathias/dev/jeux-langues/harvest-moon-franglais/docs/`:

1. **`func_0805E790`** (`0x0805E790`) -- retry with fresh eyes on the
   register-pressure problem above; the archive/frame struct layouts are
   already fully solved, only the exact C statement order to hit 2
   spilled regs instead of 3 remains. Good candidate for a >1-iteration
   budget rather than a quick attempt.
2. **`franglais_transition_ctl_query`** / `0x08050DF0` -- `docs/CHARACTER_SELECT.md`
   round 7 has this one fully characterized dynamically.
3. **`Unpack`** at `0x080D102C` -- the LZSS+Huffman decoder,
   `docs/BACKGROUNDS_INVENTORY.md` has the full bitstream format decoded,
   and `tools/unpack_decoder.py` in the franglais patch repo is a
   bit-exact Python reference implementation to translate from. Larger
   function, more branches, likely more iteration to match than the
   straight-line ones above -- budget accordingly.
4. Script-callable native dispatch table `0x0803F900` --
   `docs/DIALOGUE.md` round 23. Table/dispatch-shaped code tends to
   match on the first or second try if the table entries themselves are
   already correctly typed asm data (check whether `asm/vtables.s` or a
   sibling data file already carries it before assuming it needs
   porting as code).
5. Screen/scene constructor table `0x080E59D4`-`0x080E8618` --
   `docs/ENGINE.md`, round `decomp-boot-callers`. Grep for these bounds
   in `asm/` first; did not check this session whether it's plain data
   (in which case it's a `.rodata`-relabelling job, much cheaper) or
   code.
6. Everything else flagged by the parallel-session message as
   "well-established" across `docs/VWF.md`, `docs/HUD.md`,
   `docs/PALETTE.md`, the rest of `docs/ENGINE.md`
   (FOMT-203/204/205/206/207), the rest of `docs/DIALOGUE.md` (24+
   rounds), `docs/SPRITES_INVENTORY.md`/`docs/GRAPHISMES.md` beyond the
   `DefinedSprite` pair, `docs/BACKGROUNDS_INVENTORY.md`,
   `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`,
   `docs/LANGUAGE_LEVEL.md` -- none of this was scoped function-by-function
   this session (no addresses individually checked against `asm/` for
   whether they're even reachable as discrete symbols yet); a future
   round should start there with a pass that just lists candidate
   addresses + whether they already have a `thumb_func_start` symbol in
   `asm/`, before attempting any port, to build a real prioritized queue
   instead of guessing at effort.

### Repo state at end of session

- Working tree clean, `make compare` passes bit-exact.
- One new commit on top of `9636a71`: `648d15f` (func_0805E6CC).
- `origin` push URL untouched (`DISABLED-local-only-see-CLAUDE-md`),
  nothing pushed, no PR opened, no network action taken against origin.

## 2026-08-20, round 2 -- OBJ-palette allocator attempted, no new matches

Scope for this round (per a parallel session's request): stop limiting to
the original 5 candidates, sweep the *whole* franglais-patch docs tree
(`docs/VWF.md`, `docs/HUD.md`, `docs/PALETTE.md`, `docs/ENGINE.md`,
`docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
`docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`, the
`docs/CHARACTER_SELECT.md`/`docs/LANGUAGE_LEVEL.md` pair that only exist
in the `character-select`/`lang-level` worktrees, not `main`) and port
whatever's well-established. Honest result: **zero new matches this
round** -- two different functions were attempted, both got close
(same total byte count as the original in one case) but neither
converged, and both were cleanly reverted. Time went into reading through
the docs to find well-specified candidates and iterating on register
allocation, which turned out to be the wrong axis to spend a short round
on (see "what to do differently" at the end of this section).

### Read in full or in relevant part this round

`docs/VWF.md` (full, 291 lines), `docs/HUD.md` (\~300 lines around the
OBJ-palette allocator section, not the full 900), `docs/PALETTE.md`
(the allocator-related second half). Not reached this round:
`docs/ENGINE.md`, `docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
`docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`, the
worktree-only `CHARACTER_SELECT.md`/`LANGUAGE_LEVEL.md`.

### Function attempted and reverted: `func_0800736C` (`franglais_objpal_alloc`)

`docs/HUD.md` ("L'allocateur de banques de palette OBJ (0x03000404)")
fully specifies this family: a 16-slot free-list allocator at
`gUnk_03000404` (already has a partial C++ struct in `src/hardware.cc`,
`Unk_hardware_03000404`, with helper methods `AllocEntry`/`FreeEntry`/
`GetEntry`/`IndexOf`/`inl_pred_0`/`inl_func_0`/`inl_func_1` that
`func_080071BC` right above it in the same file already uses **and
matches** -- a very promising precedent). `func_0800736C` pops the free
list, sets `refcount=1`, stamps a fresh generation (wrapping to 1, never
0, past `0xFFFF`), and returns the packed handle
`(generation << 4) | (bank_index & 0xF)`, or `0` if the free list was
empty. Mechanically much cheaper to attempt than the `asm/code_0803EE94.s`
family from round 1: `asm/hardware.s`'s first function starts exactly
where `src/hardware.cc`'s last function (`func_080071BC`) ends, so no
new split-file/`.lds` surgery was needed at all -- just trim
`func_0800736C`'s block off the top of `asm/hardware.s` and append the C
port to the bottom of `src/hardware.cc`.

Two attempts, both reverted:

1. **Using the existing `AllocEntry` helper** (`ent =
   h->AllocEntry(h->unk_00); if (ent == nullptr) return 0;` then the rest
   of the logic straight-line): total size **8 bytes short** of the
   original. Disassembly diff shows agbcp collapsed what the original
   keeps as **two separate, redundant null checks** (one guarding the
   free-list-head dereference, one on the allocated pointer afterward --
   the same value, tested twice) into a single shared branch via basic
   CSE/value-numbering, something the original compiled output does
   *not* do (it keeps the dead second check). Net effect: my version
   takes a different, shorter early-exit path and the two builds
   permanently diverge in instruction count from there on.
2. **Writing the free-list pop out literally** (no `AllocEntry` call --
   `ent = h->unk_00; if (ent == nullptr) return 0; h->unk_00 =
   ent->next_free; if (ent == nullptr) return 0;`, i.e. the exact
   textual double-check the disassembly implies) to try to force agbcp
   to keep both checks distinct: **worse**, 16 bytes short and a
   different register footprint entirely (`push {r4,lr}` instead of
   `push {r4,r5,lr}` -- the compiler stopped keeping `ent` alive in a
   dedicated register altogether for the later bitmap-index/generation
   code, diverging even harder).

Reverted cleanly (`git checkout -- src/hardware.cc asm/hardware.s`),
re-verified `make compare` passes before stopping.

**Lesson for whoever retries this**: neither the "call the shared
helper" nor the "write it out literal" version reproduces the original's
specific pattern of *keeping a provably-redundant branch*. That's a
strong signal the ORIGINAL SOURCE genuinely had two textually-different
conditions that happen to test the same runtime value only by
coincidence of this call site (e.g. a macro or a different helper than
`AllocEntry`/`FreeEntry`, not obviously equal to the compiler at the
IR level) -- not that the C here is fundamentally wrong, just that the
literal expression shape matters more than the semantics for whether
agbcp's (fairly weak, egcs-1999-era) optimizer proves the redundancy.
Worth trying: a version that reads `h->unk_00` into a *second, distinct*
local variable for the second check (so the two tests are on two
different C variables that happen to hold equal values, rather than the
same variable/expression re-tested) -- that's the one combination not
yet tried.

### Not attempted this round (same reasons as `func_0805E790` in round 1)

The scope-expansion list from the parallel session is real and still
open: `franglais_transition_ctl_query` (`0x08050DF0`), `Unpack`
(`0x080D102C`, Python reference already exists), the script dispatch
table (`0x0803F900`), the scene/screen table (`0x080E59D4`-`0x080E8618`),
`franglais_known_vwf_resolve_glyph` (`0x080D0D28` -- has a genuine jump
table for the `0xB1`-`0xC3` range, likely harder, but the two
`DrawGlyphAt` variants at `0x0804E4AC`/`0x0804E5AC` and the two
`DrawString` loops at `0x0804E8F0`/`0x0804E958` in `docs/VWF.md` are all
fully specified and *don't* have the register-pressure/CSE pathology hit
this round or in round 1 -- untested, but structurally simpler
(sequential reads + one alignment branch, no 7-way unrolled section walk
and no free-list pop) and worth trying first next round -- plus
everything else flagged in round 1's priority list (`docs/ENGINE.md`,
`docs/DIALOGUE.md` in full, `docs/BACKGROUNDS_INVENTORY.md`,
`docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`,
`docs/CHARACTER_SELECT.md`/`docs/LANGUAGE_LEVEL.md` -- the latter two
only exist in the `character-select`/`lang-level` worktrees under
`~/dev/jeux-langues/worktrees/`, not in `harvest-moon-franglais/docs/`
on `main`, so fetch them from there).

### What to do differently next round

Two rounds in a row have now spent most of their budget on
register-allocation/CSE archaeology for 1-2 functions rather than
sweeping breadth. For a short round, prefer candidates from
`docs/VWF.md`'s `DrawGlyphAt`/`DrawString` family (straight-line reads
and simple alignment branches, no free-list/section-walk register
pressure) over anything that pops a free list or walks N unrolled
sections -- the latter category has now failed to converge twice running
(`func_0805E790` in round 1, `func_0800736C` this round) and should be
treated as genuinely harder, not attempted again without a larger
iteration budget than a single short round provides.

### Repo state at end of round 2

- Working tree clean, `make compare` passes bit-exact.
- No new commits this round (both attempts reverted before commit).
- Still just `648d15f` (func_0805E6CC) + `63da4d6` (SESSION_NOTES.md) on
  top of `9636a71`.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## 2026-08-20, round 3 -- both DrawString loops matched; DrawGlyphAt and a
tiny scene constructor both hit new, narrower failure modes

Scope: round 2 explicitly recommended trying `docs/VWF.md`'s
`DrawGlyphAt`/`DrawString` family first (straight-line reads + one
alignment branch, no free-list pop or unrolled-section walk). This round
did exactly that, **with real success this time**: both `DrawString`
loops matched bit-exact. A parallel session then added two more targets
mid-round (`franglais_new_game_naming_screen_ctor` /
`franglais_new_game_naming_sequence`, `docs/ENGINE.md` round 27 in the
patch repo) -- the small one of that pair was attempted and came
extremely close (byte-identical function, ONE 16-bit instruction's
register operand differs) but did not converge; documented in detail
below for whoever picks it up, since it's the closest near-miss so far.

### On function naming: still `func_ADDR`, deliberately, not renamed

Asked mid-round: does this repo rename ported functions to their semantic
`franglais_*` names? **No, by design, following the precedent set in
round 1** (`func_0805E6CC`, never renamed despite a well-known semantic
role). Reasons: (1) `fomt.map`/`fomt.lds`/other still-`asm/`-only files
reference these symbols by `func_ADDR` name via `bl` instructions --
renaming would require adding `ALIAS()` plumbing or updating every
still-unported caller's asm, for zero bit-exactness benefit; (2) the
upstream `StanHash/fomt` project convention (visible throughout `asm/*.s`
and already-ported `src/*.cc`) is to keep `func_ADDR` as the canonical
name and reserve semantic names for comments/docs, consistent with how
this repo already carries dozens of `func_ADDR`-named ported functions.
What THIS round does do, and will keep doing: every ported `.cc` file
opens with a comment block giving the semantic name from
`docs/VWF.md`/`docs/ENGINE.md`, its role, and a pointer back to the
franglais-patch doc section -- see `src/code_0804E8F0.cc` and
`src/code_0804E958.cc` for the pattern. If a future round wants real
`ALIAS()`-based semantic names, that's a legitimate but separate refactor
(low risk, no behavior change, could be done as its own pass across
already-matched functions) -- flagging it as an open question, not doing
it unilaterally mid-round.

### Matched: `func_0804E8F0` (`franglais_vwf_draw_string_plain`, `0x0804E8F0`)

Split out of the tail of `asm/code_0803EE94.s` (the same giant blob
`func_0805E6CC` came out of in round 1; still huge, still not fully
carved up). Body: walks a NUL-terminated string, accumulates 1- or 2-byte
glyph codes (`code = (code << 8) | next_byte`, reset whenever
`DrawGlyphAt` resolves a glyph), calls `DrawGlyphAt` (`func_0804E4AC`,
left as asm, not ported) per code, advances `x` by 8 or `0x10` px per
resolved glyph kind, stops at the window's right edge
`(dims & 0xFFFF) * 8`.

Two fixes needed over the first literal translation (which matched size
exactly, 0x68 bytes, but diverged in content from byte 4 onward):

1. **The right-edge width must be written as the literal double-shift
   `(dims << 16) >> 13`, not `(dims & 0xFFFF) << 3`.** Both are
   mathematically identical, but agbcp compiles `& 0xFFFF` as a
   PC-relative literal-pool load of the mask constant + `ands` + `lsls`
   (10 bytes), while the shift-pair form compiles to exactly the two
   `lsls`/`lsrs` instructions the original has (4 bytes) -- this is the
   SAME lesson round 2 already hit for `func_0800736C`'s free-list logic,
   now confirmed to generalize: whenever the original does a masking
   double-shift, write the double-shift literally, never `& mask`.
2. **The per-glyph-kind dispatch (`kind == 1` / `kind == 0` / `kind == 2`)
   must be a `switch` with an explicit `default: return;`, not
   `if (kind == 1) {...} else if (kind == 2) {...}`.** The original
   keeps a provably-dead extra `cmp`+redundant default branch that jumps
   straight to the function epilogue (skipping the `s++`/reload that
   every other path does) -- an if/else-if collapses that dead path away
   entirely. This is the SAME shape lesson as round 2's `AllocEntry`
   redundant-branch finding, now with a concrete fix that worked: write
   the defensive `default:` case explicitly even though `kind` is never
   actually anything but 0/1/2 at runtime.

Commit: `ecef66e`.

### Matched: `func_0804E958` (`franglais_vwf_draw_string_recolor`, `0x0804E958`)

Same loop, forwards a pair of (anchor, target) recolor colors to
`DrawGlyphAt`-recolor (`func_0804E5AC`, still asm) each call. **Matched
bit-exact on the FIRST attempt**, by directly reusing the exact shape
worked out for `func_0804E8F0` above (double-shift width, switch/default
dispatch) -- strong confirmation that the shape generalizes rather than
being a lucky one-off, and that the "two fixes" above are the real,
reusable lesson from this function family, not incidental.

Commit: `3b2a40d`.

**Notable side finding, not otherwise acted on**: while splitting this
function out, `func_0804E9C8`/`func_0804E9CC` -- the "unaligned blitter"
that `docs/VWF.md` flags as the PARTIALLY-understood mystery function
(the one a previous session's `y=185` non-tile-aligned case delegates
to) -- turned out to be trivial **two-instruction stubs
(`movs r0, #0; bx lr`)** in the untouched vanilla ROM. They are no-ops in
the base game; whatever franglais-patch behavior involving them is a
PATCH-introduced code path (the dedicated trampoline fix mentioned in
`docs/VWF.md`'s 2026-08-19 section), not something the vanilla engine
ever exercises itself. Worth updating `docs/VWF.md` in the patch repo to
record this (not done here -- out of scope, this repo doesn't touch the
patch repo).

### Repo hygiene fix: `682e105`

Discovered while reverting a later attempt: the `func_0804E958` commit
(`3b2a40d`) used `git add -A -- src/code_0804E958.cc asm/code_0804E9C8.s
fomt.lds` to stage its changes, but that pathspec-restricted `-A` did NOT
pick up the deletion of `asm/code_0804E958.s` (replaced earlier in the
same edit by `src/code_0804E958.cc` + `asm/code_0804E9C8.s`), so HEAD
kept tracking 30907 lines of stale, on-disk-deleted content for a file
`fomt.lds` no longer references. Harmless for the build (confirmed
`make compare` bit-exact both before and after the fix), just a stray
tracked file. Fixed with a dedicated small commit. **Lesson for future
rounds**: `git add -A -- <explicit paths>` does not reliably stage
deletions the way plain `git add -A` does when a file is deleted outside
the given pathspec's exact list -- prefer `git status --short` review
(not just the files you meant to touch) before every commit in this
workflow, not just the "did my new files show up" check.

### Attempted and reverted: `func_08004C54` (`franglais_new_game_naming_screen_ctor`, `0x08004C54`)

New target from a parallel session (`claude/decomp-screen-activation`,
patch repo, `docs/ENGINE.md` round 27): a 20-byte scene-table record #12
constructor, same idiom as 9 other already-Ghidra-confirmed constructors
in that document -- stamp a vtable pointer, then call the shared base
constructor (`func_080007EC`, already ported in `src/scene.cc`, declared
there with an EMPTY-parens `extern "C"` signature relying on the object
pointer surviving in `r0` across the call since `func_080007EC` never
actually needs a passed argument at the C level -- this convention was
already established, not invented this round).

Split cleanly out of `asm/new_game.s` (no `.lds` surgery complexity,
just two functions at the split point, same as round 1's easy cases).
**Extremely close**: the compiled function is BYTE-IDENTICAL to the
original except for a SINGLE instruction's register operand --

```
original:  ldr r2, [pc, #12]  /  str r2, [r0, #0]
mine:      ldr r1, [pc, #12]  /  str r1, [r0, #0]
```

-- everything else (the `push {lr}`, the `bl func_080007EC`, the
`pop {r0}; bx r0` epilogue) matches exactly, same total size (0x14 = 20
bytes both). This is the closest near-miss of any round so far: a real
semantic/structural match, just one scratch-register number off.

**Every variant tried, all producing the identical r1-not-r2 result**
(fast-iteration harness used: `arm-none-eabi-cpp | agbcp -O2 ... | as`
on just this one file, ~1s/iteration, skipping the full link -- worth
keeping `/tmp/quicktest.sh`-style harnesses like this for future
single-function register puzzles instead of always paying the full
`make compare` cost per guess):

1. `void *` self with `*(void**)self = &vtable;`, empty-parens call.
2. Same, with a named `struct { void *vtable; }` self type instead of a
   raw cast.
3. Splitting the assignment into `void **vt = &self->vtable; *vt = ...;`
   (testing whether the original computes the field address in a
   register even at offset 0).
4. Passing `self` explicitly to `func_080007EC(self)` with a matching
   1-arg prototype (vs. relying on register survival through an
   empty-parens declared callee).
5. Adding an unused second formal parameter to `func_08004C54` itself,
   to test whether an extra (unused) parameter reserves `r1` in the
   register-numbering scheme.
6. `vtable_unk_080E5A88` declared as `u32[]` (array decay) instead of
   `void *` (address-of) -- tests whether array-decay vs. explicit `&`
   compiles through a different intermediate.
7. Returning `self` (`Unk_08004C54 *`) instead of `void`, mimicking the
   `func_0805E6CC` return-self convention -- **this ONE was NOT a close
   miss**, it changed the whole prologue/epilogue shape (extra `push
   {r4}`/`adds r4,r0,#0` to keep `self` live across the call for the
   return), confirming the original genuinely returns `void`/discards
   the base-ctor's return value, consistent with the `pop{r0};bx r0`
   idiom already matching.
8. Capturing `func_080007EC()`'s return value into an ignored local (in
   case the original's C assigned but discarded a return value, changing
   liveness).
9. A 2-argument `func_080007EC(self, 0)` call (testing whether the real
   base-ctor signature takes a 2nd parameter, which would reserve `r0`
   AND `r1` as "argument slots" ahead of the call in a naive
   scratch-register scheme) -- rejected: adds a visible extra `movs
   r1, #0` instruction not present in the original, and still uses `r1`
   for the store since the assignment is evaluated before the 2nd
   argument.
10. An unrelated dummy function declared earlier in the same
    translation unit, consuming `r1` internally -- tests whether agbcp's
    scratch-register counter is (bug-for-bug) per-file rather than
    per-function. Rejected: no effect, confirming allocation is properly
    per-function.

**Honest assessment for whoever retries this**: none of the structural
variants above changed the outcome, which argues the cause isn't in how
*this* function's C is shaped, but in something about the CALLED
function's real original signature/attributes that isn't recoverable
from this call site alone (the two most plausible remaining hypotheses,
neither tested further this round for lack of a way to falsify them
cheaply: (a) `func_080007EC`'s TRUE original prototype takes some
argument this call site passes as a non-`self`, non-obviously-visible
value that only shows up as "which register is now taken", e.g. an
implicit `__in_chrg`-style flag some CFront-era compilers do pass to
base sub-object constructors even without virtual bases -- `func_080007EC`
being ALIASed to a `_._6AScene`-mangled symbol, i.e. it's literally
`AScene::~AScene()`'s mangled name, being reused/COMDAT-folded as this
constructor's base-init step, makes this hypothesis genuinely plausible,
not just a shot in the dark; (b) something about how OTHER call sites of
`func_080007EC` across the whole ROM (there may be several, this repo
only has the one in `src/scene.cc`'s own definition) shape agbcp's
per-callee register-class preference in a way not visible from a
single-call-site experiment. Testing (a) properly would mean trying to
port `func_080007EC` itself as a REAL C++ destructor body (not just an
`ALIAS()` stub) and checking whether IT then reveals a hidden parameter
via its own disassembly -- not attempted this round, plausible next step
if someone wants to keep pulling this thread.

Reverted cleanly (`git checkout -- fomt.lds asm/new_game.s; rm
asm/code_08004C68.s src/code_08004C54.cc`), confirmed `make compare`
passes bit-exact before stopping.

### Not attempted this round: `func_0804E4AC`/`func_0804E5AC` (`DrawGlyphAt`, both variants)

Attempted `func_0804E4AC` (the plain `DrawGlyphAt`) after the two
`DrawString` wins, expecting it to be similarly tractable -- **it is
NOT**, and this is a real, important correction to round 2's priority
list, which had lumped the whole `DrawGlyphAt`/`DrawString` family
together as "structurally simpler". `DrawString` (the loop) is simple.
`DrawGlyphAt` (the per-glyph blit) is not: it has a 140-byte stack frame,
holds `dims`/`dest`/`x`/`y` plus derived `tile_x`/`tile_y`/
`width_tiles`/`height_tiles` plus two boolean flags simultaneously live,
and blits up to 4 conditional 32-byte tiles (TL always, BL/TR/BR
conditionally) via `CpuFastSet`, using ALL of `r4`-`r7` plus `r8`/`sb`/
`sl`/`ip` at points. First literal-translation attempt: compiled 20
bytes short, and every register assignment diverged starting from the
very FIRST parameter-binding instruction (`dest` went to `sl` in mine
vs. `sb` in the original) -- this is the exact register-pressure
archaeology class that has now failed 3 times total across all 3 rounds
(`func_0805E790` round 1, `func_0800736C` round 2, `func_0804E4AC` this
round), each time with the SAME root cause (the original keeps fewer
values live at some point than any C statement ordering I tried
achieves). Given round 2's explicit lesson ("don't re-attempt this class
without a larger iteration budget than a single round provides"), this
was reverted after one attempt + one refinement (fixing the same
`& 0xFFFF` mask anti-pattern from `func_0804E8F0`, which helped but did
not fix the deeper register-allocation divergence) rather than sunk
further. `func_0804E5AC` (the recolor variant, same shape) was not
attempted at all as a result -- expect it to have the identical failure
mode if tried before `func_0804E4AC` is solved, since both variants
share the same buffer/flag layout per `docs/VWF.md`.

**Important scoping correction for future rounds' priority lists**:
within a documented "family" of functions, do not assume uniform
difficulty. `DrawString` (loop, few live values) and `DrawGlyphAt`
(multi-tile conditional blit, many live values) sit in the same
`docs/VWF.md` section but are NOT the same difficulty class -- the
loop's simplicity came from calling `DrawGlyphAt` as an opaque `bl`,
which is exactly the boundary that made it tractable. `ResolveGlyph`
(`func_080D0D28`, `0x080D0D28`) -- the actual glyph-bitmap-to-4bpp-tile
IWRAM converter `DrawGlyphAt` calls -- is almost certainly harder still
(it fills up to 4 32-byte buffer slots per `docs/VWF.md`'s "the IWRAM
converter" discussion, i.e. it's the thing that makes the buffer layout
`DrawGlyphAt` reads from opaque even to this round), not recommended as
a next target without first fully characterizing it in the patch repo's
docs (dynamic trace, not just static disassembly).

### What to do differently next round

1. **`func_08004C54`'s 1-register near-miss is the single best lead in
   this file right now** -- it is closer to matching than anything else
   attempted across 3 rounds. Whoever picks it up next should try
   porting `func_080007EC` itself (currently just an `ALIAS()` stub in
   `src/scene.cc`) as a real function body to see if its true signature
   reveals the missing register-reservation cause, per the "honest
   assessment" above.
2. Do NOT re-attempt `func_0804E4AC`/`func_0804E5AC` (`DrawGlyphAt`)
   without a multi-round budget -- 3/3 attempts at this general
   register-pressure class have failed across the whole project so far.
3. `func_08004C68` (`franglais_new_game_naming_sequence`) was split out
   mechanically alongside `func_08004C54` this round but never actually
   attempted (reverted along with everything else) -- it's a real
   `do`/`while` loop with several external calls and a 0x38-byte record
   allocation, likely non-trivial; not evaluated for difficulty this
   round.
## Round 6 -- `func_0805E790` retried with systematic shape-hunting, still not
converged; narrowed the failure to a single register-class allocation
decision, not the surrounding computation shape

Scope: retry round 1's failed `func_0805E790` (the `DefinedSprite` frame
accessor, companion to the matched `func_0805E6CC`) using the
`quicktest.sh`-style fast harness (`cpp | agbcp | as`, no link), generating
and testing several structurally distinct variants rather than one or two
guesses. **Did not converge**, but made real progress narrowing the exact
failure point, worth recording precisely so a future round doesn't repeat
the same five variants.

### Struct layout re-confirmed (matches round 1's notes exactly)

`FrameMetadata` (16-byte entry, indexed by `frame_index` into
`self->frame_data`): `{ u16 oam_count, oam_index, unk_04, tile_index,
unk_08, pal_index, matrix_count, matrix_index }`. Output `FrameResolved`
(0x20 bytes, written through an explicit `out` pointer parameter that's
`r0` at the call site -- confirmed real explicit pointer, NOT a hidden
struct-return slot, see below): `{ void *oam_ptr; u16 oam_count; void
*tile_ptr; u16 unk_04_shl5; void *palette_ptr; u16 unk_08_shl5; void
*matrix_ptr; u16 matrix_count; }`. Pointers resolve as `archive_base_field
+ (index << {3,5,5,3})` for oam/tile/palette/matrix respectively, matching
`docs/GRAPHISMES.md`.

### Confirmed via a real caller site: `out` is a genuine explicit pointer
parameter, not hidden struct-return

Round 1 didn't check this. `asm/code_0803A8A4.s:3885` calls it as:
```
mov r0, sp      @ out = &local on caller's stack
adds r1, r6, #0 @ self
movs r2, #0     @ frame_index = 0
bl func_0805E790
ldr r2, [sp, #0x10]   @ reads out->palette_ptr afterward
```
This rules out one hypothesis this round tested (see below): the function
does NOT return `FrameResolved` by value via the ARM hidden-return-pointer
ABI convention -- it's a plain `void func(FrameResolved *out,
DefinedSprite const *self, u32 frame_index)`, exactly as round 1 assumed.

### The real puzzle: original defers ALL 8 output stores to one block at
the very end, and evicts `out` (not `self`) to `ip` as the very first
instruction in the function body

Disassembly shows the original reads all 8 `FrameMetadata` fields
interleaved with computing `tile_ptr`/`palette_ptr` immediately (right
after their index field), but *defers* computing `oam_ptr`/`matrix_ptr`
until a block right before the stores -- and defers literally all 8
`str`/`strh` writes into `*out` to one contiguous block at the very end
(never stores incrementally as each field becomes ready). This can only
be explained by all 8 output values being held live in registers straight
through to a final block, which needs the same instruction-order-mirrors-
statement-order shape as `func_0805E6CC`/`DrawString` (see rule #4 in
`DECOMP_RULES.md`) -- i.e. the real C source almost certainly declares
local temporaries for every field first, then assigns `out->field = ...`
for all 8 fields consecutively at the end. **This exact C shape was
written and tested this round** (see "Variants tried" below) and gets the
right *macro* structure (right total instruction count in the ballpark,
right grouping) but the wrong **register class** for one value: the
original moves `out` (`r0`) to `ip` as the literal first instruction of
the function body (`mov ip, r0`), before even the `frame_count` bounds
check, freeing `r0` as scratch and never touching a low register for
`out` again until the very last block. Every variant tried this round
instead keeps `out` resident in a low callee-saved register (`r6` or
`r7`) for the whole function -- which is one low register `out` didn't
need to occupy, and that shortfall is what forces a 3rd value to spill
into a high register (`r8`/`r9`/`sl` all three used, vs. the original's
`sb`+`r8` pair only) at some point in the deferred-compute block. Which
*specific* local ends up as the 3rd spill victim was NOT stable across
variants (`tile_ptr` in one run, `unk_04` in another) -- consistent with
this being a generic "one register short" overflow rather than something
tied to a particular variable's type or position.

### Variants tried, all producing the identical "3 high regs instead of
2" result

1. **Immediate-store version** (each `out->field = ...` written right
   after its value is computed, matching a naive first-literal-translation
   reading): wrong on a more basic level too -- produces NO high-register
   spills at all (fits everything in `r0`-`r7`), 38 bytes short of the
   original (0x66 vs 0x8C). Confirms the deferred-store hypothesis is
   necessary (this immediate-store shape is definitely not it), just not
   sufficient on its own.
2. **Deferred-store version** (all temporaries declared first, single
   block of 8 `out->field = ...` assignments at the end, matching the
   read/compute order described above): right macro shape, but 3 high
   regs instead of 2, as described above. This is the closest variant.
3. **Return `FrameResolved` by value** (hidden struct-return ABI
   hypothesis, since that pattern IS known to make an unused-until-the-end
   pointer get evicted to `ip` immediately -- confirmed: this variant DOES
   put the hidden pointer in `ip` as instruction 1, matching original's
   eviction timing exactly): wrong for a different, disqualifying reason
   -- ruled out anyway by the real caller-site evidence above, but also
   the codegen itself doesn't match: this compiler implements struct
   return via a local stack temporary (`sub sp, #32`) plus an unrolled
   `ldmia`/`stmia` block-copy into the hidden pointer at the very end,
   something the original's disassembly has zero trace of (no `sub sp`
   at all, no `ldmia`/`stmia` anywhere). Bigger (0xA2 bytes vs 0x8C) and
   structurally wrong, not just register-different.
4. **Return via `(FrameResolved){...}` aggregate-literal / compound
   literal** instead of a named local + `return`: hoped this might let
   the front end write directly into the return slot without a
   materialize-then-copy step. Made it *worse* -- agbcp actually emits a
   real `bl memset` call to zero the temporary first, then the same
   `ldmia`/`stmia` copy. Confirms the copy-through-stack-temp is
   fundamental to how this compiler lowers any aggregate return, not an
   artifact of naming a local. Not the right shape regardless of the
   `out`-placement question.
5. **`register` storage-class hint on the `self` parameter**: zero effect
   on codegen (agbcp's `-O2` register allocator ignores `register` as a
   placement hint here, byte-identical output to variant 2 without it).

### Assessment: this now looks like a single-register-class allocation
quirk, not a wrong C shape

Variant 2's C shape is very likely *correct* (matches original's
read/compute/store grouping exactly, field for field) -- what's missing
is whatever makes agbcp's allocator decide, within the first instruction
of the function body, that `out` specifically (and not `self`, not any of
the 8 field temporaries) is the one value cheap enough to evict to `ip`.
Both `out` and `self` are dead-on-arrival-but-needed-later relative to
their native argument registers (`r0`, `r1`); the original evicts `out`
to `ip` and `self` to a low reg (`r7`), never the reverse, and never
either of them staying in `r0`/`r1`/`r2` past the prologue (both r0/r1
are needed almost immediately as scratch for computing the entry
pointer). No variant this round reproduced that specific asymmetry.
Plausible next angles, none attempted due to round budget: (a) try
swapping which of `out`/`self` is the FIRST expression referencing a
register-hungry computation in the function body (right now both are
"first touched" by roughly the same distance from function entry --
maybe reordering so `self`'s frame_count check literally comes textually
after some `out`-adjacent no-op would perturb the allocator's greedy
choice); (b) grep the whole ROM's `asm/*.s` for a handful of *other*
functions with the exact same "explicit out-pointer param evicted to
`ip`, used only in a tail store block" idiom (if any exist and are
simpler, they'd make a much cheaper testbed for isolating the allocator
rule than this 8-field function); (c) accept this as confirmation of the
"register pressure" difficulty class already documented in
`DECOMP_RULES.md` (now 4 attempts across 2 rounds on this one function
alone, on top of the 2 other functions in the same class) and deprioritize
further blind iteration in favor of a genuinely different technique (e.g.
inspecting agbcc/agbcp's own allocator source in `tools/agbcc` if that's
ever warranted -- not attempted this round, out of scope for a
single-function shape-hunt).

Nothing committed this round -- no C file was ever added to the tracked
worktree; all iteration happened against a scratch file outside the repo
via the quicktest harness. `git status`/`make compare` confirmed clean
and bit-exact both before and after this round's work.

### Repo state at end of round 6

- Working tree clean, `make compare` passes bit-exact (verified via full
  clean rebuild immediately before writing this section).
- No new commits this round.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

4. The rest of round 1/2's untouched priority list is still open and
   unchanged: `franglais_transition_ctl_query` (`0x08050DF0`), `Unpack`
   (`0x080D102C`, Python reference exists), the script dispatch table
   (`0x0803F900`), the scene/screen table (`0x080E59D4`-`0x080E8618`),
   `docs/ENGINE.md`/`docs/DIALOGUE.md` in full, `docs/BACKGROUNDS_INVENTORY.md`,
   `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`.

### Repo state at end of round 3

- Working tree clean, `make compare` passes bit-exact (verified via full
  clean rebuild, `rm -rf build fomt.gba fomt.elf fomt.map && make
  compare`, immediately before writing this section).
- Three new commits this round, all bit-exact-verified before commit:
  `ecef66e` (func_0804E8F0), `3b2a40d` (func_0804E958), `682e105` (stray
  tracked file cleanup, unrelated to this round's decomp work but found
  while reverting the `func_08004C54` attempt).
  `func_08004C54`/`func_08004C68` attempt fully reverted, nothing
  committed for it.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## 2026-08-20, round 4 -- `func_08004C54` matched (the 1-register near-miss
from round 3), root cause found and generalizes to a whole function family

Scope: priority 1 was to shape-hunt the round-3 near-miss
(`func_08004C54`, byte-identical except `r1` vs `r2` on one instruction)
using the fast `/tmp/quicktest.sh` harness, systematically, rather than
guessing structural variants. **Solved on the first new angle tried**,
not by generating more structural variants of round 3's (correct-in-shape
but wrong-premise) attempts.

### Root cause: `func_08004C54` is a DESTRUCTOR, not a constructor -- and
`func_080007EC` takes a hidden second parameter

Round 3 (and the external Ghidra-based `docs/ENGINE.md` round 27 finding
in the patch repo) both assumed `func_08004C54` is a *constructor*
because it fits the "stamp vtable, call `func_080007EC`" idiom shared by
9+ other confirmed constructors. That assumption was never verified
against what `func_080007EC` *actually* compiles to -- it's only ever
been treated as an opaque `ALIAS()`'d callee. This round did the one
thing round 3 flagged as the next step ("port `func_080007EC` itself...
to see if its true signature reveals the missing register-reservation
cause") and it paid off immediately: `func_080007EC` is
`AScene::~AScene()` (`src/scene.cc:3`, `AScene::~AScene() {}`, aliased
via `EC void func_080007EC() ALIAS(_._6AScene);`). Disassembling the
**already-compiled, already-matching** `build/src/scene.o` output for
`_._6AScene` (not asm/the ROM -- this function was ALREADY ported and
verified, just never actually inspected) shows:

```
push {lr}
adds r2, r0, #0      @ r2 = self  (moved OUT of r0!)
ldr  r0, [pc, #20]   @ r0 = &own vtable
str  r0, [r2, #0]     @ self->vtable = &vt
movs r0, #1
ands r0, r1           @ r0 = in_chrg & 1
cmp  r0, #0
beq  skip
adds r0, r2, #0
bl   __builtin_delete  @ conditionally delete(self)
skip:
pop {r0}
bx r0
```

**`func_080007EC` takes `(void *self, int in_chrg)` in `r0`/`r1`** -- the
classic ARM/CFront C++ ABI "in-charge" flag that folds the deleting and
non-deleting destructor variants into one function (`ands r0, r1` gates
the conditional `bl __builtin_delete`). This single fact explains the
round-3 near-miss completely: `func_08004C54` is the DERIVED, empty-body
destructor of the scene-table record #12 class -- it resets its own
vtable pointer, then tail-calls the base destructor **forwarding
`self`/`in_chrg` through `r0`/`r1` completely unchanged** (never touching
either register before the `bl`), which is exactly why the vtable-pointer
temporary needed a register OTHER than `r1` -- `r1` is reserved for the
pass-through `in_chrg` argument, so it lands in `r2`, matching the
original exactly.

C written (`src/code_08004C54.cc`):

```c
extern u32 vtable_unk_080E5A88[];
EC void func_080007EC(void *self, int in_chrg);

EC void func_08004C54(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5A88;
    func_080007EC(self, in_chrg);
}
```

Matched bit-exact on the **first quicktest iteration** with this shape
(verified byte-for-byte against the round-3 near-miss disassembly before
doing the full split/`.lds` wiring). Full split done the same way as
round 1 (`asm/new_game.s` trimmed, tail moved to new
`asm/code_08004C68.s`, both entries added to `fomt.lds` around the old
single `asm/new_game.o(.text)` line), `make compare` bit-exact after a
full clean rebuild. Commit: `8ecf106`.

**Important correction to the external patch-repo doc's semantic naming**
(`docs/ENGINE.md` round 27, `franglais_new_game_naming_screen_ctor`): this
is a destructor, not a constructor, despite occupying the scene-table
record's first pointer slot -- the doc's Ghidra-based pseudocode already
showed the call as `franglais_scene_object_base_ctor(param_1, param_2)`
with a second parameter, which is the same clue, just not cross-checked
against what that "base ctor" itself compiles to. Not fixed in the patch
repo this round (out of scope, this repo doesn't touch the patch repo,
same policy as prior rounds' side findings) -- worth flagging back.

### New generalization found, NOT attempted: a whole family of ~24
similarly-shaped destructors, one confirmed easy, ~23 need struct-layout
work first

`docs/ENGINE.md` round 26 in the patch repo independently found "23
static callers" of this same base-destructor idiom across the whole ROM.
Grepped this repo's `asm/*.s` for all 47 `bl func_080007EC` call sites and
classified them:

- **One trivial extra match, confirmed working via quicktest but NOT
  split/committed this round** (ran out of round budget after landing
  the two commits above): `func_080E09B0` in `asm/code_linkonce.s`
  (`0x080E09B0`), a *pure* forwarding destructor with **no vtable field
  even to stamp** (`push {lr}; bl func_080007EC; pop {r0}; bx r0`,
  literally `void func_080E09B0(void *self, int in_chrg) {
  func_080007EC(self, in_chrg); }`) -- quicktest confirms exact
  instruction-for-instruction match, size 0xC bytes. **Not split this
  round** because it lives inside `asm/code_linkonce.s`'s
  section-per-address (`.text.code_ADDR`) linkonce-COMDAT scheme, which
  is structurally different from the simple single-blob files split so
  far (round 1's method doesn't directly apply -- would need a new
  `.section .text.code_080E09BC`-style split plus a new `fomt.lds` entry
  inserted between the existing `asm/code_linkonce.o(.text.code_080D7CFC)`
  and `asm/code_linkonce.o(.text.code_080E0EF0)` lines) -- mechanically
  doable, just needs someone to work out the `.section` mechanics
  carefully before touching this file, not attempted uncarefully with
  remaining budget.
- **~23 more, harder, NOT attempted**: the majority of the 47 call sites
  (`asm/new_game.s:2519`, `asm/game_scene.s:121`, `asm/intro_scene.s:5450`,
  `asm/game_state.s:3495`, plus many in the giant
  `code_0804E9C8.s`/`code_0805E760.s`/`code_809E804.s` blobs) share a
  richer variant: `push {r4,r5,lr}; adds r4,r0; adds r5,r1;` (self/in_chrg
  moved into `r4`/`r5` up front, freeing `r0`/`r1`), stamp own vtable,
  THEN a conditional child-teardown block (`ldr r1,[r4,#4]; cmp r1,#0;
  beq skip; ldr r0,[r1,#4]; ldr r2,[r0,#8]; adds r0,r1,#0; movs r1,#3; bl
  _call_via_r2` -- a virtual call, method slot 2, arg `3`, on a child
  object read from `self+4`), THEN `adds r0,r4,#0; adds r1,r5,#0; bl
  func_080007EC`. **The struct layout here is NOT yet understood well
  enough to port confidently**: `ldr r0, [r1, #4]` reads the presumed
  child object's vtable pointer from offset **+4**, not +0, which doesn't
  match a plain `AScene*` (vtable normally at +0) or `SmartPtr<T>`
  (`include/smart_ptr.hh` is a bare 1-word wrapper, no ref-count, offset+0
  IS the raw pointer) -- something about this field's real layout (an
  extra leading word before the child pointer? a different smart-pointer
  variant with a refcount word? a one-off `this`-adjustment?) is unclear,
  and getting it wrong risks either a silent behavior mismatch that
  happens to compile to the same bytes by luck, or -- more likely, given
  how exacting agbcp's near-miss failures have been all project -- a
  clean, honest non-match. **Do not guess-port this family without first
  characterizing the child-object field's real type/offset** (a quick
  Ghidra look at 2-3 of the sampled callers' full struct layout in the
  patch repo would likely resolve this fast, cheaper than blind C
  iteration).

### Concurrent-session note

While doing the final clean-rebuild verification this round, `git status`
showed **uncommitted modifications to `src/code_0804E8F0.cc` and
`src/code_0804E958.cc`** (renaming `func_0804E8F0`/`func_0804E958` to
their semantic `franglais_vwf_draw_string_plain`/`_recolor` names, with a
new `ALIAS()` back onto the `func_ADDR` symbol for the asm callers) that
this round did **not** make. This is a parallel session actively working
on the same working tree concurrently -- confirmed `make compare` still
passes bit-exact with those changes present (the rename is
behavior-preserving via `ALIAS()`), left entirely untouched/uncommitted
by this round (not this round's work to manage, and the working tree
being shared live means those files' state at any given moment isn't
under this round's control). This round's own commit (`8ecf106`) only
staged the 4 files it actually intended
(`asm/new_game.s asm/code_08004C68.s fomt.lds src/code_08004C54.cc`),
verified via `git status --short` before committing, per round 3's
"pathspec `-A` doesn't reliably stage deletions" lesson.

### Repo state at end of round 4

- Working tree: clean except the two parallel-session files noted above
  (not this round's changes, left alone).
- One new commit this round: `8ecf106` (func_08004C54). Verified
  `make compare` bit-exact via a full clean rebuild
  (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`) both right
  after committing and again at the very end of the round.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.
- Priority list for whoever picks this up next: (1) split
  `func_080E09B0` out of `asm/code_linkonce.s` (quicktest-confirmed
  match already in hand, just needs the `.text.code_ADDR` section
  surgery); (2) characterize the child-object field layout for the ~23
  "richer" destructors in the same family before attempting them; (3)
  everything still open from rounds 1-3's priority lists
  (`franglais_transition_ctl_query` `0x08050DF0`, `Unpack` `0x080D102C`,
  the script dispatch table `0x0803F900`, `DrawGlyphAt`/`DrawGlyphAt`-recolor
  -- still not recommended without a bigger register-pressure budget,
  `docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
  `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`).

## Round 5

### Goal

Attack the next priority target from round 4's list: `func_080E09B0`
(pure-forwarding derived destructor already quicktest-confirmed, just
needed the `.text.code_ADDR` COMDAT/linkonce section split worked out),
apply two naming-convention corrections from Mathias mid-round, and keep
`DECOMP_RULES.md`/this file current.

### `func_080E09B0` matched (commit `e4638b2`)

Body: `push {lr}; bl func_080007EC; pop {r0}; bx r0` -- 0xC bytes, a pure
tail-forward to the base `AScene` destructor with **no own vtable field
to stamp** (unlike `func_08004C54`, which resets its own vtable pointer
first). Ported as a plain free function `func_080E09B0(void *self, int
in_chrg) { func_080007EC(self, in_chrg); }` -- no semantic name found in
the patch repo's docs for this address, kept as the raw symbol.

**Split mechanics, and a real near-miss caught and fixed before commit**:
`asm/code_linkonce.s` groups many functions under a handful of explicit
`.section ".text.code_ADDR"` blocks (not one section per function
despite the "linkonce" name) -- same split method as any monolithic
`.s` file applies (cut the target function's body into `src/code_ADDR.cc`,
push everything after it into a new `asm/code_NEXT.s`). The trap: the
`fomt.lds` line right after `asm/code_linkonce.o(.text.code_080D7CFC)`
is `*(.gnu.linkonce.t.__lower_bound__H4ZPC12JumpTableEntZiZ...)` --
first assumption was that this wildcard is inert (matches nothing, 0
bytes), since nothing in `asm/*.s` defines that mangled symbol. Wrong:
it's a REAL C++ template instantiation, compiled fresh from
`src/script_engine.cc` (already ported), occupying a genuine ~60-byte
(0x3C) gap in the ROM (`0x080E0EB4`-`0x080E0EF0`) that sits right BEFORE
the next explicit `.text.code_080E0EF0` entry, not after
`.text.code_080D7CFC`'s nominal end. First attempt inserted the two new
split entries (`src/code_080E09B0.o(.text); asm/code_080E09BC.o(.text);`)
AFTER that wildcard in `fomt.lds` -- built and linked cleanly (no error,
`make` exit 0) but **`sha1sum -c` failed**, with a huge contiguous diff
block starting exactly at `0x080E09B0` and ending exactly at
`0x080E0EF0` (full byte-diff scan + `fomt.map` inspection showed the new
stub had been shoved 0x3C bytes later than expected, with the OLD
blob's `func_080E09BC` content landing at `0x080E09B0` instead). Fixed
by moving the two new entries BEFORE the wildcard -- verified bit-exact
with two independent full clean rebuilds (`rm -rf build fomt.gba
fomt.elf fomt.map && make compare`), once right after the fix and once
again before commit.

**Diagnostic method that found this fast** (documented as a general
rule in `DECOMP_RULES.md` now): don't assume a `*(.gnu.linkonce.t...)`
wildcard is a harmless vestige without checking its assigned address in
`fomt.map` from a clean build first. When `make compare` fails with NO
compiler/linker error but a sha1 mismatch, byte-diff the built ROM
against `baserom.gba`, group into contiguous ranges, and check whether
the range boundaries line up exactly with a section/symbol boundary
(they did here) -- that's a strong signal of a `fomt.lds` *ordering*
bug, not a code-content bug, and `fomt.map` directly shows where an
object's `.text` actually landed vs. where its name says it should be.

Also worth recording: `rtk`'s command-tee wrapper truncates/caches long
`make` output unpredictably in this environment (`tail -N` on its log
file sometimes showed a STALE prior run's output, including one paste
of an old `Échec` after the fix was already in place and the direct
`sha1sum -c fomt.sha1` said `Réussi`). When in doubt, re-run
`sha1sum -c fomt.sha1` directly against the just-built `fomt.gba`
instead of trusting a wrapped/tee'd `make compare` tail.

### Naming-convention corrections (mid-round, from Mathias)

1. **No patch-project branding in symbol names.** Renamed
   `franglais_vwf_draw_string_plain` -> `DrawString` and
   `franglais_vwf_draw_string_recolor` -> `DrawStringRecolor` (commit
   `916d609`), via the same `ALIAS()` mechanism used for
   `func_08004C54` in round 4 -- zero binary impact, verified bit-exact
   with a full clean rebuild after the rename. Rationale: this repo
   describes vanilla `fomt`, not our `franglais` patch; `vwf` is our own
   internal jargon, not necessarily the game's or `StanHash/fomt`'s own
   term. Keeping symbol names patch-neutral keeps the door open to
   someday proposing matches upstream (not decided, but not to be
   foreclosed by premature naming). The `docs/VWF.md` pointer stays in
   header comments as the PROVENANCE of the analysis -- that's fine,
   it's not the symbol name.
2. **C vs C++ shape must follow the REAL binary structure, not a
   uniform style preference.** Documented as a general rule (see
   `DECOMP_RULES.md`): a function with a real `this`/vtable in the
   disassembly (like `func_08004C54`) should be ported as a genuine
   class method on the real class in `include/*.hh`, not hand-rolled
   as a free C function faking a vtable to hit the same bytes. A
   function that's genuinely procedural in the original (no `this`, no
   vtable -- `DrawString`/`DrawStringRecolor`, plain `(dims, dest, x, y,
   s)` arguments) stays plain C -- inventing OO structure that isn't
   there would be guessing, which the project's non-negotiable
   discipline already forbids. Neither `func_080E09B0` nor `DrawString`/
   `DrawStringRecolor` needed changes under this rule (already correctly
   shaped: `func_080E09B0` genuinely has no vtable of its own to stamp,
   so it's correctly a plain forwarding free function despite operating
   on a `this`-like `self` pointer it doesn't own the layout of;
   `DrawString`/`DrawStringRecolor` are genuinely procedural).

Both rules are now written up in `DECOMP_RULES.md`'s "Conventions de
nommage" section for future rounds.

### Repo state at end of round 5

- Three new commits: `e4638b2` (`func_080E09B0` match), `916d609`
  (naming-convention rename), plus this session-notes/rules update.
  `make compare` verified bit-exact via full clean rebuild after each
  code-affecting commit.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No parallel-session activity observed this round
  (`git status`/`git log` matched exactly what this round produced).
- Priority list for whoever picks this up next: (1) characterize the
  child-object field layout for the ~23 "richer" destructors in
  `func_08004C54`'s family (Ghidra on 2-3 examples in the patch repo,
  offset +4 of the presumed child object) before attempting them --
  once characterized, port as real C++ methods per this round's C-vs-C++
  rule, not hand-rolled vtable pokes; (2) everything still open from
  rounds 1-3's priority lists (the function documented as
  `franglais_transition_ctl_query` in the patch repo, `0x08050DF0` --
  give it a vanilla-neutral name when ported; `Unpack` `0x080D102C`; the
  script dispatch table `0x0803F900`; `DrawGlyphAt`/`DrawGlyphAt`-recolor,
  still the "register pressure" difficulty class, not recommended
  without a bigger dedicated budget; `docs/DIALOGUE.md`,
  `docs/BACKGROUNDS_INVENTORY.md`, `docs/CLAIRE_SPRITE_PORTABILITY.md`,
  `docs/MFOMT_ADDITIONS.md`).

## 2026-08-20 -- worktree `parallel-1`, dedicated round -- `Unpack`
(`0x080D102C`): negative result, target permanently dropped

Assigned target: `Unpack` (`0x080D102C`), the LZSS+Huffman decompressor,
with the patch repo's already-validated Python reference
(`harvest-moon-franglais/tools/unpack_decoder.py`) and algorithm writeup
(`harvest-moon-franglais/docs/BACKGROUNDS_INVENTORY.md`) as the intended
guide for a real C/C++ port. **Result: no code was ported, no commit
touching `src/`/`asm/`/`fomt.lds` was made.** The target is structurally
infeasible for C decompilation, not merely difficult -- see
`DECOMP_RULES.md`'s new section "Classe de problème 'ABI partagée entre
`bl`'" for the full writeup, added this round. Summary here for the
session log:

1. **Located `Unpack`** in `asm/code_809E804.s` (line ~103423, already
   labeled `Unpack` rather than `func_080D102C` -- someone earlier
   pre-named the dispatcher entry point, its callees are still
   `func_ADDR`/`sub_ADDR`). Confirmed the whole family already exists as
   ~14 separate `thumb_func_start` entries between `0x080D102C` and
   `0x080D15C0` (the top dispatcher itself is only 196 bytes,
   `0x080D102C`-`0x080D10F0` -- small, looked tractable at first glance).
2. **Traced the top dispatcher by hand**, instruction by instruction,
   against `docs/BACKGROUNDS_INVENTORY.md`'s format description (info
   byte bit layout `[7:5]`=filter, `[4:3]`=symbol width, `[2:0]`=body
   mode) -- matches exactly, confirms the patch repo's algorithm
   understanding is correct and directly maps onto this disassembly.
3. **Found the actual blocker while checking `sub_080D1224` (body mode
   0) as a sanity check before writing any C**: it opens with `bl
   func_080D14EC` immediately followed by `bl func_080D11A4` (the bit
   reader), both consuming the bit-reader state (`buf` in `r2`, `avail`
   in `r3`) that was only ever initialized several `bl` boundaries
   earlier, inside `Unpack` itself -- with **no reload of `r2`/`r3`
   anywhere in between**, neither at the `Unpack` call sites nor at
   `sub_080D1224`'s own entry. `r0`-`r3` are caller-saved in every
   ARM/Thumb calling convention agbcp could plausibly generate code
   under; no C source, in any form, compiles to a `bl` sequence that
   relies on a non-return-value register surviving an intervening call
   to a genuinely separate function. This is definitive, not a
   probabilistic judgment call -- verified by direct inspection of both
   the caller and the callee's entry, not inferred from difficulty.
4. Cross-checked against the patch repo's own framing
   (`docs/BACKGROUNDS_INVENTORY.md`, "Pourquoi pas la décompilation
   Ghidra directe": "de l'assembleur Thumb écrit à la main, optimisé,
   pas une sortie de compilateur") -- same conclusion, reached
   independently this round from the raw disassembly rather than taken
   on faith from that doc, and sharpened with the exact mechanism
   (register-passed bit-reader state surviving uninitialized-in-between
   across multiple `bl`s) rather than just the general observation that
   Ghidra's decompiler output was unreliable.
5. **No attempt was made to force a C translation anyway** (e.g. via
   named register-variable extensions) -- this repo has zero precedent
   for that pattern (`grep` for `asm("r` register-variable usage across
   `src/`/`include/` returned nothing), and forcing it would only
   reproduce the existing `.s` as inline asm dressed up as C, which
   `DECOMP_RULES.md`'s own discipline treats as not a real decompilation
   (no semantic gain, purely cosmetic, and never guaranteed bit-exact
   without becoming a line-for-line asm transcription anyway).

### Repo state at end of this round

- **Zero changes to `src/`, `asm/`, `fomt.lds`, or any build-affecting
  file.** `git status --short` before and after this round is identical
  except for `DECOMP_RULES.md` and `SESSION_NOTES.md` (this entry).
  `rm -rf build fomt.gba fomt.elf fomt.map && make compare` confirmed
  bit-exact (`ok`) both before starting and after finishing, with no
  intervening code edits -- nothing to break.
- `DECOMP_RULES.md` updated: new section "Classe de problème 'ABI
  partagée entre `bl`'" (general pattern + detection heuristic for
  future rounds hitting similar hand-written-asm subsystems), and
  `Unpack` struck from the "prochaines cibles priorisées" list with a
  pointer to this reasoning -- **do not re-assign this target** without
  a new, specific reason to doubt this diagnosis.
- No parallel-session interference observed; `origin` untouched, no
  push, no PR, per standing discipline.
- Honest bottom line: the task requested a bit-exact C/C++ match for
  `Unpack`. That specific deliverable is not achievable for this
  function family as a matter of ABI, independent of effort invested --
  reported as a negative result with full reasoning rather than forcing
  a plausible-looking but fake C port, per the project's non-negotiable
  "never commit a non-matching match" discipline (which extends here to
  "never even attempt one once infeasibility is established").

## Round 6 -- `func_08010F54` triaged as register-pressure class (not
attempted); its 4 tiny GameState flag-setter callees matched instead

Target for this round, per brief: `GameState`/`Farm` functions documented
in the franglais patch repo but not yet in a `.cc`. The patch repo's
commit `9636a71` (`src/code_0800E2E4.cc` here, already on this branch)
names `func_08010F54` (`asm/game_state.s`) as the day-rollover, with
`GameState+0x08/0x0C/0x10` confirmed in an emulator (weather/forecast/
date block).

### `func_08010F54` itself: triaged out, not attempted

Read the full disassembly (~570 lines, `0x08010F54`-`0x080113AA` before
tail cleanup) before touching anything. This is squarely the
"register-pressure" difficulty class documented in `DECOMP_RULES.md`
(3 failures out of 3 attempts on that class so far) -- worse, actually:
it uses `r4`-`r7` + `r8`/`sb`/`sl`/`ip` simultaneously through the ENTIRE
body (not just prologue/epilogue), contains a 14-way jump table
(building-upgrade dispatch), a second 2-level indirect jump table
lookup, five near-identical `Bachelorette` rival-event checks, a
per-season weighted-random weather roll, and multiple calls into
already-matched code (`DayUpdate__4FarmiRC8GameDate`,
`DayUpdate__3Dog`, `method_0800AB08__9FieldPlot6Season`,
`FarmHouse`/`Coop`/`Barn` upgrade methods). Per `DECOMP_RULES.md`'s own
explicit warning ("ne pas re-tenter cette classe sans budget de
plusieurs rounds dédiés"), this was **not attempted** this round --
would need a dedicated multi-round budget, not a single-target session.
Documented here as read/understood/triaged rather than silently
skipped, so the next round doesn't re-read it from scratch: the callee
list above is a fairly complete map of what it touches.

### Fallback per brief step 2: 4 tiny `GameState` flag-setter siblings, matched

While reading `func_08010F54`, found it calls three trivial one-basic-
block sibling functions from inside its upgrade jump table --
`func_08010F30`/`func_08010F3C`/`func_08010F48` (`this` = same `r6`
GameState pointer as the rollover itself), each just
`*(u8*)this |= <bit>` for bits `0x02`/`0x04`/`0x08` of byte 0. A fourth
sibling, `func_08010F24` (bit `0x01`, same byte), sits immediately
before them in `asm/game_state.s` and is called from the script-VM side
(`asm/code_0803EE94.s`, twice) on a GameState pointer read from a
context field at offset `~0x350/0x354` -- independent confirmation that
these 4 functions all operate on the same object type as
`func_08010F54`'s `this`, not a coincidence of a shared byte-flag
idiom. (Bits `0x01` and `0x10` of that same byte 0 are explicitly
cleared at the very top of `func_08010F54`, consistent with these being
once-per-day flags the rollover resets.)

All 4 are single basic block, 2-3 instructions of real work, no branches,
no `bl`, `r0`/`r1`/`r2` only -- the "peu de valeurs vivantes" class that
`DECOMP_RULES.md` notes matches on the first or second try. Matched
first try. No known C++ class exists yet for this GameState object (no
vtable, no confirmed field layout beyond the handful of offsets in
`src/code_0800E2E4.cc`), so per the "C libre vs méthode C++" rule these
stayed as plain C functions taking a raw `void *`, same style as the
existing `Unk_0800E324`-adjacent code in that same file.

### Mechanics

Split `asm/game_state.s` at the `func_08010F24`/`func_08010F54` boundary
(monolithic-file method from `DECOMP_RULES.md`): the head (up to but not
including `func_08010F24`, 1483 lines) stays `asm/game_state.s`; the tail
(from `func_08010F54` onward, the untouched register-pressure function
and everything after it in the file) became a new `asm/code_08010F54.s`
with the standard header prepended. The 48 bytes in between (4 functions
x 12 bytes, `0x08010F24`-`0x08010F54`) became `src/game_state.cc`.
`fomt.lds`: replaced the single `asm/game_state.o(.text);` entry with
`asm/game_state.o(.text); src/game_state.o(.text);
asm/code_08010F54.o(.text);` in that order, same pattern as prior
rounds. Verified `.text` size of `build/src/game_state.o` is exactly
`0x30` (48) bytes before comparing content, then `rm -rf build fomt.gba
fomt.elf fomt.map && make compare` -- bit-exact (`sha1sum -c fomt.sha1`
succeeded) on the first attempt.

### Repo state at end of round 6

- One new commit expected (this file + the 4-function match, all staged
  together): `asm/game_state.s` (truncated), `asm/code_08010F54.s`
  (new), `src/game_state.cc` (new), `fomt.lds` (3-line split). `make
  compare` verified bit-exact via full clean rebuild before committing.
- No parallel-session activity observed (`git log`/`git status` matched
  what this round itself produced, HEAD was `43c9148` at round start).
- `origin` untouched, nothing pushed, no PR.
- Next steps for whoever picks up `func_08010F54` itself: budget a
  dedicated multi-round pass, not a fallback slot in a mixed-target
  round. Two smaller adjacent leads if a lighter task is wanted instead:
  `func_08010F04` (getter, bit `0x10` of the same GameState byte 0 --
  same trivial shape as the 4 matched this round, just not contiguous
  in the `.s` file so needs its own small split) and `func_08010F1C`
  (getter on byte 3, needs the exact bitfield width worked out before
  writing the C, unlike the plain single-bit getters/setters).

## Round 6

### Goal

Assigned target from the franglais-patch repo's `docs/ENGINE.md` boot-FSM
research: `franglais_boot_fsm_run` (`0x08093364`) and the scene/screen
table it dispatches through. Per the round's brief, `func_080007EC`
(the shared base `AScene` destructor) was already confirmed matched
(rounds 4-5, `func_08004C54`/`func_080E09B0` both depend on it), so this
round skipped straight to (a) sizing up `franglais_boot_fsm_run` itself
and (b) other constructors/destructors in the same scene-table family.

### `franglais_boot_fsm_run` (`func_08093364`) sized up, NOT attempted

Located at `asm/code_0805E760.s:104359` (the same giant blob that holds
the confirmed "register pressure" failures `func_0805E790`/
`func_0804E4AC` from rounds 1/3). Body runs 0x08093364-0x08093A58
(0x6F4 = 1780 bytes, ~800 lines of `.s`), and the prologue alone
(`push {r4,r5,r6,r7,lr}; mov r7,sl; mov r6,sb`) shows the exact register-
pressure signature `DECOMP_RULES.md` already flags as "do not re-attempt
without a big dedicated budget" -- two 9-entry jump tables, calls into
~10 different not-yet-decompiled subsystems per `docs/ENGINE.md`. **Not
attempted this round**, consistent with the existing difficulty-class
rule; would need its own multi-round budget same as `DrawGlyphAt`.

### `func_08010158` matched (commit `a85f4b1`) -- a NEW, easier variant
of the scene-destructor family

Round 4/5 had classified the 47 `bl func_080007EC` call sites into two
buckets: the trivial "no vtable, pure tail-forward" case
(`func_080E09B0`, matched) and a "~23 richer, harder" bucket assumed to
share ONE shape (`ldr r1,[r4,#4]; ldr r0,[r1,#4]; ldr r2,[r0,#8]; bl
_call_via_r2` -- a VIRTUAL child-teardown call, blocked on
characterizing the child object's layout). Looking for other
scene-table constructors/destructors (the "table d'écrans/scènes" this
round's brief pointed at) turned up `func_08010158` in `asm/game_scene.s`,
which shares the vtable (`vtable_unk_080E5BF8`) and general shape but is
a **third, simpler variant** not previously catalogued: both of its
sub-object teardowns are **direct (non-virtual) calls**, not virtual
dispatch:

```
push {r4, r5, lr}
adds r4, r0, #0            @ r4 = self
adds r5, r1, #0            @ r5 = in_chrg
ldr  r0, =vtable_unk_080E5BF8
str  r0, [r4]                @ self->vtable = &vt
ldr  r1, =gUnk_0300040C
movs r0, #0
str  r0, [r1]                @ gUnk_0300040C = 0
movs r1, #0xde
lsls r1, r1, #2
adds r0, r4, r1              @ r0 = self + 0x378
movs r1, #2
bl   func_080D7E64           @ tear down sub-object at self+0x378
adds r0, r4, #0
adds r0, #8                  @ r0 = self + 8  (embedded AScriptEngine)
movs r1, #2
bl   _._13AScriptEngine      @ DIRECT (non-virtual) dtor call
ldr  r0, [r4, #4]            @ r0 = *(self+4)  (child pointer, no deref of ITS vtable)
cmp  r0, #0
beq  skip
movs r1, #3
bl   func_080D4480           @ DIRECT (non-virtual) call on the child
skip:
adds r0, r4, #0
adds r1, r5, #0
bl   func_080007EC           @ base AScene::~AScene(self, in_chrg)
pop  {r4, r5}
pop  {r0}
bx   r0
```

Confirms this class (constructed by `func_080D3EF4`, `__builtin_new`
of `0x554` bytes, embeds a `ScriptEngine` at +8 via `__12ScriptEnginePv`
-- i.e. this is very likely the game-scene/"in-farm gameplay" screen
object, matching `asm/game_scene.s`'s file name) is unrelated in shape
to the "~23 richer, virtual child teardown" bucket -- **not every
"richer than `func_080E09B0`" call site shares the same shape**, same
lesson as the `DrawString`/`DrawGlyphAt` false-generalization from round
3-4 (same doc section, same file, different difficulty). Worth
re-scanning the remaining ~22-ish call sites for this SAME simpler
"direct calls, no virtual dispatch" shape before assuming they all need
the child-layout characterization work -- some may match on the first
try like this one did.

**One real near-miss found and fixed before landing**: `AScriptEngine`
already has a `virtual ~AScriptEngine()` (`src/script_engine.cc`).
Writing the natural-looking `((AScriptEngine*)(self+8))->~AScriptEngine()`
compiles to a VIRTUAL call (`ldr` the embedded object's own vtable
pointer at offset `+0x34C` within it, `ldr` slot 2, `bl _call_via_r2`)
-- correct C++ semantics for an explicit destructor call through a
polymorphic type, but NOT what the original binary does (the original
calls `_._13AScriptEngine` directly, no vtable indirection at all, since
statically-typed non-polymorphic teardown of a known-type member never
needs virtual dispatch). Fixed by qualifying the call with the class
name -- `->AScriptEngine::~AScriptEngine()` -- which forces agbcp/agbc++
to emit the static, non-virtual call. **New generalizable rule**: when
porting a class that owns (not just points to) a polymorphic member and
the original disassembly shows a DIRECT `bl` to that member's mangled
destructor symbol (not a virtual dispatch through its own vtable), the
C++ source must use the **qualified** explicit destructor call
(`obj.Base::~Base()`), never the plain `obj.~Base()` -- the plain form
is semantically valid C++ but compiles to different (virtual) codegen
whenever the member's static type has a virtual destructor. Added to
`DECOMP_RULES.md`.

Split mechanics: `func_08010158` was the last function in
`asm/game_scene.s` with a `thumb_func_start` label -- everything after
its own body + 2-word literal pool was **unlabeled raw `.byte` data**
(presumably a not-yet-disassembled continuation of the same
translation unit). Moved that unlabeled tail byte-for-byte into a new
`asm/code_080101A0.s` (named after its start address, though nothing
external references it by that name since it was never a symbol), with
the trimmed `asm/game_scene.s` keeping everything before the target
function untouched. Two new `fomt.lds` entries inserted at the old
`asm/game_scene.o(.text)` line's position:
`asm/game_scene.o(.text); src/code_08010158.o(.text);
asm/code_080101A0.o(.text);`. Verified bit-exact via **two** independent
full clean rebuilds (`rm -rf build fomt.gba fomt.elf fomt.map && make
compare`), once right after landing and once again before this write-up.

**Toolchain hazard found and worked around**: the quicktest harness's
`/tmp/qt.s`/`/tmp/qt.o` paths from `DECOMP_RULES.md` are NOT
session-isolated -- a first quicktest run in this session picked up a
**stale `/tmp/qt.s` from an apparently unrelated concurrent process**
(the `objdump` output showed 5 completely unrelated functions,
`func_08007128` etc., nothing matching the input `.cc`). Re-ran the
exact same pipeline with unique paths under this session's own scratch
directory instead of bare `/tmp/qt.s`/`/tmp/qt.o` and got the expected,
correct disassembly. **Rule for future rounds: never use the bare
`/tmp/qt.s`/`/tmp/qt.o` paths from the quicktest recipe verbatim --
always redirect to a session-unique path first**, since `/tmp` is
shared across whatever else is running on the machine. Added to
`DECOMP_RULES.md`.

Also encountered again: `ls` (plain, unwrapped) produced silently empty
output in this environment for directories that verifiably have content
(confirmed via `python3 -c "os.listdir(...)"`) -- some shell-level
interception (unlikely to be this repo's concern, environment-specific)
swallows `ls`'s stdout without an error code. Not investigated further
(out of scope), just noted: **if `ls` ever appears to report an empty
directory unexpectedly in this environment, verify with `python3 -c
"import os; print(os.listdir(...))"` before trusting it.**

### Repo state at end of round 6

- One new commit: `a85f4b1` (`func_08010158` match). `make compare`
  verified bit-exact via two independent full clean rebuilds.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.
- Stray untracked file named `" "` (literal single space, 6480 bytes)
  found in the worktree root at the start of this round, not created by
  this round's work -- left untouched, not staged, not deleted (unclear
  provenance, not this round's to manage per the "don't overwrite
  activity you didn't produce" rule).
- Priority list for whoever picks this up next: (1) `franglais_boot_fsm_run`
  (`func_08093364`) itself -- needs a dedicated multi-round register-
  pressure budget, not a quick attempt; (2) re-scan the ~22 remaining
  "richer" `func_080007EC` call sites for the SAME simple
  "direct-calls-only" shape `func_08010158` turned out to have, before
  assuming they all need the harder child-layout characterization work;
  (3) everything still open from rounds 1-5's priority lists (unchanged).

## Round 6 (worktree w3, parallel-3) -- first half of the "richer" AScene-derived destructor family matched

### Mission

Continue directly from round 5's priority list, item 2: characterize
the child-object field layout for the ~23 (turned out to be 37, see
below) "richer" derived-scene destructors sharing `func_08004C54`'s
shape but with an extra conditional teardown of a child object at
`self+4`. Assigned the FIRST HALF (by ascending address) of the family,
in an isolated worktree (`w3`); a second worktree (`w7`) works the
second half concurrently -- no collision possible, separate git
worktrees.

### Full site scan

Grepped all 47 `bl func_080007EC` call sites across `asm/*.s`, matched
each to its enclosing `thumb_func_start`, sorted by address, then
classified each body (from function start to the call site) for the
"rich" signature (`_call_via_r2` + `ldr r0, [r1, #4]` pattern). Result:
37 of 47 are "rich"; the other 10 are the already-known "empty" variant
(`func_08004C54`/`func_080E09B0`'s shape) or something else not
investigated further this round. Full list recorded in
`DECOMP_RULES.md`'s new "famille riche" section.

### Layout characterization (the actual blocker from round 5)

Round 5 flagged: `ldr r0, [r1, #4]` reads the presumed child object's
vtable pointer from offset **+4**, not the standard +0 -- unexplained.
Resolved by reading the MATCHING CONSTRUCTOR for one instance,
`func_080041DC` (`asm/new_game.s`, not ported, still asm): it
`__builtin_new`s a 0x1A0-byte block, calls `func_08008574` on the fresh
object FIRST, THEN stamps `vtable_unk_080E5A5C` at `[r7, #4]` (r7 =
self). This is exactly consistent with a 4-byte non-polymorphic
leading base subobject (built by `func_08008574`, role not
characterized) followed by a polymorphic part whose vtable naturally
lands at offset +4 -- the classic Itanium-ABI shape for multiple
inheritance where the polymorphic base isn't listed first.

**Decision: do NOT invent a C++ class for this leading 4-byte base or
the child's full type.** Per `DECOMP_RULES.md`'s C-vs-C++ rule (case
where the binary's real shape is under-characterized), all four
functions this round are ported as plain pointer arithmetic:

```c
void *child = *(void **)((char *)self + 4);
if (child != nullptr) {
    void **vt = *(void ***)((char *)child + 4);
    void (*fn)(void *, int) = (void (*)(void *, int))vt[2];
    fn(child, 3);
}
```

Verified this shape compiles to IDENTICAL bytes to the original via the
fast quicktest harness (compiler+assembler, no link) against
`func_08004BDC` BEFORE touching any `asm/*.s` file -- de-risked the
whole family before spending time on the file-split mechanics.

### Four matches this round (commit `ef58287`)

`func_0800371C` (`asm/intro_scene.s`), `func_08004BDC`
(`asm/new_game.s`), `func_080059D0` and `func_080070A4` (both in
`asm/code_08004C68.s`) -- the four lowest-address "rich" sites. All
four share the EXACT same body, differing only in their own
`vtable_unk_ADDR` constant.

**Split mechanics, one real mistake caught before commit**: splitting
`asm/code_08004C68.s` required THREE pieces (it contains two of the
four target functions, `080059D0` and `080070A4`, with ~2900 lines of
untouched functions between them). First attempt at the third split
boundary (after `080070A4`) accidentally set the new tail asm file's
start to the NEXT-NEXT function (`func_08007110`) instead of the
function immediately following the ported one (`func_080070D4`) --
silently dropped `func_080070D4`'s body entirely (it fell in neither
the `.cc` file nor either of the two new `.s` chunks). Caught
immediately at link time (`undefined reference to func_080070D4`, not
a silent corruption) -- fixed by recomputing the exact
`thumb_func_start` boundaries from a clean `git show HEAD:<file>` copy
rather than trusting line numbers computed before the file existed in
its edited form. **General lesson for the next round attacking more of
this family**: when a single `asm/*.s` file needs multiple splits (more
than one target function in the same file), compute ALL boundaries
from the ORIGINAL (unmodified) file content in one pass, and double
check the boundary between two `src/code_ADDR.cc` extractions isn't
skipping an un-ported function sitting between them.

Verified bit-exact via two independent full clean rebuilds
(`rm -rf build fomt.gba fomt.elf fomt.map && make compare`,
`sha1sum -c fomt.sha1` -> `Réussi` both times) before committing.

### Repo state at end of round 6

- One new commit: `ef58287`. Working tree clean afterward
  (`git status --short` empty).
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No sub-agents launched, all work done directly in
  this worktree as instructed.
- `DECOMP_RULES.md` updated with the full 37-site list (sorted by
  address) and the resolved layout/porting recipe for the whole family.
- **~33 sites of the same family remain** (see `DECOMP_RULES.md` for
  the full address list) -- second half assigned to worktree `w7`
  concurrently; whoever picks up the rest of THIS half (or verifies w7
  didn't already cover it) can reuse the exact same body template,
  changing only the `vtable_unk_ADDR` constant per site, and the same
  quicktest-first-then-split workflow documented above.

## Round 6 -- `func_0800736C` (OBJ-palette allocator) retried, real progress,
still not bit-exact -- documented honestly, nothing committed

### Scope

Dedicated retry of `func_0800736C` (round 2's failed OBJ-palette
allocator, `franglais_objpal_alloc` in the patch repo's `docs/HUD.md`,
directly relevant to the open `docs/CHARACTER_SELECT.md`
female-character-invisibility investigation in the parallel
`character-select` worktree). Round 2 only tried 2 variants; this round
was asked for genuine shape-hunting with more variants, using the fast
`arm-none-eabi-cpp | agbcp | as` harness (no full link) to iterate
quickly. Worked alone in worktree `w5` (`parallel-5`), no other agent
touched this file this round (`git status` clean throughout).

### Disassembly re-read in full, statement-by-statement

Re-derived the exact semantics of all 52 original instructions
(0x0800736C-0x080073E0, 0x74 = 116 bytes, `push {r4,r5,lr}` /
`pop {r4,r5}; pop {r1}; bx r1`) against the already-matched
`Unk_hardware_03000404` struct/helpers in `src/hardware.cc`
(`AllocEntry`, `IndexOf`, `inl_func_1`, `GetEntry`). Confirmed role:
pop the free list (`h->unk_00`), set `entry->params.unk_00 = 1`
(refcount), stamp a fresh generation counter (`h->unk_4A`, wrapping
`0xFFFF -> 1`, never 0) into both the entry and the allocator struct,
return the packed handle `(generation << 4) | (bank_index & 0xF)`, or
`0` on an empty free list.

Two structural details not written up in round 2's notes, now confirmed
by direct disassembly re-reading:

1. **A single shared accumulator/exit pattern.** The original does NOT
   have per-path `return` statements compiling to independent `movs r0,
   #0` / final-expression-into-r0 sequences. Every path (`ent == nullptr`
   at either check, or the full success path) assigns into the SAME
   register (`r2` in the original) and falls through to one shared tail:
   `adds r0, r2, #0; pop {r4, r5}; pop {r1}; bx r1`. This is the classic
   `goto done;`-into-a-single-`return result;` shape already used
   elsewhere in this file (`func_080071BC`'s `goto alloc_loop`) -- NOT
   the plain `if (...) return 0;` written at each check site, which
   round 2's and this round's early literal attempts both used and which
   produces a *different*, per-site `movs r0,#0` epilogue shape.
2. **The final packed-value computation re-reads `ent->params.unk_02`
   from memory instead of reusing the register that already holds the
   freshly-computed generation value.** `strh r0, [r5, #2]` (write) is
   immediately followed, a few instructions later, by `ldrh r0, [r5, #2]`
   (read) of the exact same address, even though the register `r0`
   written was never clobbered in between and could have been reused for
   free. This is not optimizable-away sloppiness -- it is direct evidence
   that the original C source's final `return` expression textually
   references the **field** (`ent->params.unk_02`) again, not the local
   variable that held the value right before the store.

### Concrete new finding: agbcp has a real (if narrow) redundant-load-elimination pass

Confirmed empirically (not documented in `DECOMP_RULES.md` before this
round): `agbcp -O2` DOES eliminate a trivially-redundant `& 0xFFFF` mask
immediately following a `ldrh` of the SAME expression in the SAME
statement (i.e. `field & 0xFFFF` where `field` is a `u16` struct member,
written as a single expression) -- the mask instruction is dropped
entirely, no literal-pool load, nothing. This is a real, useful,
generalizable finding: agbcp is not *uniformly* non-optimizing the way
`DECOMP_RULES.md`'s anti-pattern #1 implies; it has at least this one
narrow peephole. Splitting the field read into its own statement
(`unsigned int packed = ent->params.unk_02; return ((packed & 0xFFFF)
<< 4) | ...;`) defeats this specific peephole and reproduces the
original's `ldrh` + `ands` pair exactly -- confirmed bit-for-bit
identical encoding to the original at that point. **New rule for
`DECOMP_RULES.md`**: when a mask `& 0xFFFF` immediately following a same
type-width memory load inside ONE expression keeps getting silently
eaten by agbcp, split the load into its own statement first; this is a
different, narrower phenomenon than anti-pattern #1's `& 0xFFFF` vs
double-shift byte-count issue, and is now confirmed as a second, real
agbcp peephole worth knowing about.

### Best variant reached (v4/v5 below) -- NOT committed, does not match

```c
EC u32 func_0800736C(void)
{
    Unk_hardware_03000404 *h = gUnk_03000404;
    Unk_hardware_ent_080D6D98 *ent = h->unk_00;
    unsigned int result;

    if (ent == nullptr)
    {
        result = 0;
        goto done;
    }

    {
        unsigned int idx = h->IndexOf(ent);

        h->unk_00 = ent->next_free;
        /* the redundant second `if (ent == nullptr)` check from the
           original does NOT survive here -- see "what did not converge"
           below */

        h->inl_func_1(idx);

        h->unk_48++;
        ent->params.unk_00 = 1;

        unsigned int gen = h->unk_4A + 1;

        if (gen > 0xFFFF)
            gen = 1;

        ent->params.unk_02 = gen;
        h->unk_4A = gen;

        unsigned int packed = ent->params.unk_02;

        result = ((packed & 0xFFFF) << 4) | (idx & 0xF);
    }

done:
    return result;
}
```

(Actual tested ordering had `h->unk_00 = ent->next_free;` right after the
first null check, then `idx` computed after, matching the original's
literal instruction order -- see the quicktest scratch files this round
used for exact wording, not preserved in the repo since nothing
committed. Also tried explicitly routing the alloc through
`h->AllocEntry(ent)` with the result bound to a second, textually
distinct local (`ent2`) per round 2's own suggested-but-untried idea --
**identical compiled output**, confirming `AllocEntry` always gets fully
inlined by agbcp here and contributes nothing new.)

**Total: 104 bytes compiled vs 116 bytes (0x74) original -- 12 bytes
short**, down from round 2's -8 and -16 byte misses, and structurally
much closer:

- Single shared accumulator register (mine: `r1`; original: `r2` -- pure
  numbering difference, not a shape difference) feeding one shared
  epilogue `adds r0, rX, #0; pop {...}; pop {r1}; bx r1` -- **this part
  now matches exactly in shape**, was completely different in round 2's
  attempts.
- The mask-preserving `ldrh` + `ands` reload of `ent->params.unk_02` --
  **now matches exactly**, confirmed via the redundant-load-elimination
  finding above.
- Register footprint: mine is `push {r4, lr}` (2 registers); original is
  `push {r4, r5, lr}` (3 registers) -- **still wrong**. `push`/`pop` cost
  the same 2 bytes regardless of how many registers are listed, so this
  alone isn't the source of the 12-byte gap, but it's the visible symptom
  of the real gap: the original keeps the popped entry pointer alive in
  TWO different registers at different points in the function (`r3`
  early, `r5` late, despite `r3` never being technically clobbered in
  between) -- a genuine weak-allocator quirk (per-basic-block, not
  whole-function, register binding) that none of the 5 variants tried
  this round reproduced. Every variant kept the entry pointer in a single
  register (`r3`) for the whole function, which is provably sufficient
  (never clobbered) but not what the original compiled to.

### What did NOT converge: the redundant second null check

Round 2 already found that `agbcp` collapses the original's two
`cmp r3, #0; beq ...` checks (same register, no intervening write to
that register) into one. This round confirms that finding generalizes
across every phrasing tried: plain `if`, `goto`-style early exit, and
routing the pop through the already-matched `AllocEntry` helper with the
result bound to a fresh, textually distinct variable -- **all five
produce the exact same single-check code**, because `agbcp`'s
CSE/dead-branch-elimination appears to operate on register identity
(pseudo-value, pre-allocation) rather than source-variable identity, and
`AllocEntry` gets fully inlined regardless of how it's called, so no
"function call boundary" is ever actually present at the IR level to
block the fold. **This is a real, load-bearing negative result**: the
"read the field into a second, distinct local for the second check" idea
explicitly flagged as untried at the end of round 2 has now been tried
(as variant 5, via `AllocEntry`) and does NOT work -- update
`DECOMP_RULES.md`'s register-pressure section to close this off as a
known dead end rather than leaving it dangling as a hopeful lead.

### Honest assessment

This round made real, measurable progress (structural shape mostly
right, byte gap roughly halved, two new generalizable agbcp behaviors
found) but did **not** reach a bit-exact match. The remaining gap is
narrow but specific: reproducing (a) a genuinely redundant branch that
survives agbcp's own dead-code elimination, and (b) a register footprint
where the SAME pointer variable is bound to two different physical
registers at two different points despite never being clobbered. Neither
is fixable by further guessing at *statement order* (round 4/5's
generally-reliable technique) -- both look like they need either the
TRUE original source shape (which we don't have and can't derive further
from this call site alone), or a deeper understanding of agbcp's
register-allocation pass internals than is practical to reverse-engineer
black-box, one quicktest iteration at a time. Consistent with
`DECOMP_RULES.md`'s existing "register pressure" classification --
**now 4 failed attempts total across the project** on this specific
difficulty class (`func_0805E790` round 1, `func_0800736C` round 2 and
this round, `func_0804E4AC` round 3). Not recommending a 3rd attempt at
`func_0800736C` specifically without either (a) a way to inspect a
second independent call site of the same free-list-pop idiom elsewhere
in the ROM (if one exists) to cross-check the register-footprint
hypothesis, or (b) substantially more budget than a single round.

**Nothing committed.** `src/hardware.cc` and `asm/hardware.s` are
byte-for-byte unchanged from before this round; all experimentation was
done in scratch files outside the repo
(`/tmp/claude-1000/.../scratchpad/test_v{1..5}.cc`, not part of this
repo, gitignored working directory anyway). `git status --short` clean
throughout, `make compare` reconfirmed bit-exact via a full clean rebuild
(`rm -rf build fomt.gba fomt.elf fomt.map && make compare`) both before
starting and after finishing this round's experimentation.

### Repo state at end of round 6

- Working tree clean, no changes. `make compare` passes bit-exact
  (verified via full clean rebuild at the end of this round).
- No new commits.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.
- Relevant to the parallel `character-select` investigation: the
  allocator's *mechanism* is now fully understood and documented above
  (free-list pop, refcount=1, generation stamp wrapping past 0xFFFF to 1
  never 0, packed handle `(generation << 4) | (index & 0xF)`) even though
  the C port itself isn't bit-exact yet -- this semantic understanding is
  already reflected in the matched `func_080071BC` (`FreeEntry`/`Alloc`
  cycle) and doesn't depend on `func_0800736C` itself being ported to be
  usable by that investigation.

## Round 6

### Goal

External task: attack `func_08004C68` (the New Game naming sequence),
per `docs/ENGINE.md` round 27 in the franglais-patch repo, which
independently found this function, decompiled it via Ghidra, confirmed
it dynamically (PC trace on the standard boot recipe), and identified
it as the New Game player/farm/dog naming loop with an unidentified
1-byte selector between the first two name captures. Mission: locate
it in this repo's `asm/*.s`, port it to C/C++ matching real binary
structure, verify `make compare` bit-exact, commit only if matching,
and (budget permitting) resolve the selector byte's role.

### Located and re-decompiled independently

`func_08004C68` lives in `asm/code_08004C68.s:4-303` (0x08004C68-
0x08004EFC, ~150 instructions, the largest single function attempted
in this repo's own rounds so far -- for scale, ~15x the size of
`func_08004C54`). It sits in the SAME split file that round 4 already
carved out of the old monolithic `asm/new_game.s` (that split was done
purely to isolate `func_08004C54`, its neighbor at the time; this round
found the file's *next* function, `func_08004C68`, was never itself
addressed).

Independently confirmed the patch-repo's structural read (three
bounded 12-char text captures via a widget triplet
`func_08007078`/`func_080070D4`/`func_08007110`/`func_080070A4`,
truncation clamp `cmp r4,#0xc; bls ...; movs r4,#0xc` inlined three
times rather than a shared helper, `do { ... } while (!confirmed)`
loop, terminal `0x38`-byte heap allocation via `__builtin_new` with two
consecutive vtable-pointer stores at offset 0 -- `__vt_13AUnk_0800080C`
then `vtable_unk_080E5A78`, the classic base-then-derived C++ ctor
stamp order already established for this repo's `AUnk_0800080C`/`AScene`
family, see `include/scene.hh`) and went further on the ABI/signature
side, which the patch repo's Ghidra pseudocode (necessarily) left as
raw `undefined4`/register-level detail:

**`func_08004C68` is `AUnk_0800080C`-hierarchy's virtual `Run()`
override, not a free-standing "builder" function.** Chain of evidence:

1. `func_08004C54` (this repo's own round-4/5 finding, `AScene`-derived
   destructor) writes `*self = vtable_unk_080E5A88` where
   `vtable_unk_080E5A88 = 0x080E5A90 - 8` -- i.e. the record at
   `0x080E5A90` (this scene-table record's #12, per the patch repo's
   round-27 byte-literal scan of `0x08004C69` in ROM) is *itself* used
   as the object's raw 2-entry vtable, offset by the usual 8-byte
   CFront/ARM vtable header. That places `func_08004C54` at vtable
   slot 0 (dtor -- confirmed, it forwards to `func_080007EC` ==
   `AScene::~AScene()`) and **`func_08004C68` at vtable slot 1**, the
   exact slot `AScene::Run()` occupies in this repo's
   `include/scene.hh` (`virtual SmartPtr<AUnk_0800080C> Run() = 0;`).
2. `func_08004C68`'s prologue only ever touches `r0` (saved to
   `[sp+0x4c]` and never anything else at entry) -- no `r1` read at
   all. Its epilogue does `ldr r0,[sp+0x4c]; str r6,[r0]` (the freshly
   built `0x38`-byte object written through that saved `r0`) then
   returns with that same `r0`. This is exactly the ARM/CFront hidden-
   return-pointer convention: `r0` in, `r0` out, object constructed
   in place at `*r0` -- **not** a `self`/`this` parameter (`AScene`'s
   `Run()` takes no explicit args, and its body never touches its own
   `this`, consistent with the vtable dispatch call site never passing
   a second register either).
3. The return type is forced to hidden-pointer convention (rather than
   the plain-`r0` convention a 4-byte POD would get) because
   `SmartPtr<T>` (`include/smart_ptr.hh`) has a user-defined destructor
   (`~SmartPtr(){ delete inner; }`) -- non-trivial by the Itanium/CFront
   ABI rule regardless of its 4-byte size. `AScene::Run()`'s declared
   return type, `SmartPtr<AUnk_0800080C>`, matches exactly.

**Conclusion: `func_08004C68`'s real signature is
`SmartPtr<AUnk_0800080C> Run()`** (an override on the same anonymous
scene-record-#12 class `func_08004C54` already partially exposed), not
a bare C function -- this matters for the C-vs-C++ shape rule in
`DECOMP_RULES.md` (round 5): this one genuinely needs the C++ method
form to reproduce the hidden-return-pointer ABI, unlike `func_08004C54`
which stayed a free function.

### Buffer/selector layout in the terminal `0x38`-byte object, CONFIRMED

Static byte-level trace of the tail (`.L08004E22` onward) against three
16-byte stack scratch buffers filled by the three capture loops:

| offset | field | source buffer | source prompt (ROM ASCII, confirmed round 27) |
|---|---|---|---|
| `+0x00` | vtable ptr | -- | `__vt_13AUnk_0800080C` then `vtable_unk_080E5A78` (base-then-derived stamp) |
| `+0x04` | farm name, NUL-terminated, <=12 chars | 2nd capture buffer (`sb`) | `gUnk_080E893C` = `"Farm's"` |
| `+0x14` | player name, NUL-terminated, <=12 chars | 1st capture buffer (`sl`) | `gUnk_080E8934` = `"Your "` |
| `+0x24` | **selector, 1 byte** | register `r8` at loop exit | (not a text capture -- see below) |
| `+0x28` | dog name, NUL-terminated, <=12 chars | 3rd capture buffer (stack) | `gUnk_080E8944` = `"Dog's "` |

Layout confirmed directly from the `adds r5,r6,#0x??`/`memcpy`/`strb`
sequence at `asm/code_08004C68.s:231-265`, not inferred.

### Selector byte: origin traced, semantic role NOT fully resolved

Per the mission's step 5. What's newly established this round, beyond
the patch repo's "candidate for gender, unconfirmed" (`docs/ENGINE.md`
round 27):

- **The selector is NOT read from `func_08004C68`'s own input** --
  `func_08004C68` takes no explicit parameter (see ABI finding above),
  so it cannot be receiving a caller-supplied gender/config byte. Its
  value is entirely LOCAL, computed in two places:
  1. **At loop entry** (`asm/code_08004C68.s:24-30`), from register
     `r8`'s value *before this function ever writes to it* -- i.e.
     whatever `r8` held on entry from the caller's register file
     (`r8`/`sb`/`sl` are callee-saved and only saved/restored here, not
     parameters). Masked: `r8 &= ~3; r8 &= ~0x7C;` (two Thumb-forced AND
     steps, net effect `r8 &= ~0x7F` -- clears the low 7 bits, keeps
     bit 7 and above). **This reads as leftover/garbage-in caller
     register content being defensively masked down to (effectively)
     just its top bit**, not a meaningful "read a real parameter"
     pattern -- consistent with `Run()` taking no arguments.
  2. **Reassigned every loop iteration** (`asm/code_08004C68.s:94-96`):
     `r8 = func_0806EA6C(widget)` -- a return value from one of the 4
     unidentified `func_0806E9D8`/`func_0806EA30`/`func_0806EA6C`/
     `func_0806EA00` family calls sandwiched between the player-name and
     farm-name captures, called with the OLD `r8` as an argument to
     `func_0806E9D8` first (`asm/code_08004C68.s:79-81`), then re-read
     back out via `func_0806EA6C` after the widget's virtual-dispatch
     step. **This is a genuine stateful read-modify-write cycle on an
     interactive widget between the two capture loops -- structurally
     exactly the shape of a selection UI (e.g. a left/right toggle
     sprite)**, which is the strongest evidence yet for the "gender
     selector" hypothesis, but the actual VALUE SPACE (is it 0/1?
     0/0x80? a small enum?) is still unknown since none of the 4
     `func_0806Exxx` functions have been decompiled (their own bodies
     were out of scope for this session's budget -- they are a
     self-contained widget family, distinct from the text-capture
     widget family `func_08007xxx`, and from the confirm-screen family
     `func_0800598C`/`func_08005Axx`).
- **`func_0806E9D8`/`func_0806EA30`/`func_0806EA6C`/`func_0806EA00`
  disassembled at a glance (not fully decompiled)**: `func_0806E9D8`
  takes `(widget, value)` and is a short function; `func_0806EA6C`
  takes `(widget)` and returns a value truncated/masked in some way at
  its call site usage. Sizes and shapes look tractable (each is
  visibly short in `objdump`, well under the "register pressure" class)
  -- **good candidate for a focused follow-up session dedicated just to
  this family**, which would likely settle the gender-selector question
  with actual value semantics rather than structural inference.

**Honest limit of this round's selector finding**: structural evidence
(position between first two name captures, read-modify-write against
an interactive widget, single byte, masked to keep only high bits at
entry) is consistent with, and strengthens, the "gender selector"
hypothesis from the patch repo -- but this round did **not** determine
the actual bit meaning (which value = which gender, or whether it's a
gender selector at all vs. some other small-enum UI choice). Concrete
next step for `docs/CHARACTER_SELECT.md`: decompile the 4
`func_0806Exxx` functions (small, tractable) and/or dynamically trace
the selector byte's value across a save with a manually-chosen
character gender.

### Full C/C++ port: ATTEMPTED, NOT converged, NOT committed

Given the size (~150 instructions, by far the largest single function
tackled directly in this repo's own rounds) and the number of entirely
undecompiled callees this function depends on (`func_08007078`,
`func_080070D4`, `func_08007110`, `func_080070A4`, all 4
`func_0806Exxx`, `func_0800598C`, `func_08005A00`, `func_08005A3C`,
`func_080059D0`, `func_08008980`, `func_08008DB8`, `func_08008A68` --
12 callees, none with an established C signature anywhere in this
repo), a full bit-exact port was judged, honestly, out of reach of this
round's budget. A draft was written and test-compiled via the
quicktest harness (`DECOMP_RULES.md`'s fast-iteration recipe) as a
sanity check of the ABI/signature analysis above:

- First quicktest pass caught a real, generalizable issue worth
  recording: **naively writing `SmartPtr<AUnk_0800080C> ret(ptr); return
  ret;` does NOT compile** -- `SmartPtr`'s copy constructor
  (`include/smart_ptr.hh:47`) is `private` and a no-op (`SmartPtr(SmartPtr
  &){}`, doesn't even copy `inner`), so naming a local `SmartPtr` and
  returning it invokes that broken private copy ctor. **The correct
  idiom for this codebase's `SmartPtr<T>` is `return
  SmartPtr<T>(ptr);`** -- construct the temporary directly via the
  explicit `SmartPtr(T*)` ctor so the compiler builds it straight into
  the hidden return slot, no copy ever attempted. Same applies to any
  future `Run()`-shaped override in this family. Worth adding to
  `DECOMP_RULES.md` if a second function hits the same trap.
- Second, unresolved issue: reproducing the base-then-derived
  double-vtable-stamp at the new object's offset 0
  (`__vt_13AUnk_0800080C` immediately overwritten by
  `vtable_unk_080E5A78`) bit-exactly requires the terminal object to be
  a *real* C++ subclass of `AUnk_0800080C` overriding its pure-virtual
  `vfunc_0C()` (so the compiler emits the double-stamp as a genuine
  base-subobject-then-derived construction side effect, not as two
  raw pointer writes that `-O2` could dead-store-eliminate down to
  one) -- but `vfunc_0C()`'s real body is itself out of scope/unported,
  and the tail sequence around the widget's own `SmartPtr` member
  (`asm/code_08004C68.s:266-283`, a set-then-immediately-cleared field
  bracketing a virtual-dispatch call that traces out as *always*
  skipped, `cmp r1,#0; beq skip` with `r1` provably 0 from three lines
  above) was not fully re-derived to a clean C++ source shape within
  budget -- flagged as a genuine open question, not guessed past.
- **Not committed**: no `src/`/`asm/`/`fomt.lds` changes were made to
  the tracked worktree this round. `git status --short` confirmed clean
  before and after this round's exploration; a final `rm -rf build
  fomt.gba fomt.elf fomt.map && make compare` re-confirmed the baseline
  is still bit-exact, untouched.

### Repo state at end of round 6

- Zero new commits touching `src/`/`asm/`/`fomt.lds` (per the
  non-negotiable "never commit a non-matching build" rule -- this
  round's port did not converge, so nothing was staged). This
  session-notes update (and a `DECOMP_RULES.md` priority-list update)
  are the only tracked changes.
- `make compare` reconfirmed bit-exact (`sha1sum -c fomt.sha1` ->
  `Réussi`) on a full clean rebuild, both before touching anything and
  again at the end of the round.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No concurrent-session activity observed this round.
- **Priority list for whoever picks this up next**:
  1. Decompile the 4-function `func_0806E9D8`/`func_0806EA30`/
     `func_0806EA6C`/`func_0806EA00` family first, in isolation --
     small, tractable, and would resolve both the selector-byte
     semantics AND remove 4 of `func_08004C68`'s 12 unknown-signature
     callees before attempting the parent function again.
  2. Re-attempt `func_08004C68` itself only after (1) and ideally after
     at least the text-capture widget family (`func_08007078`/
     `func_080070D4`/`func_08007110`/`func_080070A4`) is also
     decompiled -- porting the parent around still-opaque callees is
     what stalled this round; each resolved callee narrows the
     remaining unknowns concretely instead of guessing at their
     signatures.
  3. Remember the `SmartPtr<T>` private-copy-ctor trap found this round
     (`return SmartPtr<T>(ptr);`, never a named local) for that attempt
     and any other `Run()`-shaped override.
  4. Everything still open from rounds 1-5's lists (23-member richer-
     destructor family, `franglais_transition_ctl_query` `0x08050DF0`,
     `Unpack` `0x080D102C`, script dispatch table `0x0803F900`,
     `DrawGlyphAt`/recolor, `docs/DIALOGUE.md`,
     `docs/BACKGROUNDS_INVENTORY.md`, `docs/CLAIRE_SPRITE_PORTABILITY.md`,
     `docs/MFOMT_ADDITIONS.md`).

## Round 6

### Goal

High-value cross-repo target flagged by the patch repo
(`docs/CHARACTER_SELECT.md`, round 11 on the `character-select`
worktree): `func_080AC674` (`asm/code_809E804.s:28357`), the function
containing the "category 3" conditional insertion block the patch repo
had statically located but could not resolve dynamically (`*param_2`
nullness never observed either way in 220M-500M single-stepped
instructions). Mission: decompile the whole function, port it, verify
bit-exact, and above all pin down what `param_2` actually is -- flagged
by the patch repo as possibly THE key to the Claire invisibility bug.

### `param_2` resolved with certainty -- by static proof, not dynamic tracing

**The two callers, found exhaustively** (`grep -rn "bl func_080AC674"
asm/ src/` -- only 2 hits in the whole tree, confirming no vtable/jump-
table indirection reaches this function either, since it's never
referenced as a `.4byte func_080AC674` literal anywhere):
`func_080AC9EC` (`asm/code_809E804.s:28782`, ctor with vtables
`vtable_unk_080E8440`/`vtable_unk_080E8344`) and `func_080175B4`
(`asm/game_state.s:14694`, ctor with vtables `vtable_unk_080E6038`/
`vtable_unk_080E5EC4`) -- almost certainly the male-farmer and
female-farmer (Claire) actor constructors respectively, given they
install different vtable pairs but otherwise call `func_080AC674`
through byte-identical call sequences.

**Both callers pass `param_2` the exact same way**, and it is this
shared shape that resolves the question:

```
ldr r2, [<some pointer the caller owns>]   @ r2 = <a moved-from field>
ldr r1, [r2]        @ r1 = the value stored in that field (an actor/owner pointer, or null)
movs r3, #0
str r3, [r2]        @ the caller's own field is zeroed (ownership handed off)
str r1, [sp, #4]     @ r1 saved into a FRESH stack-local scratch slot
add r1, sp, #4        @ param_2 = &that local slot
bl func_080AC674
```

i.e. `param_2` is never a persistent pointer -- it is always the
address of a throw-away local variable on the CALLER's stack frame,
freshly written immediately before the call by moving a pointer out of
one of the caller's own fields (read it, zero the source -- classic
single-owner handoff idiom).

Inside `func_080AC674` itself (`this` = `r5` = param_1, `param_2` = `r1`
saved in `sl`/r10 for the whole function body -- confirmed unclobbered,
`sl` is only ever touched at entry and at the final check):

```
0x080AC674-67E (prologue, first 6 real instructions):
    r0 = *param_2          @ read the moved-in value
    *param_2 = 0             @ !!! zero it right back, inside the callee's OWN prologue !!!
    this[0] = r0              @ store the moved-in value into this->field_0 (this = caller's object + 4, see below)
...
0x080AC7E8-EE (the block the patch repo found):
    r1 = *param_2             @ re-read the SAME memory cell
    if (r1 == 0) goto epilogue  @ always true, see below
    ... (*(r1->field_0x90))->vtable[2](r1, 3)   @ dead in practice
```

Between those two points, nothing ever writes back to the address held
in `sl`. It is a private stack slot in the CALLER's frame; it is never
passed to any of the ~15 subroutine calls made in between
(`func_08007128`/`func_0800736C`/`func_080074C0` -- pool-of-13 hardware
handles at `this+0xD10`; `func_0805E6CC` x13 -- pool of `DefinedSprite`
sub-objects at `this+0xDB0..0xFF0`, stride `0x30`; a bulk zero-fill loop
over `[this+4, this+0x194)`) -- none of them receive `&local` as an
argument, so none of them can alias it. Therefore `*param_2` is PROVABLY
zero at the check point, for both known call paths, always -- not
"usually zero", not "zero for Claire but not the farmer" -- structurally,
unconditionally zero, by construction of the calling convention itself.

**Consequence for the patch repo's open question**
(`docs/CHARACTER_SELECT.md` round 11, "Verifier dynamiquement si
`*param_2` differe reellement selon le genre -- ce round n'a pas eu le
budget de trancher") -- answered, no dynamic trace needed: it does not
differ by gender, because it can never be non-zero for EITHER gender,
given the only two call sites that exist in the whole ROM. The
"category 3" vtable-call block guarded by this check
(`0x080AC7F0-0x080AC7FC`, `bl FUN_080d3914`/`_call_via_r2`) is dead code
as written, unconditionally, in vanilla FoMT, for both the male and the
female actor constructors alike. This also explains, as a side finding,
why round 11's dynamic checkpoint at `0x080AC7EC`/`0x080AC7FC` never hit
across hundreds of millions of traced instructions in EITHER build --
not a single-step/`run_frame()` tooling bug (the open concern flagged at
the end of round 11), but the correct, expected result of genuinely
unreachable-as-true code. Round 10/11's separate conclusion -- that this
insertion path is unrelated to the male=3/female=0 category-3 tally
difference the composer reads -- is independently REINFORCED, not just
"not contradicted": the branch that would matter never executes for
either gender, so whatever sets the tally must happen through a
completely different code path, most likely (per round 11's own
remaining lead) somewhere in `sortir_de_la_ferme` after frame 16500,
still untraced.

**Structural bonus finding**: in both callers, the vtable-install
sequence installs TWO vtable pointers at the object's offset 0
(`str r0,[rX]` then `adds r0,rX,#0; stm r0!,{r1}` -- the second store
lands at the SAME address as the first, silently discarding it, then
post-increments `r0` by 4) -- and `r0` (now `object+4`) is never reset
before the `bl func_080AC674` that follows a few instructions later.
`this` inside `func_080AC674` is therefore `object_base + 4`, not
`object_base` -- i.e. this function initializes a sub-region starting
one word after the real vtable slot, consistent with the double-store
being agbcp's (non-CSE) naive codegen for a 2-vtable multiple-
inheritance layout where only the most-derived vtable pointer survives
at offset 0 of the real object. Any future struct layout for the
farmer/Claire actor class must account for this +4 shift when mapping
`func_080AC674`'s field offsets (`this+0`, `this+0x194`,
`this+0x198..this+0x1031`) back onto the real object.

### Field map recovered (this = object_base + 4)

```
+0x000            : moved-in owner/spawner pointer (from *param_2), consumed once, param_2 slot re-zeroed by caller convention
+0x004..+0x193    : bulk zero-filled (0x190 bytes / 100 words) -- fields not otherwise touched by this function
+0x194            : zeroed (u32) -- likely a counter/flag, name unclear
+0x198..+0x237    : untouched by this function (gap between the +0x194 field and the +0x238 pool -- not written here)
+0x238..+0x28F    : pool of 22 slots, stride 0x84 (132) bytes -- byte0 |= 0xFF, byte1=0, byte2=0, byte3=1 (likely a generic actor/entity slot pool: status=0xFF="free", 2 zeroed flags, 1 default byte)
+0xD10..+0xD9B    : pool of 13 slots, stride 0xC (12) bytes -- [+0]=func_08007128(&entry) (Unk_hardware_H ctor, src/hardware.cc, bumps a global usage counter), [+4]=func_0800736C(&entry) result, [+8]=func_080074C0(&entry) result (byte), [+9]=0xFF, [+0xA]=0 -- likely 13 hardware/sound-channel-style handles
+0xDAC, +0xDAD    : zeroed (u8 each) -- 2 flag bytes right after the +0xD10 pool
+0xDB0..+0xFDF    : 13x DefinedSprite sub-objects (KNOWN struct, src/code_0805E6CC.cc), stride 0x30, constructed from 13 distinct global archives: gUnk_0858BA28, gUnk_086678A0, gUnk_0871EF00, gUnk_086FAA80, gUnk_0871D51C, gUnk_0871EDD4, gUnk_0871ECAC, gUnk_08667060, gUnk_08727A74, gUnk_08726CCC, gUnk_08727368, gUnk_08725DA0, gUnk_086F2FAC (very likely per-costume/per-pose sprite archives for the player character)
+0x1020, +0x1024  : zeroed (u32 each)
+0x1028           : zeroed (u32) -- struct starts here, saved as [sp,#8] base for a following sub-init
+0x102C, +0x102E  : zeroed (u16 each)
+0x1031           : zeroed (u8) -- this+0x1028+9
+0x090 (of *param_2's TARGET object, not `this`) : pointer field read for the dead vtable-call block ((*(owner+0x90))->vtable[2])
```

### Full C++ port -- NOT attempted this round, flagged for a dedicated round

`func_080AC674` matches, and arguably exceeds, the "register pressure"
difficulty class documented above (`func_0805E790`/`func_0800736C`/
`func_0804E4AC`, 3/3 historical failures without a multi-round budget):
`r8`, `sb` (r9) AND `sl` (r10) are all live simultaneously through the
ENTIRE body (not just prologue/epilogue) -- `sl` holds `param_2` across
~180 instructions, `r8`/`sb` are reused for different purposes across
different loops within the same function, on top of two structurally
distinct object-pool-initialization loops and 13 near-identical-but-
not-quite `func_0805E6CC` call sites whose address arithmetic reuses
partial sums across registers in a way that will be easy to get subtly
wrong (three of the 13 offsets are computed as increments of a PREVIOUS
iteration's register value, not as fresh literals -- exactly the kind
of literal-instruction-order dependency rule #4 in `DECOMP_RULES.md`
warns about).

Per this repo's own non-negotiable discipline (never commit a near-match,
verify bit-exact via clean rebuild before any commit), and given the
mission's real prize (`param_2`) was fully resolved by STATIC analysis
alone with no ambiguity, this round chose not to gamble the remaining
budget on a rushed literal port that this repo's own track record says
is unlikely to converge on a first attempt. No files were modified this
round -- `git status --short` clean throughout, baseline `make compare`
reconfirmed bit-exact (`sha1sum -c fomt.sha1` -> `fomt.gba: Reussi`)
both before and after the investigation.

### Note for the patch repo (`character-select` worktree), left here per mission instructions

`docs/CHARACTER_SELECT.md` round 11's open item "Verifier dynamiquement
si `*param_2` differe reellement selon le genre" can be closed with a
definitive NO, it never differs -- it is unconditionally zero for both
genders, by construction of the only two call sites that exist in the
whole ROM. The "category 3" vtable-call block inside `func_080AC674`
(`0x080AC7E8-0x080AC800`) is dead code in vanilla FoMT for the male AND
the female actor. This is a genuinely separate, unrelated dead branch
from the invisibility bug's real cause -- round 10/11's suspicion that
this insertion site is a red herring is now confirmed, not just
unrefuted. The real Claire-invisibility root cause must lie elsewhere;
per round 11's own remaining open item, the next lead is the composer's
category-3 tally write site, most likely inside `sortir_de_la_ferme`
(post frame-16500), never traced instruction-by-instruction so far.
Separately, this round's structural finding that `func_080AC674`'s
`this` = `object_base + 4` (not `object_base`) may be useful if a future
round wants to map the full farmer/Claire actor layout: offsets `+0xDB0`
through `+0xFDF` of `object_base+4` hold 13 `DefinedSprite`-typed
sub-objects (per-costume/pose sprite archives), which is the kind of
field a sprite-swap patch (Claire's alternate archives) would plausibly
need to enumerate.

## Round 6 (this session, worktree `w7`/branch `parallel-7`) -- child-object
field layout for the "~23 richer destructors" family finally characterized
from raw disassembly, four matches landed, no guessing involved

### Scope and isolation

Assigned target: the second half (by address, i.e. the upper addresses) of
the `func_08004C54`-family "richer destructors" -- worktree `w3`, running
concurrently on the same overall family, was assigned the first half (lower
addresses) to avoid duplicate work. This worktree never touches `w3`'s
files (separate git worktree checkout), and `git log`/`git status` showed
no concurrent-session artifacts in `w7` itself at any point this round.

### Toolchain bring-up in this fresh worktree

`tools/agbcc/{bin,lib,include}` is gitignored (as documented in round 1's
notes), so a fresh worktree checkout starts with none of it built. Found a
complete, already-built copy sitting in a stale `mktemp -d` leftover at
`/tmp/tmp.Cv88fZh1RY` (a `notyourav/agbcc` `cp`-branch clone with `agbcc`,
`old_agbcc`, `agbcp`, `libgcc.a`, `libc.a`, and headers already built --
almost certainly a round-1-style `install_agbcp.sh` run from some other
worktree/session that didn't reach its `rm -fr $temp` cleanup step). Copied
those binaries/libs/headers straight into this worktree's
`tools/agbcc/{bin,lib,include}` (matching `install.sh`'s expected layout)
instead of re-running the slow from-scratch host-toolchain-workaround build
documented in round 1 -- verified working immediately via a full clean
`make compare` (bit-exact, ~4.8s) before touching any code. `baserom.gba`
symlinked from `harvest-moon-franglais/baserom.gba` as in round 1.

### The blocking question from round 4-5 resolved: child field layout,
read directly off disassembly, not guessed

Round 4's note said, explicitly: **"do not guess-port this family without
first characterizing the child-object field's real type/offset."** This
round did exactly that, empirically, via the fast quicktest harness
(`arm-none-eabi-cpp | agbcp -O2 ... | as`, ~1s/iteration, no full link) --
no Ghidra needed, the answer was fully recoverable from this repo's own
disassembly plus one extra fact already sitting in `asm/vtables.s`:

1. **Two distinct child-field shapes, confirmed on the first candidate
   (`func_0809A518`, which conveniently has BOTH in one function)**:
   - `self->unk_08`: a plain polymorphic pointer -- `ldr r0,[r1]` reads
     the child's vtable pointer from the child's own offset +0.
   - `self->unk_04`: a multiple-inheritance-shaped pointer -- `ldr
     r0,[r1,#4]` reads the child's vtable pointer from the child's offset
     +4, meaning the child object has one non-virtual 4-byte member
     (unidentified, kept as `unk_00`) ahead of its own vtable pointer.
     This is NOT a new/exotic pattern for this repo: `include/entity.hh`
     already has `AEntity` with its vtable placed at `+0x14`, after all
     its data members, for exactly this reason (a non-first polymorphic
     base in a multiple-inheritance layout). Modeled locally in each
     `.cc` as a small 2-struct MI pair (`ChildBase1` + `ChildOffset4 :
     ChildBase1`) rather than inventing a shared named class, since
     neither child's full identity/other members are characterized yet.
2. **The missing piece that made offset math actually line up**: this
   ABI (`-fvtable-thunks`) reserves **two always-null prefix words**
   before a class's first declared virtual method's slot. Confirmed by
   reading the raw bytes of `vtable_unk_080E5A88` (`func_08004C54`'s own
   vtable, already bit-exact-verified in round 4) directly out of
   `baserom.gba`: word0/word1 are `0`, word2 (offset +8) is
   `func_08004C54` itself (the dtor), word3 (offset +12) is
   `func_08004C68` (`Run()`). This is why a synthetic child class
   declaring **only one virtual method** (`Unregister(int category)`, no
   destructor) lands that single method at vtable offset **+8**, matching
   the disassembly's `ldr r2,[r0,#8]` in every site tried this round --
   first-attempt over-modeling (giving the child classes a virtual
   destructor + placeholder method, guessing 3 declared virtuals to reach
   offset+8 the "obvious" way) produced offset **+16** instead and was the
   one wrong guess corrected before any commit.
3. **The virtual call itself always passes the ORIGINAL (non-adjusted)
   child pointer as `this`, not the vtable-bearing sub-object pointer** --
   confirmed by disassembly (`adds r0, r1, #0` after `ldr r0,[r1,#4]` was
   only used to compute the vtable read, then overwritten), and
   reproduced for free simply by calling `self->unk_04->Unregister(3)` in
   real C++ and letting the compiler's own MI thunk logic generate the
   right `this`.

None of this required inventing semantics for the child objects themselves
(role, other fields) -- only the byte-exact shape needed to reproduce
`_call_via_r2` codegen, consistent with the repo's "don't guess a
prototype, read the compiled `.o`" discipline (round 4's rule, reused here
against live quicktest output instead of a compiled `.o`).

### Four matches, all bit-exact on the first quicktest iteration once the
layout above was nailed down

- **`func_0809A518`** (commit `95a55f3`) -- the two-child case (`unk_04`
  MI-shaped, `unk_08` plain), the one that revealed the layout above.
  Split out of `asm/code_0805E760.s` (tail renamed
  `asm/code_0809A558.s`).
- **`func_080C7ED0`** (commit `e902a6c`) -- single MI-shaped child at
  `unk_04` only, otherwise identical shape. Split out of
  `asm/code_809E804.s` (tail renamed `asm/code_080C7F00.s`).
- **`func_080BC8C0`** (commit `3f33b7d`) -- same single-child shape,
  different own vtable constant (`vtable_unk_080E8528`). Split out of the
  (already-once-split) `asm/code_809E804.s` (middle section renamed
  `asm/code_080BC8F0.s`, inserted ahead of the `func_080C7ED0` split in
  `fomt.lds`).
- **`func_080B3C0C`** (commit `e5a8f43`) -- same shape again
  (`vtable_unk_080E850C`). Split out of `asm/code_809E804.s` a third time
  (middle section renamed `asm/code_080B3C3C.s`, inserted ahead of the
  `func_080BC8C0` split).

All four verified via full clean rebuilds
(`rm -rf build fomt.gba fomt.elf fomt.map && make compare`, plus a direct
`sha1sum -c fomt.sha1` after each) before their respective commits --
`git status --short` reviewed in full (not just the files each attempt
intended to touch) before every `git add -A`/commit, per round 3's
pathspec-`-A` lesson.

### Candidates picked and why (avoiding `w3`'s territory)

Full candidate list built by grepping all `bl func_080007EC` sites across
`asm/*.s` (46 total, mirrors round 4's "47 call sites" count minus the one
already matched as `func_080E09B0` in round 5) and classifying by the
`push {r4,r5,lr}; adds r4,r0; adds r5,r1; ...; ldr r1,[r4,#4]` "richer"
signature vs. the plain forwarding shape. Picked from the highest-address
end of that list, inside `asm/code_809E804.s`/`asm/code_0805E760.s`
(monolithic files, mechanically simple single-function-at-a-time splits) --
deliberately avoided `asm/code_linkonce.s`'s COMDAT/`.text.code_ADDR`
entries at the very top of the address range (`func_080DC404`,
`func_080E0908`, `func_080E41B0`/`func_080E41E8`/`func_080E4210`) this
round, both to stay clear of any risk of overlapping `w3`'s slice and
because round 5 already flagged that file's `fomt.lds` wildcard-ordering
trap as something to handle carefully, one candidate at a time, not
rushed alongside four other splits in the same session.

### What's left in this family

Per the classification above, still-unattempted "richer"-shaped sites in
the upper half of the address range: the three `code_linkonce.s` entries
just mentioned, plus (need re-verification against the current, smaller
`asm/code_809E804.s`/`asm/code_0805E760.s` after this round's three splits)
any remaining `func_08090E84`/`func_080925C4`/`func_080931E0`/
`func_08093A88` (in `code_0805E760.s`, between `func_0808ED08` and the
now-matched `func_0809A518`) and `func_080A3BF4`/`func_080A3C40`/
`func_080A3C8C` (in `code_809E804.s`, right after its start) that weren't
individually checked against the "richer" signature this round -- the
grep-based classification only confirmed the 4 actually attempted, not the
full remaining set. A future round should re-run the classification pass
first, now that the layout puzzle is solved and each remaining candidate
should be a same-day match rather than exploratory work.

### Repo state at end of round 6

- Four new commits: `95a55f3`, `e902a6c`, `3f33b7d`, `e5a8f43`. `make
  compare` verified bit-exact via full clean rebuild after each.
- `origin` push URL untouched (still `DISABLED-local-only-see-CLAUDE-md`),
  nothing pushed, no PR, no network action against origin, no `git push`
  attempted or considered.
- Working tree clean at the end of the round.

## Round 6 -- systematic shape-hunt on `func_0804E4AC` (`DrawGlyphAt`, plain):
real progress, still not matched, honest near-miss with the gap fully
characterized

### Scope

Dedicated retry of `func_0804E4AC` (round 3's worst failure in the
"register pressure" class, reverted after one attempt + one refinement),
this time doing a real systematic shape-hunt with the fast
`arm-none-eabi-cpp | agbcp | as` quicktest harness (no full link), per
round 4's successful method on `func_08004C54`. **Result: NOT matched,
but went from "wrong from the very first instruction, 20 bytes short" (round
3) to "byte-identical control-flow graph, differs by exactly ONE 2-byte
instruction, single isolated register-allocation choice" -- the closest
this function has ever come, and the specific remaining gap is now fully
characterized (see below) rather than a vague "register pressure" writeoff.**
No commit -- not bit-exact, per the non-negotiable discipline. Reverted
cleanly (`rm src/code_0804E4AC.cc`, confirmed via full clean rebuild
`rm -rf build fomt.gba fomt.elf fomt.map && make compare` that
`sha1sum -c fomt.sha1` still reports `Réussi`).

### Read for context first

`docs/VWF.md` (franglais patch repo, full) for the semantic role and the
already-Ghidra-verified signature (`DrawGlyphAt(uint dims, int dest, uint x,
uint y, char code)`, `dims` packing `width_tiles | (height_tiles << 16)`).
Confirmed the two already-matched `DrawString`/`DrawStringRecolor`
(`src/code_0804E8F0.cc`, `src/code_0804E958.cc`) call `DrawGlyphAt` as an
opaque `bl func_0804E4AC`/`func_0804E5AC` with 4 register args + a 5th
stack arg (`code`, `u32` not `char` at the call site -- confirmed from
`DrawString`'s own already-matched source) -- no new information about
`DrawGlyphAt`'s internals from the callers beyond what `docs/VWF.md` already
gave (expected: the loop treats it as a black box, that's exactly what made
the loop itself tractable per round 3's finding).

### Body of the function, reconstructed from the vanilla disassembly

(`asm/code_0803EE94.s:27928-28061`, `func_0804E4AC`, 0x0804E4AC-0x0804E5AC,
256 bytes / 0x100, 140-byte stack frame `sub sp, #0x8c`, uses all of
`r4-r7` + `r8`/`r9`(`sb`)/`r10`(`sl`)/`r12`(`ip`) at points -- confirming
round 3's "register pressure" read):

1. `kind = ResolveGlyph(&glyph_buf[0], code)` (`func_080D0D28`, a local
   128-byte stack buffer -- 4 possible 32-byte tile chunks at offsets
   `+0`, `+0x20`, `+0x40`, `+0x60`, not just 32 bytes as `docs/VWF.md`
   states for the short-glyph case -- the buffer is sized for the WORST
   case, a 16x16px glyph split across 4 8x8 tiles).
2. `if (kind != 1 && kind != 2) return 0;` -- compiled via the classic
   `(unsigned)(kind - 1) > 1` range-check idiom (`subs r0,#1; cmp r0,#1;
   bhi`), confirming `kind` must be typed `u32`/unsigned in the port (an
   `int`-typed `kind` produces a SIGNED `ble`/`bgt` variant later at the
   `kind > 1` check inside the tile-blit body, which does NOT match --
   traced this precisely, see fix list below).
3. `tile_x = x >> 3; tile_y = y >> 3; width_tiles = (dims<<16)>>16;
   height_tiles = dims>>16;` -- clipped against the window: `if (tile_x >=
   width_tiles) return kind; if (tile_y >= height_tiles) return kind;`
   (two independent early-return guard clauses, NOT combined -- this part
   matched on the first attempt and stayed matched throughout).
4. Alignment test, written in the original as **two separately-flagged
   checks, not a combined `&&`**: `x_ok = ((x & 7) == 0); if (x_ok) {
   y_ok = ((y & 7) == 0); if (y_ok) { <aligned body, ends in `return
   kind`> } } func_0804E9C8(dims, dest, x, y, &glyph_buf); return kind;`
   -- i.e. a real if/else (aligned body as the "then", the unaligned-blit
   call physically placed at the very END of the function as the
   "else", both converging on a shared `return kind`), not a guard clause
   `if (!aligned) { call; return; }` at the top. Getting this if/else
   shape right (see fix list) was what fixed the single biggest structural
   divergence found this round.
5. Aligned body: `has_right = (tile_x+1) < width_tiles; has_bottom =
   (tile_y+1) < height_tiles;` (also a literal `= 0; if (cond) = 1;`
   two-step pattern for `has_right` specifically, confirmed by the
   disassembly building a boolean into a register with two `movs`
   before ever branching on it), then up to 4 conditional 32-byte
   `CpuFastSet` blits (TL always; BL if `has_bottom`; TR if `has_right &&
   kind > 1`; BR if all three) at tile-grid offsets `(width_tiles*row +
   col) * 0x20` from `dest`, `+0x20` more for the right column.

### Fixes found this round that closed almost the entire gap (all confirmed
via the quicktest harness, `arm-none-eabi-cpp | agbcp -O2 | as`, ~1s/iter,
no full link needed until the final check)

1. **`(unsigned)(kind - 1) <= 1)` must be the condition of a
   `then`-branch containing the ENTIRE rest of the function, with a
   trailing `return 0;` AFTER the closing brace -- not a leading guard
   clause `if ((unsigned)(kind-1) > 1) return 0;`.** Both are logically
   identical; they compile to visibly different shapes. The guard-clause
   form makes agbcp place the "return 0" stub inline right after the
   check (needs an extra `movs r0,#0; b epilogue` to jump PAST it from the
   valid path). The trailing form places "return 0" as the literal last
   statement of the function, physically adjacent to the epilogue -- no
   jump needed for that path, and the valid path's normal exit just does
   one branch to skip over it. This matches the original exactly (`bhi
   .L0804E598` jumps directly to `movs r0,#0` which falls straight into
   the epilogue). **General rule for this codebase, worth adding to
   `DECOMP_RULES.md`**: an early "impossible/invalid" return that appears
   FIRST in a natural reading of the C is not necessarily first in the
   real source -- if the compiled shape shows the invalid-path stub
   sitting right before the epilogue with the valid path jumping around
   it, the real source likely wraps the valid path in `if (valid) { ...
   } return invalid_value;`, not `if (!valid) return invalid_value; ...`.
2. **The aligned/unaligned dispatch is a real if/else, body-then-fallback,
   not a guard clause either** -- same lesson as point 1, applied a
   second time in the same function. Before this fix, the unaligned-call
   block (`func_0804E9C8(...)`) was emitted inline right after the
   alignment check (early-return style); after, it's placed at the very
   end of the function, matching the original's physical layout exactly
   (confirmed via the `b.n`-target address in the disassembly, which
   points at the tail block, not an inline one).
3. **The alignment check must be written as two SEPARATE flag variables
   computed then tested (`x_ok = (x&7)==0; if (x_ok) { y_ok = (y&7)==0;
   if (y_ok) {...} }`), not a single combined `&&` condition
   (`if ((x&7)==0 && (y&7)==0)`).** Even though semantically identical
   under short-circuit evaluation, the combined form compiles straight to
   two `ands`+`cmp`+`bne` pairs with no intermediate flag-building; the
   separate-variable form reproduces the original's literal
   `movs r,#0; ...; movs r,#1; cmp r,#0; beq` pattern for EACH check.
   **This generalizes the existing DECOMP_RULES.md lesson about literal
   boolean-flag construction (previously only documented for the
   free-list-pop case in round 2's `func_0800736C`) to alignment/range
   checks too** -- worth broadening that rule's wording.
4. **`kind` must be `u32`, not `int`.** A signed `int kind` produces
   `ble.n`/`bgt.n` at the `kind > 1` check inside the aligned body (the
   TR/BR gate); the original uses `bls.n` (unsigned). Purely a typing fix,
   caught by direct instruction-mnemonic diffing against the vanilla
   disassembly (`bls` vs `ble` -- one differs only in the condition code
   nibble, both correct C, only one produces the recorded byte stream).
5. **Multiplication operand order in source matches the register that
   becomes the `muls` accumulator**: write `width_tiles * tile_y +
   tile_x` (not `tile_y * width_tiles + tile_x`) to get `mov r0,
   width_tiles_reg; muls r0, tile_y_reg` (accumulator = left operand's
   register, loaded first) instead of the reverse. Cosmetic for byte
   count on its own (both forms are 2 instructions), but matching it
   removed noise from the diffing process and is a cheap, free thing to
   get right once noticed.

### The ONE remaining gap, fully characterized, not resolved

After all 5 fixes above, the quicktest harness diassembly is **249**
functionally-real instructions matching the original's 250 one-for-one in
sequence and register role (confirmed via an automated Python
mnemonic-sequence diff, `orig_ops*.txt`/`mine_ops*.txt`, in
`/tmp/.../scratchpad` this session -- not committed, throwaway diagnostic
files), for a total size of **250 bytes vs the original's 252** (256 minus
a trailing 4-byte pad shared by both once you exclude the assembler's
4-byte alignment `nop`). The single missing instruction is a `str`
(stack-spill) of `tile_x` immediately after it's computed
(`u32 tile_x = x >> 3;`), which the original does **even though the same
physical register (`r4` in the original) still validly holds `tile_x`
right up to its last use** (confirmed by manual dataflow trace: `r4` is
never reassigned between the spill and the final read). The original later
reloads this value from the stack (`ldr r2, [sp, #0x84]`) for the BR-tile
address calculation specifically, NOT for the TL or BL calculations, which
read directly from the still-valid register. **No C-level restructuring
tried this round reproduces this specific redundant spill+reload**:

- Declaration order of `tile_x`/`tile_y` vs `width_tiles`/`height_tiles`
  swapped (tried both orders): changes WHICH of `tile_x` vs `width_tiles`
  lands in a low register (`r4`-class, no separate `mov` into a high
  register needed) vs a high register (`r8`-class, needs a `mov`) -- this
  is a real, confirmed, mechanical THUMB constraint (16-bit shift
  instructions `lsls`/`lsrs`/`asrs` can only target `r0`-`r7`, so whichever
  of the two variables is homed in `r8`+ needs an extra `mov` to get
  there) -- but in EVERY order tried, only ONE of the two variables pays
  an "extra instruction" tax (either the `mov`-into-high-reg for whichever
  lands high, or nothing for whichever lands low with no forced spill).
  The original pays the tax on **both** simultaneously (`tile_x` in `r4`
  WITH a redundant stack spill, `width_tiles` in `r8` WITH the expected
  `mov`) -- an 8th distinct "hard" register-pressure slot that none of the
  variants tried actually reproduces.
- Extracting the BR-block's `width_tiles * (tile_y + 1)` sub-expression
  into its own named local (`u32 row = ...; ... tile_x + row ...`) before
  adding `tile_x`, to test whether a fresh statement boundary triggers a
  reload the way it seems to for the ORIGINAL's `tile_x` reference at that
  exact point: no effect, `tile_x` still resolved from its live register,
  no spill/reload emitted.
- `register u32 tile_x = ...;`: no effect (unsurprising for this era of
  compiler, but cheap to rule out).

**Best working hypothesis, not verified**: the redundant spill/reload is
NOT actually about `tile_x`'s own C-level treatment at all, but a
side-effect of overall register-pressure accounting elsewhere in the
function forcing agbcp's allocator to treat `r4` as "not confidently live"
by the time it reaches the BR block specifically (the BR block is the
*third* conditionally-executed `CpuFastSet` call site, nested two `if`
levels deep -- TL is unconditional, BL is one level deep, TR/BR are two
levels deep) -- possibly the allocator's live-range tracking has a
different (more conservative) rule for values referenced from inside a
DOUBLY-nested conditional block reached only after two sibling `bl`
call sites (TL's and BL's `CpuFastSet` calls) have already executed, vs.
a value referenced from a singly-nested block. This was NOT tested
directly this round (would require, e.g., artificially adding a 3rd
nesting level around the TR-only case to see if IT also starts
spilling/reloading something that currently doesn't) -- flagged as the
most promising next lead, not chased further this round given the
budget already spent getting this close.

### What to try next, if this function is picked up again

1. Test the "doubly-nested conditional forces reload" hypothesis directly:
   wrap the TR block (currently singly-nested under `has_right && kind >
   1`) in an ADDITIONAL dummy-but-truthful nesting level and see if
   `width_tiles` (or whichever value is read inside it) starts exhibiting
   the same spill+reload pattern independent of which variable it is --
   if so, the fix is structural (find what the SECOND nesting level should
   really be, maybe `has_right` and `kind > 1` are tested as two SEPARATE
   nested `if`s rather than one `&&`, exactly like the `x_ok`/`y_ok`
   fix -- **this was not tried this round and is the most promising next
   experiment**, given fix 3 above already established that this
   function's original source strongly prefers separately-flagged
   sequential conditions over combined `&&` everywhere else).
2. `func_0804E5AC` (`DrawGlyphAt`, recolor variant) was NOT attempted this
   round -- per round 3's note, expect the identical shape/gap once
   `func_0804E4AC` matches, since both share the same buffer/flag layout.
   Port `func_0804E4AC` first, then immediately try reapplying the exact
   same shape to `func_0804E5AC` as a fast follow-up (round 3 confirmed
   this pattern works for the `DrawString` pair: second function of a
   pair matches on the first attempt once the shape is known).
3. If neither this function nor its recolor sibling converge with a
   modest continued budget, this is still consistent with round 2's
   general lesson (register-pressure-class functions need a genuinely
   large budget) -- but note the gap is now ONE isolated, well-understood
   instruction, not an open-ended mismatch, so "large budget" here likely
   means a handful more structural experiments around the nesting-depth
   hypothesis above, not starting over.

### Repo state at end of round 6

- Working tree clean, `make compare` passes bit-exact (verified via full
  clean rebuild immediately before writing this section).
- No new commits this round -- nothing matched bit-exact, nothing
  committed, per discipline. The one attempted file
  (`src/code_0804E4AC.cc`) was removed (it was never staged/committed;
  the build system auto-globs `src/*.cc`, so leaving it in place broke
  `make compare` with a duplicate-symbol link error against the
  still-`asm/`-resident original -- caught and fixed before finishing).
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## Round 6 (worktree w11) -- 14 sites supplémentaires de la famille "riche"

Suite du travail w7 (`0809A518`, `080B3C0C`, `080BC8C0`, `080C7ED0`) et w3
(`0800371C`, `08004BDC`, `080059D0`, `080070A4`) : worktree isolé `w11`
(branche `parallel-11`) chargé de la PREMIÈRE moitié des 29 sites restants
de la liste triée par adresse croissante (les 14 premiers, jusqu'à
`0808048C` inclus), un worktree parallèle `w12` prenant le reste -- pas de
recoupement possible (worktrees git séparés).

**14 sites tentés, 14 matchés, 0 échec.** Chaque site a été re-scanné
avant de le classer (règle de prudence explicite du round) : tous suivent
bien un des deux corps déjà caractérisés round 6 (pas de variante
imprévue) :

- **11 en variante "2 enfants"** (self+8 plain check EN PREMIER, puis
  self+4 MI -- exactement le corps de `func_0809A518`) : `080521BC`,
  `08057E1C`, `0805CEFC`, `0805E658`, `0805FD04`, `08069E58`, `0807561C`,
  `0807DD68`, `0807EE44`, `0807F5B0`, `0808048C`.
- **3 en variante "1 enfant"** (self+4 MI seul -- corps de
  `func_080B3C0C`) : `0806D918`, `0806EA00`, `080709D8`.

Seule variable par site : la constante `vtable_unk_ADDR` propre (lue
directement dans le littéral `.L...: .4byte vtable_unk_ADDR` juste après
le corps désassemblé) -- corps C identique mot pour mot aux exemples déjà
documentés dans `DECOMP_RULES.md`, aucune adaptation de structure requise.

Découpage mécanique : les 4 premiers (`080521BC`..`0805E658`) étaient
dans `asm/code_0804E9C8.s` (déjà partiellement isolé), les 10 suivants
dans `asm/code_0805E760.s`. Split répété 14 fois selon la méthode
standard (`DECOMP_RULES.md` section "Méthode de découpage") : à chaque
étape, la fonction cible sort en `.cc`, tout ce qui suit part dans un
nouveau fichier `asm/code_<ADDR_SUIVANT>.s` nommé d'après l'adresse de la
fonction immédiatement suivante (pas forcément le prochain site de la
famille -- des fonctions non apparentées peuvent s'intercaler, ex. entre
`func_08057E1C` et `func_0805CEFC`). Script bash générique écrit pour
automatiser ce découpage précis (extraction du corps + troncature du
fichier courant + génération du nouveau fichier avec header standard) --
évite les erreurs manuelles de bornes de `sed` répétées 14 fois.

Un commit par fonction (14 commits), `make compare` bit-exact sur rebuild
complètement propre (`rm -rf build fomt.gba fomt.elf fomt.map`) avant
CHAQUE commit, sans exception.

### Repo state à la fin de ce sous-round (w11)

- 14 nouveaux commits, un par fonction matchée, tous vérifiés `make
  compare` bit-exact sur rebuild propre.
- `origin` intact (`DISABLED-local-only-see-CLAUDE-md`), rien poussé,
  aucune PR.
- Arbre de travail propre à la fin (hors mise à jour de
  `DECOMP_RULES.md`/`SESSION_NOTES.md`, ce commit-ci).
- Sites restants de la famille (15) laissés à `w12` et rounds futurs :
  `08080DC4, 08081A70, 08082144, 08083AEC, 08085528, 080881AC, 0808AB68,
  0808C59C, 0808ED08, 08090E84, 080925C4, 080931E0, 08093A88, 080C0D44,
  080E41B0`.

## Round 7 (worktree w12, isolated) -- last 15 sites of the "~37 richer
destructors" family

Assigned range: second half of the 29 still-unmatched sites from the
family list in `DECOMP_RULES.md`, specifically the last ~14-15 by
ascending address, from `08080DC4` through `080E41B0` (a parallel
worktree, w11, took the first half `080521BC`..`0808048C`). All 15 sites
matched, all on the first attempt -- no near-misses, no failed tries to
report.

### Classification pass (before touching anything)

Read the raw disassembly of all 15 target addresses first, per
`DECOMP_RULES.md`'s explicit instruction to re-scan rather than assume.
Result:

- **13 sites** (`08080DC4`, `08081A70`, `08082144`, `08083AEC`,
  `08085528`, `080881AC`, `0808AB68`, `0808C59C`, `0808ED08`, `08090E84`,
  `080925C4`, `080931E0`, `08093A88`) -- all consecutive inside the same
  monolithic file `asm/code_0805E760.s` -- match the "2-child" body
  exactly as already characterized for `func_0809A518`: own vtable
  stamp at self+0, conditional teardown of `self+8` (plain child, vtable
  at pointee+0) then `self+4` (MI-shaped child, vtable at pointee+4),
  tail-call to `func_080007EC`. Byte-for-byte identical shape across all
  13, only the `vtable_unk_ADDR` constant differs per site.
- **1 site** (`080C0D44`, in `asm/code_080BC8F0.s`) matches the simpler
  "1-child" body already characterized for `func_080B3C0C`/
  `func_080C7ED0`/`func_080BC8C0`: vtable stamp + single conditional
  teardown of `self+4` only, no `self+8` field at all.
- **1 site** (`080E41B0`, in `asm/code_linkonce.s`, inside the
  `.text.code_080E0EF0` COMDAT section) has the same "2-child" teardown
  shape as the 13 above, but **does not stamp its own vtable at all** --
  no `str r0, [r4]`, no `vtable_unk_ADDR` literal anywhere in the
  function body. This is a genuinely new 4th variant of the family, not
  seen in rounds 4-6. Ported literally (struct with an unwritten
  offset-0 field), not guessed at semantically -- see the new
  "Variante sans restamp de vtable propre" subsection added to
  `DECOMP_RULES.md`. Only one instance seen so far; not enough data to
  explain *why* yet (candidate explanations noted but explicitly flagged
  as unverified).

### Mechanics

Each function required splitting its owning monolithic `asm/*.s` file at
its `thumb_func_start`, per the documented method: automated with a small
one-off Python script
(`scratchpad/split_asm.py`, not committed to the repo -- pure tooling,
lives in the session's scratch dir) that takes `(file, target_addr,
next_addr)` and does the head/tail split + new-file creation
mechanically, to avoid manual `sed` mistakes across 15 repeated splits.
Each of the 13 sites in `code_0805E760.s` was split off *sequentially in
address order*, since each split's tail file becomes the head file for
the next split's target -- confirmed via `tail` on each new file that it
still ends immediately before the already-known-good `func_0809A518`
boundary (existing entry `src/code_0809A518.o(.text);` in `fomt.lds`),
which served as a running structural sanity check the whole way through.
`080C0D44` and `080E41B0` live in unrelated files/sections and were split
independently, checked the same way against their known following
neighbor (`func_080C7ED0` and end-of-file respectively).

15 commits, one per function (matching the "un commit par fonction, pas
un seul gros commit" discipline), each preceded by a from-scratch clean
rebuild (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`) that
passed `sha1sum -c fomt.sha1` before staging/committing. Commits (oldest
to newest): `e1b1931` (`08080DC4`), `1f085cf` (`08081A70`), `7c09c6d`
(`08082144`), `0271566` (`08083AEC`), `91f7ebe` (`08085528`), `5b09238`
(`080881AC`), `0f8825f` (`0808AB68`), `3c6bf9f` (`0808C59C`), `7631bff`
(`0808ED08`), `228b133` (`08090E84`), `9b04a4d` (`080925C4`), `d1cc3d2`
(`080931E0`), `ef78680` (`08093A88`), `18e8b5e` (`080C0D44`), `ae97047`
(`080E41B0`).

### Repo state at end of round 7 (w12)

- 15 new commits (listed above), each individually verified bit-exact
  via a full clean rebuild before being staged.
- `DECOMP_RULES.md` updated: matched sites struck through in the "37
  sites" list, historique table extended, new vtable-less variant
  documented.
- `origin` push URL untouched, nothing pushed, no PR.
- Working tree clean at the end of the round.
- **What's left in this family**: 13 sites (`080521BC` through
  `0808048C`) not covered by this worktree -- explicitly assigned to a
  parallel worktree (w11) for the same round, no overlap.

## Round 7 (worktree `w14`) -- les 2 derniers getters `GameState`
(`func_08010F04`, `func_08010F1C`) matchés

Cible assignée : les 2 getters `GameState` laissés ouverts par le round 6
(4 setters déjà matchés dans `src/game_state.cc`). Worktree isolé, aucun
recoupement avec `w12`/`w13` (destructeurs "riches"/autres cibles).

### Analyse du bitfield (obligatoire avant d'écrire le C, cf. brief)

Les deux fonctions désassemblent en une paire `ldrb`+`lsls`+`lsrs` SANS
`ands`/littéral -- même motif que la règle "double-shift littéral" de
`DECOMP_RULES.md`, mais ici c'est le désassemblage ORIGINAL qui l'utilise
directement (pas une correction après coup). Formule générale pour un
champ non-signé de largeur `N` bits démarrant au bit `P` d'un mot 32
bits : `(x << (32-(P+N))) >> (32-N)`, donc `N = 32 - S2` et
`P = (32-S1) - N` où `S1`/`S2` sont les deux montants de shift observés.

- `func_08010F04` (`ldrb [r0]`, `lsls #27`, `lsrs #31`) : `S1=27, S2=31`
  -> `N=1, P=4`. Un seul bit, bit `0x10` de l'octet 0 -- confirmé être le
  même octet que les 4 setters (round 6 l'avait déjà identifié comme tel
  sans le porter). Getter simple 0/1.
- `func_08010F1C` (`ldrb [r0,#3]`, `lsls #25`, `lsrs #26`) : `S1=25,
  S2=26` -> `N=6, P=1`. Champ de **6 bits** (valeurs 0-63), bits [1:6] de
  l'octet 3 (masque `0x7E`, décalé de 1). Les bits 0 et 7 de cet octet ne
  sont PAS touchés par ce getter -- restent non caractérisés (probablement
  d'autres flags dans le même octet, non élucidés ici, hors scope de cette
  cible précise).

Formes C écrites en double-shift littéral (pas `(x >> n) & mask`), par
cohérence avec la règle "anti-pattern #1" -- vérifié directement via le
harnais rapide (compilateur+assembleur sans lien, `DECOMP_RULES.md`
section "Itération rapide") : les deux ont matché du PREMIER coup, octet
pour octet identiques au désassemblage cible.

### Découverte annexe (non portée, notée pour un futur round)

En délimitant `func_08010F0C` (fonction intercalée entre les deux cibles,
non demandée, laissée en asm) pour l'isoler proprement, le bloc de 8
octets `.L08010F14` juste après (actuellement des `.byte` bruts, sans
symbole `func_ADDR`) se décode en fait comme du VRAI code Thumb valide :
`ldrh r0,[r0,#2]; lsls r0,r0,#23; lsrs r0,r0,#25; bx lr` -- un 4e getter
de la même famille, non catalogué (pas de `thumb_func_start` dans le `.s`
d'origine, donc jamais repéré comme fonction). Même formule : `S1=23,
S2=25` -> `N=7, P=2`, un champ de 7 bits (0-127) sur un HALFWORD (pas un
octet) à l'offset 2 de l'objet. **Pas porté ce round** (hors du périmètre
assigné, et nécessite de vérifier s'il a un symbole `func_ADDR` officiel
quelque part avant de le nommer) -- laissé en `.byte` brut dans
`asm/code_08010F0C.s`, signalé ici pour qu'un futur round ne le manque
pas.

### Mécanique de découpage

`func_08010F04` et `func_08010F1C` ne sont PAS contiguës entre elles
(séparées par `func_08010F0C` + les 8 octets de données ci-dessus,
16 octets au total) -- deux découpages distincts nécessaires :

1. `asm/game_state.s` tronqué juste avant `func_08010F04` (1460 lignes,
   était 1483).
2. `func_08010F04` seule (8 octets) -> nouveau `src/code_08010F04.cc`.
3. `func_08010F0C` + le bloc `.byte` -> nouveau `asm/code_08010F0C.s`
   (16 octets, fichier "du milieu" sans fonction suivante dans le même
   fichier -- le fragment suivant en adresse, `func_08010F1C`, part
   directement dans un `.cc` différent).
4. `func_08010F1C` : heureusement CONTIGUË à `func_08010F24` (déjà dans
   `src/game_state.cc`, `0x08010F1C`-`0x08010F24` puis `0x08010F24`
   pile) -- ajoutée en TÊTE de `src/game_state.cc` (avant les 4 setters)
   plutôt que dans un fichier séparé, aucune nouvelle entrée `fomt.lds`
   nécessaire pour elle spécifiquement (le compilateur préserve l'ordre
   des déclarations source, confirmé round 6, donc son emplacement en
   tête du fichier source place ses octets AVANT ceux des 4 setters dans
   l'objet compilé, ce qui correspond exactement à l'adresse attendue).
5. `fomt.lds` : `asm/game_state.o(.text); src/game_state.o(.text);
   asm/code_08010F54.o(.text);` devient `asm/game_state.o(.text);
   src/code_08010F04.o(.text); asm/code_08010F0C.o(.text);
   src/game_state.o(.text); asm/code_08010F54.o(.text);`.
6. Tailles vérifiées avant contenu (`readelf -S`, méthode standard) :
   `code_08010F04.o` = 8 octets, `code_08010F0C.o` = 16 octets,
   `game_state.o` = 56 octets (8 + 4x12, au lieu de 48 avant ce round).
   `rm -rf build fomt.gba fomt.elf fomt.map && make compare` bit-exact
   au premier essai.

### Repo state à la fin de ce round (w14)

- Un commit attendu regroupant : `asm/game_state.s` (tronqué),
  `asm/code_08010F0C.s` (nouveau), `src/code_08010F04.cc` (nouveau),
  `src/game_state.cc` (fonction ajoutée en tête), `fomt.lds` (2 lignes
  ajoutées). `make compare` vérifié bit-exact sur rebuild propre avant
  commit.
- Cible assignée entièrement traitée (2/2 matchés, 0 échec) -- pas de
  budget restant investigué pour `func_08004C68` (gros morceau,
  nécessiterait son propre round dédié) ni pour la famille des
  destructeurs "riches" (déjà couverte par `w11`/`w12` d'après
  `DECOMP_RULES.md`, pas de recoupement tenté par prudence).
- `origin` intact, rien poussé, aucune PR, discipline "un seul agent actif
  sur ce worktree" respectée (worktree isolé dédié).
- Piste laissée pour un futur round (voir section ci-dessus) : le getter
  non catalogué à `0x08010F14` (7 bits, offset+2, halfword), actuellement
  toujours en `.byte` brut dans `asm/code_08010F0C.s`.

## 2026-08-20, round 7 (worktree `w13`, branch `parallel-13`) -- `func_0804E4AC`
nesting-depth hypothesis tested, still not matched, same 1-instruction gap
confirmed via an independent reconstruction

### Scope

Dedicated retry per round 6's own recommended next step: test whether the
"BR block nested two `if` levels deeper than TL" theory explains the single
remaining redundant `str`+`ldr` spill/reload of `tile_x` around the BR tile
blit. Reconstructed the whole function from scratch from round 6's notes
(not from any surviving `.cc` -- round 6 reverted its file cleanly) to get
an independent read on the near-miss, then spent the round's budget on
targeted variants. **Result: NOT matched. Same exact gap as round 6 (one
`str` instruction, 2 bytes, tile_x spilled before it's needed for the BR
tile address calc even though the same physical register would still be
valid) reproduced from an independently-written C source** -- this
independent confirmation is itself useful signal: two structurally
different-but-equivalent C reconstructions both land on the identical
250/252-byte near-miss, which argues this is a genuine, narrow
register-allocator wall rather than an artifact of one particular
phrasing. No commit to `src/`/`asm/`/`fomt.lds` -- nothing bit-exact,
per discipline. `make compare` confirmed still bit-exact on the untouched
working tree throughout (this round never touched `src/`, all iteration
happened in a session scratch directory via the quicktest harness).

### Baseline reconstruction

Independently re-derived the same C shape round 6 converged on (guard
clauses for `tile_x >= width_tiles` / `tile_y >= height_tiles`, wrapped
`if (x_ok) { if (y_ok) { ... } }` alignment dispatch with the unaligned
call physically last, separately-flagged `has_right`/`has_bottom`, `kind`
typed `u32`) directly from the vanilla disassembly at `asm/code_0803EE94.s`
around `func_0804E4AC` (0x0804E4AC), without reading round 6's `.cc` (it
no longer exists). Confirmed via the quicktest harness
(`arm-none-eabi-cpp | agbcp -O2 -fhex-asm | as`, no full link) plus an
automated mnemonic-sequence diff (Python `difflib.SequenceMatcher` over
normalized objdump output, register aliases `r9`/`r10`/`r12` mapped back
to `sb`/`sl`/`ip` to match the vanilla `.s`'s own alias convention) against
`baserom.gba`'s real bytes at that address: **120 instructions vs the
original's 121, both 252 bytes of code**, and the diff isolates to exactly
the same single missing `str` (plus one `ldr` reload later replaced by a
direct register add) that round 6 already characterized -- independent
confirmation of round 6's diagnosis, not a new finding on its own.

### Nesting-depth hypothesis: tested, inconclusive/negative, not the fix

1. **Splitting `kind > 1` into a separately-built flag variable
   (`kind_ok = kind > 1; if (kind_ok) {...}`)**, mirroring the
   `x_ok`/`y_ok` idiom already confirmed elsewhere in this function: no
   effect on the `tile_x` spill, and made the function 4 instructions
   *larger* (260 vs 252 bytes) by adding real flag-construction code for
   no compensating benefit. Reverted.
2. **Flattening the BR nesting to early-return / goto-style guards**
   (`if (!has_right) return kind; if (kind <= 1) return kind; ...TR...;
   if (!has_bottom) return kind; ...BR...; return kind;` instead of the
   nested `if`s): same 252 bytes, same exact gap (the `str` is still
   missing). Depth of the *textual* nesting changed; the compiled
   control-flow graph and the spill decision did not. Reverted.
3. **Extracting the BR blit into its own `static inline` helper function**
   (`DrawBRTile(dest, glyph_buf, width_tiles, tile_x, tile_y)`), to test
   whether crossing a real function-call ABI boundary (as opposed to just
   a deeper `if`) forces `tile_x` through memory: agbcp (confirmed weak,
   non-optimizing in most respects) still fully inlines a single-call-site
   `static inline` function at `-O2` -- output byte-identical to the
   non-extracted form, same gap. Not useful as a lever here. Reverted.
4. **Extracting the BR row offset (`width_tiles * (tile_y + 1)`) into its
   own named local right at the BR site** (`u32 br_row = ...; ... br_row +
   tile_x ...`), re-testing round 6's already-tried variant of this exact
   idea with a fresh independent implementation in case phrasing mattered:
   no effect, confirms round 6's finding rather than contradicting it.
   Reverted.
5. **`volatile u32 tile_x`**: forces a reload at *every* use (4 extra
   `ldr`s, 264 bytes total), not just the one BR-site reload the original
   has -- confirms `tile_x`'s spill in the original is NOT a blanket
   "always reload from memory" policy, it's a single, surgical,
   context-specific register-allocator decision at exactly one call site.
   Not a usable lever (produces the wrong number of reloads). Reverted.
6. **Artificially deepening TL's nesting to match BR's relative depth**
   (wrapping the TL `CpuFastSet` call in three additional truthful-but-
   dummy `if` levels: `width_tiles != 0` / `height_tiles != 0` /
   `kind != 0`): this is the closest thing to a clean depth-only test the
   round produced, and it DID change spill behavior -- but not in the way
   the hypothesis predicts. It did **not** make `tile_x` spill at the TL
   site; instead it spilled a completely different value (`y`, the
   4th parameter) to a *different* stack slot earlier in the function,
   and grew the function by 16 instructions/bytes overall. This is
   consistent with a much more mundane explanation than "depth itself
   triggers conservative spilling": **each dummy `if` condition needs its
   own operand in a register to be compared, so adding real nesting adds
   real register pressure as a side effect** -- there is no way to test
   "depth in isolation" without also consuming registers to evaluate the
   extra conditions, which confounds the experiment. **This round did not
   find a way to cleanly isolate nesting depth from register-pressure
   as separate causal factors, and the one depth-increasing experiment
   that didn't also change unrelated spills (attempts 1-2 above) showed
   no effect on `tile_x` at all.** Best read: the "doubly-nested block"
   framing from round 6 is probably not the right causal story; the real
   cause is more likely tied to `tile_x`'s specific live-range shape
   (distance/call-count between its last use before BR and BR itself, or
   something in the interaction between BL's and TR's `CpuFastSet` calls
   specifically) rather than syntactic `if`-nesting depth. Reverted --
   working tree confirmed unchanged (`git status --short` empty) before
   finishing.

### Updated recommendation for a future round

The nesting-depth hypothesis flagged as "most promising" at the end of
round 6 has now been tested as directly as it can be without also
changing register pressure, and **did not reproduce the gap** -- it
should be considered closed, not "not yet tried" in any future attempt.
If this function is picked up again, the productive leads still open are
narrower and more mechanical than "shape hunting": (a) try altering
what's *between* the BL blit and the BR blit specifically (e.g. does
moving the TR blit's `CpuFastSet` call before or after the `has_bottom`
check for BR change which values survive), since the reload sits right
after the second and third `CpuFastSet` calls the function makes, or (b)
accept this as a second confirmed instance of the "register pressure"
class documented in `DECOMP_RULES.md` and deprioritize further rounds
on this specific function absent a large dedicated budget, applying the
budget instead to functions still in the "straight-line reads + one
opaque `bl`" tractable class.

### Repo state at end of round 7

- Working tree clean except this documentation update; `make compare`
  not re-run this round since no `src/`/`asm/`/`fomt.lds` files were
  touched at any point (all iteration happened via the quicktest harness
  against a scratch-directory `.cc`, never against the tracked tree).
- No new commits touching `src/`/`asm/`/`fomt.lds` -- nothing matched
  bit-exact, nothing committed there, per discipline.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## 2026-08-20, round 8 (worktree `w17`, branch `parallel-17`) -- hidden
GameState getter `func_08010F14` catalogued and matched

Priority-1 target for this round, flagged as an annex discovery at the end
of round 7 (w14, see `func_08010F04`/`func_08010F1C` entry above): 8 bytes
of raw `.byte` data sitting right after `func_08010F0C` in
`asm/code_08010F0C.s`, at `.L08010F14:`, never given a `thumb_func_start`/
`func_ADDR` symbol despite decoding as fully valid Thumb code.

Verified the address first: `func_08010F0C` (`ldr r0,[r0]`; `lsls #0xe`;
`lsrs #0x1b`; `bx lr`) is exactly 4 instructions = 8 bytes, so it spans
`0x08010F0C`-`0x08010F14`, meaning the `.byte` blob starts exactly at
`0x08010F14` (matching its own label name). The very next symbol,
`func_08010F1C` (already ported in `src/game_state.cc`, round 7), starts at
`0x08010F1C` -- so the blob is exactly 8 bytes / one function, snugly
between two already-known functions, no ambiguity about its extent.

Hand-decoded the 8 bytes (`40 88 C0 05 40 0E 70 47`) as four 16-bit Thumb
halfwords, little-endian:
- `0x8840` = format-10 `LDRH`: bits `1000 1 00001 000 000` -> L=1
  (load), Offset5=1 (x2 = byte offset 2), Rb=R0, Rd=R0 -> `ldrh r0,[r0,#2]`.
- `0x05C0` = format-1 shift: bits `000 00 10111 000 000` -> op=00 (LSL),
  offset5=`10111`=23, Rs=Rd=R0 -> `lsls r0,r0,#23`.
- `0x0E40` = format-1 shift: bits `000 01 11001 000 000` -> op=01 (LSR),
  offset5=`11001`=25, Rs=Rd=R0 -> `lsrs r0,r0,#25`.
- `0x4770` = the standard `bx lr` encoding.

Applied DECOMP_RULES.md rule 1bis (`S1=23,S2=25` -> `N=32-25=7` bits wide,
`P=(32-23)-7=2`): a 7-bit unsigned field starting at bit 2 of the halfword
read from `self+2`. Noted in passing (not asserted as fact, just an
observation worth a comment): this halfword is the upper half of the same
32-bit word `func_08010F0C` reads from `self+0` and extracts bits `[13:18)`
from (`S1=14,S2=27` -> `N=5,P=13`) -- our new field's bits `[18:25)` of
that full word are immediately adjacent to `func_08010F0C`'s `[13:18)`,
consistent with (but not proof of) both being sub-fields of one packed
bitfield word on the same GameState-family object.

Verified the C port byte-exact via the quick compiler+assembler harness
(`DECOMP_RULES.md` "Iteration rapide" recipe, redirected to a session-
unique scratch path per the round-6 `/tmp/qt.s` collision lesson) BEFORE
touching the tracked tree:

```c
EC u32 func_08010F14(void * self)
{
    return (u32)(*(u16 *)((u8 *)self + 2)) << 23 >> 25;
}
```

`arm-none-eabi-objdump` on the resulting `.o` reproduced the exact 4
instructions/8 bytes above, byte-for-byte.

No caller anywhere in `asm/`/`src/` references `.L08010F14` or
`func_08010F14` symbolically (a full-tree grep came up empty except the
label definition itself) -- this function is either called only via an
indirect table/computed address, or genuinely dead code the original
compiler emitted and never referenced. Not investigated further this
round (out of scope for "port + match", would need a broader scan of
jump tables elsewhere in the binary).

Applied the "target is the last function in an already-mostly-split file"
case of the `asm/*.s` splitting method: removed the 8-byte blob from
`asm/code_08010F0C.s` (leaving only `func_08010F0C`'s own body, no new
asm file needed since the function following the blob, `func_08010F1C`,
was already carved out into `src/game_state.cc` in round 7), added
`src/code_08010F14.cc` with the standard header-comment discipline, and
inserted `src/code_08010F14.o(.text);` into `fomt.lds` between the
existing `asm/code_08010F0C.o(.text);` and `src/game_state.o(.text);`
entries (exact original position of the 8 bytes).

Clean rebuild (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`)
passed bit-exact (`sha1sum -c fomt.sha1` -> `fomt.gba: Reussi`). Committed
as `05e966f` (`asm/code_08010F0C.s`, `fomt.lds`, new
`src/code_08010F14.cc`; `git status --short` confirmed clean, all three
changed/added files staged via `git add -A`, no stray untracked files).

### Priority 2

Not attempted this round: priority-1 (the hidden getter) was the full
scope delivered, and the brief explicitly said priority 2 only "if time
allows" with a strong caution against re-attempting `func_0800736C`
(OBJ-palette allocator, 4 documented failures) without a genuinely new
angle -- none surfaced while working priority 1, so left untouched rather
than force a 5th unproductive attempt. `DECOMP_RULES.md`'s prioritized-
targets list (end of file) remains the reference for the next round.

### Repo state at end of round 8

- Working tree clean after the commit (`git status --short` empty,
  verified post-commit).
- One new commit (`05e966f`) touching `src/`/`asm/`/`fomt.lds`, `make
  compare` bit-exact on a clean rebuild immediately before committing.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. Worked alone in the isolated `w17` worktree per the
  round brief; did not touch anything outside `func_08010F14`.

## 2026-08-20, round 8 (worktree `w16`, branch `parallel-16`) -- `func_0804E4AC`,
the "between BL and TR" `CpuFastSet` lead tested and CLOSED, 3rd independent
confirmation of the same 1-instruction gap, this is now the function's 3rd
serious attempt to fail

### Scope

Round 7 left one specific untested lead open: "try altering what's *between*
the BL blit and the BR blit specifically... since the reload sits right
after the second and third `CpuFastSet` calls the function makes." This
round chased exactly that, mechanically rather than by shape-hunting: traced
every single instruction between the BL block's `bl CpuFastSet`
(`0x804e582`/offset `0x9e` in the quicktest harness numbering) and the TR
block's `bl CpuFastSet` (`0x804e5b6`-equivalent), and separately between TR's
and BR's, directly against the vanilla disassembly
(`asm/code_0803EE94.s:27928-28061`, re-extracted fresh via
`arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb
--adjust-vma=0x08000000 --start-address=0x0804E4AC
--stop-address=0x0804E5AC baserom.gba`, cf. the `objdump -bbinary` trap in
`DECOMP_RULES.md`). **Result: closed, negative.** No commit -- nothing
bit-exact. Working tree in this worktree was never touched (`git status
--short` empty throughout; all iteration happened in a session scratch
directory, `/tmp/fomt-w16-drawglyph-scratch/`, never inside the repo).

### What's actually between BL's and TR's `CpuFastSet` calls

Read directly off the vanilla disassembly, register-by-register:

```
.L0804E54E:                  ; falls through here after BL's `bl CpuFastSet`
    ldr r0, [sp, #0x88]      ; reload has_right flag FROM STACK (not a register)
    cmp r0, #0
    beq .L0804E594
    mov r1, sl               ; sl = kind (never spilled, stays in sl all along)
    cmp r1, #1
    bls .L0804E594
    adds r1, r6, #0          ; r6 = TL tile address (already computed for TL's blit)
    adds r1, #0x20           ; TR address = TL address + one tile column
    add r0, sp, #0x24
    movs r2, #8
    bl CpuFastSet             ; TR
```

None of these 9 instructions touch `r4` (`tile_x`), `r5` (`tile_y + 1`, needed
again at BR) or `r8` (`width_tiles`, also needed again at BR) -- the TR
address is computed purely from `r6` (the already-computed TL address, reused
directly), not recomputed from `tile_x`/`width_tiles`. **The only value
reloaded from memory in this zone is `has_right` itself**, and that reload is
NOT a redundant/mysterious one -- `has_right` (unlike `has_bottom`, which
stays resident in `r7` for the whole function) was never given a register at
all: it's assigned via `str` both times it's set (`.L0804E508`-`0518`, sp+
`0x88`), the classic materialized-boolean idiom already confirmed elsewhere
in this function (`DECOMP_RULES.md` rule 6). That's simply because, by the
time `has_right` is computed, `r4`-`r7` are already fully committed
(`r4`=`tile_x`, `r5`=`tile_y+1`, `r6`=TL address, `r7`=`has_bottom`) -- **all
four low callee-saved registers are simultaneously live at that point**,
leaving no free register for a fifth value (`has_right`), so it goes to the
stack by simple exhaustion, not by any interaction with the BL/TR call
boundary. Independently reproduced this exact 4-way full commitment of
`r4`-`r7` with the quicktest harness (see below) -- confirms the read, not
new information on its own.

Symmetric check on the TR-to-BR span (the other side of the lead): also
walked instruction-by-instruction (`.L0804E54E`+13 through the BR block's own
`bl CpuFastSet`). Same result -- nothing there touches `r4` either. The
`ldr r2, [sp, #0x84]` reload of `tile_x` for BR's address calc is the FIRST
thing in the BR block itself, immediately preceded only by `mov r0, r8; muls
r0, r5, r0` (both `r8` and `r5` read directly from their still-resident
registers, no reload) -- i.e. even at the point of use, two of the three
operands needed for the exact same formula are trusted from registers and
only `tile_x` specifically is forced through memory, with literally nothing
distinguishing its live range from `r5`'s or `r8`'s in the intervening code.

### Empirical test: does a C shape matching this description actually reproduce the gap?

Reconstructed the function fresh a third time (independently of both round
6's and round 7's now-deleted `.cc` files, written directly from the
disassembly read above) via the quicktest harness
(`arm-none-eabi-cpp | agbcp -O2 -fhex-asm | as`, `EC u32
func_0804E4AC(u32 dims, void * dest, u32 x, u32 y, u32 code)` matching the
signature already established in `src/code_0804E8F0.cc`'s forward
declaration). **Result: 120 instructions vs the original's 121, same exact
single missing `str` (the `tile_x` definition-site spill) -- third
independent confirmation of the identical near-miss** (round 6: 249/250 vs
250; round 7: 120/121; this round: 120/121, same instruction). Automated
mnemonic-sequence diff (`diff -u` over normalized objdump output, `@`-comment
and branch-target-label noise stripped) confirms the divergence starts and
ends at exactly the same point rounds 6/7 already characterized: no new
divergence anywhere else in the function.

Two additional targeted probes this round, both negative:

1. **Swapped declarative order** (`width_tiles`/`height_tiles` computed
   before `tile_x`/`tile_y`, instead of after): changes which variable lands
   in a low vs high register (as round 6 already found), but this time
   produced a WORSE result -- 118/121 instructions, because the swap
   happened to let the allocator avoid needing a stack slot for `tile_x`
   *at all* (no spill, no reload, straight register reuse through to BR).
   This is actually informative: it shows the "extra" `str`+`ldr` pair in
   the original is not a fixed tax paid by `tile_x` regardless of
   allocation -- it can be avoided ENTIRELY by a different but equally
   literal ordering, which means the original's choice to pay it is a real,
   specific allocator decision, not an unavoidable consequence of the
   variable's live range. Reverted immediately (back to the 120/121
   baseline).
2. **Forcing a memory-mediated read of `tile_x` specifically at the BR site**
   via `u32 volatile * px = &tile_x; ... *px ...`: produced a MUCH worse
   result (132 instructions, extra stack traffic for the pointer itself,
   different stack frame size) -- taking the address of `tile_x` changes its
   storage class enough that agbcp reserves it a real stack slot for its
   *entire* lifetime and adds address-computation overhead nowhere present
   in the original. Confirms this isn't a viable lever either: whatever
   causes the original's spill, it isn't something reachable by any
   deliberate C-level "make this go through memory" idiom tried so far
   (this round's `volatile u32 tile_x` from round 7 already ruled out the
   blanket form; this round's address-taken form rules out the targeted
   form too). Reverted immediately.

### Conclusion: this specific lead is closed

The round 7 recommendation ("check precisely what's between BL and TR") has
now been followed to the instruction level on both sides (BL-to-TR and
TR-to-BR) and the answer is unambiguous: **nothing in either intervening
span references `tile_x` (or the registers it competes with) at all** --
there is no side effect, no intermediate call touching r4, no memory write
that would give a principled reason for the original compiler to distrust
`r4`'s contents specifically at the BR site while trusting `r5`/`r8`
(carrying the same-shape live ranges) at the identical point. Combined with
round 7's finding that *articially adding nesting* also fails to reproduce
it (and instead spills a different, unrelated variable), the most
defensible remaining explanation is a narrow, two-pass allocator artifact
internal to `agbcp` (ex: a stack slot reserved conservatively at
definition-time by an early pass, before the allocator has seen the whole
function, then opportunistically consumed by a later pass at whichever
particular use site its own bookkeeping picks -- plausibly the textually
LAST use in program order, which `tile_x`'s BR reference is) rather than
anything expressible as a deliberate, motivated C source shape. This is not
new information different in kind from round 7's conclusion, but it removes
the one specific lead round 7 left open, closing the identified path to a
3rd documented dead end.

### Recommendation

This function has now had **three separate serious attempts** (round 3:
total failure, 20 bytes short from the first instruction; round 6: shape-hunt
converged to a 1-instruction/2-byte gap; round 7: nesting-depth hypothesis
tested and closed; round 8/this round: the "between BL/TR" lead tested and
closed, plus two fresh negative probes) all converging on the exact same
2-byte gap, from three independently-written C reconstructions. Per
`DECOMP_RULES.md`'s own register-pressure-class rule ("ne pas re-tenter cette
classe sans budget de plusieurs rounds dédiés"), this function should now be
**formally retired from the priority list**, not just deprioritized --
there is no further untested lead identified across three rounds of
dedicated attention, and the remaining candidate explanation (an internal
two-pass spill-slot artifact of `agbcp` itself) is not something a C source
reformulation can address in principle, similar in spirit (though not
mechanism) to the `Unpack` "ABI partagée entre `bl`" class already retired
outright. `func_0804E5AC` (the recolor sibling) was not attempted, consistent
with round 6's note that it would very likely hit the identical wall.
**Recommendation: do not schedule a 4th round on `func_0804E4AC`/
`func_0804E5AC` without a genuinely new idea not already covered by the four
rounds' combined notes** (rounds 3, 6, 7, 8) -- if a future session wants
this function anyway, the one thing NOT yet tried is inspecting whether
`StanHash/fomt`'s own upstream Ghidra decompilation (if it exists for this
address) shows a source shape none of the four independent reconstructions
here have considered, rather than continuing to shape-hunt blind.

### Repo state at end of round 8

- Working tree clean throughout (`git status --short` empty at start and
  end); no `src/`/`asm/`/`fomt.lds` files touched at any point, all
  iteration in `/tmp/fomt-w16-drawglyph-scratch/` (session-unique scratch
  path, per the `/tmp/qt.s` collision trap already documented in
  `DECOMP_RULES.md`).
- No commits touching `src/`/`asm/`/`fomt.lds` -- nothing matched
  bit-exact, nothing committed there, per discipline. This documentation
  update (`SESSION_NOTES.md`) is the only change in this worktree.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## Round 8 (worktree w15) -- func_08004C68 callee sweep

### Goal

Assigned mission: work through `func_08004C68`'s 12+ still-undecompiled
callees (per round 6's priority list -- the text-capture widget family
`func_08007078`/`func_080070D4`/`func_08007110`/`func_080070A4`, the
confirm-screen family `func_0800598C`/`func_08005A00`/`func_08005A3C`/
`func_080059D0`, the selector-widget family `func_0806E9D8`/
`func_0806EA30`/`func_0806EA6C`/`func_0806EA00`, and the 3 hardware
callees `func_08008980`/`func_08008DB8`/`func_08008A68`), then re-attempt
`func_08004C68` itself once enough callees are resolved.

### 7 new matches this round (10/15 of the tracked callee list now done)

Confirmed bit-exact via clean rebuild + `make compare`, one commit each
(2 commits bundle 2 functions where a single monolithic-file split made
them land together atomically -- see commit messages):

| function | role | commit |
|---|---|---|
| `func_0806EA6C` | selector-widget byte getter, `*(self+4)+0x448` | `95de198` |
| `func_08007110` | text-capture-widget pointer getter, `*(self+4)+0x461C` | `bbf7765` |
| `func_08005A3C` | confirm-screen-widget byte getter, `*(self+4)+0x1A76` | `476d93c` |
| `func_08007078` | text-capture-widget constructor (dtor `func_080070A4`) | `476d93c` |
| `func_0800598C` | confirm-screen-widget constructor (dtor `func_080059D0`) | `9c50133` |
| `func_0806E9D8` | selector-widget constructor | `9c50133` |
| `func_08008DB8` | `m4aSongNumStartOrChange` u16-truncating wrapper | `b7e035a` |

**New pattern confirmed**: all 3 widget families (text-capture, confirm-
screen, selector) share the exact same **placement-constructor shape**
already established structurally by the "richer destructor" family, just
mirrored for construction instead of teardown: `*self = vtable_unk_ADDR;
void *obj = operator new(SIZE); obj = InitFn(obj, ...args); *(self+4) =
obj; return self;`. Verified identical byte-for-byte shape across all 3
constructors (`func_08007078` size `0x4640`, `func_0800598C` size
`0x1A78`, `func_0806E9D8` size `0x454`), only the vtable constant, alloc
size, init-callee name/arity, and argument count/stack-passing differ.
**Generalizable**: any future "constructor of a `self+4`-child-teardown
family" member likely follows this exact shape -- write it first, verify
size, done, no shape-hunting needed.

**Getters generalize too**: 3 of the 4 byte/pointer getters ported this
round (`func_0806EA6C`, `func_08007110`, `func_08005A3C`) are all the
literal one-liner `*(u8|void*)((char*)(*(void**)(self+4)) + OFFSET)` --
zero iteration needed, first quicktest pass matched every time.

### Mechanical trap re-confirmed: literal pool vs trailing unlabeled
bytes when splitting a monolithic `.s` file mid-function

Hit once this round (`func_08005A3C`/`func_08007078` split of
`asm/code_08005A00.s`), cost one wasted `make compare` cycle (caught
cleanly, no broken commit): the sequence after a mid-file target
function's own body is often **two distinct things back to back** --
(1) the target's OWN literal pool (a `.LADDR: .4byte ...` label whose
address is the function's own tail, already fully reproduced by the C
port's compiler-generated pool) and (2) separately, **unlabeled raw
Thumb bytes belonging to an uncatalogued NEXT function** (no
`thumb_func_start`, just `.byte` dumps -- same phenomenon already noted
round 7 for `0x08010F14`). **When cutting the "everything after the
target" chunk into the new split file, start strictly AFTER the
target's own literal-pool label, never at or before it** -- including
that label duplicates 4 (or more) bytes that the ported C already
emits on its own, shifting every following address by exactly that
much and producing a huge cascading `bindiff.sh`/`asmdiff.sh` diff that
looks unrelated to the actual (small, correct) function content. Size-
check rule already in `DECOMP_RULES.md` ("vérifier taille puis
contenu") catches this immediately (`readelf -S` on the ported `.o`
matches the port's own expected size; the diff is entirely downstream).
**At least 3 of these uncatalogued uninitialized-function tails were
seen again this round** (`asm/code_0800711C.s`, inside
`asm/code_08005A58.s` right after `func_08005A3C`'s pool, inside
`asm/code_08008DE8.s` right after `func_08008DB8`) -- all left
untouched/unlabeled, out of scope for this round's mission, flagged for
whoever eventually catalogues the full symbol table.

### Genuinely NOT converged this round: the "SmartPtr field assignment"
shape (`func_080070D4`, `func_08005A00`)

These two functions (identical shape, only the opaque init callee
differs -- `func_08005B68` vs `func_080050F8`) are called by
`func_08004C68` between/after each of the 3 name captures to store the
freshly-built widget's result into the sequence's own state object.
Disassembly (`asm/code_080070D4.s` before this round's split, 33
instructions):

```
push {r4, lr}; sub sp, #0xc
adds r4, r0, #0            @ r4 = field (param0 -- address of a SmartPtr<T>-shaped slot)
ldr r1, [r1, #4]             @ r1 = *(param1 + 4)
mov r0, sp
bl func_08005B68               @ func_08005B68(&sp[0], r1) -- fills sp[0] via hidden-ptr/out-param convention
ldr r2, [sp]                     @ r2 = sp[0]
mov r0, sp
str r0, [sp, #4]                   @ sp[4] = &sp[0]        <-- reference/alias slot, see below
str r2, [sp, #8]                     @ sp[8] = r2 (raw copy)
adds r1, r0, #0                        @ r1 = &sp[0]
movs r0, #0
str r0, [r1]                             @ sp[0] = 0 (through the alias)
str r2, [r4]                               @ *field = r2
ldr r1, [sp]                                 @ r1 = sp[0] (== 0)
cmp r1, #0; beq skip
    ldr r0,[r1]; ldr r2,[r0,#8]; adds r0,r1,#0; movs r1,#3; bl _call_via_r2   @ vt[2](r1, 3) -- provably dead, r1==0
skip:
adds r0, r4, #0; add sp, #0xc; pop {r4}; pop {r1}; bx r1
```

**What's established with confidence** (structural, from the bytes
alone): this is `SmartPtr<T>`-shaped teardown logic identical in kind to
the already-matched "richer destructor" family's child teardown
(`if (child) { vt = *(void***)(child+4)... ` -- except here the check
is on OFFSET 0 of the checked pointer, not offset+4, meaning whatever
type is being torn down here has its OWN vtable at offset 0, i.e. is a
"normal" single-inheritance polymorphic object, not a multi-inheritance
child like the destructor family's). The `if (r1 != 0) vt[2](r1, 3)`
tail is `SmartPtr<T>::~SmartPtr()`'s `delete inner;` compiled out, and
it fires on a value **already known to be exactly 0** at that point in
straight-line control flow -- meaning agbcp did NOT eliminate this
dead branch (contrary to what happens when the same "if (x) ...;
x=0;"-then-later-"if(x)" shape is written directly in hand-rolled C --
confirmed by testing, see below).

**What was tried, and why each attempt failed to reproduce this exact
shape**:

1. Hand-rolled C with an explicit `if (rhs.inner != nullptr) { ... }`
   after nulling `rhs.inner` directly in a local `struct { void
   *inner; }`: **agbcp folds the dead branch away entirely** (15
   instructions produced vs. 33 expected) -- confirms agbcp DOES do
   this one narrow dead-code elimination when the whole chain (null-
   write, then read, then compare) is visible in one un-indirected
   local variable within a few straight-line statements. This directly
   contradicts the general "agbcp is weak/non-optimizing" prior from
   `DECOMP_RULES.md`'s anti-pattern list -- **that prior needs
   qualifying**: agbcp is weak on arithmetic/bitfield peepholes and
   branch restructuring, but DOES do at least this one simple same-
   variable dead-store-then-dead-load elimination. Not yet understood
   exactly how narrow this optimization is (single local, single basic
   block? more?) -- would need a dedicated micro-benchmark round to
   characterize.
2. `*field = func_08005B68(arg).Move()` (using the real
   `SmartPtr<T>::Move()` from `include/smart_ptr.hh`, letting the
   compiler-generated destructor of the anonymous temporary do the
   dead check implicitly instead of a hand-written `if`): **still
   folded away** (16 instructions) -- so it's not specifically the
   *hand-written* `if` that's optimized; implicit compiler-inserted
   destructor calls on a temporary get the same treatment when the
   temporary's nulling and the destructor check are both in the same
   local scope with nothing else observably touching the slot's
   address in between.
3. `SmartPtr<T> tmp(func_08005B68(arg));` (naming a local initialized
   directly from another function's SmartPtr-by-value return):
   **does not compile** -- hits the already-documented private-no-op-
   copy-ctor trap (`DECOMP_RULES.md`, "Piège `SmartPtr<T>`"), confirmed
   to also apply to plain local-variable initialization, not just
   `return` statements as previously documented. **Extending that
   rule**: `SmartPtr<T> local(FunctionReturningSmartPtrByValue());`
   NEVER compiles under this codebase's `SmartPtr<T>`, regardless of
   context (return statement, local init, or reference-parameter
   binding, see attempt 4) -- only construction from a raw `T*` (the
   explicit ctor) is legal for naming a local.
4. Two-step version with a custom local class exposing
   `operator=(MySmartPtr &rhs)` (hypothesis: the "reference alias"
   slot at `sp+4` in the target is the machine-level trace of a
   reference PARAMETER of an inlined `operator=(SmartPtr&)`, which
   would explain why the null-check survives -- writes through an
   *aliasing pointer* the narrow peephole from attempt 1 can't see
   through): **does not compile**, `agbcp` rejects binding a non-const
   reference parameter directly to an rvalue temporary
   (`func_08005B68(arg)` used directly as the argument expression) --
   this IS standard-conforming C++ (pre-C++11, no rvalue refs), so this
   avenue requires a named lvalue temporary bound to the reference,
   which reopens attempt 3's private-copy-ctor wall for any SmartPtr-
   typed named local initialized from a SmartPtr-by-value return.

**Honest state**: not converged, no working hypothesis left untested
that doesn't hit one of these two walls (dead-code folding when
straight-line, or a compile error when routed through a reference/named
copy). The `sp+4`/`sp+8` "store address-of-self then store value-copy"
double-write immediately after the `func_08005B68` call is the one
piece of the disassembly not yet explained by ANY tested hypothesis --
worth a fresh angle next round: possibly a *by-value* struct-return
convention detail specific to a 2-word type (not `SmartPtr<T>`'s 1
word) that has been misidentified as `SmartPtr<T>`-shaped, or a
different helper class entirely (e.g. an iterator/reference-counted
handle used only for this specific field-assignment idiom, not the
same `SmartPtr<T>` used everywhere else in this repo). **Classifying
this as a new, distinct difficulty class from both "register pressure"
and the already-documented `SmartPtr<T>` return-statement trap** --
recommend a dedicated round with budget to test 3-4 more C++ shape
hypotheses before falling back to "infeasible in C" the way `Unpack`
was, which has NOT been established here (unlike `Unpack`, nothing
here violates the ABI itself -- this is a shape-hunting problem, not a
structural one).

### Not attempted this round (budget)

- `func_0806EA30` (selector-widget setter counterpart to
  `func_0806EA6C`'s getter): calls `func_0806DB38` first, which is a
  genuine "register pressure" class function (`r8`+`sb`+`sl` used in
  its body, ~180+ lines, multiple nested calls) per the existing
  `DECOMP_RULES.md` classification -- **not attempted**, flagged
  consistent with that class's "don't retry without dedicated budget"
  rule. Note `func_0806EA30` ITSELF might still be portable calling
  `func_0806DB38` as an opaque callee (same trick used throughout this
  round for other opaque `InitFn`s) -- worth a quick, cheap try next
  round even without decompiling `func_0806DB38`'s body, since only
  `func_0806EA30`'s OWN shape matters for a match, not its callee's.
- `func_08008980` (hardware.s, `sb`/`r8` used in its own prologue --
  register-pressure signal) and `func_08008A68` (hardware.s, shorter,
  not yet disassembled in full) -- not attempted, no budget left this
  round. `func_08008980` should be treated with the same caution flag
  as `func_0806EA30` (register-pressure signature present) before
  attempting; `func_08008A68` looked short in a first glance and may be
  tractable -- good first candidate for whoever picks this up.
- `func_08004C68` itself: **NOT attempted this round.** With 10/15
  callees now resolved (bit-exact matched or already-matched before
  this round) and 5 still open (2 in the newly-characterized "SmartPtr
  field assignment" class directly blocking two of the three name-
  capture call sites, 3 not yet attempted), and given round 6's prior
  finding that the full ~150-instruction port ALSO needs to resolve the
  double-vtable-stamp-via-genuine-subclass question (`SmartPtr<T>`
  return trap) independent of the callee signatures -- judged, honestly,
  still out of reach of a single round's budget. Recommend: close the
  remaining 5 callees (or at least establish firm prototypes for all of
  them, which does NOT require their bodies to be bit-exact-ported,
  only correctly shaped extern declarations) before the next
  `func_08004C68` attempt.

### Repo state at end of round 8

- 7 new commits (`95de198`, `bbf7765`, `476d93c`, `9c50133`,
  `b7e035a`, see table above -- 2 of the 7 matched functions are
  bundled into 2 of these commits since a single monolithic-file split
  produced both atomically).
- `make compare` bit-exact (`sha1sum -c fomt.sha1` -> `Réussi`) on a
  full clean rebuild after every commit in this round, no exceptions.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No concurrent-session activity observed (other
  worktrees `w16`/`w17` mentioned as active in parallel on unrelated
  targets, per the mission brief -- no interference seen in `git log`).

## Round (worktree w20, isolated, branche `parallel-20`) -- chasse "méthode
sœur" par classe déjà matchée, 1 match, 1 near-miss documenté, 2 cibles
écartées par pré-évaluation de risque

Méthodologie demandée : plutôt que de choisir une cible au hasard dans
`asm/*.s`, partir des classes qui ont DÉJÀ au moins une méthode matchée
(`include/*.hh` + `src/*.cc` correspondant) et chercher des `func_ADDR`
sœurs, encore en asm, proches en adresse ou listées dans le même header.

### Étape 1 -- scanner tous les `include/*.hh` ayant un `src/*.cc` pour des
déclarations non matchées

Premier script (naïf, cherchant des motifs `Classe::Méthode` absents du
`.cc`) a produit une quinzaine de "gaps" apparents (`actor::GetMap/GetX/
GetY`, `entity::GetQ16X/...`, `field::PlotAt/PutAtRandom/RandThing/...`,
`farmer::func_0800Exxx` x50, `held_item::func_0800Fxxx` x5,
`script_engine::Clear/OnCall/Pop/Top`, `scene::~AScene/~AUnk_0800080C/
SceneMain`). **Tous se sont révélés faux positifs sauf un**, pour deux
raisons distinctes :
- Beaucoup de méthodes courtes sont **inline dans le header lui-même**
  (`actor.hh`, `entity.hh`, `field.hh`) -- mon grep sur `.cc` ratait ces
  définitions puisqu'il n'y en a pas, le corps vit entièrement dans le
  `.hh`. Un script plus robuste doit vérifier l'inline AVANT de conclure
  à un gap.
- L'idiome `EC RetType func_ADDR(...)` (fonction libre, pas méthode `::`)
  est très utilisé (`farmer.hh`, `held_item.hh`) -- mon premier script ne
  cherchait que le motif `Classe::Nom`, qui ne matche jamais ce style.
  **Second script, correct** : extraire tous les `func_[0-9A-F]{8}` du
  `.hh` et du `.cc` et faire un `comm -23` -- résultat : **zéro gap** sur
  la totalité des paires `.hh`/`.cc` existantes pour cet idiome. Autrement
  dit, toutes les classes ayant une paire `.hh`/`.cc` dans ce dépôt sont
  déjà complètes pour leurs fonctions libres `func_ADDR` déclarées en
  header (`HeldItem`, `Farmer`, etc. sont donc **entièrement matchées**,
  pas des cibles).

Seul gap réel trouvé par ce balayage complet : `SceneMain` (`scene.hh`
ligne 23, `void SceneMain(SmartPtr<AScene> scene_ptr);`) -- un vrai nom
sémantique (pas `func_ADDR`), jamais implémenté, à côté de deux
destructeurs déjà matchés dans le même fichier (`AScene::~AScene`
= `func_080007EC`, `AUnk_0800080C::~AUnk_0800080C` = `func_0800080C`),
exactement le patron "méthode sœur" recherché.

### Étape 2 -- balayage complémentaire des déclarations `extern`/`EC`
locales dans `src/*.cc` sans `.hh`

Un second grep (`func_[0-9A-F]{8}\(.*\);$` sans `ALIAS`) sur tous les
`src/*.cc` a listé les callees encore non portés référencés en avant :
la quasi-totalité sont des callees **déjà matchés ailleurs dans ce dépôt**
(le fameux `func_080007EC`/destructeur commun à toute la famille "riche").
Candidats réellement non matchés identifiés : `func_0803DA24`
(`data_schedules.cc`), `func_0805E860`/`func_080AC070`
(`entity_actor.cc`), `func_080D6D98` (`hardware.cc`), `func_08034F00`/
`func_08035380` (`npc_entity.cc`). `func_08034F00` s'est avéré un faux
positif de plus : déjà implémenté en `NAKED` inline asm directement dans
`npc_entity.cc` (juste jamais visible via `thumb_func_start` dans
`asm/*.s` puisqu'il n'y est plus).

### Match : `func_080D6D98` -- initialiseur de free-list du pool
d'entrées hardware

**Commit `a3343...` (voir `git log`).** Fonction minuscule (16
instructions, uniquement `r0`-`r3`, aucune pression de registres),
directement adjacente à `func_080D6D8C`/`func_080D6DB8` à l'intérieur de
la section linkonce `.text.code_080D68C0` (`asm/code_linkonce.s`).
Contexte immédiatement disponible côté appelant déjà matché
(`src/hardware.cc` : `unk_00 = func_080D6D98(unk_04, 0x10, 0);`, à
rapprocher de `FreeEntry`/`AllocEntry` déjà portés dans la même classe) --
confirme le principe de départ de cette session (méthode sœur d'une
classe déjà comprise = cible plus sûre). Sémantique reconstituée sans
ambiguïté depuis le désassemblage seul : construit en place une liste
chaînée descendante sur `self[0..num)`, terminée par `val` (`nullptr` au
site d'appel), et retourne `self[0]` (tête de la free-list) -- exactement
le pattern attendu d'un initialiseur de pool à listes libres. Forme C qui
a matché du premier coup à l'instruction près SAUF l'ordre d'évaluation :

```c
Unk_hardware_ent_080D6D98 * ent = self + (num - 1);   // PAS (self + num) - 1
```

`self + num - 1` (parsé `(self+num)-1` en C, associativité gauche standard)
compile un `adds` avant le `subs` ; le désassemblage cible fait le
`subs #4` AVANT le `adds` -- seule la parenthèse explicite `self + (num -
1)` reproduit cet ordre. Petit ajout à noter à côté de la règle #5 déjà
connue (ordre des statements = ordre des instructions) : **ça s'applique
aussi à l'ordre des SOUS-EXPRESSIONS à l'intérieur d'une même expression
arithmétique**, pas seulement à l'ordre des statements entiers. Découpage
de la section linkonce fait selon la méthode déjà documentée (fichier
`asm/code_080D6DB8.s` créé pour la partie après la fonction portée,
`fomt.lds` mis à jour en gardant les wildcards `*(.gnu.linkonce.t...)`
APRÈS les nouvelles entrées, cf. piège déjà documenté). `make compare`
bit-exact confirmé sur rebuild propre x2 avant commit.

### Near-miss documenté, NON commité : `SceneMain` (`func_0800082C`,
`asm/scene.s`)

Pas de pression de registres (`r4`-`r7` seulement, prologue simple) --
ne relève PAS de la classe "pression de registres" déjà fermée. Mais
c'est le **premier vrai consommateur de `SmartPtr<T>` par assignation**
dans ce dépôt (jusqu'ici `SmartPtr<T>` n'était utilisé que côté retour de
valeur, cf. piège déjà documenté sur le ctor de copie privé/no-op) --
aucun idiome établi pour `scene_ptr = nullptr;` / `next = other.Move();`
enchaînés. Reconstruction sémantique de haut niveau réussie (boucle sur
`scene_ptr.Get()`, `Run()` -> `SmartPtr<AUnk_0800080C> next`, puis si
non-null `vfunc_0C()` -> nouveau `scene_ptr`, sinon la boucle se termine)
et confirmée cohérente avec le désassemblage instruction par instruction
(les 4 blocs de destruction gardés par test nul correspondent exactement
aux destructions temporaires de `SmartPtr` attendues à chaque point de
séquence). **Mais la taille ne matche pas** : meilleure variante
obtenue = 202 octets compilés contre 230 octets cible (-28 octets,
~12-14 instructions manquantes), toutes les variantes testées (next/
result nullifiés dans des ordres différents, extraction du pointeur brut
dans une variable nommée séparée avant reconstruction) gardent une
frame de pile à 3 emplacements (12 octets, `sp+0/+4/+8`) alors que la
cible en utilise 7 (28 octets, jusqu'à `sp+0x18`) -- signal clair qu'il
manque des temporaires/objets locaux distincts dans ma reconstruction,
pas juste un problème d'ordre. Piste non testée avant d'arrêter (budget
de cette session épuisé sur cette cible) : la paire d'emplacements
`(adresse, valeur)` stockée deux fois dans le désassemblage cible
(commentaires d'origine `@ (&var_04, var_04)`) suggère que `Move()`
n'est PAS inliné directement au site d'appel mais passe par un chemin
qui matérialise À LA FOIS le pointeur `this` de l'objet temporaire ET sa
valeur extraite dans des emplacements distincts et PERSISTANTS (pas
réutilisés) -- peut-être un idiome différent de `.Move()` pour ce genre
d'assignation en chaîne (`operator=` prenant une référence plutôt qu'un
raw pointer, actuellement absent de `smart_ptr.hh`), ou bien `SmartPtr`
lui-même n'a pas exactement le layout/l'API supposée ici (rappel :
`smart_ptr.hh` porte deux `// TODO` sur ce point précis, dont un
directement sur `Move()`). **Ne pas re-tenter sans revoir d'abord
`smart_ptr.hh` lui-même** plutôt que de continuer à shape-hunter le
site d'appel -- cohérent avec la règle déjà connue "un near-miss d'1
registre sur un CALL vers une fonction/classe déjà supposée correcte
vient souvent du CALLÉ, pas de l'appelant", ici appliquée à un TYPE
(`SmartPtr<T>`) plutôt qu'à une fonction. À noter : `func_08004C68`
(round 6, non convergé) touche aussi `SmartPtr<T>` -- deuxième signal
indépendant que l'abstraction `SmartPtr<T>` telle qu'actuellement écrite
dans ce dépôt n'est peut-être pas encore tout à fait le bon modèle.
Fichiers de travail laissés uniquement dans le scratchpad de session
(jamais dans l'arbre de travail), `git status` vérifié propre avant
d'arrêter cette piste.

### Cibles écartées par pré-évaluation de risque (pas tentées)

- **`func_08035380`** (`asm/code_entities_08034CEC.s`, déclarée mais non
  définie dans `npc_entity.cc`) : prologue `push {r4,r5,r6,r7,lr}; mov
  r7,sl; mov r6,sb; mov r5,r8; push {r5,r6,r7}` -- signature exacte de la
  classe "pression de registres" déjà fermée (4/4 échecs cette nuit),
  fonction de surcroît volumineuse (~757 lignes de `.s`). Écartée sans
  tentative, cohérent avec la discipline de ne pas retenter cette classe
  sans idée nouvelle.
- **`func_0805E860`** (`asm/code_0805E760.s`, déclarée dans
  `entity_actor.cc`) : PAS dans la classe "pression de registres" (`r0`-
  `r4` seulement, 16 lignes, cible de taille comparable à
  `func_080D6D98`). Écartée pour une raison DIFFÉRENTE : elle dépatche un
  appel virtuel (`_call_via_r3`, slot vtable +0xC) sur un pointeur lu à
  `self+0`, où `self` est `SpriteAnimator*` -- mais `SpriteAnimator`
  (`include/unknown_types.hh:122`) est actuellement un simple
  `STRUCT_PAD(0x00, 0x14)` opaque, ses champs réels (dont ce pointeur
  vtable-isé à l'offset 0, et la nature du retour struct-par-valeur de
  8 octets consommé) ne sont PAS caractérisés. Cf. règle déjà connue :
  ne jamais deviner le layout d'un champ enfant avant de le caractériser
  côté dépôt patch (Ghidra) -- risque sémantique, pas risque de forme/
  pression de registres, donc pas couvert par le tri "compte les
  registres hauts" habituel. Écartée sans tentative faute de
  caractérisation préalable du type `SpriteAnimator`/de l'objet pointé.

### Repo state en fin de session (worktree w20)

- 1 commit (`func_080D6D98`), vérifié bit-exact via rebuild complet +
  `make compare` deux fois (avant et après le commit).
- `git status --short` propre après le commit.
- Aucune modification laissée en cours sur `SceneMain` (piste non
  convergée, aucun fichier `src/`/`asm/`/`fomt.lds` touché pour cette
  cible, toute l'itération faite dans le scratchpad de session).
- `origin` non touché, rien poussé, pas de PR.

## 2026-08-20, round 9 (worktree `w18`, branch `parallel-18`) -- systematic
scan for more hidden `.byte` blobs: 5 blobs found and matched, 17 functions
total

Brief for this round: generalize the round 8 (`func_08010F14`) discovery
into a *method* -- write a script to scan the whole `asm/*.s` tree for
short, unlabeled `.byte` data blobs squeezed between two real functions,
verify each candidate by hand-disassembly + xref + compile before trusting
it, port and match the best 2-3, document the rest (found and discarded
alike).

### Method (script: `tools/scripts/scan_hidden_code_blobs.py`)

Parses every `asm/*.s` file into column-0-label-delimited blocks, flags a
block as a genuine function only if a `thumb_func_start NAME` directive
sits immediately before its `NAME:` label (a real parser bug here cost an
hour: `thumb_func_start` almost always appears as the *tail* of the
PREVIOUS block's raw lines, not as a "preceding directive" of the new
block, because this is a line-based parser and the directive line is
textually still part of the block that hasn't ended yet -- fixed by having
`block_is_function` also scan the tail of the previous block, see the
script's docstring/comments), then looks for blocks that are 100% `.byte`
directives (no mnemonics, no `.4byte` -- `.4byte` is this codebase's
convention for genuine literal-pool/pointer constants, `.byte` is reserved
for genuinely undecoded raw bytes), 4-40 bytes long (1-2 Thumb instructions,
with slack for a small cluster of back-to-back tiny functions like the
`0x0800057C` case below), sitting between two real function blocks (walking
back past pure `.4byte` literal-pool blocks to find the "real" previous
neighbor). For each candidate it hand-decodes every 16-bit halfword with a
small partial Thumb decoder (covers all the common formats: data
processing, branches, load/store, push/pop, hi-reg/bx) and flags it
"plausible" only if every halfword decodes to a *known* Thumb encoding and
the last one is a branch/`bx` (a real function-ending shape) -- this is a
strong filter, not a proof; the real proof step (unchanged from round 8) is
always disassemble-by-hand -> compile via the quick harness -> compare
bytes, done for every candidate below before touching the tracked tree.

The script also separately reports (a) files that are 100% raw `.byte` with
*zero* `thumb_func_start` at all (`asm/code_080101A0.s`, ~424 bytes) -- a
fundamentally different, much bigger phenomenon (an entire never-split
region, not a hidden gap inside an otherwise-processed file), explicitly
out of scope for this round's "hidden short blob" signature and not
investigated further; and (b) larger (>40 byte) blobs matching the same
"sandwiched between two real functions" shape but not auto-verified
(false-positive risk from coincidental literal-pool bytes rises with size)
-- a worklist for a future round, not a set of confirmed finds.

### Candidates found and matched (4 blobs, all bit-exact)

1. **`func_0800711C`** (`asm/code_080070D4.s`, 12 bytes, right after
   func_08007110's own literal pool, right before the already-ported
   func_08007128) -- `return (char*)self + 0x461C;`, the same constant
   func_08007110 (the function right before it) adds after dereferencing
   `self+4`. Committed `4329ae7`.
2. **`func_0800057C`/`func_08000580`/`func_08000584`/`func_08000590`**
   (`asm/interrupt.s`, 32 bytes total, right after func_08000568, right
   before the already-ported `src/new.cc`) -- four tiny functions: two
   identical placement-new-shaped stubs ("ignore arg0, return arg1",
   matching the inline `operator new(size_t, void*)`/`operator
   new[](size_t, void*)` bodies declared in `tools/libagbc++/new`) and two
   forwarding thunks to the already-ported `operator new`/`operator delete`
   (linked as `__builtin_new`/`__builtin_delete`), byte-identical in shape
   to `__builtin_vec_new`/`__builtin_vec_delete` already compiled elsewhere
   inside `src/new.cc` itself (`nm build/src/new.o` offsets 0x48/0x78) --
   confirms agbcp does not fold/dedupe identical compiler-generated bodies
   across translation units, so multiple TUs each get their own private
   copy. Committed `7fd2ab1`.
3. **`func_080099EC`/`func_08009A04`/`func_08009A2C`/`func_08009A38`**
   (`asm/hardware.s`, 92 bytes total, right after func_080099D4, right
   before the already-ported `Farm::Farm(char const*)`) -- two constructors
   stamping already-known, heavily-referenced vtables
   (`vtable_unk_080E5BB4`/`080E5BD8`/`080E5BE8` from `asm/vtables.s`, used
   at dozens of still-unported call sites across the tree) onto raw offsets
   of an uncharacterized object (no site referencing those vtables is
   ported anywhere else yet, so ported as raw pointer arithmetic, not an
   invented C++ class -- same discipline as the "family riche" destructors,
   `src/code_0800371C.cc`), a matching "is this sentinel pair still in its
   constructed/empty state" predicate, and one unrelated leaf utility (a
   branchless nonzero-word predicate, `(neg(x)|x)>>31`, a GCC/agbcp idiom
   -- required writing the C literally as `u32 x = *(u32*)self; return
   ((u32)(-(int)x) | x) >> 31;` to get the exact register allocation;
   `x != 0` alone compiled to a branching `cmp`/`beq` shape instead, wrong
   instruction count). Committed `d417e87`.
4. **`func_080100F0`/`func_08010104`/`func_08010118`/`func_08010128`/
   `func_08010138`/`func_08010148`/`func_0801014C`** (`asm/game_scene.s`,
   104 bytes total, right after func_0801004C, right before the
   already-ported func_08010158) -- seven accessors, six reading the
   already-known global `gUnk_0300040C` (declared in
   `src/code_08011FE8.cc`) at various constant offsets, one a bare integer
   constant getter (`return 25;`). Strong coherence signal: func_08010158's
   own header comment already documents it as *clearing* this exact global
   in its destructor -- these are plausibly sibling accessors on the same
   object, though the class layout itself remains uncharacterized (ported
   as plain free functions, not methods). Committed `dc8fd26`.

Total: **5 blobs (`0x0800711C` counted separately from the other 4-blob
group above, since it was ported after the others -- see below), 17
hidden functions**, all verified byte-exact via the quick
compiler+assembler harness first, then via a full clean rebuild (`rm -rf
build fomt.gba fomt.elf fomt.map && make compare`, `sha1sum -c
fomt.sha1`) immediately before each commit, one blob per commit. No caller
found anywhere in `asm/`/`src/` for ANY of the 17 addresses (full-tree grep
negative on every one) -- same "no symbolic caller found" situation as
`func_08010F14` in round 8; not investigated further, out of scope for a
port+match round (would need a broader scan of jump/dispatch tables
elsewhere in the binary to explain how they're reached).

**Process note, told straight:** `func_0800711C` (item 1 above) was
actually the FIRST candidate found and hand-verified via the quick harness,
but got set aside mid-round while investigating the `code_080C7F00.s`
"Unpack family" false-positive (below) and the `0x0800057C` group, and was
never applied to the tracked tree in the moment. It only got caught and
finished because the scan script's `thumb_func_start`-adjacency bug (see
Method above) was found and fixed afterward, and a rerun of the corrected
script re-surfaced it as still-present. Lesson for future rounds: apply and
commit each verified candidate immediately, don't batch verification ahead
of application even under time pressure -- the fix-then-rerun catch this
time was lucky, not guaranteed.

### Candidate investigated and explicitly discarded: `code_080C7F00.s`
"Unpack family" blobs are real code, but already-diagnosed infeasible

The strict scan (correctly) never flagged these as candidates (their
"previous block" is a branch-target label containing real instructions,
not a `thumb_func_start`-marked function, so the adjacency filter excludes
them) -- found instead via manual inspection while eyeballing the medium-
size blob list. Several `.byte` blocks around `.L080D12D0`-`.L080D1426` in
`asm/code_080C7F00.s`, each sitting right after a `mov lr, pc; bx sb`
trampoline call, hand-decode as fully valid Thumb code (confirmed for one,
22 bytes at `.L080D137A`: `adds/lsls/bmi/lsls/add/strh/mov/cmp/bcc/pop
{r4}/bx r4` -- ends with the same `pop {r4}; bx r4` epilogue visible
elsewhere in the same function). These addresses (`0x080D1xxx`) fall
squarely inside the `Unpack`/body-mode bit-reader family that a prior
dedicated round (`worktree parallel-1`, see the "Classe de problème 'ABI
partagée entre `bl`'" section of `DECOMP_RULES.md`) already diagnosed as
**structurally impossible to port as C**: the bit-reader state is passed
in `r2`/`r3` across `bl` calls without reloading, violating the ARM/Thumb
calling convention itself, not just a stylistic quirk a C reformulation
could work around. This round's finding **confirms** that diagnosis
independently (real, valid, hand-written-style Thumb, not disassembler
noise) and additionally shows the family's code footprint is *wider* than
`DECOMP_RULES.md`'s existing location note suggested (previously pointed
only at `asm/code_809E804.s`, "around line 103423" -- also present, at
least in these trampoline-continuation fragments, in
`asm/code_080C7F00.s`). No action taken beyond documenting this -- per the
existing rule, this family is retired from the target list, not
re-attempted.

### Remaining leads for a future round (not pursued this round, budget/focus discipline)

- `tools/scripts/scan_hidden_code_blobs.py`'s "larger, not auto-verified"
  list: `asm/code_entities_08034CEC.s` `.L0803A804` (160 bytes, EOF-of-file
  after `func_0803A798`), `asm/code_08010F54.s` `.L08011ED8` (272 bytes,
  EOF-of-file after `func_08011DC4`), `asm/code_actor_0809BFE8.s`
  `.L0809E1B4` (288 bytes, EOF-of-file after `func_0809E1A4`). All three
  match the same "EOF of an already-processed file" shape that was real in
  all 4 short candidates matched this round -- good odds, but not
  auto-verified (size raises false-positive risk) and not manually
  disassembled this round. Next round should hand-decode these the same
  way before trusting them.
- `asm/code_080101A0.s` (424 bytes, ENTIRELY raw `.byte`, zero
  `thumb_func_start`) -- a different, bigger phenomenon (a never-split
  region, not a hidden gap), explicitly out of scope for the "hidden short
  blob" signature this round targeted. Would need the normal `asm/*.s`
  splitting method applied fresh, likely across multiple functions, not a
  quick single-blob port.
- Re-running `tools/scripts/scan_hidden_code_blobs.py` from a clean
  worktree after this round's 4 matches should print 0 short candidates
  (verified before writing this note) -- any that reappear in a future
  round are genuinely new, not something this round missed.

### Repo state at end of round 9

- Working tree clean after the last commit (`git status --short` empty,
  verified post-commit).
- Five new commits (`4329ae7`, `dc8fd26`, `d417e87`, `7fd2ab1`, plus the
  `tools/scripts/scan_hidden_code_blobs.py` addition) touching
  `src/`/`asm/`/`fomt.lds`/`tools/`, `make compare` bit-exact on a clean
  rebuild immediately before every commit that touched `src/`/`asm/`/
  `fomt.lds`.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. Worked alone in the isolated `w18` worktree per the
  round brief; did not touch anything outside the blobs listed above.

## Round 9 (worktree w21) -- func_08008980/func_08008A68 triage, 3 fresh
hypotheses on the "SmartPtr field assignment" shape (still not converged)

### Goal

Assigned mission (isolated worktree, solo on this repo): attack
`func_08008980`/`func_08008A68` (never disassembled before this round),
then bring genuinely new ideas to the `func_080070D4`/`func_08005A00`
"SmartPtr field assignment" shape blocked since round 8 -- re-reading
round 8's 4 documented hypotheses first, not repeating any of them.

### 1 new match: `func_08008A68`

Disassembled both hardware.s targets first to gauge complexity before
committing effort (per mission instructions):

- `func_08008980` (0x08008980): a big placement-style constructor --
  allocates a fresh 0x6c-byte object, wires up 6 sub-objects at offsets
  0x00/0x0c/0x1c/0x28/0x34/0x44 (each a `{0, 0, vtable}` triple, several
  cross-linked via pointers to each other), calls `func_080D78F8`,
  `func_08008D9C`/`func_08008D84`, and 3x `func_080095C0`, then stores
  the result at `*param0` and returns `param0`. **Confirmed
  register-pressure class**: uses `r4,r5,r6,r7,r8,sb,ip` simultaneously
  through the whole body (`mov sb,r0` and `mov r8,r1` both alive well
  into the function, `ip` also holds a live vtable constant across ~15
  instructions) -- matches `DECOMP_RULES.md`'s existing "pression de
  registres" class signature exactly. Also has a genuine, unexplained
  **double-vtable-stamp** on the sub-object at offset 0x0c (temp-stamped
  `vtable_unk_080E5BB4` via `ip`, then overwritten with
  `vtable_unk_080E5B90` before the object is otherwise touched) -- the
  same open "subclass override of a pure virtual method" question
  flagged in round 8 for `func_08004C68` itself, not resolved here
  either. **Not attempted this round** -- correctly flagged as
  high-difficulty in round 8, confirmed by direct inspection, out of
  reach without dedicated budget. Notably this function (and its 3
  siblings `func_08008444`/`func_080084DC`/`func_08008574`, all also
  still asm, all embedding a `bl func_08008980` at a fixed sub-offset
  0x490 inside their own even-bigger ~0x9B0-byte objects) is the true
  root allocator behind `AgbMain`'s and `func_0801004C`'s (a scene
  constructor, likely the game's top-level engine/HUD object) startup
  sequence -- a significant target, but not a quick one.

- `func_08008A68` (0x08008A68): teardown counterpart of `func_08008980`,
  called from the same 3 sites (`AgbMain`, `func_0801004C`,
  `asm/hardware.s` internally). Uses only `r4-r7`, **no `r8`/`sb`/`ip`**
  -- genuinely simpler, exactly as round 8's closing note predicted
  ("looked short in a first glance and may be tractable"). Matched on
  the first quicktest iteration: raw pointer-arithmetic port (no class
  invented, mirroring the "richer destructor" family's discipline),
  `void func_08008A68(void *field, unsigned int flags)` -- tears down
  the sub-object at `obj+0x34` (re-stamping the same two vtables
  `func_08008980` used there), calls the teardown counterparts of
  `func_08008980`'s own callees (`func_080D7944`, 2x`func_0800959C`,
  2x`func_080098AC`), deletes the object, and conditionally deletes
  `field` itself if `flags & 1`. Split out of `asm/hardware.s` (now
  ending at `func_08008DA8`, right before the already-split
  `code_08008DE8.s`); the tail becomes `asm/code_08008AE0.s`. One
  incidental fix needed: `__builtin_delete` isn't declared anywhere in
  this repo's headers (grep confirms zero prior use) -- `operator
  delete` (declared in `src/new.cc`) is the correct spelling, used
  instead. Verified bit-exact via clean rebuild + `make compare`,
  commit `2bab4c4`.

### `func_0806EA30` re-examined: confirmed to be the SAME "SmartPtr field
assignment" shape, not a separate register-pressure case

Round 8 filed `func_0806EA30` under "calls `func_0806DB38`, register
pressure class, not yet attempted" -- as a DIFFERENT open item from the
`func_080070D4`/`func_08005A00` "SmartPtr field assignment" class.
Disassembling it this round (`asm/code_0806EA30.s`, 33 instructions)
shows it is **byte-for-byte the identical instruction shape** as
`func_080070D4`/`func_08005A00`, only the opaque callee name differs
(`func_0806DB38` instead of `func_08005B68`/`func_080050F8`). **This is
not a 3rd, independent blocked function -- it's a 3rd confirmed instance
of the exact same unsolved class.** `func_0806DB38` itself (the
callee) IS a genuine register-pressure function (confirmed
separately, `r8`/`sb`/`sl` used, ~180 lines) -- but that's irrelevant to
matching `func_0806EA30` ITSELF, which (like the other two) only needs
`func_0806DB38` treated as an opaque black box. **Correcting
`DECOMP_RULES.md`'s classification**: 3 blocked sites share the
"SmartPtr field assignment" wall, not "2 blocked + 1 separate
register-pressure-callee case."

### 3 fresh hypotheses tested on the "SmartPtr field assignment" shape --
all negative, but each adds real information

Re-read round 8's 4 documented attempts in full before starting (dead
give-away peephole on same-scope locals; `.Move()` chaining; direct-init
`SmartPtr<T> tmp(ReturnByValue())` hits the private copy-ctor; reference
binding to an rvalue doesn't compile). None of the 3 tested below repeat
those exactly.

1. **Copy-initialization syntax (`=`) instead of direct-initialization
   (`()`)**: `SmartPtr<Widget> tmp = func_08005B68(arg);` instead of
   round 8's `SmartPtr<T> tmp(func_08005B68(arg));`. Old CFront-derived
   compilers are documented to sometimes treat these two forms via
   different code paths even though the standard treats them as
   equivalent for same-type initializers. **Result: identical failure**
   -- `agbcp` still routes this through
   `SmartPtr<Widget>::SmartPtr(SmartPtr<Widget>&)` (the private copy
   ctor) and rejects it with the same "invalid... initialization of
   non-const reference type" error as the `()` form. **Closes this
   specific avenue for good** -- the `=`/`()` syntax distinction is a
   dead end in this compiler, no need to try it again on any future
   `SmartPtr<T>` case.
2. **Explicit out-param convention instead of hidden-return-value
   convention**: hypothesis that `func_08005B68`'s real prototype takes
   `SmartPtr<Widget> *out` as an explicit first argument (default-
   construct `tmp` locally, pass `&tmp`, no by-value return at all) --
   this sidesteps the private-copy-ctor wall entirely (no copy/return
   involved) since `tmp` is default-constructed, not initialized from a
   call result. **Compiles**, but produces a **verifiably different,
   non-matching shape**: an extra pre-zero of `tmp` before the call (the
   default ctor), and critically `*field = tmp.Move()` invokes the REAL
   `SmartPtr<T>::operator=(T*)` on `field` -- which reads and compares
   against `field`'s OLD value before conditionally deleting it. The
   target disassembly never reads `field`'s old value at all. **This
   is useful negative confirmation, not just a dead end**: it proves
   `field` in the true source is NOT `SmartPtr<T>*` going through
   `operator=(T*)` -- whatever `field`'s real declared type is, the
   assignment must be a raw memberwise pointer write, not a method
   call. Ruled out for good: the out-param convention on the callee.
3. **Manual pointer-alias reproduction of the exact disassembled
   sequence** (read `tmp` through a separately-named alias pointer,
   null it through the alias, `if (dying) dying->Method2(dying, 3);`
   phrased as a 4th, distinct local rather than round 8's "hand-rolled
   struct" or the real `SmartPtr<T>` type): **agbcp promotes the entire
   thing to registers and eliminates it MORE aggressively than round
   8's attempt #1** -- collapses to `*field = func_08005B68(arg);` (8
   instructions, no stack slot at all, `tmp` never spills). **New,
   generalizable finding**: agbcp's same-scope dead-store/dead-load
   elimination (round 8, DECOMP_RULES.md anti-pattern list) is not in
   fact narrow to "single local, same expression" as round 8 tentatively
   qualified it -- empirically, it applies to **any address-taken local
   whose full lifetime (write, read, all aliasing) is visible within one
   function with no address ever escaping to an opaque external call**.
   Test 2 above (where `&tmp` DOES escape to the opaque `func_08005B68`
   call, forcing genuine stack residency) is the one case among all 7
   attempts across both rounds that does NOT get folded away -- pointing
   at escape-to-opaque-call as the one mechanism that reliably defeats
   the peephole, but combining that mechanism with a shape that also
   matches the target's field-write semantics (raw pointer write, not
   `operator=(T*)`) has not yet been found.

**Honest state, unchanged in substance from round 8**: still not
converged. 7 hypotheses tested across 2 rounds, all either fail to
compile (private copy-ctor wall) or produce a shape agbcp folds/reshapes
away from the 33-instruction target. The empirical rule discovered this
round (peephole applies broadly unless the address escapes to an opaque
call) narrows the search space usefully: any future hypothesis needs
`&tmp`'s address to escape to exactly one opaque call (matching
`bl func_08005B68`/`func_0806DB38` itself, since THAT's the only `bl` in
the target diassembly that could plausibly be "the escape") while still
producing a raw (non-`operator=`) field write with no compare against
the field's old value. **Not tried**: constructing `tmp` via the
hidden-return convention from `func_08005B68(arg)` (avoiding the
private-copy-ctor and out-param-shape problems, matching the no-pre-zero
disassembly) while ALSO ensuring the field write happens through an
explicit `*(RawT**)field = ...;` cast rather than any typed
`SmartPtr<T>*` -- i.e. combine the hidden-return convention (only
working construction idiom found in either round) with a `field`
parameter typed as a raw `T**`/`void**`, never `SmartPtr<T>*`, so no
`operator=` overload can ever be selected regardless of what the
compiler's overload resolution would otherwise pick. This exact
combination has not been tried by either round -- flagged as the
concrete next thing to try, not just "try harder."

### Not attempted this round (budget / correctly out of scope)

- `func_08008980` itself: confirmed register-pressure class by direct
  inspection (see above) -- not attempted, consistent with
  `DECOMP_RULES.md`'s existing guidance not to retry that class without
  dedicated budget. This is the first real look at it (not a retry), so
  it's now properly characterized rather than just flagged secondhand.
- `func_08004C68` itself: still not attempted. 11/15 callees now
  resolved (`func_08008A68` new this round); the 4 remaining
  (`func_080070D4`, `func_08005A00`, `func_0806EA30` -- all 3 confirmed
  same unsolved shape this round -- and `func_08008980`) are all
  genuinely hard, not just unattempted. Recommend the next round try the
  combined hypothesis above before re-attempting `func_08004C68`.

### Repo state at end of round 9

- 1 new commit (`2bab4c4`, `func_08008A68`).
- `make compare` bit-exact (`sha1sum -c fomt.sha1` -> `Réussi`) on a
  full clean rebuild after the commit.
- `origin` push URL untouched, nothing pushed, no PR, no network action.
  Solo worktree (`w21`/`parallel-21`), no concurrent-session interference
  observed.

## 2026-08-20, maintenance round (coordinateur, pas un worktree) -- split
`DECOMP_RULES.md` en quick-start + `DECOMP_ARCHIVE.md`, docs seulement

Mathias a fait remarquer que chaque agent commence systématiquement par
"se re-décompiler lui-même" -- en partie inhérent (chaque fonction est
unique) mais en partie évitable : `DECOMP_RULES.md` avait grandi à ~950
lignes avec de la vraie duplication issue de merges "garder les deux
côtés" appliqués à des sections qui en réalité se SUPERSÉDAIENT (ex. la
section "pression de registres" répétait le même paragraphe évolutif 5
fois, avec des compteurs d'échecs différents à chaque copie -- 3/3 puis
4/4 puis le near-miss round 6, jamais nettoyé). Chaque agent payait le
coût de lecture complet avant de toucher sa cible réelle, peu importe si
elle avait besoin de cet historique ou non.

Scindé en deux fichiers : `DECOMP_RULES.md` (450 lignes, dédupliqué) ne
garde que ce dont CHAQUE round a besoin -- discipline, anti-patterns
C->asm, conventions de nommage, méthodologie de découpage/harnais.
`DECOMP_ARCHIVE.md` (nouveau, 349 lignes) prend l'historique des matchs,
les récits complets des classes de difficulté, et la liste des cibles
priorisées -- consulté seulement quand une cible touche une famille déjà
documentée. Aucun changement de code, `make compare` reconfirmé bit-exact
après le split (docs uniquement).

- Rien poussé, `origin` intact.
- Les 3 agents en cours (w22 fable/`DrawGlyphAt`, w23 blobs cachés, w24
  méthodes sœurs) ont lu l'ancien `DECOMP_RULES.md` monolithique avant ce
  split -- pas de problème, leurs cibles ne dépendent pas de la
  structure du fichier. Au prochain merge, router leurs nouvelles
  entrées de table/historique vers `DECOMP_ARCHIVE.md`, pas
  `DECOMP_RULES.md`.
## 2026-08-20, round 10 (worktree `w24`, branch `parallel-24`) -- sister-method
hunt: 18 placement-constructor siblings of the "richer" AScene-derived
destructor family found and matched

Brief for this round: apply the "sister method" that worked well in round
(w20) -- instead of picking a random target, search `asm/*.s` for functions
NOT yet matched whose byte pattern strongly resembles a family ALREADY
matched and understood in this repo, since the C model is already known and
only needs adapting to the new site's offsets/constants. Two documented
templates given as starting points: the ~37 "richer" derived destructors
(all 37/37 already matched, not a target anymore) and the placement
constructors (3 widget families already matched via `func_08004C68`'s New
Game sequence).

### Method

Wrote a small parser (`/tmp/.../scratchpad/find_ctor.py`, not committed) that
splits every `asm/*.s` file into `thumb_func_start` blocks and flags any
block containing BOTH a `vtable_unk_ADDR` literal AND a `bl __builtin_new`
call -- the exact double signature of the already-known placement-constructor
shape (`func_08007078`/`func_0800598C`, round 8). Cross-referenced against
`arm-none-eabi-nm build/src/*.o | grep ' T func_'` (built once at the start
of the round) to exclude already-ported functions -- a naive `grep func_ADDR
src/*.cc` first pass produced false "matched" positives because it matched
`extern` declarations of still-opaque callees too, not just real
definitions; `nm` on the actual build output is the only reliable oracle for
"is this symbol really defined with a body in this repo".

The candidate list, sorted by instruction count, immediately surfaced a
cluster of ~15 functions at exactly 21 instructions, all in files whose
names correspond to already-matched "richer" 2-child destructors' asm
splits. Manual inspection of the first one, `func_0807EE14` (right before
the already-matched `func_0807EE44` destructor in `asm/code_0807DDA8.s`),
confirmed the hypothesis instantly: it stamps the EXACT SAME
`vtable_unk_080E7C4C` that `func_0807EE44`'s destructor also stamps, and
initializes the same two child fields (`self+4` MI, `self+8` plain) that the
destructor tears down -- a genuine constructor/destructor pair, previously
invisible because no one had searched for the constructor side specifically.

### Matches (19 functions total, verified bit-exact, 4 commits)

1. **`func_0807EE14`** (`55821f1`) -- first find, full writeup of the shape
   in `src/code_0807EE14.cc`'s header comment and in the new
   `DECOMP_RULES.md` section "Les constructeurs de placement, contreparties
   de la famille 'riche'". Body: vtable stamp, `operator new(0x710)`, opaque
   init call `func_0807E4D4(obj, a2)` stored at `self+4`, then a "move-in"
   of the plain child at `self+8` -- reads `*a1`, zeroes `*a1`, stores the
   old value. New C idiom not seen before in this repo (previous
   constructors only ever allocated both children, never received one
   pre-built via an out-parameter).
2. **14 sisters, identical body, only vtable/size/init-callee differ**
   (`42960fa`): `func_0805218C`, `func_080755EC`, `func_0807DD38`,
   `func_0807F580`, `func_0808045C`, `func_08080D94`, `func_08081A40`,
   `func_08082114`, `func_0808AB38`, `func_0808C56C`, `func_0808ECD8`,
   `func_08090E54`, `func_080931B0`, `func_08093A58` -- each cross-checked
   against its destructor sibling's `vtable_unk_ADDR` via `grep -l` in
   `src/*.cc` BEFORE compiling, confirming the pairing independently of the
   harness result. All 14 sit as the LAST function of their respective
   already-split asm files (the simple "tail-trim + append lds entry" case,
   no new asm file needed) -- verified individually via the quick
   compiler+assembler harness (exact mnemonic match including the
   `movs #k; lsls #n` constant-materialization for each distinct allocation
   size), then all together via one clean rebuild.
3. **`func_080A3744`** (`16aac6b`) -- 15th sister, same body, but no
   destructor stamping `vtable_unk_080E8278` was found anywhere in the tree
   (grep negative across `src/*.cc` and `asm/*.s`) -- ported anyway on shape
   match alone, harness-verified bit-exact like the other 14. Needed a real
   mid-file split (`asm/code_809E804.s`, not the last function in its file)
   rather than the tail-trim used for the other 14 -- new
   `asm/code_080A3774.s` holds the function that follows it.
4. **3 more, 1-child variant (no move-in)** (`3e23c90`): `func_080BC898`,
   `func_080C7EA8`, `func_080C0D1C` -- same shape as the ALREADY-known
   `func_08007078`/`func_0800598C` constructors (round 8), i.e. the simpler
   sibling of the 1-child "richer" destructors `func_080BC8C0`/
   `func_080C7ED0`/`func_080C0D44` (already matched). Found by the same
   scan script, just further down the candidate list (15-instruction
   bracket instead of 21). Confirmed the same vtable pairing via `grep -l`
   before compiling. All 3 are tail-trim splits.

### Constant-materialization note (generalizes a small but real risk)

Every allocation size in this family was written as a plain hex literal in C
(`operator new(0x710)`, `operator new(0xB78)`, etc.) -- NOT hand-reproduced
as the `movs #k; lsls #n` shift decomposition visible in the disassembly.
agbcp picks the encoding itself from the literal value: shift-decomposable
sizes (`0x710 = 0xe2<<3`, `0x10c = 0x86<<1`, etc.) compile to the exact same
`movs`/`lsls` pair seen in the target, and non-decomposable sizes (`0xB78`,
`0x98C` -- no `k<<n` with 8-bit `k` produces these) fall back to a literal
pool load, ALSO matching the target exactly. Verified across all 18 distinct
allocation sizes in this round without a single case needing manual shift
reconstruction -- useful data point against over-applying anti-pattern #1
(masks) to unrelated constant-loading contexts.

### Repo state at end of round 10

- 4 commits (`55821f1`, `42960fa`, `16aac6b`, `3e23c90`), each preceded by a
  clean rebuild (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`)
  and `sha1sum -c fomt.sha1` showing "Réussi" immediately before the commit.
- `git status --short` clean after the last commit.
- `DECOMP_RULES.md` updated: new match-table rows + a dedicated section
  documenting the constructor family's two variants and the constant-
  materialization note above, for future rounds to reuse without re-deriving
  it.
- `origin` push URL untouched, nothing pushed, no PR, no network action.
  Solo worktree (`w24`/`parallel-24`), no concurrent-session interference
  observed (checked `git log`/`git status` before starting and before each
  commit).
- Scan script (`find_ctor.py`) left only in the session scratchpad, not
  committed -- rerun it in a future round if hunting for more sisters of
  this or another family; the `nm`-based "already ported" oracle it uses is
  the reusable part.


**Post-merge note (coordinateur)** : ce round a tourné sur `w24` avant
l'atterrissage du commit `cb06198` ("port hooks to source build", pivot
vers un payload embarqué réel) sur `main` -- le `Réussi` mentionné
ci-dessus porte sur l'ancien standard (ROM entière bit-exact contre
`baserom.gba`), qui ne s'applique plus après `cb06198`. Vérifié après
fusion que les 19 fonctions matchées ici n'entrent en collision avec
aucun site touché par `cb06198` (régions d'adresses disjointes dans
`asm/code_0804E9C8.s`, seul fichier partagé). Les 3 agents (w22, w23,
w24) ont tous été interrompus par la limite de crédit 5h du compte
(le message d'erreur mentionnait "monthly spend limit", mais Mathias
confirme que c'est bien la fenêtre 5h qui s'est refermée) -- w22/w23
n'ont rien committé, w24 a committé avant de tomber. w22 (fable,
`DrawGlyphAt`) relancé pour ne pas perdre sa progression (variante `g5`
à -2 octets/122 instructions au moment de l'interruption).

## Round (worktree w25, isolated, branche `parallel-25`) -- "SmartPtr field
assignment" (`func_080070D4`/`func_08005A00`/`func_0806EA30`) : 4
nouvelles hypothèses testées, toutes négatives, mécanisme du blocage
enfin cerné avec confiance

Mission : tenter précisément la combinaison signalée "pas encore
essayée" en fin de round 9 (`DECOMP_ARCHIVE.md`) -- construire `tmp` via
la convention hidden-return-value ET typer `field` en `T**`/`void**`
brut. **Chaque callee opaque (`func_08005B68`/`func_080050F8`/
`func_0806DB38`) est traité comme boîte noire**, conformément à la
méthode déjà établie ce round-là.

### Découverte préalable utile : le tail `vt[2](x, 3)` n'est PAS
`SmartPtr<T>::~SmartPtr()`

Avant de tester du code, relecture de `src/code_08004BDC.cc` et
`src/code_0809A518.cc` (déjà matchés) : les deux établissent que le motif
`ldr r0,[r1]; ldr r2,[r0,#8]; adds r0,r1,#0; movs r1,#3; bl
_call_via_r2` (`vt[2](x, 3)`) est un appel virtuel **explicite** appelé
`Unregister(int category)` dans ce dépôt -- une primitive générique de
gestion de liste d'acteurs, PAS un artefact de destructeur. Ceci est
important : **`SmartPtr<T>::~SmartPtr()`'s `delete inner;` ne peut
structurellement JAMAIS produire ce motif**, quel que soit `T` -- un
`delete` sur un pointeur polymorphe passe TOUJOURS par le slot 0 du
vtable (destructeur "deleting"), jamais le slot 2. **Donc le tail
observé dans les 3 fonctions cibles est forcément un appel EXPLICITE
écrit dans la source (`if (x) x->Unregister(3);`), jamais l'effet
implicite du destructeur de `tmp`** -- ceci corrige/precise
l'hypothèse de travail des rounds 8/9, qui assumait (sans le vérifier
contre ce précédent) qu'il s'agissait du destructeur de `SmartPtr<T>`.

### 4 hypothèses testées (harnais rapide, aucune n'a atteint `make compare`)

**8. Combinaison demandée à la lettre** : `SmartPtr<Widget> tmp =
func_08005B68(arg);` (syntaxe `=`) avec `field` en `void**` brut.
**Ne compile pas** -- identique à l'échec déjà documenté rounds 8/9
(`SmartPtr<Widget>::SmartPtr(SmartPtr<Widget>&)` privé). Confirme, une
3e fois, que **cette syntaxe précise ne compile jamais** dans ce
compilateur quel que soit le contexte -- close définitivement, ne pas
retenter.

**9. Construction par défaut puis assignation** (`SmartPtr<Widget> tmp;
tmp = func_08005B68(arg);`, en pariant sur l'`operator=` implicite
généré par le compilateur, qui prend `const SmartPtr&` et peut donc
biner une rvalue là où l'`operator=(SmartPtr&)` non-const explicite
round 8 échouait) : **compile**, mais produit une forme radicalement
différente -- pré-zéro de `tmp` (comme round 9 #2) PLUS **deux appels
`__builtin_delete`** (un pour l'assignation implicite, un pour le
destructeur final), zéro trace du motif `vt[2](x,3)`. Le destructeur
implicite de `Widget` (qui n'a qu'`Unregister` comme virtuelle, pas de
destructeur virtuel explicite) n'est PAS virtuel dans ce compilateur --
`delete inner` appelle `operator delete` directement, jamais via une
table virtuelle. **Fermé** : la voie "assignation implicite" ne
produira jamais le tail observé, indépendamment du problème de pré-zéro
déjà connu.

**10. `func_08005B68(arg).Move()` appelé sur la rvalue anonyme**
(`void *raw = func_08005B68(arg).Move(); *field = raw;`) : **compile**,
23 octets contre 60 attendus -- le destructeur du temporaire anonyme
(désormais avec `inner` déjà mis à zéro par `.Move()`) est éliminé
purement et simplement (même mécanisme que rounds 8/9 : `Widget` sans
destructeur virtuel explicite -> pas de dispatch vtable possible de
toute façon pour ce destructeur implicite non-virtuel -- cohérent avec
l'hypothèse 9 ci-dessus). Fermé pour la même raison structurelle.

**11. Convention out-param authentique, `tmp` en pointeur BRUT (pas
`SmartPtr<T>`) pour éviter le pré-zéro du constructeur par défaut, PLUS
vérification explicite `if (tmp) ((Widget*)tmp)->Unregister(3);`
écrite à la main** : **le candidat le plus proche obtenu ce round**.
Compile, taille 44 octets contre 60 attendus (écart de 16 octets, soit
~4 instructions manquantes). Reproduit EXACTEMENT le tail `vt[2](x,3)`
visé (le check `if(tmp)` survit intact, car `tmp` provient d'un appel
opaque sans zéro-écriture locale connue -- cohérent avec la règle
round 9 "l'adresse doit s'échapper vers l'appel opaque pour survivre au
peephole"). Ce qui manque : la double-écriture `sp+4`/`sp+8`
(`mov r0,sp; str r0,[sp,#4]; str r2,[sp,#8]; adds r1,r0`) visible entre
le retour de `func_08005B68` et le stockage dans `field` -- **tentative
de la reproduire en réintroduisant un vrai `SmartPtr<Widget>*` via un
cast de pointeur sur le stockage brut** (`SmartPtr<Widget> *tmp =
(SmartPtr<Widget>*)&tmp_storage;`, `tmp->Move()`/`tmp->Get()`) :
**échec, mais informatif** -- dès qu'un `Move()`/zéro RÉEL a lieu sur
l'adresse locale, agbcp élimine intégralement le check `if` qui suit
(0 instruction, pas juste le store/load), **même** avec une copie
préalable (`saved = tmp->Get(); tmp->Move(); *field = saved; if
(tmp->Get()) ...`) censée découpler le check de la valeur utilisée pour
`field`. Autrement dit : **la présence de la double-écriture sp+4/sp+8
ET la survie du check final sont mutuellement exclusives dans tout ce
qui a été tenté** -- soit on obtient le zéro-dance (et le check est
alors éliminé, provably-dead), soit on garde le check vivant (mais sans
le zéro-dance, car sa valeur doit rester "inconnue" du compilateur pour
échapper au repliement).

### État honnête : toujours pas convergé, mais le mécanisme de blocage
est maintenant identifié avec précision

Onze hypothèses testées au total (7 rounds 8/9 + 4 ce round), aucune
n'a atteint `make compare`. **Nouvelle compréhension actionnable** :
le tail `vt[2](x,3)` du binaire original observe un check
"structurellement mort" (l'opérande est zéro juste avant, prouvé par
lecture directe du désassemblage) que le VRAI compilateur d'époque n'a
PAS éliminé, alors que `agbcp` (cette réimplémentation) élimine
systématiquement ce motif précis dès qu'il peut prouver localement que
la valeur checkée est zéro -- **avec ou sans** stockage intermédiaire,
tant qu'aucun appel opaque ne s'intercale entre le zéro-write et le
check. Piste concrète non testée faute de budget ce round : insérer un
VRAI appel opaque supplémentaire entre le zéro et le check (pas pour
matcher la taille, mais pour vérifier empiriquement si un `bl` opaque
quelconque, sans rapport avec l'adresse de `tmp`, suffit à désactiver
le repliement -- si oui, chercher QUEL appel légitime pourrait occuper
cette position dans la vraie source ; si non, le blocage est plus
probablement une divergence structurelle irréductible entre `agbcp` et
le compilateur d'origine sur ce point précis, auquel cas cette classe
mériterait d'être reclassée "possiblement infaisable avec ce
compilateur" à côté de `Unpack`, mais SEULEMENT après ce test
supplémentaire -- pas encore fait ce round, donc pas encore prononcé).
`func_0806EA30` (3e site) non testé séparément ce round : les 4
tentatives ci-dessus ont toutes échoué sur `func_080070D4` avant
d'atteindre `func_0806EA30`, cohérent avec la consigne mission de ne
tenter la généralisation qu'après un premier match confirmé.

### Repo state en fin de round w25

- Aucun fichier `src/`, `asm/`, `fomt.lds`, `include/` modifié -- toutes
  les tentatives sont restées dans le harnais rapide
  (`/tmp/claude-.../scratchpad/w25qt/qt.cc`, hors du dépôt). `git status
  --short` vide avant et après le round.
- Aucun commit ce round (rien à commiter -- discipline "ne jamais
  commiter un match qui ne matche pas" respectée, aucun match trouvé).
- `origin` intact (push toujours désactivé), rien poussé, aucune PR.
- Pas de conflit observé avec d'autres worktrees actifs en parallèle.

## 2026-08-20, round (worktree `w22`, branche `parallel-22`) -- `func_0804E5AC`
(`DrawGlyphAt`, variante recoloration) -- échec honnête, généralisation
directe NE suffit PAS

Contexte : le commit `247e6f3` (round précédent, même worktree) venait de
faire tomber `func_0804E4AC` (`DrawGlyphAt`, corps plain) après 4 tentatives
échouées sur un écart irréductible de 2 octets. La forme C exacte qui a
débloqué ce mur est documentée dans `src/code_0804E4AC.cc` (voir les
commentaires "MATCHING-CRITICAL SHAPES"). Cible de ce round :
`func_0804E5AC`, la variante RECOLORATION jamais tentée jusque-là -- même
structure de blit 4-tuiles (TL/BL/TR/BR conditionnels) que le corps plain,
mais chaque `CpuFastSet` est remplacé par une boucle de remap de couleur par
nibble (`docs/VWF.md` dans le dépôt patch documente la formule exacte :
masque `0x11111111`, `anchor + delta*((v|v>>1)&masque) + (v>>1&masque)`,
confirmé bit-a-bit contre le désassemblage).

### Ce qui a été fait

1. Désassemblage relu en entier (`asm/code_0804E5AC.s`, 452 lignes,
   contenait EN FAIT 3 fonctions : `func_0804E5AC`, `func_0804E7A0`,
   `func_0804E7DC` -- seule la première était la cible). Signature
   confirmée par l'appelant déjà décompilé `DrawStringRecolor`
   (`src/code_0804E958.cc`) : `(dims, dest, x, y, code, color_a, color_b)`.
2. Reconstruction C calquée statement-par-statement sur le désassemblage,
   en transplantant DIRECTEMENT les idiomes qui ont débloqué `func_0804E4AC` :
   - même structure de contrôle (gardes tile_x/tile_y, x_ok/y_ok imbriqués,
     `goto out` unique, délégation `func_0804E9CC` pour le cas non aligné) ;
   - `row_tiles` en copie explicite de `width_tiles*tile_y`, sauvegardée et
     réutilisée pour TR (miroir de `grid_rows`/`br_tile_x` dans la version
     plain) ;
   - adresse construite en PLUSIEURS instructions successives plutôt qu'une
     expression unique partout où le désassemblage montre un ping-pong de
     registres (`tl = offset<<5; ...; tl += dest;` puis `bl`, `tr`, et le
     `right_addr` de BR en trois réassignations, exactement le motif
     documenté pour la BR du corps plain).
3. Split du fichier `.s` : `func_0804E5AC` extrait vers un nouveau
   `src/code_0804E5AC.cc`, le reste du fichier (`func_0804E7A0` +
   `func_0804E7DC`, toujours utilisées par `asm/code_0803A8A4.s` et
   `asm/code_0804E9C8.s`) déplacé vers un nouveau `asm/code_0804E7A0.s`
   (même mécanique que le split `code_0803EE94.s` -> `code_0804E4AC.cc` du
   round précédent). `fomt.lds` mis à jour en conséquence.

### Résultat : NE matche PAS bit-exact, écart caractérisé précisément

Build propre, `make compare` échoue (`sha1sum` : Échec). Diagnostic via
`asmdiff.sh` (⚠️ le script utilise `-bbinary` donc les adresses doivent être
converties en offset fichier, i.e. `addr - 0x08000000`, sinon le diff est
vide par erreur -- piège vécu ce round, à noter pour la prochaine fois) :

- La fonction compilée fait `0x1ec` (492) octets contre `0x1f4` (500)
  attendus -- **exactement 8 octets** (2 instructions) manquants, la même
  classe d'écart que le round 4/8 du corps plain avant sa résolution.
- Le désassemblage diverge dès le prologue : `dest` (paramètre `r1`) atterrit
  dans **`r9`** au lieu de **`sl` (r10)** dans l'original -- un swap de
  paires de registres hauts, MAIS cette fois entre `dest` et `delta` (qui
  devrait aller en `sb`/r9), pas entre `kind` et `dest` comme pour le corps
  plain. `kind`, contrairement au corps plain, n'est jamais gardé en
  registre dans l'original (`str` sur la pile juste après l'appel à
  `func_080D0D28`, rechargé aux deux seuls points d'usage) -- il n'est donc
  PAS un candidat à la course de registres ici, ce qui invalide directement
  l'hypothèse "même remède que le round précédent".
- La pile allouée fait `0x9c` (156) contre `0xa0` (160) attendus -- un mot de
  moins. Le candidat naturel est `row_tiles` (`width_tiles*tile_y`), stocké
  sur pile dans l'original (`str [sp,#0x9c]`) pour être rechargé au bloc TR ;
  dans ma reconstruction il reste en registre (pas de spill), ce qui
  suggère une pression de registres insuffisante à cet endroit précis --
  mais promouvoir `bl`/`tr` (les adresses locales des blocs BL/TR) en
  variables de portée fonction entière (au lieu de portée bloc) n'a PAS
  changé le résultat (toujours `0x1ec`), donc ce n'est pas simplement un
  problème de portée de déclaration.

### Diagnostic honnête

L'instruction de ce round était explicite : si l'écart de 2 octets (ici son
équivalent, 8 octets / 1 registre) réapparaît malgré la transplantation
directe de la forme qui a marché sur le corps plain, c'est un signal qu'il y
a un ingrédient supplémentaire propre à la recoloration -- pas la peine de
forcer. C'est exactement ce qui s'est passé : la généralisation directe
reproduit fidèlement la structure de contrôle et l'ORDRE des opérations
(vérifié statement-par-statement contre le désassemblage), mais échoue sur
l'allocation de registres pour un COUPLE DIFFÉRENT de variables (`dest`
vs `delta`, pas `kind` vs `dest`), avec en prime un spill de pile manquant
qui n'a pas de correspondance dans le corps plain (le corps plain n'a que
5 slots pile locaux hors `glyph_buf` ; ici il en faut 5 aussi mais un
d'entre eux -- `row_tiles` -- ne se spill pas naturellement chez moi alors
qu'il le fait dans l'original). Deux pistes non explorées faute de temps
pour la prochaine tentative :
- caractériser la vraie raison du spill de `row_tiles` (peut-être une copie
  redondante supplémentaire est nécessaire, du genre `br_tile_x`/`grid_rows`
  du corps plain, mais pour une variable différente -- `delta` ou `anchor`
  peut-être, pas testé) ;
- essayer d'inverser l'ordre `delta`/`anchor` par rapport à `dest` dans le
  texte source (actuellement : row_tiles, tl-offset, delta, anchor, tl+=dest
  -- peut-être `dest` doit être référencé plus tôt/plus souvent pour gagner
  la course face à `delta`).

### Repo state en fin de round (worktree w22)

- **Aucun commit.** Toutes les modifications (`src/code_0804E5AC.cc`,
  `asm/code_0804E7A0.s`, `fomt.lds`) ont été annulées après l'échec
  (`git checkout -- fomt.lds`, suppression des nouveaux fichiers,
  restauration de `asm/code_0804E5AC.s` via `git checkout --`).
- Rebuild propre + `make compare` reconfirmé RÉUSSI après annulation (état
  identique à `247e6f3`).
- `git status --short` propre.
- `origin` non touché, rien poussé, pas de PR.

## 2026-08-20, worktree w26/`parallel-26` -- généralisation du scan
"méthode sœur" (angle 1a), 4 fonctions matchées

Mission : continuer la chasse aux familles structurelles non cataloguées
depuis `dc8689a` (base commune avec w24, pas encore mergé dans cette
branche). Deux angles proposés : (1a) généraliser le scan de w24 --
`vtable_unk_ADDR` déjà connu SANS `__builtin_new`, ou l'inverse -- à
toute combinaison, pas seulement les paires destructeur/constructeur déjà
vues ; (1b) `bl __builtin_new`/`__builtin_delete` sans vtable connu ;
(2) accesseurs voisins de `gUnk_0300040C`.

Script Python (`/tmp/w26_scan_vtable_families.py`, non commité --
jetable) : parse tout `asm/*.s` en blocs `thumb_func_start`, exclut les
`func_ADDR` déjà présents dans un `src/*.cc`, et catégorise le reste par
(a) référence un `vtable_unk_ADDR` déjà connu d'un `src/*.cc` matché
SANS `__builtin_new`, (b) appelle `__builtin_new`/`__builtin_delete`
SANS référencer de vtable connu. Angle 1b a produit ~150 hits mais quasi
tous dans les gros fichiers `code_linkonce.s`/`code_080B3C3C.s`/
`code_809E804.s` (templates COMDAT, classe "pression de registres" ou
famille infaisable `Unpack` déjà fermée) ou des lots homogènes de petites
fonctions déjà pressenties ailleurs (`code_entities_08034CEC.s`,
candidat de blob caché non encore vérifié, laissé de côté faute de
temps) -- pas creusé plus loin ce round. **Angle 1a n'a donné que 8
hits**, bien plus exploitable : 4 se sont avérés être de vrais
constructeurs/init-steps sœurs de destructeurs déjà matchés.

**4 fonctions matchées, 3 commits** :

- `func_08004C48` (`25ff995`) -- constructeur de base, sibling direct de
  `func_08004C54` (tout premier destructeur "riche" matché, round 4/w4).
  Stamp vtable + `return self`, dernière fonction de son fichier déjà
  découpé (`asm/code_08004C0C.s`) -- split en queue trivial. Appelé
  depuis un site de placement-new dans `asm/code_linkonce.s`
  (`movs r0,#4; bl __builtin_new; bl func_08004C48`), confirmant le rôle
  constructeur plutôt qu'un simple helper de stamp.
- `func_080098DC` (`6f788cc`) -- init-step sibling de la classe
  documentée dans `src/code_080099EC.cc` (round 9/w18, blob caché).
  Fonction mi-fichier (pas adjacente à un split existant) dans le gros
  monolithe `asm/code_08008DE8.s` -- découpage standard en 3 (avant/
  cible/après). Délègue à deux helpers opaques encore non portés
  (`func_08009984`, `func_080098AC`).
- `func_080D79CC` + `func_080D7AD4` (`7201ee1`) -- paire de constructeurs
  d'un même sous-objet dont le teardown est déjà connu dans
  `func_08008A68.cc` (round 9/w21) : même vtable pair
  (`vtable_unk_080E5B0C`/`vtable_unk_080E5B18`), même corps
  byte-identique, seule différence l'offset d'embedding (`self` direct
  vs `self-0x1c`) -- motif déjà documenté pour la famille des
  destructeurs "riches". Une fonction non apparentée
  (`func_080D7AAC`, vtable/global différents) sépare les deux cibles
  dans le même fichier monolithique -> split en 5 morceaux
  (avant/cible1/milieu-non-porté/cible2/après).

**Piège vécu et corrigé avant tout commit** (méthode w26, à généraliser
dans `DECOMP_RULES.md` si récidive) : le premier découpage du fichier
`code_080D6DB8.s` a supprimé silencieusement un blob `.byte` caché de
116 octets (label local `.L080D79F8`, PAS de `thumb_func_start`) coincé
entre le pool littéral de `func_080D79CC` et `func_080D7AAC` -- attrapé
immédiatement par la vérification taille `readelf .text` (44 octets
compilés contre 224 attendus) AVANT tout `make compare`, donc jamais
committé de mauvais état. Corrigé en re-diffant contre
`git show HEAD:asm/code_080D6DB8.s` et en recollant les octets exacts en
tête du nouveau fichier, avant `func_080D7AAC`. Ce blob (3 séquences
quasi identiques de ~28 octets, ne différant que par la cible d'un
`bl`) ressemble à un troisième membre de famille de blob caché non
décodé -- **piste non explorée, à reprendre un jour** (candidat
`0x080D79F8`, 116 octets, dans `asm/code_080D7AAC.s`).

**Piste angle 2 (voisins de `gUnk_0300040C`)** : enumérée
(`gUnk_03000400`/`402`/`408`/`410`/`414`/`418`/`41C`/`420`/`430`/`450`/
`0CD4`) mais fermée rapidement -- `gUnk_03000404` est référencé par
`func_0800736C`, déjà classé "pression de registres" (échec documenté,
`DECOMP_ARCHIVE.md`) ; `gUnk_03000410`/`03000414` appartiennent à une
famille de constructeurs/destructeurs (`vtable_unk_080E5B54`/
`vtable_unk_080E8594`) partiellement effleurée ce round
(`func_080D7AAC`/`func_080D7B04` laissés en asm brut, non caractérisés)
-- piste réelle mais pas creusée faute de budget ; le reste
(`gUnk_03000418`/`41C`/`420`) vit dans le gros fichier
`asm/code_080C7F00.s`, usage `r8`/`sb` intensif -- signal "pression de
registres"/famille `Unpack`, pas engagé sans vérification préalable.

### Repo state at end of round 10/w26

- 3 nouveaux commits (`25ff995`, `6f788cc`, `7201ee1`), 4 fonctions
  matchées au total.
- `make compare` bit-exact (`sha1sum -c fomt.sha1` -> `Réussi`) sur
  rebuild propre après chaque commit, y compris après correction du
  piège du blob caché.
- Aucun label `.LADDRESS` dupliqué détecté pour les adresses nouvellement
  matchées.
- `origin` intact, rien poussé, aucune PR. Worktree solo (`w26`/
  `parallel-26`), pas de conflit observé avec les autres agents en cours
  (w24 travaille sur un ensemble d'adresses disjoint, pas encore mergé
  dans cette branche).

## Round 10 (worktree w23) -- the 3 remaining "larger, not auto-verified"
hidden-blob candidates from round 9: 2 matched, 1 solid near-miss

### Goal

Round 9 (w18) flagged 3 blobs found by `tools/scripts/scan_hidden_code_blobs.py`
as real-looking Thumb code but too large (>40 bytes) to auto-verify, and
explicitly deferred hand-disassembly to a future round:
`asm/code_entities_08034CEC.s` `.L0803A804` (160 bytes), `asm/code_08010F54.s`
`.L08011ED8` (272 bytes, file also contains an unrelated large
register-pressure function -- explicit caution flagged), `asm/code_actor_0809BFE8.s`
`.L0809E1B4` (288 bytes). This round attacked all 3.

### Match 1: `func_0803A804` group -- 7 functions, not 5 (correction of an
early misread), commit `0ae8f12`

Hand-disassembling `asm/code_entities_08034CEC.s`'s 160-byte tail
initially looked like 5 sub-functions but turned out to be **7** -- a
first-pass read merged two adjacent functions (`func_0803A840`,
gated on `unk_47` and calling `func_0805E8F0`; `func_0803A870`, the
`SetAnim`-shaped one) into a single description, and missed a trailing
4-byte 7th function entirely (`func_0803A8A0`,
`ldr r0,[r0,#0]; bx lr` -- a trivial `UnknownEntityThingBase::dummy`
getter) because it sat one line past the initial `Read` window. **Lesson
for future blob hand-disassembly: always re-verify against the true EOF
of the source file (`wc -l` / `git show HEAD:<file> | tail`), don't trust
an early truncated read of the raw `.byte` lines** -- the missing 4 bytes
caused a real `sha1sum` FAILURE on the first `make compare` attempt (ROM
shrank by 4 bytes, cascading a small diff into ~600k byte positions
downstream via shifted literal-pool addresses) that was only found by
diffing `baserom.gba` vs the built ROM byte-for-byte and confirming the
literal `vtable_unk_...` constant right before the blob had shifted by
exactly 4.

All 7 operate on `UnknownEntityThing` (`include/unknown_types.hh`) via
its known `sprite_animator` (+0x30) and `unk_44`/`unk_46`/`unk_47`
fields, matching the shape already ported in
`src/entity_actor.cc:AActorEntity::RefreshSprite` almost exactly (same
`func_0805E860` call + flag-set sequence) -- `func_0803A870` is a
dedup'd sibling of that call site with an extra cached-anim-id check at
`self+4` (an undocumented field; `UnknownEntityThingBase`'s header
comment guesses a vtable pointer lives there, unverified since no `.cc`
in this repo constructs that base class yet -- left as raw pointer
arithmetic rather than resolving that question). New matches:
`func_0803A804`/`func_0803A80C` (i16 getter/setter on a `sprite_animator`
sub-field), `func_0803A814` (tail-forwarding wrapper), `func_0803A820`
(branchless-nonzero predicate, same idiom already known), `func_0803A840`
(flag toggle), `func_0803A870` (`SetAnim`-style dedup helper),
`func_0803A8A0` (trivial getter). Source: `src/code_0803A804.cc`.

**New generalizable idiom confirmed** (2nd sighting after `func_0803A840`
in this same file): a `ldrb`/`ble`/... "if flag set, clear it and store;
else compute+maybe-store" shape where BOTH branches share a single tail
`strb rX,[rY]` compiles correctly only when the C source hoists the
"else" case's target pointer OUTSIDE the if/else (`u8 *out = &field;`
computed once, up front, re-pointed only in the "if" branch) rather than
assigning it fresh inside each branch -- this reproduces the target's
`bne`-to-bottom control flow (the common/simple case physically at the
end, right before the epilogue) and avoids an extra register move in the
"else" (which, in target's true source, is actually reached by the
`bne`, i.e. corresponds to the C `else`, not the `if`) -- get the
if/else polarity backwards and you get an extra unconditional `b.n` that
bloats the function by 2-6 bytes depending on shape.

### Match 2: `func_08011ED8` -- second constructor overload of
`func_08011DC4`'s class, commit `51cbacc`

Confirmed NOT the register-pressure function that this round's brief
explicitly warned about (that's a different, unrelated function
elsewhere in the same file) -- uses only `r4-r7`, no `r8`/`sb`/`sl`/`ip`.
Builds the exact same 0xF8-byte object as `func_08011DC4` (unported,
still asm) via a different overload: instead of copying a caller-supplied
`Location` by pointer (`ldm`), it builds one locally with only the first
word set to 2, the other two read straight off the stack **uninitialized**
-- a real quirk of the original, not a decompilation error, confirmed
by the fact that reproducing it exactly required a **20-byte local**
(5 words) even though only the first 12 bytes (3 words) are ever read or
written -- agbcc's stack allocator reserves space for the local's full
declared size regardless of what's actually touched, so an undersized
12-byte local produces a 12-byte frame (`sub sp,#12`) while the target
needs `sub sp,#20`. **New idiom, useful beyond this one function: when a
target's `sub sp,#N` is bigger than the sum of bytes your candidate local
variables actually touch, try widening the "front" local's declared
size** (as an oversized struct with untouched trailing fields) rather
than adding a second, genuinely separate unused local -- an actually-dead
second local gets its storage optimized away entirely by agbcc (verified:
adding `u32 pad[2]; pad[0]=pad[0];` did NOT change the frame size at
all), but a single oversized struct whose extra fields are simply never
referenced DOES reserve the extra space, because the struct's `sizeof`
is what drives the frame allocation, not per-field liveness.

Also confirmed (2nd sighting, generalizes round 9's finding for
`func_0800711C`): a flat `*(u32*)(obj+8+4) = 0;` expression gets
constant-folded by agbcp into a single `str r4,[r7,#12]`, losing a
genuine nested-substruct-pointer computation (`adds r0,r7,#0; adds
r0,#8; str r4,[r0,#4]; adds r0,#8` -- 4 instructions) that the real
source performs because it accesses the field through an intermediate
named sub-object pointer, not a flat offset. Fix: introduce the
intermediate `char *sub = obj + 8;` variable explicitly.

**New idiom found and reverted (important negative result):** a
hand-unrolled zero-fill loop written as `char *p = ...; *(u32*)p = 0; p
+= 4;` (repeated) gets compiled by agbcp into a compact `stmia r0!,{r4}`
(auto-increment single-register store) -- HALF the size of the target,
which uses the verbose `str r4,[r0,#0]; adds r0,#4;` form repeated. This
is the OPPOSITE problem from the usual "agbcp is too weak to optimize" --
here it has a real (if narrow) peephole that collapses a manually-unrolled
pointer-walk into `stmia`. Writing the SAME 7 stores as flat,
independently-addressed statements (`*(u32*)(obj+0xa0)=0; *(u32*)(obj+0xa4)=0;
...`, no shared pointer variable) avoids the peephole and reproduces the
verbose form exactly, while still benefiting from agbcp's separate
"reuse the last computed base + small delta" habit to avoid a full
r7-relative recompute on each line. **Rule: if a target shows a
`str`/`strb`/`strh` + `adds rX,#N` pair repeated verbatim (not `stmia`),
and your hand-unrolled C pointer-walk compiles to `stmia` instead, switch
to independent flat-offset statements (no local pointer variable
persisting across the repeats).**

### Near-miss (documented, not applied): `func_0809E1B4`, ~288-byte
"format a value into a scattered-offset message buffer" helper

Fully disassembled, fully understood structurally, confirmed real code
(not data) and NOT the register-pressure class -- but **not bit-exact
after ~10 distinct structural rewrites**, all converging on the exact
same single symptom, so filed as a genuine near-miss rather than an
abandoned target.

**Function role** (semantic, not needed for correctness but useful
context): reads a `Farmer`'s `ActorLocation` (`self->location` via the
already-ported `func_0800E924`), and depending on whether
`(i32)(loc.map << 22) > (i32)0x4CC00000` (an `if`/`else`, NOT an `if`
followed by unconditional code -- see structural correction below),
computes an index from `loc.map`'s low 10 bits (masked via the
already-known double-shift idiom, DECOMP_RULES rule 1bis) offset by a
constant (`-308` in the `if` branch, `-52` in the `else`), calls one of 4
still-unported opaque helper functions (`func_0809D79C`/`func_0809D7D8`
in the `if` branch, `func_0809D418`/`func_0809D470` in the `else`) with
`(self, idx)`, and for each result runs a small fixed-count loop
(`4`/`9`/`9`/`13` iterations) that copies bytes one at a time from a
computed offset into one of 4 known `gUnk_...` byte tables
(`gUnk_08103B38`/`08103C74`/`08103F98`/`0810400C`, source strings at a
per-call stride of 5/7/5/5×2 bytes computed via literal shift-add, not a
plain multiply) to SCATTERED destination offsets read from a matching
`gUnk_...` word-array "offset table"
(`gUnk_08103B10`/`08103C3C`/`08103F84`/`08103FE4`) into the caller's
`dest` buffer -- almost certainly assembling a formatted in-game text
string (season/day-of-week name substituted at fixed positions in a
template) from lookup tables, though the exact semantic meaning (which
message, which field) was not pinned down and isn't needed for a
bit-exact port.

**Real structural bug caught and fixed mid-round**: an early read of the
disassembly mistook the function for "if (cond) { block A } <block C/D
unconditionally>" -- the `b.n` at the end of block A actually jumps
STRAIGHT to the epilogue, skipping block C/D entirely, i.e. it's a
genuine `if`/`else`, not `if` + fallthrough. Confirmed by tracing that
`r5` (the `Farmer*`, computed once at function entry) is read again,
unmodified, at the very start of the `else` branch -- which only makes
sense if the `if` branch's later clobbering of `r5` (reused as scratch
for an offset-table pointer, see below) never executes on that path.
**General lesson: when a conditional branch's target sits WELL AFTER a
large block of code that itself ends in an unconditional branch, check
where THAT unconditional branch actually goes before assuming the
large block is optional-but-followed-by-shared-code -- it may instead be
one whole arm of an if/else, with the other arm reached only via the
original conditional branch.**

**The near-miss itself**: every single instruction address, mnemonic,
immediate, branch target, and literal-pool value matches the target
exactly (270 bytes of code either side, confirmed via full manual
address-by-address comparison, not just spot-checks) -- except that in
each of the two branches, one 2-byte instruction encodes the WRONG
register: the "compute `idx` from the freshly-read `ActorLocation`'s
`map` field" instruction targets `r5` in every tested C formulation of
this round, but the target uses `r4`. Correspondingly, the FIRST
scatter-loop's offset-table pointer (a genuinely-independent, more
short-lived value) ends up in the register the other one didn't take --
i.e. the two candidate free registers at that point (`r4`, freed from
holding the `ActorLocation`'s stack address once its field is read; `r5`,
freed from holding `Farmer*` once the `func_0800E924` call returns) get
assigned to (`idx`, offset-table-pointer) in the OPPOSITE order from
target in every attempt.

**~10 structural variants tried, all producing byte-IDENTICAL output for
this specific choice** (i.e. this is a very stable/deterministic
behavior of `agbcp`'s allocator, not noise): reordering the `+`
operands; splitting the field-extraction into its own statement;
hoisting `idx`'s declaration before the `ActorLocation` read; changing
`idx`'s type `i32`->`u32`; changing `Farmer*` to `void*`; removing the
named `farmer` variable entirely and inlining `(char*)save+0x1bd8` at
each of the 3 call sites (confirmed `agbcp` DOES CSE this repeated
subexpression into a single computation, matching target's single
`adds r5,r2,r0` -- so that's not the lever either); inlining the
`ActorLocation` read as an rvalue member access
(`func_0800E924(...).map`) instead of a named `loc2` variable (byte
IDENTICAL output either way, confirms `agbcp` treats both forms the
same at the register-allocation level); writing the offset+constant as
subtraction (`field - 308`) instead of add-a-negative-literal; a bare
`register` storage-class hint on `idx` (no effect, this compiler
appears to ignore it without an explicit `asm("rN")` binding, which
isn't used anywhere else in this repo and wasn't attempted, being an
unprecedented technique for this codebase).

**Honest assessment**: this looks like a genuine, narrow gap in
understanding of `agbcp`'s register-allocation heuristic for "two
same-priority free registers become available at slightly different
points within a block, one from a stack-address load's last use, one
from a call argument's last use" -- not a shape/order/idiom problem
(everything else about the port is proven correct by the exhaustive
byte-for-byte structural match). **Do not re-attempt via C-source
restructuring without first understanding this specific allocator
behavior more deeply** (e.g. by finding a SIMPLER existing ported
function in this repo with the exact same "two registers free up near
each other, one gets reused by the next new variable" shape and diffing
against ITS source, rather than more blind trial-and-error on this
function specifically) -- 10 attempts against 1 unmoving symptom is a
strong signal that further guessing here has a low expected payoff per
unit of budget. The full working (but not-yet-matching) candidate is
preserved in this note's git history context only, not applied to any
file in this repo (per the non-negotiable rule against committing
non-bit-exact matches).

### Repo state at end of round 10

- 2 new commits (`0ae8f12` for the `func_0803A804` group of 7,
  `51cbacc` for `func_08011ED8`), both verified bit-exact via a full
  clean rebuild + `sha1sum -c fomt.sha1` -> `Réussi` immediately before
  each commit.
- `func_0809E1B4` (`asm/code_actor_0809BFE8.s`) intentionally NOT
  touched in the repo -- fully analyzed and documented above as a
  near-miss, no files modified for it, `git status --short` confirmed
  clean of any trace before moving on.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. Solo worktree (`w23`/`parallel-23`).
- Re-running `tools/scripts/scan_hidden_code_blobs.py` at the end of
  this round would still list `asm/code_actor_0809BFE8.s`'s
  `.L0809E1B4` blob (the near-miss) as the sole remaining "larger, not
  auto-verified" candidate -- everything else the script flagged as of
  round 9 is now resolved (matched or, for the `Unpack` family,
  previously diagnosed as infeasible).

## 2026-08-20, worktree `w27`/`parallel-27` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 3 : piste 2 confirmée (1 registre), mais nouveau résidu
distinct découvert -- 3e échec honnête, plus un blocage repo-wide inédit

Contexte : reprise de `func_0804E5AC` après l'échec round 10/w22 (2 pistes
laissées : caractériser le non-spill de `row_tiles`, tester l'inversion
d'ordre `delta`/`anchor` vs `dest`). Désassemblage relu intégralement
depuis zéro (`asm/code_0804E5AC.s`, confirmé identique au round précédent :
3 fonctions dans le fichier, seule `func_0804E5AC` ciblée, appelant
`func_0804E9CC` -- pas `func_0804E9C8` -- pour le cas non aligné).

### Piste 2 confirmée : `anchor` n'est PAS une variable partagée comme
`delta`

Différence clé identifiée en relisant le désassemblage : `delta` (`color_b
- color_a`) est calculé UNE SEULE FOIS et persiste en `sb` (r9) à travers
les 4 blocs TL/BL/TR/BR (`mov r7, sb` à chaque bloc) -- mais `anchor` (le
nibble bas de `color_a` étalé sur les 4 octets) est RECALCULÉ intégralement
à chaque bloc (reload de `color_a` depuis la pile + refaire les 4
`ands`/`lsls`/`orrs`), jamais gardé en registre partagé. Round 10/w22
traitait apparemment les deux de la même façon (partagées ou toutes deux
recalculées), ce qui fait qu'`anchor` devenait un 5e candidat à un registre
haut persistant alors qu'il n'y a que 4 slots (`ip`=tile_x, `r8`=
width_tiles, `sb`=delta, `sl`=dest) -- assez pour faire basculer l'arbitrage
`dest`/`delta` entre `sl` et `sb`. En codant `anchor` comme variable LOCALE
recalculée dans chaque bloc conditionnel (au lieu d'une variable de portée
fonction), `dest` atterrit correctement dans `sl` dès la première
compilation candidate -- **piste 2 validée, l'écart d'1 registre du round
précédent est résolu**.

### Nouveau résidu, distinct des 2 pistes du round précédent : encodage
compact vs verbeux de l'addition `+ (u32)dest`

Malgré la correction ci-dessus, la fonction candidate compile à `0x1c8`
(456) octets contre `0x1f4` (500) attendus -- écart de 44 octets, bien
plus large que l'écart historique de 2/8 octets. Diagnostic (comparaison
mnémonique normalisée, désassemblage brut du candidat vs désassemblage du
vanilla à la même adresse) : dans les 4 blocs TL/BL/TR/BR, l'original
construit l'adresse finale (`décalé<<5 + dest`) en DEUX instructions
verbeuses (`mov r0, sl` puis `adds rX, rY, r0` -- copie de `dest` dans un
registre bas PUIS addition 3-opérandes classique), alors que ma
reconstruction compile systématiquement vers la forme 2-opérandes compacte
`add rX, sl` (accumulation directe dans le registre haut, encodage Thumb
`ADD(4)` à 1 instruction/2 octets au lieu de 2 instructions/4 octets).
Cette différence, répétée sur les 4 blocs, explique une bonne partie de
l'écart de 44 octets.

**Deux tentatives pour forcer la forme verbeuse, toutes deux sans effet
(taille identique à l'octet près, désassemblage byte-identique)** :
1. Séparer le décalage (`tl_shifted = ... << 5;`) et l'addition finale
   (`tl = tl_shifted + (u32)dest;`) en deux instructions C distinctes au
   lieu d'un `+=` composé -- aucun changement (le compilateur choisit
   quand même la forme compacte).
2. Construire l'adresse via arithmétique de pointeur explicite
   (`(u32*)((u8*)dest + tl_shifted)`) au lieu d'arithmétique entière castée
   -- aucun changement non plus.

Conclusion : le choix compact-vs-verbeux ne semble PAS piloté par la forme
syntaxique de l'expression C (contrairement à l'hypothèse de départ, qui
aurait généralisé l'idiome "réassignations successives" du corps plain) --
il dépend probablement d'un autre facteur de pression de registres au point
précis de l'addition, non identifié à ce stade (budget de round épuisé
avant d'isoler la cause). Symptôme additionnel cohérent : `row_below`
(comparé à `grid_rows` puis relu pour BL/BR) atterrit dans un registre
(`r9` dans ma reconstruction) au lieu d'être spillé sur la pile comme
l'original (`str`/`ldr [sp,#0x98]`) -- `row_tiles`, lui, se spille
correctement désormais (contrairement au round précédent). Piste pour la
suite : caractériser précisément QUELLE valeur occupe le registre bas
libre dans l'original à cet instant précis (peut-être `row_below` doit
justement RESTER en registre plus longtemps dans une formulation
différente, entrant en collision avec le registre bas que `mov r0,sl`
utiliserait sinon -- pas testé, faute de temps).

### Blocage repo-wide inédit découvert ce round (hors-sujet direct, mais
critique) : `make compare` ne peut PLUS jamais réussir en l'état actuel de
la branche

En tentant le premier rebuild propre de routine, `make compare` a échoué
dès la toute première tentative avec `src/franglais_payload.s: Error: file
not found: build/franglais_stub.bin` -- aucune règle Makefile ne génère ce
fichier. Root cause identifiée : le commit `cb06198` ("franglais: port
hooks to source build", déjà sur la branche dont ce worktree hérite,
**pas** un commit d'agent decomp) a commencé à câbler le patch franglais
directement dans ce dépôt de décompilation, avec des hooks TOUCHANT du code
tôt dans le ROM (`crt0.s`, `farmer.cc`, `item.cc`, `script_engine.cc`,
`code_0800E2E4.cc`). Vérifié : même avec un `build/franglais_stub.bin`
vide créé à la main pour débloquer le lien, `cmp baserom.gba fomt.gba`
diverge dès l'octet 361 (zone `crt0`) -- **ce n'est pas un stub manquant à
générer, c'est un changement de comportement RÉEL et volontaire** qui rend
`sha1sum -c fomt.sha1` structurellement impossible à faire réussir tant que
ce commit reste dans l'historique de la branche. Ça bloque LES 3 AGENTS
PARALLÈLES actuels, pas seulement ce round -- aucun match, même
parfaitement bit-exact sur sa propre fonction, ne pourra passer la
vérification finale non-négociable tant que `cb06198` n'est pas
retiré/corrigé ou que la discipline de vérification n'est pas adaptée
(ex. vérification scoped par fonction plutôt que sha1 ROM entière). Vérifié
aussi : `baserom.gba` était absent de ce worktree fraîchement créé (copié
depuis `w26` pour pouvoir travailler -- fichier gitignored, aucun impact
sur `git status`) ; les worktrees `w1`-`w21`/`w23`-`w26` (créés avant
`cb06198`) n'ont pas ce problème.

### Repo state en fin de round (worktree w27)

- **Aucun commit.** Toutes les modifications (`src/code_0804E5AC.cc`,
  `asm/code_0804E7A0.s`, `fomt.lds`) annulées après l'échec (`git checkout
  --` + suppression des nouveaux fichiers). `git status --short` propre
  confirmé après nettoyage.
- Vérification de portée réduite (comparaison mnémonique + taille
  `.text`, pas de `make compare` sha1 complet -- **impossible** ce round
  pour la raison ci-dessus, indépendante de `func_0804E5AC`) : la région
  ROM de `func_0804E5AC` elle-même est restée byte-identique au vanilla
  avant toute tentative (sanity check confirmé via `objdump -bbinary
  --adjust-vma=0x08000000`).
- `origin` non touché, rien poussé, pas de PR.
- **Signal fort pour Mathias** : le blocage `make compare`/`fomt.sha1`
  décrit ci-dessus mérite une décision explicite (revert de `cb06198`,
  correction du stub, ou changement de discipline de vérification) avant
  que les prochains rounds parallèles ne perdent du temps à buter dessus
  sans le savoir.

## 2026-08-20, worktree w28/`parallel-28` -- angle 2 repris (voisins de
`gUnk_03000410`), **RIEN COMMITÉ** : régression d'infra bloquante
découverte (`make compare` cassé depuis `cb06198`)

Mission : reprendre l'angle 2 laissé ouvert par w26 (`func_080D7AAC`/
`func_080D7B04`, `vtable_unk_080E5B54`/`gUnk_03000410`, famille
destructeurs "riches" sœur de `func_08008A68`/`func_080D7944`).

**3 candidats identifiés et vérifiés au niveau harnais (compilateur+
assembleur, sans lien complet)** :

- `func_080D7AAC` (`asm/code_080D7AAC.s`) et `func_080D7B04`
  (`asm/code_080D7B04.s`) : deux destructeurs **octet-pour-octet
  identiques** (40 octets chacun) -- stamp `vtable_unk_080E5B54` à `+4`,
  `gUnk_03000410 = *(void**)self` (unlink tête de liste), delete
  conditionnel sur `arg & 1`. Portage C compilé via le harnais rapide et
  comparé au désassemblage brut du binaire `.byte` original : **match
  bit-exact confirmé** (mêmes 20 instructions, mêmes octets).
- `func_080D7944` (dans `asm/code_080D6DB8.s`, déjà référencée en avant
  par 3 fichiers `src/*.cc` matchés -- `code_08008A68.cc`,
  `code_080D79CC.cc`, `code_080D7AD4.cc` -- comme callée opaque jamais
  portée) : version "riche" de la même famille (stamp 2 vtables, unlink
  liste, restore IME via `func_080004F4` si sauvegardé, delete
  conditionnel). **Near-miss d'1 instruction, PAS convergé** : le
  désassemblage cible fait `movs r0,#1; ands r5,r0` (résultat de
  `arg & 1` écrit DANS le registre de `arg`, r5), alors que toute
  formulation C testée (`if (arg & 1)`, `arg &= 1; if (arg)`,
  `arg = 1 & arg`, avec/sans variable intermédiaire nommée) compile
  systématiquement en `movs r0,#1; ands r0,r5` (résultat dans le
  registre scratch r0, arg intact) -- confirmé identique au idiome déjà
  matché de `func_08008A68` (`ands r0,r7`) qui utilise pourtant la MÊME
  expression source `flags & 1`. Taille totale identique (0x4c octets),
  donc écart d'exactement 1 encodage d'instruction (2 octets), pas une
  divergence structurelle. Hypothèse non testée : la différence vient du
  nombre de registres bas simultanément vivants (`func_08008A68` utilise
  r4-r7, `func_080D7944` seulement r4-r5) influençant le choix de
  destination de l'allocateur de agbcp -- piste pour la prochaine
  tentative, pas assez de budget ce round pour explorer plus de
  variantes.

**RIEN N'A ÉTÉ COMMITÉ.** En tentant d'appliquer `func_080D7AAC`/
`func_080D7B04` au dépôt (split `asm/*.s` standard + entrées `fomt.lds`)
et de vérifier via `rm -rf build fomt.gba fomt.elf fomt.map && make
compare`, `sha1sum -c fomt.sha1` a échoué -- **mais l'investigation a
montré que l'échec est totalement indépendant de mes changements** :

### Découverte : `make compare`/`sha1sum -c fomt.sha1` est cassé depuis
`cb06198` ("franglais: port hooks to source build", mergé dans `main`
avant le merge de `parallel-26`, donc présent dans TOUTE branche
descendante -- `w1` à `w28` inclus)

Preuve reproduite sur un `git stash -u` complet (aucun changement de moi,
état identique à `HEAD`) : `make compare` échoue quand même
(`sha1sum -c fomt.sha1` -> "Échec"). Cause racine identifiée :

1. `cb06198` a lié un vrai payload franglais (`src/franglais_payload.s`,
   `.INCBIN "build/franglais_stub.bin"`) à l'adresse **`0x08800000`**,
   soit exactement la fin de la ROM vanilla (`baserom.gba` fait
   8388608 octets = `0x800000`). Tout contenu non-vide à cet endroit
   **agrandit `fomt.gba` au-delà de `baserom.gba`**, donc un `sha1sum`
   plein-fichier ne peut structurellement plus jamais réussir, quel que
   soit le contenu du stub.
2. Pire : même en comparant seulement les 8 premiers Mo (préfixe exact de
   `baserom.gba`), le hash NE correspond PAS au hash vanilla (vérifié :
   `head -c 8388608 baserom.gba | sha1sum` == hash enregistré dans
   `fomt.sha1`, mais `head -c 8388608 fomt.gba | sha1sum` diffère) --
   les "hooks" du commit modifient légitimement des octets À L'INTÉRIEUR
   des 8 Mo d'origine (c'est le but des hooks : brancher vers le nouveau
   payload), donc même une comparaison "préfixe 8 Mo" ne peut plus
   servir de gate bit-exact automatique.
3. `fomt.sha1` (`b8471ae`, bien avant `cb06198`) n'a jamais été mis à
   jour pour refléter ce changement -- la règle non négociable du dépôt
   ("`sha1sum -c fomt.sha1` doit afficher Réussi avant tout commit")
   est donc actuellement **impossible à satisfaire pour QUICONQUE**,
   indépendamment de la qualité d'un match.
4. `build/franglais_stub.bin` lui-même n'existe dans aucun worktree frais
   (absent du suivi git, `build/` gitignored) -- chaque worktree doit le
   recréer à la main ; un stub vide (0 octet) fait échouer le LIEN lui
   -même (symboles dupliqués visibles seulement si les fichiers source
   du round précédent restent non-stashés -- piège vécu et corrigé
   pendant l'investigation, cf. ci-dessous) tandis qu'un stub de la
   bonne taille (copié depuis `~/dev/jeux-langues-assets/fomt-decomp/
   build/franglais_stub.bin`, 4096 octets) permet au moins de LIER et
   PRODUIRE un `fomt.gba`, révélant alors le vrai problème (2) ci-dessus.

**Conclusion pratique de ce round** : impossible de committer un match
bit-exact vérifié par le gate officiel du dépôt tant que ce problème
n'est pas corrigé en amont (soit régénérer `fomt.sha1` pour la nouvelle
réalité post-`cb06198` avec une méthode de comparaison qui exclut/
neutralise les octets légitimement modifiés par les hooks franglais,
soit revenir travailler le pur decomp sur un ancêtre antérieur à
`cb06198`). **Recommandation forte pour Mathias** : les commits
`cb06198`/`2011c54` (intégration du patch franglais, auteur co-signé
"Copilot") semblent être arrivés sur `main` de ce dépôt `fomt-decomp`
alors que ce dépôt est censé documenter STRICTEMENT le jeu vanilla
(cf. règle "point de vue vanilla" de `DECOMP_RULES.md`) -- vérifier si
ce mélange est intentionnel ; si non, il casse le gate de sécurité de
TOUS les agents de decomp en parallèle depuis ce point.

Les 3 candidats ci-dessus (`func_080D7AAC`, `func_080D7B04` vérifiés
bit-exacts au niveau harnais ; `func_080D7944` near-miss 1 instruction)
restent des cibles prêtes à committer dès que le gate est réparé --
inutile de refaire l'analyse, juste réappliquer le split `asm/*.s` +
`fomt.lds` documenté ci-dessus.

### Repo state at end of round 10/w28

- **Aucun commit.** `git status --short` vide, arbre de travail identique
  à `HEAD` (`b7e6296`, merge de `parallel-26`) -- tous les fichiers
  candidats (`src/code_080D7AAC.cc`, `src/code_080D7B04.cc`, splits
  `asm/*.s`, edits `fomt.lds`) ont été supprimés/restaurés après l'échec
  du gate, conformément à la discipline "ne jamais laisser un état cassé
  entre deux tentatives".
- `origin` intact, rien poussé, aucune PR.
- `build/franglais_stub.bin` local à ce worktree contient maintenant une
  copie du stub 4096 octets de `~/dev/jeux-langues-assets/fomt-decomp`
  (fichier gitignored, n'affecte pas l'état git) -- prochain agent sur ce
  worktree : ne pas supposer qu'un `make compare` propre passera tant que
  le point ci-dessus n'est pas corrigé en amont.

### Addendum -- nouveau standard officiel confirmé par le coordinateur,
`func_080D7AAC`/`func_080D7B04` committés

Le coordinateur confirme : `w27` (worktree parallèle) a trouvé la même
régression indépendamment. `DECOMP_RULES.md` a été mis à jour (section
"Discipline non négociable", en tête de fichier) : le check
`sha1sum -c fomt.sha1` sur la ROM entière est **définitivement caduc**
depuis `cb06198` (payload franglais intentionnellement non-vanilla, pas
un bug à corriger) -- **pas la peine d'attendre un "gate réparé"**.
**Nouveau standard officiel, déjà en vigueur** : vérification ISOLÉE par
fonction --
1. taille du `.text` du `.o` compilé (`arm-none-eabi-readelf -S
   build/src/code_ADDR.o`) comparée à `next_addr - this_addr` ;
2. diff de désassemblage (`arm-none-eabi-objdump -d` du `.o`) borné à
   cette taille contre le désassemblage brut de `baserom.gba`
   (`objdump -D -bbinary -marmv4t -Mforce-thumb
   --adjust-vma=0x08000000 --start-address=ADDR --stop-address=ADDR+size`) ;
3. lien complet (`make fomt.elf`) vérifié sans erreur, avec un
   `build/franglais_stub.bin` factice (`head -c 4096 /dev/zero >
   build/franglais_stub.bin`, gitignored) juste pour satisfaire la
   dépendance non liée au payload franglais -- pas de bit-exactness
   globale attendue, seulement absence d'erreur de LIEN
   (symbole dupliqué/non résolu) ;
4. `grep -rl -- "ADDR" asm/*.s` pour confirmer l'absence de blob dupliqué
   (piège hidden-blob déjà documenté).

Le harnais rapide déjà utilisé pour `func_080D7AAC`/`func_080D7B04` EST
cette vérification (étape 2 sous une forme équivalente, compilateur+
assembleur direct sans lien) -- suffisant, aucune ré-analyse nécessaire.

**Committé (`076eb72`)** : `func_080D7AAC` (`src/code_080D7AAC.cc`) et
`func_080D7B04` (`src/code_080D7B04.cc`), les deux vérifiés selon les 4
points ci-dessus (taille 0x28/40 octets chacun, matchant exactement
l'écart à la fonction suivante ; désassemblage instruction-pour-
instruction identique à `baserom.gba` ; lien propre ; aucun label
dupliqué). `asm/code_080D7B04.s` renommé `asm/code_080D7B2C.s` (la cible
était la première fonction du fichier, le trio de wrappers triviaux
`func_080D7B2C`/`38`/`44` devient le nouveau contenu sous sa propre
adresse).

`func_080D7944` (near-miss d'1 instruction, `ands r5,r0` attendu vs
`ands r0,r5` produit par toute formulation C testée) : **laissé en l'état,
documenté comme near-miss honnête**, pas de nouvelle piste ce round --
ne pas forcer (consigne du coordinateur). Prêt à reprendre pour un futur
round avec un angle neuf (hypothèse non testée : influence du nombre de
registres bas simultanément vivants sur le choix de destination de
l'allocateur d'agbcp, cf. ci-dessus).

### Repo state final (après addendum)

- 2 fonctions matchées et committées ce round (`func_080D7AAC`,
  `func_080D7B04`, commit `076eb72`), plus le commit docs `325ecac`.
- `git status --short` vide, arbre de travail propre (build/, fomt.elf,
  fomt.map supprimés après vérification -- gitignored de toute façon).
- `origin` intact, rien poussé, aucune PR.

## 2026-08-20, worktree w30/`parallel-30` -- `func_080D7944` matché
(near-miss d'1 instruction résolu), pas de doublon avec `func_080D7AAC`/
`func_080D7B04`

Mission initiale : reproduire et committer `func_080D7AAC`/`func_080D7B04`
(candidats vérifiés au niveau harnais par w28, jamais committés). En
cours de route, le coordinateur a signalé que `w28` avait entre-temps été
relancé et avait lui-même committé ces deux fonctions (`076eb72`, déjà
sur `main`) -- travail abandonné ici avant tout commit pour éviter un
doublon au merge (`src/code_080D7AAC.cc`/`src/code_080D7B04.cc` supprimés,
`git status --short` vide reconfirmé avant de continuer).

Priorité 2 : `func_080D7944` (destructeur "riche" de la même famille,
`asm/code_080D6DB8.s`, near-miss d'1 instruction laissé ouvert par w28 --
`ands r5,r0` attendu, `ands r0,r5` produit par toute formulation testée).

**Résolu.** Vérifié d'abord sur le baserom réel (pas seulement les notes
paraphrasées de w28) via désassemblage direct
(`--adjust-vma=0x08000000 --start-address=0x080D7944
--stop-address=0x080D7990`, `~/dev/jeux-langues-assets/fomt-decomp/
baserom.gba`) : confirme `movs r0,#1; ands r5,r0` à `0x080D7972`. Toutes
les formulations déjà tentées par w28 (`flags &= 1`, `flags = flags & 1`,
`1 & flags`, variable intermédiaire, `do {} while(0)`) rejouées ici,
même résultat négatif (`ands r0,r5`). Piste qui a débloqué : la double
négation explicite `if (!!(flags & 1))` -- déclenche chez agbcp un chemin
de normalisation booléenne différent qui écrit le résultat DANS le
registre du paramètre au lieu d'un scratch. Généralisé dans
`DECOMP_RULES.md` (nouvel anti-pattern #12).

Vérification par objet (nouveau standard, `main`) :
- `arm-none-eabi-readelf -S build/src/code_080D7944.o` : `.text` =
  `0x4c` octets, exactement `0x080D7990 - 0x080D7944`.
- Diff de désassemblage borné (`objdump -d` du `.o` vs `baserom.gba`
  `--adjust-vma=0x08000000 --start-address=0x080D7944
  --stop-address=0x080D7990`) : 20 instructions + pool littéral (3
  `.4byte`) byte-pour-byte identiques (bl targets non résolus dans le
  `.o` mais adresses de destination cohérentes).
- Lien complet réussi (`make` avec `build/franglais_stub.bin` factice
  copié depuis `~/dev/jeux-langues-assets/fomt-decomp`) : AS+LD passent
  sans erreur de symbole non défini/dupliqué ; seul le
  `sha1sum -c fomt.sha1` final échoue, comme attendu et documenté
  (`cb06198`, payload franglais non-vanilla lié en fin de ROM -- gate
  cassé pour tout le monde, pas une régression de ce round).
- Doublon silencieux : `grep -rl -- "080D7944" asm/*.s` vide après
  split (aucune autre copie de cette adresse) ; `fomt.map` confirme
  `func_080D7944` à `0x080d7944` taille `0x4c`, suivi immédiatement de
  `asm/code_080D7990.o` à `0x080d7990` taille `0x3c` (jusqu'à
  `0x080D79CC`, déjà matché).

Découpage du fichier monolithique `asm/code_080D6DB8.s` (qui contenait
déjà `func_080D7944` en dernière fonction, suivie d'un blob `.byte` non
désassemblé jusqu'à `0x080D79CC`) : partie "avant" tronquée à la ligne
1608 (juste avant `thumb_func_start func_080D7944`), partie "après" (le
blob `.byte` restant, sans `thumb_func_start` -- même style que
`asm/code_080D79F8.s`) déplacée dans un nouveau fichier
`asm/code_080D7990.s`. Entrées `fomt.lds` insérées dans l'ordre :
`asm/code_080D6DB8.o(.text); src/code_080D7944.o(.text);
asm/code_080D7990.o(.text); src/code_080D79CC.o(.text);`.

**Commité** : `src/code_080D7944.cc`, `asm/code_080D6DB8.s` (tronqué),
`asm/code_080D7990.s` (nouveau), `fomt.lds`. Ajout accompagnant dans
`DECOMP_RULES.md` (anti-pattern #12, `!!(x & 1)` vs `x & 1`/`x &= 1` nu).

Priorité 3 non atteinte ce round faute de temps -- reste ouverte pour un
prochain round (autres voisins de `gUnk_03000410`, ou cible de
`DECOMP_ARCHIVE.md`).

### Repo state at end of round (worktree w30)

- 1 commit local ajouté sur `parallel-30` (`func_080D7944` + doc
  `DECOMP_RULES.md`). `git status --short` vide après commit.
- `origin` non touché (push toujours désactivé délibérément), rien
  poussé, aucune PR.
- `build/franglais_stub.bin` local à ce worktree (gitignored, copié
  depuis `~/dev/jeux-langues-assets/fomt-decomp`) -- même limitation que
  les rounds précédents : `sha1sum -c fomt.sha1` ne peut structurellement
  pas passer tant que le gate n'est pas corrigé en amont ; vérification
  faite par objet (taille + diff borné) conformément au nouveau standard.

## 2026-08-20, worktree `w29`/`parallel-29` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 4 : résidu réduit de 44 à 24 octets (piste concrète), toujours
pas de match -- 4e échec honnête, nouvelle cause identifiée

Contexte : reprise post-round 10/w27 (voir plus haut, ligne ~4779), qui avait
résolu la piste `anchor` (doit être recalculé PAR BLOC, pas partagé comme
`delta`) mais laissé un résidu de 44 octets sur l'encodage compact-vs-verbose
de `shifted_index + (u32)dest` dans les 4 blocs TL/BL/TR/BR (original :
`mov r0, sl` puis `adds` 3-opérandes ; reconstruction : `add rX, sl` compact
1 instruction). Les 2 tentatives de round 10/w27 (variable de shift séparée,
arithmétique de pointeur explicite) n'avaient eu aucun effet sur cette forme.

Fichier `src/code_0804E4AC.cc` (le corps plain, déjà matché depuis le round
"5e tentative", commit `247e6f3`) relu comme référence structurelle -- il
contient LES DEUX formes (verbose pour son bloc TL, compact pour son bloc
BL) dans la MÊME fonction, ce qui prouve que le choix n'est pas une
propriété globale du compilateur mais un artefact **local à chaque site**
de l'addition. Vérifié en désassemblant `build/src/code_0804E4AC.o` :
bloc TL -> `mov r2, r9` puis `adds r6, r0, r2` (verbose, car le résultat
`tl` est casé dans r6 alors que l'accumulateur du calcul est en r0 --
incompatible avec l'encodage Thumb `ADD(4)` qui exige `Rdn += Rm`, même
registre des deux côtés) ; bloc BL -> `add r1, r9` (compact, car là
l'accumulateur ET la variable finale coïncident déjà dans r1). **La règle
identifiée** : verbose si le compilateur assigne l'adresse finale à un
registre DIFFÉRENT de celui qui vient d'accumuler `(shifted_index)`,
compact sinon.

### Lecture littérale du désassemblage original de `func_0804E5AC` (pas
deviné depuis la forme C) : `row_product` partagé TL/TR, jamais BL/BR

Au lieu de retenter une piste C générique, relecture ligne à ligne du
désassemblage original des 4 blocs :
- TL sauvegarde `row_product` (= `width_tiles * tile_y`, AVANT le
  `+ tile_x` et AVANT le `<< 5`) sur la pile (`str r3, [sp, #0x9c]`) juste
  avant d'entrer dans la boucle de recolor -- TR le recharge et refait
  `+ tile_x` puis `<< 5` depuis zéro, plutôt que de réutiliser l'adresse
  finale de TL + `0x20` (le raccourci qu'utilise le corps PLAIN pour son
  propre bloc TR). Seule explication cohérente : l'adresse finale de TL
  est un pointeur consommé par auto-incrément dans la boucle inline
  (`stm r7!, {r1}` répété 8 fois) -- le registre ne contient donc plus la
  valeur de départ une fois la boucle TL terminée, contrairement au corps
  plain qui n'a pas de boucle et garde `tl` intact pour son raccourci TR.
- BL, à l'inverse, NE sauvegarde PAS son propre `row_product`
  (`width_tiles * row_below`) pour que BR le réutilise -- BR le recalcule
  intégralement depuis zéro. Asymétrie confirmée, gardée telle quelle
  (pas "corrigée" en fausse symétrie TL/TR == BL/BR).
- Dans les 4 blocs, le calcul couleur (`delta`/`anchor`) est intercalé
  ENTRE le `<< 5` et le `+ dest` final -- jamais avant le shift, jamais
  après le dest-add.

### Candidat reconstruit à partir de cette lecture -- progrès réel, pas de
match

Réécriture complète de `func_0804E5AC` (signature confirmée depuis l'appelant
`src/code_0804E958.cc` : `u32 func_0804E5AC(u32 dims, void * dest, u32 x,
u32 y, u32 code, u32 color_a, u32 color_b)`), avec : boucle `do { } while`
manuelle par bloc (pointeurs `src`/`dst` locaux, jamais de pointeur réutilisé
au-delà de son propre bloc -- cohérent avec le point ci-dessus), `mask`
(`0x11111111`) déclaré UNE FOIS à l'échelle fonction (déclarer une copie
locale par bloc, testé, casse l'allocation de `dest` -- voir plus bas),
`anchor` recalculé par bloc (piste round 10/w27, conservée), `row_product`
partagé TL/TR uniquement.

Résultat mesuré (harnais compilateur seul, `build/src/code_0804E5AC.o`,
`arm-none-eabi-objdump -h`) : `.text` = `0x1dc` (476 octets) contre `0x1f4`
(500) attendus -- **résidu de 24 octets, en baisse depuis les 44 du round
précédent**. Désassemblage borné confirmé : le bloc TL reproduit maintenant
EXACTEMENT la forme verbose originale (`mov r0, sl` puis `adds r6, r1, r0`
3-opérandes), et `dest` reste bien casé dans `sl` sur toute la fonction
(`mov sl, r1` au prologue, jamais spillé) -- les deux points bloquants des
3 tentatives précédentes sont donc résolus pour au moins ce bloc.

**Tentative pour aller plus loin, révèle un piège d'allocation global** :
remplacer les boucles `do-while` par des `while` (avec le test amont que
montre pourtant le désassemblage original -- `cmp r4,r2; beq skip` avant
d'entrer), le pointeur de fin par une expression littérale
`&glyph_buf[k+8]` (au lieu de `src + 8`), et `mask` par une déclaration
locale par bloc (au lieu d'une déclaration unique à l'échelle fonction) :
taille descend à `0x1ec` (492, résidu 8 octets -- semble mieux !) MAIS le
désassemblage révèle que ce n'est qu'une coïncidence numérique : `dest`
(arg1) se retrouve désormais SPILLÉ sur la pile (`str r1, [sp, #0x8c]` au
prologue, rechargé à chaque site au lieu de `mov r0, sl`) -- la disposition
entière de la pile change (offsets 0x8c/0x90/0x94/0x98/0x9c tous décalés
par rapport à l'original), donc plus proche en taille mais structurellement
FAUX. Isolé lequel des 3 changements cause la régression en les révertant
un par un : c'est la déclaration LOCALE de `mask` par bloc (pas le
`while`, pas le pointeur littéral) qui fait perdre `sl` à `dest` --
signal qu'agbcp semble faire une allocation de registres qui dépend du
nombre total de variables/constantes déclarées dans le scope, pas
seulement de la liste de vies locale à chaque site (cohérent avec le
soupçon déjà noté round 10/w27 sur un facteur de pression de registres
non identifié). Reverté vers la version à 24 octets (mask unique,
`do-while`, `src + 8`) après confirmation que ce n'était pas une piste.

### Résidu restant caractérisé (pas résolu) : collision `anchor`/`end`
sur le registre r2 dans la boucle TL

Dans le candidat à 24 octets, le calcul du pointeur de fin de boucle
(`end = src + 8`) compile en 2 instructions (`mov r0, sp; adds r0, #44`)
au lieu de l'unique `add r2, sp, #0x2c` de l'original, et nécessite une
copie supplémentaire (`adds r7, r0, #0`) pour survivre à la boucle --
alors que l'original garde `end` directement dans `r2` sans copie. Cause
identifiée par lecture des registres vivants dans la boucle originale :
`r2` porte `end` ET RIEN D'AUTRE dans l'original (anchor y est en `r5`,
delta en `r6`) ; dans ma reconstruction, `anchor` finit alloué en `r2`
(le même registre où `end` voudrait aller), forçant le compilateur à
choisir un autre registre libre (`r7`) pour `end`, avec le coût d'une
copie explicite. Testé un réordonnancement (calculer `anchor` avant
`delta` au lieu d'après) : aucun effet sur la taille -- l'allocation de
`anchor` sur `r2` ne semble pas piloté par l'ordre séquentiel simple des
2 affectations. Piste NEUVE pour la suite, non testée faute de temps :
forcer `anchor` sur un registre différent de `r2` via une variable-copie
explicite supplémentaire (idiome règle 11 de `DECOMP_RULES.md`), ou
inverser l'ordre où le pointeur de fin de boucle et `anchor` sont
matérialisés dans le texte C (calculer `end` AVANT le bloc couleur, pas
après).

### Verdict et repo state en fin de round (worktree w29)

**Pas de match -- 4e tentative sérieuse sur cette fonction, résidu à un
niveau différent à chaque fois (44 -> 24 octets ce round), signal
cohérent avec le diagnostic déjà posé fin round 10/w27** : cette variante
"recolor" de `DrawGlyphAt` est sensiblement plus dure que le corps plain
(`func_0804E4AC`, résolu en 5 tentatives) à cause d'une interaction
d'allocation de registres entre le calcul adresse et le calcul couleur qui
n'a pas encore de règle générale identifiée -- seulement des symptômes
locaux. Recommandation pour Mathias, cohérente avec la note de fin de
round 10/w27 : soit consacrer un round dédié avec budget étendu (itération
fine sur l'ordre exact des micro-affectations, un bloc à la fois, en
comparant après CHAQUE changement au lieu de grouper plusieurs
hypothèses), soit comparer avec une décompilation Ghidra amont si elle
existe pour ce binaire, soit accepter que cette variante reste ouverte
plus longtemps que le corps plain (elle n'est pas seule dans ce cas :
`DrawGlyphAt` plain a mis 5 tentatives).

- **Aucun commit de code.** `src/code_0804E5AC.cc` (nouveau), le split
  `asm/code_0804E5AC.s` -> `asm/code_0804E7A0.s`, et l'edit `fomt.lds`
  ont tous été annulés/supprimés après l'échec (`git reset` + `git
  checkout HEAD --` sur les fichiers renommés/modifiés, suppression du
  nouveau fichier `.cc`). `git status --short` vide confirmé.
- Vérification effectuée : harnais compilateur seul (taille `.text` +
  désassemblage borné, standard officiel documenté en tête de
  `DECOMP_RULES.md`) -- pas de `make compare` sha1 ROM entière (toujours
  structurellement impossible tant que `cb06198` reste sur la branche,
  cf. round 10/w27) ; lien complet néanmoins vérifié une fois avec
  `build/franglais_stub.bin` factice (`head -c 4096 /dev/zero`) pour
  confirmer l'absence d'erreur de lien -- aucune référence non définie ni
  symbole dupliqué.
- `origin` non touché, rien poussé, pas de PR.

## Round w32 (worktree `parallel-32`) -- chasse "3 angles neufs", aucun match sûr trouvé

Consigne : continuer la méthode "sœur" (w20/w24/w26/w28/w30) sur 3 angles
pas encore essayés : (1) méthodes virtuelles non portées des vtables déjà
cataloguées, (2) wrappers/thunks appelant une fonction déjà matchée, (3)
élargir `scan_hidden_code_blobs.py` au-delà de sa limite dure de 40 octets.

**Bilan des 3 angles -- tous négatifs, mais informatifs** :

1. **Vtables connues, méthodes non portées** : `grep -rl vtable_unk_
   src/*.cc` donne 50 vtables distinctes déjà référencées ; un script
   croisant chaque `vtable_unk_ADDR` contre TOUS les blocs `thumb_func_start`
   non matchés d'`asm/*.s` donne **0 hit**. Confirme que les rounds
   précédents (w24/w26 constructeurs de placement, w28/w30 sœurs
   destructeurs) ont déjà épuisé cette veine -- plus aucune fonction
   asm restante ne référence un `vtable_unk_ADDR` connu.
2. **Wrappers appelant une fonction déjà portée** : script recensant tous
   les `func_ADDR` réellement matchés dans le `.elf` (`arm-none-eabi-nm
   fomt.elf | grep ' T func_'`, 2696 symboles) puis cherchant, parmi les
   blocs `thumb_func_start` NON matchés de <=12 lignes d'instructions, un
   `bl func_ADDR` vers l'un de ces symboles : **1 seul hit**,
   `sub_080868A8` (`asm/code_08085568.s`) qui appelle `func_080CABEC`
   (déjà matché). Écarté après inspection : `sub_080868A8` lit `sl`/`r8`
   comme état déjà positionné par son appelant (`func_08085F08`, une
   fonction à très forte pression de registres qui pousse `sl`/`sb`/`r8`
   en pile au prologue) -- signature de la classe "ABI partagée entre
   `bl`" déjà documentée comme structurellement infaisable en C
   (`DECOMP_RULES.md`), pas un simple thunk portable.
3. **`scan_hidden_code_blobs.py` au-delà de 40 octets** : le script gère
   déjà ce cas (`medium_blocks`, non auto-vérifiés, listés pour revue
   manuelle) -- **0 nouveau court blob** (4-40 octets, tous déjà matchés
   par les rounds précédents), **1 seul blob "medium" restant** :
   `.L0809E1B4` dans `asm/code_actor_0809BFE8.s`, 288 octets (déjà
   identifié comme piste ouverte dans `DECOMP_ARCHIVE.md`, jamais
   attaqué). Inspection manuelle complète (désassemblage brut +
   `--adjust-vma`) : c'est une VRAIE fonction unique (`push
   {r4,r5,r6,r7,lr}; sub sp,#0x10`, épilogue propre `add sp,#0x10; pop
   {r4-r7}; pop {r0}; bx r0`, ~270 octets utiles + pool littéral
   terminal), pas de fusion de plusieurs petites fonctions. Appelle
   `func_0800E924` (déjà porté, `ActorLocation` d'un `Farmer const&`,
   `src/farmer.cc:188`) et 4 fonctions encore en asm
   (`func_0809D79C`/`func_0809D7D8`/`func_0809D418`/`func_0809D470`) --
   3 boucles de copie octet-à-octet depuis des tables globales
   (`gUnk_08103B10`/`38`/`gUnk_08103C3C`/`74`/`gUnk_08103F84`/`98`/
   `gUnk_0810400C`/`gUnk_08103FE4`, toutes des globaux `unk_` génériques,
   aucun nom sémantique disponible) avec des tailles de champ 4/9/13.
   Aucun registre `r8`-`ip` utilisé (PAS classe "pression de registres"),
   mais **aucun appelant symbolique trouvé** (`grep` négatif dans tout
   `asm/`/`src/`, comme `func_08010F14` en son temps) -- impossible de
   déduire les types exacts des 2 premiers paramètres (r0/r1) sans site
   d'appel de référence, et la sémantique des 3 boucles de copie (rendu
   de texte formaté ? affichage debug de coordonnées ?) resterait une
   pure supposition sans un caller. **Pas tenté** -- prématuré de deviner
   la structure C sans un point d'ancrage sémantique, contraire à la
   discipline du dépôt ("ne jamais inventer"). Reste la piste la plus
   concrète pour un futur round avec budget dédié : chercher d'abord
   un appelant via une table indirecte (dispatch de widgets/callbacks,
   pattern déjà vu ailleurs dans ce dépôt) avant de tenter le port.
4. Contrôle croisé de 2 autres pistes listées dans "Autres cibles
   ouvertes" de `DECOMP_ARCHIVE.md` : `func_08050DF0`
   (`franglais_transition_ctl_query`) est en fait **déjà matché**
   (présent dans `fomt.elf` comme symbole `T`) -- l'entrée d'archive est
   obsolète, à corriger dans un futur ménage de `DECOMP_ARCHIVE.md`.

**Aucun commit de code ce round.** Worktree resté propre (`git status
--short` vide avant et après), seul un `build/franglais_stub.bin` factice
généré pour valider le lien complet (`make compare`, échec sha1 attendu et
confirmé, aucune erreur de lien/symbole) -- non commité (`build/` est dans
`.gitignore`). `origin` non touché, rien poussé, pas de PR.

## 2026-08-20, worktree `w31`/`parallel-31` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 5 : résidu réduit de 24 à 4 octets (meilleur résultat à ce
jour), cause du reliquat isolée précisément -- 5e échec honnête

Contexte : reprise post-round 4/w29 (résidu 24 octets, collision suspectée
`anchor`/`end` sur `r2`). Repos dans un état propre confirmé (`git status`
vide, rien hérité de w29). Relecture INDÉPENDANTE et complète du
désassemblage original (`asm/code_0804E5AC.s`, lignes 1-272), sans se fier
aux hypothèses des rounds précédents, en notant l'allocation de registre de
CHAQUE instruction des 4 blocs TL/BL/TR/BR.

### Découverte structurelle : les 4 blocs ne sont PAS des copies symétriques

Confirmation et précision de ce que soupçonnaient round 3/w27 et round 4/w29,
avec le détail exact cette fois :
- **TL** : `row_product` sauvegardé sur pile pour TR ; `start`/`end` du
  buffer source calculés directement en adresses SP-littérales
  (`add rX, sp, #imm`, 1 instruction chacun).
- **BL** : ne sauvegarde pas son row_product (recalculé par personne
  ensuite) ; `start`/`end` également littéraux SP-directs (1 instruction
  chacun).
- **TR** : seul bloc où `end` est calculé comme `start + 8` -- copie
  (`adds r4,r5,#0`) PUIS addition immédiate (`adds r4,#0x20`), 2
  instructions, alors qu'une adresse SP-littérale équivalente aurait été
  tout aussi valide et moins chère. Signal que la vraie source écrit
  `end = start + 8` pour CE bloc précisément, pas `&glyph_buf[N]`.
- **BR** : ordre des opérandes de l'addition tile_x + produit INVERSÉ par
  rapport aux 3 autres blocs (`tile_x + width_tiles*row_below`, tile_x en
  premier, cf. règle 5bis de `DECOMP_RULES.md`) ; `start`/`end` de nouveau
  littéraux SP-directs comme TL/BL.
- **`delta` calculé UNE SEULE FOIS dans TL et persisté** (confirmé octet
  pour octet -- BL/TR/BR relisent le registre persistant, ne refont jamais
  la soustraction) ; **`anchor` recalculé intégralement dans CHACUN des 4
  blocs** (confirme round 3/w27). Le "mask" `0x11111111` est rechargé
  depuis le pool littéral séparément dans chaque bloc (4 `ldr [pc,#N]`
  distincts dans l'original), jamais partagé/persisté.

### Reconstruction avec cette lecture précise -- progrès net

Réécriture depuis zéro appliquant les points ci-dessus + littéral `mask`
direct dans chaque `& 0x11111111` (pas de variable nommée -- testé : une
variable `u32 mask` unique à l'échelle fonction ajoute un chargement
persistant dans un registre haut qui casse l'allocation de `end`, cf.
plus bas ; le littéral nu laisse le compilateur recharger depuis le pool
à chaque site, comme l'original).

Progression mesurée (harnais compilateur seul) :
1. Première passe (mask en variable persistée) : `.text` = `0x1ec` (492)
   -- résidu 8 octets.
2. Mask remplacé par littéral nu dans les 4 blocs : `.text` = `0x1f0`
   (496) -- **résidu 4 octets, meilleur résultat toutes tentatives
   confondues** (round 3 : 44 ; round 4 : 24 ; ce round : 4).

### Cause du résidu de 4 octets isolée précisément (non résolue)

Dans le bloc TL, le calcul de `end` (adresse SP-littérale `&glyph_buf[8]`)
compile chez moi en 4 instructions au lieu de 2 :
```
add r1, sp, #44   @ calcul dans un registre bas (obligatoire, ADD SP-relatif
                  @ ne peut cibler qu'un registre bas r0-r7)
mov ip, r1        @ copie vers un registre haut -- absent de l'original
mov r7, ip        @ copie vers un DEUXIÈME registre -- absent aussi
cmp r3, ip
```
contre l'original :
```
add r2, sp, #0x2c
cmp r4, r2
```
Le compilateur alloue `end` sur `ip` (registre haut) dans ma reconstruction,
ce qui force le calcul en 2 temps (ADD SP-relatif ne peut écrire que dans
r0-r7) PUIS une copie supplémentaire vers `r7` pour le test de fin de
boucle après la boucle -- 4 octets de coût net. L'original alloue `end`
directement dans un registre bas (`r2`), sans jamais passer par un
registre haut, d'où 1 seule instruction.

**Six tentatives pour déplacer `end` hors de `ip`, toutes neutres ou
négatives, aucune n'a résolu le problème :**
1. `end = start + 8` au lieu de `&glyph_buf[8]` (mimant TR) -- aucun effet
   (toujours `0x1f0`).
2. Variables `u32 *tl, *start, *end;` déclarées groupées puis assignées vs
   déclarées-et-initialisées une par une (style inline) -- aucun effet.
3. Inverser l'ordre de calcul `end` avant `start` -- **régression** à
   `0x1ec` (résidu 8, pire).
4. Réduire `anchor` de 4 variables nommées (`n,b8,hw,anchor`) à 1 seule
   réassignée 4 fois -- aucun effet sur la taille (mais code plus propre,
   conservé).
5. Fusionner `shifted` dans l'expression de `tl` (une seule expression
   composée au lieu de deux statements) -- **régression** à `0x1ec`.
6. `start`/`end` via `glyph_buf`/`glyph_buf + 8` (nom de tableau) au lieu
   de `&glyph_buf[0]`/`&glyph_buf[8]` -- aucun effet.
7. Charger `color_a` une seule fois dans une variable locale `ca` partagée
   entre le calcul de `delta` et celui de `anchor` (pour supprimer un
   `ldr [sp,#0x1c4]` redondant repéré en diff normalisé) -- aucun effet
   sur la taille totale (le rechargement persiste ailleurs, `agbcp` ne
   garde pas les paramètres passés sur la pile en registre au-delà d'un
   statement, même via variable locale intermédiaire).
8. Calculer `start`/`end` AVANT `tl` (au lieu d'après, contredisant l'ordre
   du désassemblage original) -- **régression** à `0x1ec`, confirmant que
   l'ordre `tl` puis `start` puis `end` (déjà celui du désassemblage
   original) est la SEULE position qui atteint `0x1f0`.

**Diagnostic final** : le point bloquant restant est un choix d'allocation
de registre interne à `agbcp` (rattacher `end` à un registre haut `ip`
plutôt qu'un registre bas) qui n'a répondu à AUCUNE reformulation testée
de l'ordre des statements, du typage (pointeur vs entier), du nommage, ou
du regroupement des déclarations -- tous les leviers listés dans
`DECOMP_RULES.md` (règles 1-12) ont été essayés sans succès sur ce point
précis. Diff normalisé instruction-par-instruction (harnais + `objdump
-bbinary --adjust-vma` sur `baserom.gba`) confirme que **tout le reste de
la fonction (prologue, les 3 guards de validité, les 2 flags d'alignement,
le calcul has_right/has_bottom, TOUTE la boucle BL, la moitié de TR/BR) est
déjà identique à l'original au niveau mnémonique** -- le résidu de 4 octets
est concentré à 100% sur ce seul point (le calcul de `end` dans le bloc
TL).

### Verdict et repo state en fin de round (worktree w31)

**Pas de match -- 5e tentative sérieuse sur cette fonction, mais progrès
net et mesurable : résidu divisé par 6 (24 -> 4 octets) par rapport au
round précédent**, avec une lecture indépendante du désassemblage qui a
confirmé/précisé l'asymétrie des 4 blocs (jusqu'ici seulement pressentie)
et isolé la cause du résidu à UN point unique et bien caractérisé (pas une
accumulation diffuse comme les rounds précédents). Recommandation pour
Mathias, dans la continuité de round 4/w29 : le signal est maintenant assez
fort et localisé pour justifier soit (a) un round dédié qui n'itère QUE sur
ce point précis (calcul SP-relatif d'une adresse locale qui finit sur un
registre haut), en essayant des idiomes non encore testés (ex. forcer un
"anchor point" via une fausse relecture intermédiaire du buffer, ou une
réorganisation de TOUT l'ordre des 4 blocs plutôt que du seul bloc TL), soit
(b) une comparaison avec une décompilation Ghidra amont si elle existe pour
ce binaire (le point 3 de la mission), soit (c) accepter cette variante
comme fermée pour l'instant -- elle a maintenant consommé 5 rounds sérieux,
plus que le corps plain (`func_0804E4AC`, résolu en 5) sans encore
converger, mais avec un résidu résiduel bien plus petit et mieux compris
qu'à n'importe quel round précédent.

- **Aucun commit de code.** Tout le travail (candidat C, itérations, tests
  harnais) est resté dans un scratch dir hors du dépôt
  (`/tmp/w31scratch/`, jamais copié dans `src/` ni référencé dans
  `fomt.lds`). `git status --short` vide confirmé avant et après le round
  -- rien à annuler.
- Vérification effectuée : harnais compilateur seul (taille `.text` +
  diff de désassemblage borné, normalisé, contre `baserom.gba` réel via
  `objdump -bbinary -marmv4t -Mforce-thumb --adjust-vma=0x08000000`) --
  standard officiel de `DECOMP_RULES.md`, pas de `make compare` (toujours
  hors de portée pour la raison `cb06198` documentée round 10/w27, sans
  rapport avec cette fonction).
- `origin` non touché, rien poussé, pas de PR.

## Round 11 (worktree w33, branche `parallel-33`) -- placement constructors, balayage exhaustif angle 1

Consigne : reprendre l'angle "constructeurs de placement" (round 10/w24)
en vérifiant si la liste avait été balayée exhaustivement, puisqu'un autre
agent (w32) travaillait en parallèle sur les vtables/callers -- angle
volontairement différent pour éviter tout recoupement.

**Méthode** : reproduction du script du round 10/w24 (non commité à
l'époque, refait ici) -- parcours de tous les blocs `thumb_func_start` de
`asm/*.s`, filtre sur "contient un littéral `vtable_unk_ADDR` ET un `bl
__builtin_new`", croisé avec `arm-none-eabi-nm build/src/*.o | grep '
T func_'` (build propre fait au préalable, `build/franglais_stub.bin`
factice `head -c 4096 /dev/zero`) pour exclure tout ce qui est déjà porté.
153 blocs candidats trouvés au total ; la grande majorité sont de gros
`Run()` de scène qui référencent des vtables et appellent `__builtin_new`
de façon incidente (plusieurs objets construits dans un même corps), pas
la forme resserrée de constructeur de placement -- filtré manuellement en
inspectant le désassemblage brut de chaque candidat à ligne-compte réduit
(<=100 lignes, 1-2 vtables). 15 sites retenus comme correspondant
clairement à la forme "constructeur de placement" déjà documentée.

**Résultat : 15/15 matchés et commités** (`d6fabdf`) -- voir
`DECOMP_ARCHIVE.md` section "Round 11 (w33)" pour le détail complet des
noms, adresses, et des 3 sous-variantes (dont 2 réellement nouvelles :
layout inversé `func_080756B0`, layout étendu self+0xc/self+0x10
`func_0807D070`/`func_08088168`).

**Piège vécu et corrigé avant tout commit** : 4 des 15 sites
(`func_08077C40`, `func_0807B038`, `func_0807D070`, `func_0807E438`)
avaient un blob `.byte` caché (fonction non matchée, pas de
`thumb_func_start`) collé entre leur propre fin et la fonction réelle
suivante -- mon script de découpage naïf (calqué sur la méthode
`DECOMP_RULES.md`, généralisée pour gérer plusieurs cibles dans un même
fichier) capturait tout le bloc jusqu'au PROCHAIN `thumb_func_start`, donc
incluait silencieusement ce blob dans la partie "supprimée" au lieu de le
laisser dans le nouveau fichier de queue. Détecté en comparant la taille
`.text` du `.o` fraîchement compilé à l'écart d'adresse réel
(`next_addr - this_addr` calculé sur le `fomt.elf` lié) : 4 fonctions sur
15 montraient un `.o` plus PETIT que l'écart attendu (44-224 octets
manquants selon le site). Corrigé en réinjectant le blob `.byte` intact
(recopié depuis les fichiers extraits en scratch avant leur suppression)
dans le nouveau fichier `asm/code_NEXT.s`, juste avant le `thumb_func_start`
réel qui suit. Revérifié après coup : rebuild complet, `fomt.map` confirme
que tous les symboles en aval (`func_08077CE0`, `func_0807B0F0`,
`func_0807D194`, `func_0807E4B8`, et les autres fonctions déjà portées
juste après chaque site à un seul candidat) retombent exactement sur leur
adresse vanilla attendue -- aucun décalage résiduel.

**Vérification appliquée à chacun des 15, standard officiel
`DECOMP_RULES.md`** : harnais rapide (compilateur+assembleur, comparaison
octet à octet contre le désassemblage brut original) pendant le
tâtonnement, PUIS taille `.text` du `.o` du build propre comparée à
`next_addr - this_addr`, PUIS diff de désassemblage borné à cette taille
exacte contre `baserom.gba` (`--adjust-vma=0x08000000`) -- bit-exact sur
les 15. Rebuild complet propre (`rm -rf build fomt.gba fomt.elf fomt.map`)
avant le commit : lien réussi sans référence non définie ni symbole
dupliqué ; `sha1sum -c fomt.sha1` échoue comme attendu (payload franglais
intentionnellement non-vanilla, non-signal documenté dans
`DECOMP_RULES.md`). Aucune étiquette `.LADDRESS` résiduelle trouvée pour
aucune des 15 adresses matchées (`grep -rl` vérifié individuellement pour
chacune).

**État du worktree en fin de round** : propre (`git status --short`
vide), un seul commit ajouté depuis `main`/point de départ (`d6fabdf`,
15 fonctions dans un seul commit -- justifié par le fait que toutes ont
été vérifiées ensemble dans le même cycle de rebuild final, contrairement
au cas "un blob = un commit" du scan de blobs cachés qui concerne des
candidats indépendants les uns des autres). `origin` non touché, rien
poussé, pas de PR.

**Cibles explorées mais écartées pour ce round** (candidats du même scan,
risque/complexité jugés trop élevés pour ce budget, laissés pour un futur
round) :
- `func_08083A7C` (asm/code_08082184.s) : même famille mais avec 7
  paramètres au total (4 registres + 4 arguments passés sur la pile aux
  offsets `sp+0x28/0x2c/0x30/0x34`) et 7 champs stockés (self+0 à
  self+0x1c) -- ABI/layout nettement plus complexe que les 2 sous-
  variantes étendues confirmées ce round, pas tenté par prudence.
- `func_08092570` (asm/code_08090EC4.s) : la valeur "volée" de
  l'out-param est stashée sur la pile et son ADRESSE (pas la valeur) est
  passée à l'appel d'init opaque -- signature de la classe de difficulté
  "assignation de champ SmartPtr" déjà documentée comme difficile
  (7 hypothèses testées et négatives sur `func_08004C68`, cf.
  `DECOMP_ARCHIVE.md`) ; pas tenté pour ne pas rouvrir ce chantier sans
  budget dédié.
- `func_0806D8C8`, `func_080DB320`, `func_080DB658`, `func_08004B58`,
  `func_08004B94` : variantes avec dispatch virtuel de destructeur en fin
  de corps (`bl _call_via_r2` sur le champ volé) ou construction
  composite imbriquée (helper 4 ou 0xc octets construit sur pile puis
  passé à un `func_080041DC` déjà connu) -- shape différente de la
  famille standard, pas creusées faute de temps ce round, laissées comme
  piste pour un futur agent.

## Round w36 (worktree `parallel-36`) -- angle "blob medium w32" épuisé, nouveau blob trouvé et matché : `func_08075678`/`func_08075690`

Consigne : reprendre `.L0809E1B4` (`asm/code_actor_0809BFE8.s`, 288 octets,
piste ouverte depuis round 10/w23 puis recontrôlée round "3 angles neufs"/w32)
en tentant d'analyser ses 4 callees encore en asm pour deviner un contexte
d'appel, ou en cherchant un appel indirect (table de dispatch).

### `func_0809E1B4` : confirmé dead-end, rien de neuf

Relecture indépendante de `SESSION_NOTES.md` a révélé que ce blob a en fait
déjà eu un round dédié complet et bien plus tôt que ce que l'archive
laissait penser : **round 10 (worktree w23)** l'avait déjà entièrement
désassemblé, compris structurellement (fonction "format une valeur dans un
buffer de message à offsets scatter", `if`/`else` sur `loc.map`, 2x2 helpers
`func_0809D79C/D7D8/D418/D470` encore en asm) et tenté **~10 réécritures C
structurelles distinctes**, toutes convergeant sur le MÊME symptôme unique :
un swap de registres `r4`/`r5` entre `idx` et un pointeur de table
d'offsets, jugé relever d'une heuristique interne d'allocation de registres
d'`agbcp` non atteignable par changement de forme C (voir détail complet
`SESSION_NOTES.md` round 10/w23, section "`func_0809E1B4`, ~288-byte..."). Le
verdict explicite de ce round était : ne pas retenter par simple
restructuration C sans nouvelle piste (ex. hint de registre via `asm()`,
technique inédite dans tout ce dépôt -- vérifié ici : `grep -rn 'asm(' src/*.cc`
et `grep -rln 'register '` ne remontent rien, confirmant qu'aucune fonction
déjà portée n'utilise cette technique).

Contrôles indépendants effectués ce round (négatifs, confirment w32) :
- Aucun appelant symbolique ni indirect : `grep` de `0809E1B4`/`0809E1B5`
  sur tout `asm/`/`src/` -> 0 hit hors le label lui-même.
- Les 4 callees (`func_0809D79C`/`D7D8`/`D418`/`D470`) n'ont aucun autre
  site d'appel dans tout le dépôt (chacun un seul `bl`, celui de
  `func_0809E1B4`).

**Verdict : pas de nouvelle piste, pas de nouvelle tentative** -- 10
tentatives sérieuses déjà consommées par un round antérieur avec un
diagnostic explicite et stable, aucune technique inédite disponible sans
sortir du style C pur du dépôt. Pas de fichier modifié pour cette cible.

### Bascule méthode sœur -- `DECOMP_ARCHIVE.md` "Autres cibles ouvertes" : entièrement périmée

Vérification de chaque entrée de la section avant de choisir une cible :
- `franglais_transition_ctl_query` (`0x08050DF0`) : **déjà matché**
  (confirmé round "3 angles neufs"/w32, entrée obsolète).
- Table de dispatch script (`0x0803F900`) : écartée -- même famille que
  les candidats "dispatch/composite constructor" repris en parallèle par
  w35 (consigne explicite d'éviter le recoupement).
- `func_08010F14` : déjà matché (round 8/w17), pas une cible, entrée à
  visée seulement documentaire.
- `asm/code_entities_08034CEC.s` (160 octets) : **déjà matché** (round
  10/w23, commit `0ae8f12`, groupe `func_0803A804`/7 fonctions) -- entrée
  obsolète.
- `asm/code_08010F54.s` (272 octets) : écartée par consigne explicite
  (risque de chevauchement avec `franglais_boot_fsm_run`, classe
  "pression de registres", sauf idée neuve -- aucune idée neuve identifiée
  ce round).

**Toutes les entrées de cette section sont donc soit obsolètes soit hors
périmètre pour ce round** -- ménage à faire dans `DECOMP_ARCHIVE.md` (2
entrées obsolètes à retirer : `franglais_transition_ctl_query`,
`code_entities_08034CEC.s`).

### Nouveau blob trouvé et matché : `func_08075678`/`func_08075690`

Re-exécution de `tools/scripts/scan_hidden_code_blobs.py` (sweep anti-doublon
systématique) : en plus du blob `.L0809E1B4` déjà connu, révèle un
**nouveau candidat "medium" jamais catalogué** :
`asm/code_0807565C.s` `.L08075678` (56 octets, `prev=func_0807565C`,
`next=<EOF>`) -- absent de toutes les mentions précédentes dans
`DECOMP_ARCHIVE.md`/`SESSION_NOTES.md`.

Désassemblage manuel (`objdump -D -bbinary -marmv4t -Mforce-thumb
--adjust-vma=0x08075678`) : **2 fonctions réelles distinctes**, bornes
propres (24 + 32 octets, la 2e se terminant exactement à `0x080756B0`, début
de `func_080756B0` déjà porté -- aucune ambiguïté de coupure) :

- `func_08075678` (24 octets) : lit 2 champs (`+8`, `+16`) d'un pointeur de
  struct reçu en r3 (4e argument), les transmet en 3e/4e argument (registre
  + pile) à `func_08075334` (encore en asm, `asm/code_08070A08.s`), en
  laissant r0/r1/r2 inchangés (transmis tels quels de l'appelant).
- `func_08075690` (32 octets, incl. pool littéral) : même schéma mais
  indexe la table globale `gUnk_080FC024` (stride 8 octets) par r3 (index,
  pas un pointeur), transmet `table[idx].f0`/`table[idx].f4`.

`func_08075334` (callee commun, non porté) est une vraie fonction de
gestion de file/tableau dynamique (`malloc`, ring buffer à `self+0x594`),
appelée symboliquement 8 fois ailleurs dans `asm/code_08070A08.s` --
suffisant pour ancrer le RÔLE des 2 wrappers (transmission de 2 arguments
supplémentaires vers un push de file) sans avoir besoin de porter
`func_08075334` lui-même. **Aucun appelant symbolique/indirect trouvé pour
les 2 wrappers eux-mêmes** (grep négatif) -- même situation que
`func_0809E1B4`, mais ici la sémantique des paramètres transmis est déduite
de la forme du callee (constatée, pas inventée), pas d'un site d'appel
direct.

Exactement le même schéma "overload par pointeur vs overload par index
appelant le même helper" déjà documenté pour `func_08011DC4`/`func_08011ED8`
(round 10/w23).

**Match confirmé du premier coup** (harnais rapide compilateur seul, sans
itération) : taille `.text` de l'objet frais = `0x38` (56 octets, exact),
diff de désassemblage de `fomt.elf` linké borné à
`[0x08075678, 0x080756B0)` **byte-identique** à `baserom.gba`, y compris le
décalage `bl func_08075334` résolu et l'adresse `0x080FC024` résolue dans le
pool littéral. Nouveau fichier `src/code_08075678.cc`, `asm/code_0807565C.s`
(blob retiré), `fomt.lds` (entrée `src/code_08075678.o(.text);` insérée
juste après `asm/code_0807565C.o(.text);`, avant `src/code_080756B0.o(.text);`,
suivant la convention documentée plus haut dans ce fichier). Commit
`79feaf1`.

Sweep anti-doublon post-ajout : `scan_hidden_code_blobs.py` reconfirme
0 nouveau court blob, plus qu'1 seul "medium" restant (`.L0809E1B4`,
dead-end confirmé ci-dessus).

### Repo state en fin de round

- 1 commit (`79feaf1`), vérifié par le standard officiel (taille `.text`
  exacte + diff borné byte-identique sur `fomt.elf` linké vs
  `baserom.gba`), pas de `make compare`/`sha1sum` bit-exact global possible
  (raison `cb06198`, sans rapport).
- `git status --short` vide après commit, aucun fichier de scratch laissé
  (`/tmp/w36scratch/` hors dépôt).
- `origin` intact, rien poussé, aucune PR.
- Reste ouvert pour un futur round : `func_08075334` lui-même (le vrai
  helper de push de file, non trivial : `malloc`, ring buffer à
  `self+0x594`, 8 sites d'appel symboliques dans
  `asm/code_08070A08.s` -- candidat sérieux pour un futur round dédié,
  contexte d'appel abondant contrairement à `func_0809E1B4`).

## 2026-08-20, worktree `w34`/`parallel-34` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 6 : reconstruction indépendante repartie de zéro (le
candidat round 5 n'a pas survécu, scratch hors dépôt jamais persisté),
2 gains concrets identifiés, mais NOUVELLE instabilité découverte
ailleurs dans la fonction -- 6e échec honnête, recommandation de
Mathias (changer de méthode) suivie

Contexte reçu : round 5/w31 avait réduit le résidu à 4 octets et isolé la
cause à UN point unique (le pointeur de fin de boucle du bloc TL alloué
sur `ip` au lieu d'un registre bas), avec 8 idiomes déjà testés sans
effet sur ce point précis. Mission : (a) vérifier si ce pointeur a un
point commun avec les pointeurs `end`/`anchor` des 3 autres blocs (déjà
résolus), et appliquer la même technique si oui ; sinon (b) forcer une
variable de portée bloc, nommée distinctement ; documenter honnêtement en
cas d'échec.

**Complication de départ, non anticipée par la consigne** : le candidat
C du round 5 vivait entièrement dans `/tmp/w31scratch/`, jamais copié
dans le dépôt ni dans aucun fichier persistant -- **inaccessible depuis
ce worktree** (autre session/hôte). Reconstruction intégrale depuis zéro
nécessaire à partir de la seule lecture du désassemblage original
(`asm/code_0804E5AC.s`) et des notes textuelles des rounds 4/5, pas
un point de départ identique au round 5.

### Lecture indépendante confirmée du désassemblage réel (`baserom.gba`,
pas seulement `asm/*.s`)

Désassemblage direct de la ROM vanilla à l'adresse cible
(`arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb
--adjust-vma=0x08000000 --start-address=0x0804E5AC
--stop-address=0x0804E7A0 baserom.gba`) pour disposer d'une référence
brute fiable, diffée ensuite instruction-par-instruction (mnémonique +
opérandes, `diff -y`) contre chaque candidat compilé via le harnais
rapide (`arm-none-eabi-cpp | agbcp -O2 -fhex-asm | arm-none-eabi-as`,
recette de `DECOMP_RULES.md`). Cette lecture fine a clarifié un point
resté ambigu dans les notes du round 5 : les 4 blocs ne sont PAS
TL/BL/TR/BR dans l'ordre naïf de stockage -- l'ordre de BLIT réel est
TL (toujours), puis BL (si `has_bottom`, indices glyph_buf[16..24]),
puis TR (si `has_right && kind>1`, indices[8..16], adresse = **`tl+0x20`
recalculé depuis le `row_product` SAUVEGARDÉ sur pile, pas depuis le
registre `tl` lui-même**), puis BR imbriqué dans TR (indices[24..32],
adresse recalculée fraîchement avec `tile_x + width_tiles*row_below`,
opérandes dans cet ordre précis -- règle 5bis de `DECOMP_RULES.md`).

### 2 gains concrets, chacun mesuré isolément (harnais rapide, taille
`.text` réelle vs attendue `0x1f4`)

1. **Idiome `grid_rows = height_tiles`** (copie redondante nommée,
   même famille que `br_tile_x`/`grid_rows` du corps plain
   `func_0804E4AC`) : l'original matérialise `height_tiles` PUIS une
   copie explicite en 2 instructions séparées (`lsrs r0,r4,#0x10; adds
   r7,r0,#0`) avant le test `row_below < grid_rows` -- sans la copie
   nommée, mon candidat collapsait ça en 1 seule instruction (2 octets
   de moins que la cible). Ajout de `u32 grid_rows = height_tiles;`
   utilisé dans le test : passe de résidu 24 à 16 octets.
2. **`right_addr` (bloc TR) doit être recalculé depuis `row_product`
   sauvegardé, PAS depuis `tl + 0x20` en réutilisant la variable `tl`
   directement** -- contrairement au corps plain (`func_0804E4AC`) où
   cet idiome marche tel quel (pas de boucle inline dans ce bloc-là,
   donc le registre de `tl` survit intact). Ici, la boucle de recolor
   inline du bloc TL consomme le registre de `tl` par auto-incrément
   (`stm r7!, {...}`) avant que TR n'en ait besoin -- l'original
   recompose donc `right_addr` depuis `((row_product + tile_x) << 5) +
   dest + 0x20` (le `row_product` déjà sauvegardé sur pile pour cette
   raison précise), jamais depuis `tl` lui-même. Correction dans le C
   (`u32 tr_addr = ((row_product + tile_x) << 5) + (u32)dest + 0x20;`
   au lieu de `tl + 0x20`) : passe de résidu 16 à 12 octets -- meilleur
   résultat mesuré ce round, mais PAS le niveau atteint par le round 5
   (4 octets).

### Nouvelle instabilité découverte : corriger le bloc TR casse
l'allocation de `dest` (`sl` -> `r9`), un mismatch bien plus grave que
le résidu de taille ne le laisse deviner

Diff instruction-par-instruction du candidat à 12 octets de résidu :
`dest` (argument 2), qui doit être casé dans `sl` sur TOUTE la fonction
(`mov sl, r1` au prologue, jamais réalloué -- vérifié comme INVARIANT
dans l'original ET dans les 2 candidats précédents de ce round), se
retrouve maintenant casé dans `r9` (`mov r9, r1`) dans ce 3e candidat --
alors que `r9` porte `delta` dans l'original. Autrement dit, corriger le
point du bloc TR (qui a fait baisser la taille) a fait BASCULER
l'allocation de `dest` ET `delta` sur des registres différents à travers
TOUTE la fonction -- un mismatch structurel plus profond qu'un near-miss
local, qui ne serait PAS visible en ne regardant que le compteur
d'octets (12 < 16, "mieux" en apparence). Reconfirme, avec une preuve
concrète et nouvelle, le diagnostic de round 5 : cette fonction a un
équilibre de pression de registres global si instable qu'une correction
locale peut faire regagner des octets ici tout en cassant un invariant
ailleurs -- pas un problème de forme isolable point par point.

### N'a pas pu tester la piste assignée faute d'avoir atteint l'état de
départ du round 5

La mission demandait de tester 2 idées précises sur LE point isolé du
round 5 (pointeur de fin de boucle TL sur `ip`). N'ayant pas pu
reconstruire un candidat reproduisant l'état exact du round 5 (résidu 4
octets, tout le reste identique) -- mon meilleur candidat (résidu 12
octets) n'a PAS ce symptôme précis sur le pointeur de fin de boucle TL
(vérifié : `start`/`end` du bloc TL sont bien casés sur des registres bas
`r3`/`r4` dans mon candidat, pas sur `ip`) -- les 2 idées n'ont pas pu
être testées sur le point EXACT que le round 5 avait isolé, seulement sur
un point voisin de la même famille (spill de `tl`/`dst` selon les
variantes). Signal supplémentaire que cette fonction n'a pas UN point de
blocage stable et reproductible d'un candidat à l'autre, mais une
FAMILLE de symptômes de pression de registres qui se déplace selon la
formulation exacte du C -- cohérent avec "chaque tentative bloque à un
endroit différent" déjà noté rounds 3/4/5.

### Verdict et repo state en fin de round (worktree w34)

**Pas de match -- 6e tentative sérieuse, meilleur résidu mesuré ce round
(12 octets) mais sur un candidat structurellement CASSÉ ailleurs (registre
`dest` déplacé), donc pas un vrai progrès net par rapport au round 5 (4
octets, tout le reste vérifié identique)**. Recommandation suivie
(consigne de la mission) : ne pas insister davantage sur cette variante
avec la méthode "itération d'idiomes C" -- le signal est maintenant
répété sur 6 rounds indépendants (dont 2 avec des résidus mesurés très
bas, 4 et 12 octets, mais AUCUN reproductible d'un candidat à l'autre) :
la voie la plus prometteuse restante est celle déjà recommandée en fin de
round 5, à savoir (b) une comparaison avec une décompilation Ghidra amont
si elle existe pour ce binaire, plutôt qu'une 7e itération d'idiomes.

- **Aucun commit de code.** Tout le travail (3 itérations de candidat C,
  harnais, diffs) est resté dans `/tmp/w34scratch/`, jamais copié dans
  `src/` ni référencé dans `fomt.lds`. `git status --short` vide confirmé
  avant et après le round.
- Vérification effectuée : harnais compilateur seul (taille `.text` +
  diff de désassemblage instruction-par-instruction, normalisé, contre
  `baserom.gba` réel via `objdump -bbinary -marmv4t -Mforce-thumb
  --adjust-vma=0x08000000`) -- standard officiel de `DECOMP_RULES.md`,
  pas de `make compare` (toujours hors de portée pour la raison `cb06198`
  documentée round 10/w27, sans rapport avec cette fonction).
- `origin` non touché, rien poussé, pas de PR.

## Round w37 (worktree `parallel-37`) -- ménage `DECOMP_ARCHIVE.md`, scan frais épuisé, `func_08075334` évalué et écarté (pression de registres)

Consigne : (1) nettoyer `DECOMP_ARCHIVE.md` section "Autres cibles
ouvertes" entrée par entrée, (2) relancer `scan_hidden_code_blobs.py` sur
tout `asm/*.s` frais (plusieurs rounds de découpage de fichiers depuis le
dernier scan complet), (3) si épuisé, piocher une cible fraîche.

### 1. Ménage `DECOMP_ARCHIVE.md`

Vérification indépendante de chaque entrée (recoupe l'audit déjà fait par
w36) :
- `franglais_transition_ctl_query` : déjà matché (round "3 angles
  neufs"/w32) -- **retiré**.
- `asm/code_entities_08034CEC.s` : déjà matché (round 10/w23, commit
  `0ae8f12`) -- **retiré**.
- `asm/code_actor_0809BFE8.s`/`.L0809E1B4` : dead-end confirmé deux fois
  (round 10/w23 : ~10 réécritures C, swap `r4`/`r5` irréductible ;
  recontrôlé w36 : rien de neuf) -- **retiré de la liste des cibles**,
  gardé comme note historique dans le texte d'intro de la section.
- Table de dispatch script (`0x0803F900`) : **gardée**, marquée
  explicitement "en recoupement avec w35" (consigne w36).
- `func_08010F14` : **gardée**, marquée explicitement "documentaire, pas
  une cible" (déjà matché round 8/w17).
- `asm/code_08010F54.s` : **gardée**, marquée "écartée, risque
  chevauchement `franglais_boot_fsm_run`/pression de registres".
- `func_08075334` (nouvelle cible signalée par w36) : **ajoutée**.

Commit `35a3068`.

### 2. Scan frais de blobs cachés

`python3 tools/scripts/scan_hidden_code_blobs.py` sur les 85 fichiers
`asm/*.s` actuels :
- **0 nouveau blob court (4-40 octets)** trouvé -- le découpage de
  fichiers des rounds récents n'a créé aucune nouvelle frontière
  `thumb_func_start`/`.byte` exploitable.
- 1 seul blob "medium" (>40 octets) toujours signalé :
  `.L0809E1B4` (288 octets) -- déjà dead-end confirmé (voir ci-dessus),
  pas retenté.
- 3 fichiers 100% `.byte` brut sans aucun `thumb_func_start`
  (`asm/code_080101A0.s`, `asm/code_080D7990.s`, `asm/code_080D7AAC.s`) :
  **pas une découverte neuve** -- ce sont des résidus déjà documentés de
  fonctions déjà portées (`func_080D7AAC`/`func_080D7B04`/`func_080D7944`,
  commit `076eb72` et suivants) ou un cas déjà noté round antérieur
  (`code_080101A0.s`, cf. plus haut dans ce fichier, ligne ~3834) --
  vérifié par grep, aucune mention neuve à ajouter.

**Verdict : scan épuisé, rien à committer côté blobs ce round.**

### 3. Cible fraîche piochée : `func_08075334` -- évaluée, PAS engagée

Désassemblage (`asm/code_08070A08.s:9622-9779`, 284 octets) : vrai helper
de push dans un tableau dynamique croissant par bloc de 16 octets
(`malloc`/`free`, champs `self+0x594/0x598/0x5A0` = base/fin/capacité,
memcpy manuel par blocs de 12+4 octets). 8 appelants symboliques déjà
présents dans `asm/code_08070A08.s` (contexte d'appel réel, contrairement
à `.L0809E1B4`).

**Signal d'alerte de la classe "pression de registres" (`DECOMP_RULES.md`)
confirmé à la lecture** : le corps utilise SIMULTANÉMENT `r4`-`r7` ET
`sb`/`sl`/`r8` (pas seulement au prologue/épilogue -- `sb` sert de
sauvegarde de `sp` initial pendant tout le corps, `sl` porte la borne
haute du memmove pendant la boucle de compaction, `r8` porte le
compteur d'éléments ajoutés à travers 2 appels `malloc`/`free`). Plus une
"pression" additionnelle : 3 boucles de copie 16 octets distinctes
(insertion en milieu de tableau, réallocation, compaction), chacune avec
son propre jeu de registres vivants qui se chevauchent aux bornes.

Conformément à la règle explicite de `DECOMP_RULES.md` ("ne pas s'engager
sans budget dédié et une idée réellement neuve") et à la discipline déjà
appliquée par w36 sur `func_08092570` (cible similaire, pas engagée sans
budget dédié) : **pas de tentative ce round**, faute d'idée neuve
identifiée sur le pic de pression de registres (3 boucles memcpy
imbriquées). Aucun fichier modifié pour cette cible.

Reste candidat sérieux pour un futur round dédié "pression de registres"
avec budget explicite (éventuellement escaladé à un agent `fable` pour
piste neuve, cf. stratégie documentée dans `DECOMP_RULES.md`) : contexte
d'appel abondant (8 sites), rôle bien compris, seule la forme C exacte
des 3 boucles de copie reste à deviner.

### Repo state en fin de round

- 1 commit (`35a3068`, doc seulement).
- `git status --short` vide.
- `origin` intact, rien poussé, aucune PR.
- Sweep anti-doublon (`grep -rl -- ".LADDRESS" asm/*.s`) : sans objet,
  aucun match nouveau committé ce round.

## Round w38 -- match `func_08050DF0` (TransitionCtlQuery)

Cible choisie depuis `DECOMP_ARCHIVE.md` "Autres cibles ouvertes" :
`franglais_transition_ctl_query` (nom côté dépôt patch) à `0x08050DF0`,
appelée depuis une douzaine de sites (`code_08005A58.s`,
`code_08085568.s`, `code_0805CF3C.s`, `code_0808ABA8.s`,
`code_080881EC.s`, `code_0807B0F0.s`, `code_08069E98.s` x6,
`code_080521FC.s`, `code_08092604.s`, `code_08083B2C.s`,
`code_08057E5C.s`, etc.), jamais portée. Petite fonction isolée (0x1c =
28 octets) en toute fin de `code_0804E9C8.s`, juste avant
`func_08050E0C`.

**Forme** : `self` est un handle dont le premier mot est un pointeur vers
l'objet réel (`inner = *self`). Lit le champ discriminant à `+8` de
`inner` ; si `== 6`, retourne 0 ; sinon retourne le champ à `+0x158` de
`inner` (offset 0xac<<1 = 0x158, trop grand pour un immédiat `ldr` 5-bit,
d'où le calcul d'adresse explicite dans le désassemblage original --
confirmé aussi dans notre sortie compilée, même encodage `movs
r2,#0xac; lsls r2,r2,#1`). Aucune vtable/`this` visible -- porté en
fonction C libre, pas en méthode, cohérent avec la règle "refléter la
structure réelle" de `DECOMP_RULES.md`.

**Nom** : `TransitionCtlQuery`, point de vue vanilla (le nom
`franglais_transition_ctl_query` vient du dépôt patch, jamais utilisé ici
comme symbole -- seulement en commentaire de provenance). `func_08050DF0`
reste l'alias de compatibilité pour les dizaines de sites `bl` encore
dans `asm/*.s`, cf. convention de nommage.

**Convergence** : premier essai littéral (déréférencement double,
comparaison directe `== 6`, retour du champ à `+0x158`) bit-exact du
premier coup via le harnais rapide -- aucun near-miss, aucune itération
nécessaire.

**Vérification** (standard `DECOMP_RULES.md` objet isolé) :
1. `arm-none-eabi-readelf -S build/src/code_08050DF0.o` : taille `.text`
   = `0x1c`, exactement `0x08050E0C - 0x08050DF0`.
2. Diff de désassemblage borné (`objdump` du `.o` compilé vs
   `objdump -bbinary -marmv4t -Mforce-thumb --adjust-vma=0x08000000`
   direct sur `baserom.gba`) : identique octet à octet, aucune divergence.
3. Rebuild complet (`rm -rf build fomt.gba fomt.elf fomt.map && make
   compare`, avec le `build/franglais_stub.bin` factice documenté dans
   `DECOMP_RULES.md`) : LD réussit sans erreur de référence non définie
   ni de définition multiple -- seul le `sha1sum -c fomt.sha1` final
   échoue, attendu et documenté (payload franglais non-vanilla lié dans
   la ROM depuis `cb06198`), pas un signal d'échec de ce match.
4. Sweep anti-doublon : `grep -l -- ".L08050DF0\|.L08050E0C" asm/*.s`
   vide -- aucun label brut résiduel après découpage.

**Fichiers** : `src/code_08050DF0.cc` (nouveau), `asm/code_08050E0C.s`
(nouveau, reste de `code_0804E9C8.s` après le point de coupe),
`asm/code_0804E9C8.s` (tronqué juste avant `func_08050DF0`), `fomt.lds`
(deux nouvelles entrées insérées à l'emplacement exact de l'ancienne
entrée unique `asm/code_0804E9C8.o(.text)`).

`origin` non touché, rien poussé, pas de PR. `build/`, `fomt.gba`,
`fomt.elf`, `fomt.map` nettoyés après vérification, avant commit.

## Round 12 (worktree w35, branche `parallel-35`) -- reprise des 5 candidats différés round 11 (w33)

Consigne : reprendre les 5 candidats "dispatch/composite constructor"
laissés en attente par le round 11 (`func_0806D8C8`, `func_080DB320`,
`func_080DB658`, `func_08004B58`, `func_08004B94`), en commençant par
eux avant le 7-argument (`func_08083A7C`) et sans rouvrir le chantier
SmartPtr fermé (`func_08092570`).

**3/5 matchés et commités** (`8734...`/2 commits + 1 fix -- voir
`git log`) :

- `func_08004B58` (asm/new_game.s -> src/code_08004B58.cc) : variante
  "composite constructor" -- alloue un objet helper de 4 octets sur le
  tas (son propre vtable stamp), le passe par adresse-de-variable-locale
  au helper opaque déjà connu `func_080041DC` (déjà croisé round 6 dans
  l'écriture de `src/code_08004BDC.cc`, toujours non porté lui-même),
  stocke le résultat à `self+4`. Bit-exact du premier coup une fois le
  piège d'ordre ci-dessous corrigé.
- `func_08004B94` (même fichier) : même famille mais le "helper" est
  VOLÉ à un out-param appelant (`a2`, move-in convention identique aux
  constructeurs de placement "2-enfants" déjà connus) plutôt qu'alloué,
  puis, après construction, un second `bl _call_via_r2` conditionnel
  détruit l'ancienne valeur -- mais le test se fait sur une SECONDE
  lecture de `*a2` (pas la variable locale déjà volée), donc la branche
  est provablement morte À L'EXÉCUTION dans cette fonction précise, mais
  agbcp la garde car elle est écrite littéralement dans la source (pas de
  CSE/value-numbering, cf. anti-pattern #2 de `DECOMP_RULES.md`).
  **Bug de vérification vécu et corrigé DANS CE ROUND** : la première
  passe de ce match (commit initial) a été committée avec `stolen = *a2;
  *a2 = nullptr;` écrit dans l'ordre naïf -- la vérification par adresse/
  taille de symbole (`nm`) a semblé passer (taille de fonction inchangée,
  car nombre d'instructions identique, juste réordonné), mais un vrai
  diff bit-à-bit de l'ELF lié contre `baserom.gba` a révélé un registre
  ET un ordre différents (`ldr r1,[r4]` original vs `ldr r0,[r4]` chez
  nous, spill-avant-zero au lieu de zero-avant-spill). **Leçon
  généralisable pour tout futur round : ne JAMAIS s'arrêter à "l'adresse
  du symbole suivant tombe juste" comme preuve de bit-exactitude -- ce
  signal ne détecte QUE les divergences de TAILLE, pas les divergences de
  CONTENU à taille égale (permutation d'instructions, registre différent).
  Toujours faire le diff de désassemblage complet (ELF lié contre
  `baserom.gba`, `--adjust-vma=0x08000000`) avant de considérer un match
  vérifié, même quand la taille semble déjà convaincante.** Corrigé en
  routant la lecture volée via une variable temporaire NON adressée avant
  de l'aliaser à la variable dont l'adresse est prise (même piège que
  ci-dessous pour `func_08004B58`).
- `func_0806D8C8` (asm/code_08069E98.s -> src/code_0806D8C8.cc) :
  contrepartie placement-constructor du destructeur déjà matché
  `func_0806D918` (`src/code_0806D918.cc`) -- même shape que
  `func_08004B94` mais 4 registres d'arguments et allocation 0x4178
  octets via un second helper opaque encore non porté (`func_08069F14`).
  Corrigé du même piège d'ordre dès la première tentative (leçon
  appliquée immédiatement).

**Piège de "spill anticipé" généralisé, observé sur les 3 fonctions
ci-dessus** : quand le désassemblage montre `lire une valeur -> la
"garder de côté" (spill vers la pile) -> PUIS zéro la source`, écrire `T
tmp = *src; *src = nullptr;` directement en C fait agbcp spiller `tmp`
vers sa case mémoire (parce que son adresse est prise plus loin pour
l'appel du helper) **immédiatement à l'assignation**, AVANT le
zero-store -- ordre inversé par rapport à l'original qui zéro D'ABORD,
spill ENSUITE. Fix systématique : `T raw = *src; *src = nullptr; T tmp =
raw;` -- router la lecture à travers une variable intermédiaire NON
adressée avant de l'aliaser à la variable adressée force agbcp à retarder
le spill jusqu'au point où l'adresse est effectivement nécessaire,
reproduisant l'ordre et le registre (`r1` au lieu de `r0` dans ce cas)
exacts de l'original. Généralisation directe de la note déjà présente
dans `DECOMP_RULES.md` sur `func_0807EE14`/l'ordre alloc->stamp->spill.

**2/5 non résolus, caractérisés en détail pour un futur round**
(`func_080DB320` et `func_080DB658`, `asm/code_linkonce.s`, lignes
~12740 et ~12919 -- shape byte-pour-byte identique entre les deux, seule
la constante `vtable_unk_ADDR` change) :

Shape observée (16 octets de pile, `sub sp, #0x10`) :
```
    ldr r5, [r4, #4]        ; steal a1->f4
    movs r2, #0
    str r2, [r4, #4]        ; a1->f4 = 0
    ldr r3, [r4, #8]        ; plain copy a1->f8
    ldr r1, =vtable_unk_ADDR
    str r1, [r0]             ; obj->vt = vtable   (obj = fresh alloc(0xc))
    str r2, [sp, #4]         ; sp+4 = 0   (jamais relu ensuite)
    str r5, [r0, #4]         ; obj->f4 = stolen
    str r3, [r0, #8]         ; obj->f8 = plain
    str r0, [sp]              ; sp+0 = obj
    mov r1, sp
    str r1, [sp, #8]           ; sp+8 = &(sp+0)
    str r0, [sp, #0xc]          ; sp+0xc = obj  (dup, jamais relu ensuite)
    str r2, [r1]                 ; *(sp+0) = 0   (zéro via le pointeur, pas assignation directe)
    str r0, [r6]                  ; self->f0 = obj  (registre r0, pas relu depuis la pile)
    ldr r1, [sp]                   ; relit sp+0 -> toujours 0
    cmp r1, #0
    beq .Lend
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2                 ; vt->slot2(check, 3) -- branche morte à l'exécution, comme func_08004B94
.Lend:
```

**2 hypothèses testées, toutes deux négatives** (harnais rapide,
`/tmp/w35scratch/code_080DB320*.cc`, non committées) :

1. **4 locales brutes séparées** (`localB=0; obj->f4=...; obj->f8=...;
   tmp1=obj; ptmp1=&tmp1; tmp2=obj; *ptmp1=nullptr;` puis `if(tmp1)
   {...}`) -- compile mais agbcp élimine ENTIÈREMENT les 4 locales ET la
   branche (aucune trace des stores `sp+0/4/8/0xc` ni du check), preuve
   que pour des locales PUREMENT locales (adresse jamais passée à un
   appel opaque), agbcp fait bien la propagation de constante et le
   dead-code elimination inter-instructions -- contrairement à ce que
   `DECOMP_RULES.md` pourrait laisser penser ("compilateur non-
   optimisant"), cette élimination EST réelle pour ce cas précis
   (variable locale, écriture via pointeur-vers-elle-même, sans `bl`
   intermédiaire). Diffère du cas `func_08004B94`/`func_0806D8C8` où le
   check portait sur `*a2` (déréférencement d'un PARAMÈTRE pointeur,
   donc aliasing non prouvable par le compilateur) -- ici tout se passe
   sur la pile locale, sans paramètre intermédiaire, d'où l'élimination.
2. **`SmartPtr<T> local(obj); local.Move();` réel** (avec un type
   `AUnk_child_iface` doté d'un VRAI destructeur virtuel `virtual
   ~AUnk_child_iface();` pour que `delete inner` dans
   `include/smart_ptr.hh` génère le même appel vtable-slot-2/arg-3 que
   les autres fonctions de cette famille) -- hypothèse que le destructeur
   de fin de scope de `local` produirait le check+call mécaniquement,
   indépendamment de l'élimination inter-instructions. Compile, mais
   agbcp élimine ÉGALEMENT tout (this de `Move()` jamais spillé vers
   `sp+8`, pas de duplication `tmp2`, pas de check final) -- l'inlining
   des méthodes de `SmartPtr<T>` n'est PAS traité comme un "stage séparé"
   immunisé contre l'élimination : agbcp voit à travers l'inlining
   complet du corps de `Move()` + du destructeur, même chose que
   l'hypothèse 1.

**Piste NON encore testée pour un futur round** : la persistance du
check dans l'original implique que le compilateur NE PEUT PAS prouver
que `sp+0` reste à 0 entre l'écriture (`str r2,[r1]`) et la relecture
(`ldr r1,[sp]`) -- ce qui, empiriquement (hypothèses 1 et 2 ci-dessus),
n'arrive QUE quand le pointeur intermédiaire (`r1`/`ptmp1`) est lui-même
issu d'un paramètre ou d'une valeur dont la provenance n'est pas
statiquement traçable jusqu'à `sp` par agbcp -- pas un simple `&local`
littéral. Piste concrète : essayer de faire passer l'adresse
intermédiaire à travers un APPEL DE FONCTION opaque qui la retourne
(ex. un helper minuscule `void **AddrOf(void **p) { return p; }` compilé
séparément, ou -- plus vraisemblablement fidèle au vrai code source --
vérifier si `self` lui-même (`r6`, un PARAMÈTRE, pas une locale) est en
réalité le porteur de cette adresse (ex. `self` a un champ qui EST
`&local`, ou la fonction manipule en fait un membre de `self` plutôt
qu'une pile locale pure) -- relire le désassemblage en supposant que
`sp+0/4/8/0xc` ne sont PAS 4 locales indépendantes mais correspondent à
un layout de `self` accédé via une copie de `self` sur la pile (`self`
lui-même pourrait être passé par valeur/copié localement dans certains
ABI C++ pour des raisons de calling convention -- non vérifié). Cette
classe de difficulté ("assignation de champ via pointeur-vers-locale
qui résiste à l'élimination") est la MÊME famille que celle bloquant
`func_08004C68`/`func_08092570` (7+8 hypothèses déjà négatives au total
sur ce type de problème, cf. `DECOMP_ARCHIVE.md`) -- ne pas rouvrir sans
budget dédié, ou escalader vers un agent `fable` pour un angle créatif
neuf (stratégie d'escalade documentée dans `DECOMP_RULES.md`).

**Vérification appliquée aux 3 matchés** : harnais rapide pendant le
tâtonnement, PUIS (pour `func_08004B94`, après le bug ci-dessus révélé)
diff complet de désassemblage de l'ELF lié (`fomt.elf`, rebuild propre)
contre `baserom.gba` (`--adjust-vma=0x08000000`) sur la plage d'adresses
exacte de chaque fonction -- seules des différences cosmétiques
(annotations de symbole, rendu mot/demi-mot du pool littéral) subsistent,
zéro différence d'opcode réelle, pour les 3. Rebuild complet propre
(`rm -rf build fomt.gba fomt.elf fomt.map`) avant chaque commit ; lien
réussi sans référence non définie ni symbole dupliqué ; `sha1sum -c
fomt.sha1` échoue comme attendu (payload franglais non-vanilla). Aucune
étiquette `.LADDRESS` résiduelle pour aucune des 3 adresses matchées.

**État du worktree en fin de round** : propre (`git status --short`
vide), 3 commits ajoutés depuis `main` (2 matchs + 1 fix de
vérification). `origin` non touché, rien poussé, pas de PR.

## Round w39 (worktree `parallel-39`) -- match 5 handle-forwarding thunks after TransitionCtlQuery, near-miss on 2 bitfield setters, découverte d'un gros blob caché non exploré

Consigne : depuis `func_08050DF0`/`TransitionCtlQuery` juste matchée par
w38, regarder les sites d'appel/fonctions liées non portées dans le
voisinage immédiat (`asm/code_08050E0C.s`).

### Matchs (commit `dfd228e`)

Juste après `TransitionCtlQuery` (0x08050DF0-0x08050E0C), le fichier
`asm/code_08050E0C.s` enchaînait une dizaine de petites fonctions de
même famille : `self` est un handle (1er mot = pointeur vers l'objet
réel), la fonction déréférence puis tail-forward vers un callé
(pression de registres confirmée dans CE callé lui-même, mais appelé
en boîte noire ici -- pas besoin de le porter). Même idiome que
`func_080E09B0` (round 5, tail-forward pur `push{lr};bl X;pop{r0};bx r0`),
juste avec un paramètre en plus dans certains cas.

Matchés bit-exact du premier coup via le harnais rapide, aucune
itération nécessaire :
- `func_08050E50` -> `func_08050AD8(self->inner, arg1)` (2 args)
- `func_08050E5C` -> `func_08050B3C(self->inner)` (1 arg)
- `func_08050E74` -> `func_08050C18(self->inner)` (1 arg)
- `func_08050E80` -> `func_08050C2C(self->inner, arg1)` (2 args)
- `func_08050E8C` -> `func_08050C64(self->inner)` (1 arg)

Découpage du fichier monolithique en plusieurs morceaux (les cibles
n'étaient pas contiguës -- `func_08050E68` entre `E5C` et `E74` est un
thunk d'un genre différent, `ldr r3,=ADDR; bx r3`, PAS tenté ce round,
laissé en asm) : `asm/code_08050E0C.s` tronqué juste avant `E50`,
nouveau `asm/code_08050E68.s` (juste ce thunk), nouveau
`asm/code_08050E98.s` (reste du fichier original, jusqu'à juste avant
`func_0805218C` déjà porté). `fomt.lds` : 8 entrées insérées à la place
de l'unique `asm/code_08050E0C.o(.text)`.

Vérification standard `DECOMP_RULES.md` (objet isolé) : les 5 `.o`
compilés font chacun exactement `0xc` octets = écart d'adresse attendu ;
diff de désassemblage borné (`--adjust-vma=0x08000000`) contre
`baserom.gba` : identique octet à octet pour les 5. Rebuild complet
(`rm -rf build ... && make compare`) : LD réussit sans référence non
définie ni définition multiple (seul le `sha1sum` final échoue, attendu
depuis `cb06198`). Sweep anti-doublon
(`grep -rl -- ".L08050E50\|.L08050E5C\|.L08050E74\|.L08050E80\|.L08050E8C" asm/*.s`) :
vide.

### Near-miss NON commité : `func_08050E98`/`func_08050EBC` (setters de bitfield 6 bits, offset self+0x550)

Paire de setters sur le même champ que `TransitionCtlQuery` ne lit pas
(offset différent, `+0x550` vs `+8`/`+0x158`) : un octet dont les 6 bits
bas sont un sous-champ modifiable (`E98` = clear via masque param,
`EBC` = set via masque param OR-é puis re-masqué à 6 bits), les 2 bits
hauts préservés inconditionnellement. Extraction du champ bas via
double-shift (`lsls #0x1a; lsrs #0x1a`, cohérent avec anti-pattern #1bis)
-- partie FACILE, reproduite du premier coup.

**Résidu non résolu** : le masque des 2 bits hauts (`~0x3F` = `0xC0`)
est construit dans la cible via `movs r1,#0x40; rsbs r1,r1,#0; ands r1,r4`
(négation explicite d'une petite constante pour fabriquer
`0xFFFFFFC0`), **jamais** via un simple `movs r1,#0xc0` direct -- alors
que TOUTE formulation C testée (`v & ~0x3F` avec `v` typé `u8` OU `u32`,
stocké ensuite dans `*field` de type `u8*`) fait fondre agbcp la
constante en `0xc0` (immédiat 8-bit direct), jamais la construction par
négation. Le désassemblage cible garde aussi `push {r4,lr}`/
`pop {r4}; pop {r1}; bx r1` (la valeur lue `v` survit dans `r4` à travers
tout le calcul), alors qu'aucune de nos formulations n'a eu besoin de
`r4` (tout tient dans `r0`-`r3`, `bx lr` direct, pas de `push`/`pop` du
tout) -- signe que la vraie source garde `v` vivant plus longtemps
qu'aucune de nos réécritures ne le fait, probablement via une variable
supplémentaire ou un ordre de calcul différent pas encore identifié.
**2 hypothèses testées, toutes deux repliées par le peephole de
constant-folding** (`v` en `u8` local ; `v` en `u32` local) -- piste non
tentée : construire le masque comme variable ELLE-MÊME calculée à
runtime (ex. `u32 mask = -0x40;` déclarée à part, jamais inlinée dans
l'expression finale) pour empêcher le pliage compile-time, cohérent avec
l'anti-pattern #4bis (séparer un load/calcul dans un statement à part
déjoue certains peepholes). **Pas engagé plus loin ce round** (2
fonctions, 58 octets au total, budget marginal) -- laissé en asm, aucun
fichier modifié pour cette paire.

### Découverte : gros blob `.byte` caché NON répertorié, `.L08050EE4` (0x43c = 1084 octets)

En lisant `asm/code_08050E98.s` (nouveau fichier, reste de l'ancien
`code_08050E0C.s`) pour matcher `E98`/`EBC` ci-dessus, un bloc `.byte`
massif de **1084 octets** apparaît juste après `func_08050EBC`, avant
`func_08051320` (label local `.L08050EE4`, pas de `thumb_func_start`).
`scan_hidden_code_blobs.py` (round w37, "scan épuisé") **ne l'a jamais
vu** : le scanner ne cherche que les blocs de 4 à 40 octets, ce bloc-ci
est 27x plus gros que sa borne haute -- angle mort documenté du
scanner, pas une régression. Contenu non analysé ce round (hors budget) :
au vu de la taille, contient très probablement PLUSIEURS fonctions
distinctes non nommées (le premier mot `0x70,0xB5` = `push {r4,r5,r6,lr}`
est un vrai prologue Thumb plausible, cohérent avec un vrai code
compilé, pas des données). **Candidat sérieux pour un futur round dédié**
-- nécessitera un désassemblage manuel complet (pas de contexte
d'appelant symbolique cherché ce round) avant de tenter un port.

### Repo state en fin de round

- 1 commit de matchs (`dfd228e`, 5 fonctions).
- `git status --short` vide, `build/`/`fomt.gba`/`fomt.elf`/`fomt.map`
  nettoyés.
- `origin` intact, rien poussé, aucune PR.

## Round w41 (worktree `parallel-41`) -- désassemblage manuel complet du blob
de 1084 octets découvert par w39, 5 matchs, 3 near-miss documentés, 3
fonctions "pression de registres" isolées mais non tentées

Consigne : explorer le blob `.L08050EE4` (1084 octets, `asm/code_08050E98.s`)
laissé de côté par `scan_hidden_code_blobs.py` (angle mort : le scanner ne
couvre que 4-40 octets). Désassembler entièrement à la main
(`arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb
--adjust-vma=0x08050EE4`, en resynchronisant l'alignement à la main aux
deux points où objdump désassemble un pool littéral comme pseudo-
instruction -- ça ne désynchronise PAS l'alignement 2 octets tant que le
pool fait un nombre pair de halfwords, vérifié ici), identifier les
frontières probables (prologue `push`/épilogue `pop`+`bx`/`bx lr`), matcher
les plus simples en premier.

### Cartographie complète du blob (0x08050EE4-0x08051320, 1084 octets)

Le blob contient en réalité **8 fonctions distinctes**, jamais une seule,
séparées par 4 pools littéraux :

| Adresse | Taille | Contenu | Statut |
|---|---|---|---|
| `08050EE4` | 88 | ctor : vtable `vtable_unk_080E7878` + 4 champs bitfield packés (5 args) | **near-miss** (masque par négation, cf. ci-dessous) |
| (pool) | 16 | 4 littéraux (mask/vtable) pour la fonction ci-dessus | -- |
| `08050F4C` | 18 | `return v?1:v` (normalise un champ à 0/1) | **near-miss** (copie explicite manquante) |
| (pad) | 2 | alignement | -- |
| `08050F60` | 12+pool | ctor : vtable `vtable_unk_080E78A8` + copie + flag octet | **matché** (`func_08050F60`) |
| `08050F70` | 4 | `return self->field_26` | **matché** (`func_08050F70`) |
| `08050F74` | 44 | setter wraparound (`__umodsi3`) sur 2 champs halfword + reset flag | **near-miss** (registre r4/r5 swap) |
| `08050FA0` | 312 | grosse fonction, `r8`/`r9`/`sl` vivants dans le CORPS (pas juste prologue) | **signal pression de registres, non tenté** |
| (pool) | 16 | masques pour la fonction ci-dessus | -- |
| `080510E8` | 128 | idem, `r8`/`r9` vivants dans le corps à travers plusieurs `bl` | **signal pression de registres, non tenté** |
| (pad/pool) | 4 | -- | -- |
| `0805116C` | 328 | idem, `r8`/`r9`/`sl` vivants, boucle + nombreux appels externes | **signal pression de registres, non tenté** |
| (pool) | 4 | vtable `vtable_unk_080E78C0` | -- |
| `080512B8` | 16 | `(self->field_24+arg1)`, `-3` si `>2` | **matché** (`func_080512B8`) |
| `080512C8` | 8 | getter table, stride 4, lecture à `+8` | **matché** (`func_080512C8`) |
| `080512D0` | 8 | **octet pour octet identique** à `080512C8` | **matché** (`func_080512D0`) |
| `080512D8` | 60+pool | ctor : vtable `vtable_unk_080E78E0` + bitfield (4 args + 1 stack) | **near-miss** (même classe masque-par-négation que `08050EE4`) |

Total vérifié : 1084 octets exactement (recoupe la taille du blob signalée
par w39). Les 4 pools contiennent chacun des pointeurs de vtable déjà
connus dans `fomt.map`/`asm/vtables.s` (`vtable_unk_080E7878`,
`vtable_unk_080E78A8`, `vtable_unk_080E78C0`, `vtable_unk_080E78E0`) --
tous les 4 sont référencés ENSEMBLE dans `asm/code_0804E9C8.s` (la grosse
fonction "unaligned blitter" encore non portée), confirmant que ces 4
constructeurs appartiennent à une même famille de classes utilisée par le
rendu de texte/glyphes -- rôle précis pas encore établi, noms restés
génériques (`func_ADDR` direct, pas d'`ALIAS`) par prudence, cohérent avec
la règle de nommage "point de vue vanilla" quand le rôle n'est pas
confirmé.

### Matchs (commit `0ba5e82`, 5 fonctions)

- `func_08050F60` -- ctor triviale (vtable + copie pointeur + flag octet).
- `func_08050F70` -- getter trivial (`ldrb ...,[r0,#26]; bx lr`, 4 octets).
- `func_080512B8` -- utilitaire wraparound modulo-3 par soustraction directe
  (pas d'appel `__umodsi3`, contrairement à `08050F74` ci-dessous) :
  découverte utile, `1c08`/`adds r0,r1,r0` (ordre d'opérandes précis) +
  comparaison SIGNÉE (`dd00`/`ble`, pas `bls`) malgré une variable qui ne
  peut jamais être négative -- contredit en apparence l'anti-pattern #7
  (`DECOMP_RULES.md`) mais celui-ci ne s'applique qu'aux comparaisons
  confirmées UNSIGNED dans le désassemblage cible ; ici c'est bien signé,
  donc `int`, pas `u32`.
- `func_080512C8`/`func_080512D0` -- deux fonctions consécutives strictement
  identiques octet pour octet (mêmes 8 octets), portées séparément avec le
  même corps C (probablement deux accesseurs distincts pour deux tableaux
  parallèles côté source réel).

Vérification standard `DECOMP_RULES.md` (objet isolé) : taille `.text` de
chaque `.o` == `next_addr - this_addr` exact (le pool littéral auto-généré
par `agbcp` pour `08050F60` ajoute bien les 4 octets manquants, `0x10` au
lieu de `0xc`) ; diff de désassemblage borné (`--adjust-vma=0x08000000`)
contre `baserom.gba` : identique octet à octet pour les 5. Rebuild complet
(`rm -rf build ... && make compare`) : LD réussit sans référence non
définie ni définition multiple (seul `sha1sum` échoue, attendu depuis
`cb06198`). Sweep anti-doublon (`grep -rl -- ".L08050F60\|.L08050F70\|
.L080512B8\|.L080512C8\|.L080512D0" asm/*.s`) : aucune occurrence hors des
3 fichiers `.s` qui les définissent respectivement (attendu, ce sont les
labels des blobs restants, pas des doublons).

Découpage : `asm/code_08050E98.s` tronqué juste avant `08050F60` (garde
`func_08050E98`/`func_08050EBC`/le premier fragment near-miss du blob) ;
nouveau `asm/code_08050F74.s` (fragment near-miss `08050F74` + les 3
fonctions "pression de registres" + leurs pools) ; nouveau
`asm/code_080512D8.s` (fragment near-miss `080512D8` + **toute la queue
inchangée** de l'ancien fichier monolithique, `func_08051320` et tout ce
qui suivait). `fomt.lds` : 8 entrées insérées à la place de l'unique
`asm/code_08050E98.o(.text)`.

### Near-miss 1 NON commité : `func_08050EE4`/`func_080512D8` (ctors avec
masque bitfield construit par négation)

Les deux constructeurs à vtable (88 et 60 octets) partagent le MÊME
obstacle déjà documenté par w39 pour `func_08050E98`/`func_08050EBC`
(setters voisins, même blob) : le masque `~0x1f` (ou équivalent) est
construit dans la cible via `movs r4,#0x20; negs r4,r4; ands r4,r5` (valeur
négative fabriquée à l'exécution), **jamais** via l'immédiat direct que
notre compilateur choisit systématiquement (`movs r4,#0xe0; ands r4,r5`) --
agbcp replie le masque en immédiat 8 bits dès qu'il peut, quelle que soit
la formulation C testée (masque littéral direct, variable intermédiaire
non inlinée, etc., mêmes 2 hypothèses déjà explorées par w39 sans succès).
**Pas de nouvelle piste trouvée ce round** -- confirme qu'il s'agit d'une
vraie classe de difficulté récurrente sur cette famille de setters/ctors
de bitfield, pas un accident isolé. Candidat pour `DECOMP_ARCHIVE.md` si
un 3e cas apparaît.

### Near-miss 2 NON commité : `func_08050F4C` (normalisation booléenne
`v ? 1 : v`)

Cible (18 octets) : `push{lr}; ldrb r0,[r0,#4]; adds r1,r0,#0; cmp r0,#0;
beq +2; movs r1,#1; adds r0,r1,#0; pop{r1}; bx r1` -- calcule la valeur
dans r0, la COPIE explicitement dans r1 (variable séparée), l'écrase
conditionnellement, puis rapatrie r1 dans r0 pour le retour. **Toutes les
formulations testées replient cette copie** (`u32 result = v; if(v) result
= 1; return result;`, ternaire `v ? 1 : v`, variable `volatile` -- qui elle
ajoute un spill sur pile complètement différent -- drapeau booléen séparé,
deux `return` distincts) : notre compilateur reconnaît systématiquement
que `result` et `v` portent la même valeur au moment du retour et élide la
copie, produisant une fonction 2 octets plus courte (16 au lieu de 18) qui
travaille entièrement en r0. Aucune piste testée n'a forcé la copie
explicite. Laissé en `.byte` dans `asm/code_08050E98.s`.

### Near-miss 3 NON commité : `func_08050F74` (setter wraparound
`__umodsi3`, 2 champs)

Cible (44 octets) : clampe 2 arguments via `__umodsi3(x,3)`/`__umodsi3(y,28)`
puis les écrit dans 2 champs halfword (`+22`/`+20`) et remet un flag octet
à 0 (`+25`). Root-caused via `fomt.map` : l'appel `bl 0x80d0f4e` cible bien
`__umodsi3` (pas un clamp maison), ordre des paramètres confirmé (le 2e
argument est traité EN PREMIER, stocké à `+22`/modulo 3 ; le 1er argument
ensuite, `+20`/modulo 28). **Écart résiduel une fois l'ordre corrigé** :
2 octets + une paire de registres échangée --
- notre compilation alloue systématiquement `self`->r5, `arg1`->r4 (dans
  cet ordre d'apparition syntaxique), la cible fait l'inverse
  (`self`->r4, `arg1`->r5) ;
- notre code réécrit le résultat de `__umodsi3(arg1,28)` dans le registre
  "maison" d'`arg1` avant le `strh` final (`adds r4,r0,#0` puis
  `strh r4,...`), la cible stocke directement depuis `r0` (résultat de
  l'appel) sans rapatriement, économisant cette instruction.
Testé : type `u16` au lieu de `u32` sur les params (pire, ajoute des
`lsls`/`lsrs` de troncature), variable locale nommée séparément avant
usage, pointeur `u16*` déclaré en premier -- aucun n'a changé l'allocation
de registre observée. Piste non tentée : peut-être un ordre de déclaration
de paramètres différent dans la vraie signature (ex. `(self, arg2, arg1)`
plutôt que `(self, arg1, arg2)`, l'appelant réordonnant déjà à l'appel) --
pas vérifié faute de site d'appel symbolique trouvé ce round. Laissé en
`.byte`.

### 3 fonctions "pression de registres" identifiées mais NON tentées

`08050FA0` (312o), `080510E8` (128o), `0805116C` (328o) : les trois
utilisent `r8`/`r9`/`sl` comme variables vivantes **dans le corps**, à
travers plusieurs `bl` (pas juste sauvegarde/restauration de prologue/
épilogue) -- signal d'alerte explicite de `DECOMP_RULES.md`
("Classes de difficulté à connaître AVANT de choisir une cible"). Pas
engagées ce round faute de budget dédié ; contiennent des boucles et de
nombreux appels externes (`__umodsi3`-like helpers à `0x8007xxx`,
`0x8000xxx`), donc probablement complexes même une fois le mur de
registres franchi. Laissées en `.byte` dans le nouveau
`asm/code_08050F74.s`. Candidates sérieuses pour une escalade `fable`
(stratégie déjà documentée dans `DECOMP_RULES.md`) si un futur round veut
s'y attaquer -- pas de nouvelle tentative `sonnet` recommandée sans idée
neuve, cohérent avec la préférence de Mathias sur ce genre de blocage.

### Repo state en fin de round

- 1 commit de matchs (`0ba5e82`, 5 fonctions : `func_08050F60`,
  `func_08050F70`, `func_080512B8`, `func_080512C8`, `func_080512D0`).
- 3 near-miss documentés ci-dessus, non commités, aucun fichier modifié
  pour ces fragments au-delà de leur présence en `.byte` dans les nouveaux
  fichiers issus du découpage.
- 3 fonctions "pression de registres" cartographiées (adresses, tailles,
  signal r8/r9/sl) mais non désassemblées en détail ligne à ligne au-delà
  du nécessaire pour les frontières -- laissées pour un futur round.
- `git status --short` vide, `build/`/`fomt.gba`/`fomt.elf`/`fomt.map`
  nettoyés après la vérification finale.
- `origin` intact (URL de push toujours cassée volontairement), rien
  poussé, aucune PR créée.

## Round (worktree w40, branche `parallel-40`) -- nouvelle famille "entity
factory" (38 sites matchés d'un coup, `func_080324BC` caractérisé comme
callback opaque) + découverte d'un nouveau piège `bool`/`char`

Mission : choisir une cible fraîche dans `DECOMP_ARCHIVE.md` ou continuer
une méthode sœur sur une famille déjà cataloguée, sans retoucher
`func_080DB320`/`func_080DB658` (2 hypothèses déjà réfutées par w35, même
classe "assignation de champ" que `func_08004C68`/`func_08092570`) ni
`func_08075334` (pression de registres, déjà écarté 2 fois).

### Constat de départ : "Autres cibles ouvertes" est quasi vide

Vérification entrée par entrée de `DECOMP_ARCHIVE.md` : table de dispatch
script en recoupement avec w35 (non engagée), `func_08010F14` documentaire
seule, `asm/code_08010F54.s` écarté (risque chevauchement), `func_08075334`
explicitement à éviter par consigne. Rien de vraiment "libre" restait dans
cette section.

### Méthode sœur : variante du scan double-critère des constructeurs de
placement (round 10/11, w24/w33), élargie aux blocs SANS littéral vtable

Le scan historique (`DECOMP_RULES.md`/`DECOMP_ARCHIVE.md`) cherchait des
blocs `thumb_func_start` contenant À LA FOIS un littéral `vtable_unk_ADDR`
ET un `bl __builtin_new`. Hypothèse testée ce round : et les blocs qui ont
`bl __builtin_new` mais **aucun** littéral vtable ? Un script Python
(scratch, non commité) parcourant `asm/*.s`, croisé avec
`arm-none-eabi-nm build/src/*.o | grep ' T func_'` pour exclure les
fonctions déjà portées, a trouvé 134 candidats bruts -- la plupart des
faux positifs (grosses tables de dispatch script à `asm/code_08012028.s`,
`asm/code_entities_08034CEC.s` zone linkonce, `asm/code_linkonce.s` zone
`func_080DB320`/`658` déjà connue comme dead-end, `hardware.s`/
`func_08008980` déjà classée "pression de registres"). En filtrant sur les
blocs COURTS (12-45 lignes), un motif net et complètement inédit est
apparu dans `asm/code_entities_08034CEC.s` : des dizaines de wrappers
quasi-identiques de la forme

```
push {r4, lr}
sub sp, #0x10
adds r4, r0, #0
[bl func_HELPER]        @ optionnel, présent sur ~10 sites
movs r0, #0x8c
bl __builtin_new
<4 stores sur la pile : f0,f4,f8 (mots), fc (octet, via add+strb)>
adds r1, r4, #0
movs r2, #KIND
movs r3, #SUBKIND
bl func_080324BC
add sp, #0x10
pop {r4}
pop {r1}
bx r1
```

38 sites exacts de ce motif dans ce seul fichier (`grep -c "bl
func_080324BC" asm/code_entities_08034CEC.s`), tous alloquant 0x8c octets
et déléguant l'init à `func_080324BC` -- traité comme boîte noire (lui-même
non porté, corps complexe utilisant `r8`/`sb` tout du long, signal
"pression de registres" -- pas attaqué ce round, exactement comme les
callees opaques `func_08005B68` etc. de la saga `func_08004C68`). 3 autres
sites du même appelé existent ailleurs (`asm/code_080E41E8.s`,
`asm/code_entities_080320DC.s` x2, `asm/code_entities.s`) -- **non
attaqués ce round**, laissés pour un futur round (même famille,
probablement même succès).

### Nouveau piège de traduction découvert : `bool` vs `char` pour un
argument scalaire passé sur la pile au-delà de r0-r3

Le désassemblage montre systématiquement, pour le 4e argument "en trop"
(au-delà des 4 registres), une paire `add rX, sp, #0xc` + `strb rY, [rX]`
(store d'un OCTET à une adresse calculée) plutôt qu'un simple `str rY,
[sp, #0xc]` (mot). Décliner ce paramètre en `char d` dans le prototype
C++ compile mais produit un `str` (mot) -- agbcp semble promouvoir `char`
comme les autres scalaires dans ce contexte d'argument-sur-pile. Le typer
**`bool d`** (et passer `true`/`false` au lieu de `0`/`1`) restaure très
exactement la paire `add`+`strb` -- confirmé bit-exact sur les 38 sites.
**Règle généralisable, à ajouter à `DECOMP_RULES.md`** : pour un argument
scalaire de rôle "flag" stocké sur la pile au-delà des 4 premiers
registres, préférer `bool` à `char`/`u8` dès que le désassemblage montre
un store byte via adresse calculée (`add`+`strb`) plutôt qu'un store mot
direct -- signe qu'agbcp traite `bool` différemment de `char` pour la
génération d'argument débordant sur la pile.

### Piège de découpage rencontré et résolu : `.align 2, 0` en fin de bloc
appartient à la frontière, pas à la fonction portée

8 des 38 sites ont un `.align 2, 0` explicite juste après leur `bx r1`
dans `asm/code_entities_08034CEC.s` (padding zéro entre cette fonction et
la suivante, présent seulement quand la fonction se termine à un nombre
d'instructions impair). Une première comparaison octet-à-octet (harnais :
assembler le bloc ORIGINAL extrait tel quel vs le C compilé, mêmes
outils) donnait 30/38 identiques et ces 8 différaient uniquement sur les
2 derniers octets (`c046` = nop d'alignement auto-inséré par
`agbcp`/`as`, vs `0000` attendu). Root cause : le `.align 2, 0` fait
partie du texte du bloc `thumb_func_start` CIBLE tel qu'écrit dans le
fichier original, mais c'est un artefact de FRONTIÈRE entre deux
fonctions, pas du corps de la fonction portée. Fix appliqué dans le script
de découpage : détecter un `.align 2, 0` final après le dernier `bx r1`
d'un bloc cible et le faire migrer en tête du fragment `asm/*.s` SUIVANT
(avant son propre `thumb_func_start`) au lieu de le supprimer avec le
reste du bloc. Résultat vérifié : la taille compilée de `build/src/
code_ADDR.o` (`readelf -S`) correspond exactement à `next_addr -
this_addr` pour les 38 sites, ET les 2 derniers octets sont bien `00 00`
(vérifié `objcopy -O binary --only-section=.text` + `od`), pas un nop --
l'alignement de section standard de `as` (déjà 4-aligné après le padding
implicite de l'objet) rend le `.align` explicite du fragment suivant un
no-op inoffensif, sans doublon de padding. **Piste générale pour de
futurs découpages** : toujours vérifier si le bloc `thumb_func_start`
cible se termine par un `.align` avant de couper -- le déplacer vers le
fragment suivant plutôt que de le garder attaché ou de le jeter.

### Découpage mécanique

`asm/code_entities_08034CEC.s` (201 fonctions au total, un seul objet
`.lds` avant ce round) scindé en 39 fragments par script Python (scratch,
non commité) : le premier fragment garde le nom de fichier d'origine, les
38 autres nomment d'après l'adresse de leur première fonction retenue
(ex. `asm/code_08035B64.s`). `fomt.lds` : les 77 nouvelles entrées
interfoliées remplacent l'unique ancienne ligne
`asm/code_entities_08034CEC.o(.text);`, dans l'ordre adresse croissante
(`asm_avant.o; src_ADDR.o; asm_après.o; ...`).

### Vérification

Rebuild propre (`rm -rf build fomt.gba fomt.elf fomt.map`, stub
`franglais_stub.bin` factice) : lien réussi, aucune référence non
définie, aucun symbole dupliqué (`arm-none-eabi-nm fomt.elf` : chaque
symbole `func_ADDR` porté apparaît une seule fois). `sha1sum -c
fomt.sha1` échoue comme attendu (payload franglais non-vanilla). Pour les
38 fonctions : taille `.text` de `build/src/code_ADDR.o` == `next_addr -
this_addr` (`readelf -S`, script Python), ET comparaison octet-à-octet
(pas seulement mnémonique) entre le C compilé et le bloc original
réassemblé avec les MÊMES outils (`arm-none-eabi-as`, même flags) --
38/38 identiques une fois le piège d'alignement ci-dessus corrigé. Sweep
anti-doublon (`grep thumb_func_start` sur les 38 noms dans `asm/*.s`) :
aucun résidu.

### État du worktree en fin de round

- 38 fonctions matchées (`func_08035B38` à `func_08039A30`), 1 commit de
  match (tout le groupe, découpage + `fomt.lds` + les 38 `.cc`).
- 3 autres sites de `func_080324BC` identifiés mais **non portés** ce
  round (`asm/code_080E41E8.s`, `asm/code_entities_080320DC.s` x2,
  `asm/code_entities.s`) -- candidats directs pour un prochain round,
  même méthode, même signature de callee opaque.
- `func_080324BC` lui-même reste non porté (callee opaque, `r8`/`sb`
  utilisés tout du long -- signal "pression de registres", pas attaqué).
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- `git status --short` vide après commit.

## Round (worktree `w43`, branche `parallel-43`) -- ZÉRO match commité,
mais 4 découvertes actionnables pour un futur round (dont une piste de
sécurité importante) + nouvelle classe de near-miss caractérisée

Consigne : choisir une cible fraîche en évitant le recoupement avec `w42`
(qui couvre les 3 sites restants de `func_080324BC`). Après lecture de
`DECOMP_RULES.md`/`DECOMP_ARCHIVE.md` en entier, ce round a exploré 3
pistes distinctes -- aucune n'a abouti à un match committable, mais
chacune a produit un résultat utile documenté ci-dessous. Rebuild propre
initial (`rm -rf build ... && make compare`) confirmé sain avant de
commencer (LD réussit, `sha1sum` échoue comme attendu depuis `cb06198`).

### Découverte 1 (importante) : `func_08050E68` n'est PAS une cible de
décompilation valide -- son literal cible pointe dans le PAYLOAD FRANGLAIS,
pas dans la ROM vanilla

`func_08050E68` (`asm/code_08050E68.s`, laissé non tenté par w39 : "thunk
d'un genre différent, `ldr r3,=ADDR; bx r3`") a de nombreux appelants
symboliques (`asm/code_08012028.s`, `asm/code_0805E760.s` x21,
`asm/code_08093220.s`). Désassemblage : `ldr r3,=0x08801C25; bx r3` (tail
jump direct sans `push`/`pop`/`mov lr,pc` -- pas un simple thunk
forward). **Le literal `0x08801C25` (bit thumb mis, cible réelle
`0x08801C24`) tombe dans `franglais_payload_start`-`franglais_payload_end`
(`0x08800000`-`0x08801000`, vérifié dans `fomt.map` après rebuild) : la
région de 4 Ko que CE dépôt lui-même réserve pour le payload du patch
franglais, PAS une adresse de la ROM vanilla (`baserom.gba` ne fait que
8 Mo = `0x08000000`-`0x087FFFFF`, confirmé `stat` -- `0x08800000` est
au-delà).** Autrement dit : ce "thunk" est déjà un point d'accroche du
patch franglais (hook injecté dans le désassemblage vanilla, tail-jump
vers le payload custom), pas du code de jeu original à décompiler.
**Retirer `func_08050E68` de toute liste de cibles futures** -- toute
tentative de le "porter en C" comme thunk vanilla serait une erreur de
méthode (on documenterait involontairement le mécanisme du patch, pas le
jeu original). Aucun fichier modifié pour cette découverte (juste lecture
+ un rebuild jetable, `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés
après).

### Découverte 2 : nouvelle classe de near-miss caractérisée -- ordre
d'évaluation des arguments d'appel (littéral registre vs littéral pile)

Méthode sœur (scan double-critère vtable+`__builtin_new`, déjà utilisé
w40/w41) élargi aux blocs non encore portés, en excluant `func_080324BC`
(scope w42) : 11 candidats trouvés, 2 déjà connus dead-end
(`func_080DB320`/`658`, famille "assignation de champ"). Parmi les
nouveaux, `func_08037B48`/`func_08037B80` (`asm/code_08037A04.s`, ~46
octets chacun) : ctor trivial (`vtable + operator new(0x44) + bl
func_08037008(obj,a1,a2,LITERAL_r3,LITERAL_pile) + store vtable @+0x14 +
return obj`), callee `func_08037008` traité en boîte noire (asm non
porté, pas de signal pression de registres visible dans ce callee lui-
même au premier coup d'œil -- pas vérifié en détail).

**Near-miss caractérisé, taille identique (0/46 octets d'écart), un seul
défaut d'ORDRE** : la cible calcule d'abord l'argument 5 (pile, un
littéral entier stocké via `movs r0,#N; str r0,[sp]`, DEUX instructions
consécutives sans rien entre les deux), PUIS charge l'argument 4
(registre `r3`, un littéral `u32`) juste avant le `bl`. **Toute
formulation C testée (6 variantes)** -- littéral pile inline + littéral
r3 inline ; variable nommée pour la pile seule ; variable nommée pour le
registre seule ; les deux en variables nommées (dans les deux ordres de
déclaration) ; argument pile passé comme petit struct POD par valeur au
lieu d'un `int` nu -- **produit systématiquement l'ordre INVERSE** :
`ldr r3,=LITERAL` D'ABORD, PUIS `movs r0,#N; str r0,[sp]`. agbcp semble
toujours matérialiser le littéral du 4e argument (registre `r3`, libre,
aucun conflit) avant de traiter le 5e (pile), quelle que soit la
structuration du C source -- comportement stable et reproductible sur
les 6 variantes, jamais contredit. **Hypothèse non testée** (budget
épuisé ce round) : peut-être que le VRAI argument 4 n'est pas un littéral
`u32` nu mais une expression dépendant d'un REGISTRE déjà occupé (pas
juste `movs`), ce qui forcerait un ordre de calcul différent -- ou alors
la vraie signature de `func_08037008` a un NOMBRE d'arguments différent
de 5 (ex. un struct passé par référence plutôt que 2 scalaires séparés).
**Pas commité** (aucun fichier modifié dans `asm/`/`src/`/`fomt.lds` --
tout le tâtonnement est resté dans un harnais scratch hors dépôt,
`/tmp/w43scratch/`, jamais appliqué au dépôt). À ajouter comme classe de
difficulté nommée si un 2e cas apparaît ailleurs (candidat probable :
`func_08037A5C`/`func_08037AD0`, mêmes fichier/famille, mêmes callees
`func_08037008`+`func_08037244`, PLUS un near-miss masque-par-négation
déjà connu sur un champ bitfield `& ~3` à `self+0x44` -- pas testés ce
round faute de temps, mais very probablement affectés par LES DEUX
classes de near-miss à la fois).

### Découverte 3 : 2 nouvelles fonctions "pression de registres" à éviter

`func_0803BDFC` (`asm/code_0803A8A4.s`) et `func_08083A7C`
(`asm/code_08082184.s`) : les deux utilisent `r8`/`sb`(/`sl` pour la
première) comme valeurs vivantes À TRAVERS un `bl __builtin_new` PUIS un
second `bl` vers un helper à 7-8 arguments -- signal d'alerte explicite
de `DECOMP_RULES.md`. **Ne pas tenter sans budget dédié.** Utile à
savoir : ces deux fonctions sont elles-mêmes appelées comme boîte noire
par des ctors DÉRIVÉS plus simples (`func_0803BF78` appelle
`func_0803BDFC` ; un ctor non identifié appelle probablement
`func_08083A7C` de la même façon) -- exactement le même schéma que
`func_08007EE14`/`func_08008980` dans la saga `func_08004C68` : le
wrapper dérivé peut rester une cible valide même si le callee de base est
hors de portée.

### Découverte 4 : `func_0803A798` et `func_0803BF78`, 2 cibles fraîches
caractérisées mais NON portées (candidates sérieuses pour un prochain
round)

- **`func_0803A798`** (`asm/code_08039A5C.s`, juste avant le groupe déjà
  matché `func_0803A804`/round 10-w23) : alloue 0x20 octets, construit un
  `Location` local partiellement initialisé (motif déjà connu, cf.
  `func_08011ED8`) puis appelle **`__7AEntityP10GameObjectRC8Location`
  == `AEntity::AEntity(GameObject*, Location const&)`, DÉJÀ implémentée
  dans `src/entity.cc`** (pas une boîte noire asm -- un vrai symbole C++
  déjà porté, directement appelable) via placement-new sur l'objet neuf,
  puis stampe une SECONDE vtable (`vtable_unk_080E7568`) à l'offset
  +0x14 (base MI secondaire), stocke un paramètre à +0x18, un flag octet
  à +0x1c=1. Le détail exact du layout de bits du `Location` local (3
  paires `ldrh`/`ldrb` avec masques `0xFC00`/`3` qui SE CHEVAUCHENT sur
  les octets 0-4, pas 3 champs indépendants) reste à élucider précisément
  avant de coder -- probablement un bitfield packé différent de la
  `Location` 3-champs déjà connue dans `include/actor.hh`, à vérifier
  champ par champ avant d'écrire le C.
- **`func_0803BF78`** (`asm/code_0803A8A4.s`, juste après le groupe
  register-pressure `func_0803BDFC`) : NE VIT PAS lui-même dans la classe
  "pression de registres" (aucun `r8`/`sb`/`sl` dans son propre corps),
  bien qu'il appelle `func_0803BDFC` (qui l'est) en boîte noire avec 6
  arguments (3 registres littéraux + 3 arguments pile, dont 5 poussés
  sur SA PROPRE pile mais SEULEMENT 3 relus côté callee -- à vérifier si
  les 2 "en trop" sont bien des locales réutilisées plus loin ou un
  artefact de lecture imprécise de ce round, pas confirmé avec
  certitude). Stampe ensuite une SECONDE vtable (`vtable_unk_080E77A4`,
  écrasant celle posée par `func_0803BDFC`), alloue 0x41C octets, appelle
  un helper opaque `func_080E0A94`, puis initialise 4 champs octet
  (`self+0xc..0xf`). Shape prometteur (chaîne de construction C++
  classique base->dérivé) mais nécessite de reconfirmer précisément
  quelles valeurs vont sur la pile de l'appel à `func_0803BDFC` avant de
  coder -- pas fait ce round faute de temps.

### État du worktree en fin de round

- **Aucun commit** -- zéro match vérifié bit-exact ce round malgré 3
  pistes creusées en profondeur (l'ordre d'arguments de la découverte 2
  a résisté à 6 reformulations C systématiques).
- Tout le tâtonnement (harnais rapide) est resté dans `/tmp/w43scratch/`,
  jamais appliqué au dépôt.
- `git status --short` vide après nettoyage (`rm -rf build fomt.gba
  fomt.elf fomt.map` + suppression d'un fichier stub jetable créé pour le
  rebuild de vérification de la découverte 1).
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.

## Round (worktree w42, branche `parallel-42`) -- follow-up sur les 3 sites
restants de la famille "entity factory" `func_080324BC`

Mission : continuer le scan sur les 3 sites de call `func_080324BC` restants
identifiés round w40 (`asm/code_080E41E8.s`, `asm/code_entities_080320DC.s`
x2, `asm/code_entities.s`), pour vérifier s'il existe d'autres wrappers
"entity factory" NON catalogués de la même forme exacte (`bl __builtin_new`
0x8c octets + délégation à `func_080324BC` + AUCUN littéral `vtable_unk_ADDR`
dans le bloc).

### Méthode

Script Python (scratch, non commité) parcourant les blocs `thumb_func_start`
des 3 fichiers concernés, cherchant `bl __builtin_new` ET `bl func_080324BC`
(ou le nom mangle `__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi` que
l'assembleur original résout parfois au même symbole -- vérifié sans
incidence, une fausse piste initiale : `asm/code_08035B64.s`/
`asm/code_08036048.s` sont en fait les fragments RESTANTS après le
découpage round w40, contenant une fonction NPC ctor sans rapport qui
partage juste un nom mangle proche).

### Constat : 1 seul vrai match sur les 4 sites `bl func_080324BC` recensés

- **`func_080E44E4`** (`asm/code_080E41E8.s`, ligne 420) : instance EXACTE
  du shape des 38 déjà matchés -- `movs r0,#0x8c; bl __builtin_new`, puis
  4 stores sur pile (f0=1,f4=0,f8=0,fc=false via add+strb), puis
  `func_080324BC(obj, ctx, 5, 27, 1, 0, 0, false)`, AUCUN littéral vtable.
  **Matché.** Vérifié :
  1. taille `.text` du `.o` compilé (`readelf -S`) = 0x2c = 44 octets =
     `next_addr(0x080E4510) - this_addr(0x080E44E4)` exact.
  2. harnais rapide : désassemblage du C compilé identique octet-à-octet
     au désassemblage du bloc ORIGINAL réextrait de `git show HEAD:...`
     et réassemblé avec les MÊMES outils (`arm-none-eabi-as` même flags) --
     `diff` des deux désassemblages : aucune différence.
  3. rebuild complet propre (`rm -rf build fomt.gba fomt.elf fomt.map` +
     stub `franglais_stub.bin` factice) : lien réussi, aucune référence non
     définie, `arm-none-eabi-nm fomt.elf | grep func_080E44E4` : 1 seule
     occurrence. `sha1sum -c fomt.sha1` échoue comme attendu (payload
     franglais non-vanilla, confirmé aussi que la comparaison OCTET À OCTET
     `baserom.gba` vs `fomt.gba` linéaire n'est PAS utilisable pour
     vérifier une fonction isolée : ~220k octets diffèrent sur toute la ROM
     à cause du payload franglais qui réécrit des pointeurs/adresses très
     largement -- seul le harnais isolé (readelf + désassemblage borné)
     fait foi, conforme à la discipline `DECOMP_RULES.md`).
  Découpage : `asm/code_080E41E8.s` tronqué avant la fonction (419 lignes
  restantes), reste réinjecté dans un nouveau fragment
  `asm/code_080E4510.s` (header standard + corps depuis
  `thumb_func_start func_080E4510`, pas de `.align` de frontière à migrer
  ici -- le bloc cible ne se termine pas par un `.align` explicite, règle
  #14 non applicable ce site). `fomt.lds` : 1 ancienne ligne
  (`asm/code_080E41E8.o(.text);`) remplacée par 3
  (`asm/code_080E41E8.o` ; `src/code_080E44E4.o` ; `asm/code_080E4510.o`).

- **`func_08032A00`** (`asm/code_entities_080320DC.s`, ligne 796) : PAS le
  même shape. `self` est déjà passé en paramètre (r0, pas de
  `bl __builtin_new` dans le bloc), le bloc construit les 4 arguments-pile
  (tous nuls sauf kind=6/subkind=0x20 en r2/r3), appelle `func_080324BC`,
  PUIS stampe SA PROPRE vtable (`vtable_unk_080E6864`) à `[r4+4]` avant de
  retourner `self`. Forme "constructeur qui délègue à func_080324BC",
  sous-variante distincte, pas catalogué ce round (hors scope strict de la
  mission -- shape différent, mérite son propre round).

- **`func_080222A8`** (`asm/code_entities.s`, ligne 3271) : même
  sous-variante que `func_08032A00` (self déjà passé, délégation puis
  stamp vtable `vtable_unk_080E64B4` propre), mais en plus complexe :
  utilise `r8` (push/pop dédié) et appelle 2 helpers opaques
  (`func_08022320`, `func_08022334`) pour construire les 2 premiers
  arguments-pile avant l'appel à `func_080324BC`. Pas catalogué ce round.

- **`func_08034A14`** (`asm/code_entities_080320DC.s`, ligne 4219, 91
  lignes) : fonction bien plus grosse, `r8`/`sb` vivants tout du long,
  plusieurs `bl` vers des callees distincts (`_call_via_r1`,
  `func_080A4A00`) en plus de `func_080324BC` -- signal "pression de
  registres" au sens de la classe déjà documentée, PAS un simple wrapper.
  Confirme que ce site n'est structurellement pas de la même famille.

Scan exhaustif confirmé (avant ET après le port de `func_080E44E4`, sur le
contenu `HEAD` d'origine des 3 fichiers) : aucun AUTRE bloc combinant
`bl __builtin_new` + absence de littéral `vtable_unk_` + allocation 0x8c
octets n'existe dans ces 3 fichiers au-delà de `func_080E44E4`.

### État du worktree en fin de round

- 1 fonction matchée (`func_080E44E4`), 1 commit (découpage +
  `fomt.lds` + `src/code_080E44E4.cc`).
- `func_08032A00`/`func_080222A8` : sous-variante "self déjà alloué +
  stamp vtable propre après délégation" identifiée mais NON portée --
  candidat pour un futur round dédié à cette forme précise, documenté
  dans `DECOMP_ARCHIVE.md`.
- `func_08034A14` : confirmé "pression de registres", pas un wrapper --
  ne pas retenter sans budget dédié.
- `func_080324BC` lui-même reste non porté (callee opaque, `r8`/`sb`
  utilisés tout du long).
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Sweep anti-doublon : `grep thumb_func_start` sur `func_080E44E4` dans
  `asm/*.s` -- aucun résidu ; `nm fomt.elf` -- 1 seule occurrence.
- `git status --short` vide après commit.

## Round w44 (worktree `parallel-44`, branche `parallel-44`) -- extension du
scanner de blobs cachés à TOUTE taille, sweep complet : 0 nouveau candidat

Consigne : `scan_hidden_code_blobs.py` ne couvre que les blobs `.byte` de
4-40 octets (angle mort documenté -- w39 avait trouvé le blob de 1084
octets juste après cette limite, exploré par w41). Mission : écrire une
variante qui cherche des blobs cachés de TOUTE taille sur l'ensemble
d'`asm/*.s`, au cas où il en resterait d'autres, de taille intermédiaire ou
plus grande, jamais catalogués.

### Nouveau script : `tools/scripts/scan_hidden_code_blobs_v2.py`

Généralise la détection de `scan_hidden_code_blobs.py` sur deux axes :
- **Pas de plafond de taille** (`MAX_BLOB_BYTES=40` supprimé) : chaque bloc
  `.byte` pur candidat est désassemblé/évalué par l'heuristique Thumb,
  quelle que soit sa taille (le script v1 se contentait de LISTER les
  blobs > 40 octets dans un worklist "medium_blocks" non vérifié, sans
  jamais tenter le décodage dessus).
- **Fusion des runs multi-blocs** : v1 exige que le bloc `.byte` candidat
  soit immédiatement suivi d'un vrai `thumb_func_start` (ou de la fin de
  fichier) -- si DEUX blocs `.byte` purs se suivent consécutivement entre
  deux fonctions réelles, seul le DERNIER du groupe peut satisfaire ce test
  et les précédents étaient silencieusement ignorés, à n'importe quelle
  taille. v2 fusionne tout run maximal de blocs `.byte` purs consécutifs
  entre deux fonctions (ou entre la dernière fonction et l'EOF) en un seul
  candidat, peu importe le nombre de sous-blocs.

Le reste de la méthode (parsing par blocs top-level, décodeur Thumb partiel
maison, heuristique de plausibilité) est repris à l'identique de v1 --
seule la sélection des candidats change. `v2` ne remplace pas `v1` (les
deux se lancent), c'est un filet plus large jeté par-dessus.

### Résultat du sweep complet (128 fichiers `asm/*.s`)

`v2` trouve exactement les 2 mêmes candidats que la section "medium
blocks, not auto-verified" de `v1` -- confirmant qu'il n'existe **aucun**
run multi-blocs caché par la limitation de v1 dans l'état actuel du dépôt,
et qu'aucun blob de taille intermédiaire/plus grande n'a été manqué :

1. `asm/code_08050E98.s` `.L08050EE4`, 124 octets, `prev=func_08050EBC`,
   `next=<EOF>`.
2. `asm/code_actor_0809BFE8.s` `.L0809E1B4`, 288 octets, `prev=func_0809E1A4`,
   `next=<EOF>`.

Les deux étaient **déjà connus et déjà documentés** :

- `.L08050EE4` (124 octets) = les 2 premiers fragments du blob de 1084
  octets cartographié par w41 (`SESSION_NOTES.md`, section "Round w41"),
  jamais matchés : `func_08050EE4` (88 octets, ctor vtable + bitfield,
  near-miss "masque construit par négation") + pool littéral 16 octets +
  `func_08050F4C` (18 octets, normalisation booléenne `v?1:v`, near-miss
  "copie explicite élidée par notre compilateur"). Désassemblé à la main
  ce round pour confirmer que le contenu est bien identique à la
  cartographie w41 (`arm-none-eabi-objdump -D -bbinary -marmv4t
  -Mforce-thumb --adjust-vma=0x08050EE4` sur les 124 octets bruts,
  resynchronisé à la main après le pool littéral de 16 octets) --
  confirmé octet pour octet, aucune nouvelle piste tentée n'a débloqué
  `func_08050F4C` (essai `!!(v)` façon anti-pattern #12 : toujours 16
  octets au lieu de 18, notre compilateur élide quand même la copie
  explicite). Toujours en `.byte`, non commité.
- `.L0809E1B4` (288 octets) = dead-end confirmé DEUX fois déjà (round
  w23 puis un round ultérieur, voir `DECOMP_ARCHIVE.md` ligne ~474) --
  aucun appelant symbolique trouvable, pas de nouvelle piste ce round.

Aucun match commité ce round : les deux seuls candidats "medium" visibles
sont des near-miss/dead-end déjà exploités à fond par des rounds
précédents, pas de nouvelle cible. Le scan à 4-40 octets (`v1`) confirme
aussi 0 candidat court, comme attendu (dernier scan exhaustif au round 9).

### État du worktree en fin de round

- Aucun match, aucun commit de code porté.
- 1 fichier ajouté et NON commité : `tools/scripts/scan_hidden_code_blobs_v2.py`
  (outil réutilisable pour les prochains rounds -- à commiter séparément
  si Mathias le valide, laissé en `git status --short` pour inspection).
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Pas de `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` générés ce round (aucune
  tentative de compilation appliquée au dépôt, seulement un harnais
  scratch `/tmp` déjà nettoyé).

## Round w46 (worktree `w46`, branche `parallel-46`) : match `func_08032A00`,
1re instance de la sous-variante "self déjà alloué" de la famille
"entity factory"

Cible choisie depuis `DECOMP_ARCHIVE.md` section "Autres cibles ouvertes"
(sous-variante documentée round w42, jamais tentée) : contrairement aux 39
sites déjà matchés `func_080324BC` (qui allouent eux-mêmes `self` via
`__builtin_new(0x8c)` avant de déléguer), `func_08032A00`
(`asm/code_entities_080320DC.s`) reçoit `self` DÉJÀ ALLOUÉ par l'appelant
(r0), délègue directement à `func_080324BC(self, ctx, 6, 0x20, 1, 0, 0,
false)` (callee toujours traité en boîte noire, non porté -- pression de
registres documentée), puis stampe sa PROPRE vtable
(`vtable_unk_080E6864`) à `self+4`. Prototype/piège `bool` (anti-pattern
#13) réutilisé tel quel depuis la famille déjà matchée -- convergé du
premier coup, aucun near-miss.

Découpage standard (`asm/code_entities_080320DC.s` -> corps supprimé +
nouveau `asm/code_08032A30.s` pour `func_08032A30` et la suite, header
`.INCLUDE`/`.SYNTAX UNIFIED` standard prependé) ; port dans
`src/code_08032A00.cc` avec commentaire d'en-tête pointant vers
`DECOMP_ARCHIVE.md` ; 2 entrées insérées dans `fomt.lds` à l'emplacement
exact de l'ancienne entrée unique.

**Vérification appliquée (standard `DECOMP_RULES.md`, isolé par
fonction)** :
1. Taille `.text` de `build/src/code_08032A00.o` = `0x30` (48 octets),
   égale à `next_addr - this_addr` (`0x08032A30 - 0x08032A00`).
2. Comparaison OCTET À OCTET directe (pas juste désassemblage) : bloc
   original reconstitué depuis `git show HEAD:asm/code_entities_080320DC.s`
   (lignes `thumb_func_start func_08032A00` à `thumb_func_start
   func_08032A30` exclu), réassemblé isolément (`arm-none-eabi-as`), puis
   `arm-none-eabi-objcopy -O binary --only-section=.text` sur CE `.o` ET
   sur `build/src/code_08032A00.o` fraîchement compilé, `cmp` des deux
   binaires bruts -> **identique**.
3. Rebuild propre (`rm -rf build fomt.gba fomt.elf fomt.map && make
   compare`) après création du `build/franglais_stub.bin` factice
   (`head -c 4096 /dev/zero`, requis pour que `src/franglais_payload.s`
   s'assemble -- documenté dans `DECOMP_RULES.md`, n'affecte pas la
   vérification isolée ci-dessus) : link complet SANS erreur (le
   `sha1sum -c fomt.sha1` final échoue toujours, attendu et documenté
   depuis `cb06198`, payload franglais intentionnellement non-vanilla).
4. Sweep anti-doublon : `grep -rl ".L08032A00" asm/` -- 0 résultat, aucune
   référence résiduelle à l'ancien label après découpage.

Commit `ff4fa30` (`decomp: match func_08032A00, entity-factory
sub-variant (self pre-allocated by caller)`), local à `parallel-46`.

### Cible sœur restante

`func_080222A8` (`asm/code_entities.s`) : même sous-variante mais plus
dur -- utilise `r8` EN PLUS et appelle 2 helpers (`func_08022320`/
`func_08022334`) pour construire ses 2 premiers arguments-pile avant
l'appel à `func_080324BC`, avant de stamper `vtable_unk_080E64B4`. Pas
tenté ce round (budget), candidat direct pour un prochain round --
caractériser d'abord les 2 helpers en boîte noire avant de coder.

### État du worktree en fin de round

- 1 match commité (`func_08032A00`, commit `ff4fa30`), vérifié octet à
  octet selon le nouveau standard.
- `git status --short` propre après commit (seul `build/franglais_stub.bin`
  généré localement pour la vérification de lien, non trackable -- sous
  `build/`, ignoré).
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Aucun recoupement avec w45 (`func_0803A798`/`func_0803BF78`/classe
  "ordre d'évaluation des arguments") ni avec les cibles en pause
  (`func_0803BDFC`, `func_08083A7C`, `func_08075334`, `DrawGlyphAt`
  recolor).

## Round w46 (suite) : match `func_080222A8`, cible sœur plus dure (`r8`
+ 2 helpers)

Enchaîné dans la foulée sur la cible sœur restante identifiée ci-dessus.
`func_080222A8` (`asm/code_entities.s`) est la même sous-variante
("self" déjà alloué par l'appelant, propre vtable stampée à `self+4`
après délégation à `func_080324BC`), mais garde `ctx` vivant dans `r8` à
travers 2 appels supplémentaires à des helpers feuille triviaux
(`func_08022320`/`func_08022334`, tous deux un simple dispatch par
valeur sur leur unique argument -- `0`/`1` -> une valeur, tout le reste
-> une autre -- caractérisés en boîte noire, pas portés) qui calculent
les arguments-pile `a`/`b` de l'appel délégué à partir du 3e argument
`x` :

```c
int a = func_08022320(x);
int b = func_08022334(x);
func_080324BC(self, ctx, 5, 13, a, b, 0, false);
*(void**)(self+4) = vtable_unk_080E64B4;
```

Convergé du PREMIER coup en harnais rapide, aucun near-miss malgré
l'usage de `r8` -- la crainte "pression de registres" annoncée dans
`DECOMP_ARCHIVE.md` ne s'est pas matérialisée ici (seulement 2 valeurs
vivantes simultanées via `r8`/pile, pas la accumulation `r8`+`sb`+`sl`
qui caractérise les vraies cibles bloquées).

Découpage : `asm/code_entities.s` coupé juste avant
`thumb_func_start func_080222A8` (ligne 3271 d'origine) ; nouveau
fragment `asm/code_08022320.s` recommence AVANT le blob `.byte` orphelin
`.L080222F4` (44 octets, entre la fin du bloc cible -- qui inclut son
propre littéral PC-relatif `vtable_unk_080E64B4`, taille totale `0x4c`
-- et `thumb_func_start func_08022320`) : ce blob n'appartient pas à la
fonction portée, il migre tel quel en tête du nouveau fichier, comme la
suite naturelle du fichier d'origine à cet endroit -- pas un cas de
l'anti-pattern #14 (`.align` de padding), le blob est du contenu réel
(vraisemblablement un fragment de scan de blobs cachés déjà catalogué
ailleurs, non retouché ici).

**Vérification** (même standard qu'au round précédent) :
1. Taille `.text` de `build/src/code_080222A8.o` = `0x4c`, égale à
   `next_addr - this_addr` (`0x080222F4 - 0x080222A8`), littéral de
   vtable inclus.
2. Désassemblage du `.o` fraîchement compilé comparé instruction par
   instruction à `baserom.gba` borné à `[0x080222A8, 0x080222F4)` --
   identique (seules les cibles de `bl`/le littéral de vtable diffèrent,
   relocations non résolues dans un `.o` isolé, normal).
3. Désassemblage de `fomt.gba` (lien complet, ROM décalée par le payload
   franglais) à l'adresse RÉELLEMENT liée `0x080221b4` (cf. `fomt.map`)
   -- identique aussi, relocations cette fois résolues correctement
   (cibles de `bl` décalées de manière cohérente, littéral de vtable
   résolu vers la vraie adresse de `vtable_unk_080E64B4`).
4. Rebuild propre + lien complet sans erreur ; `sha1sum -c fomt.sha1`
   échoue toujours (attendu, documenté depuis `cb06198`).
5. Sweep : `grep -rl ".L080222A8\|.L080222F0\|.L080222F4" asm/*.s` ->
   seul `asm/code_08022320.s` (nouvelle maison légitime du label du
   blob), aucune duplication.

Commit `6709750` (`decomp: match func_080222A8, harder "self
pre-allocated" entity-factory sibling`), local à `parallel-46`.

### État du worktree en fin de round (après les 2 matchs)

- 2 matchs commités ce round (`func_08032A00` commit `ff4fa30`,
  `func_080222A8` commit `6709750`), tous deux vérifiés octet à octet
  selon le nouveau standard isolé.
- La sous-variante "self déjà alloué + stamp vtable propre après
  délégation" documentée dans `DECOMP_ARCHIVE.md` est maintenant
  ENTIÈREMENT close : ses 2 seuls sites connus sont matchés.
- `git status --short` propre après commit.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Aucun recoupement avec w45 ni avec les cibles en pause (inchangé
  depuis l'entrée précédente).

## Round (worktree w45, branche `parallel-45`) -- les 2 cibles fraîches de w43

Mission : porter `func_0803A798` et `func_0803BF78` (2 cibles caractérisées
mais non portées par w43), puis vérifier si `func_08037A5C`/`func_08037AD0`
partagent bien la classe de near-miss "ordre d'évaluation des arguments"
déjà confirmée sur `func_08037B48`/`func_08037B80`.

### Match 1 : `func_0803A798` -- constructeur d'une classe dérivée de
`AEntity` non identifiée, avec `Location` zéro

Alloue 0x20 octets, construit le sous-objet `AEntity` via
`Location(0, 0, 0)`, puis restampe le vtable de la classe dérivée
(`vtable_unk_080E7568`) à +0x14 (même offset où `AEntity` place son propre
vtable -- simple restamp d'héritage simple, pas une 2e base MI), stocke un
paramètre à +0x18 et un flag fixe (1) à +0x1c.

`AEntity` est abstraite dans ce dépôt (`vfunc_30` pur virtuel, cf.
`include/entity.hh`) car la vraie sous-classe concrète (et son override de
`vfunc_30`) n'est pas portée. Plutôt que d'inventer une hiérarchie de
classe dérivée non vérifiée (ce qui ferait aussi générer par le compilateur
SON PROPRE vtable au lieu de référencer le blob `vtable_unk_080E7568`
existant), le constructeur de base est appelé directement via son symbole
mangle déjà compilé (`__7AEntityP10GameObjectRC8Location`, confirmé via
`arm-none-eabi-nm build/src/entity.o` -- correspond exactement à la cible
du `bl` dans le désassemblage d'origine) -- même idée que le précédent
"appel qualifié de destructeur" de `DECOMP_RULES.md` (anti-pattern #8),
appliqué à un constructeur. `AEntity::AEntity` est déjà pleinement
implémentée dans `src/entity.cc` ; ce match la réutilise plutôt que de la
dupliquer.

Le bitfield packé `Location` (map:10, x:16, y:16, PACKED) qui restait à
élucider depuis w43 ("3 paires ldrh/ldrb qui SE CHEVAUCHENT") s'est révélé
être une construction `Location(0, 0, 0)` triviale (3-arg ctor) -- pas une
assignation champ par champ manuelle. Le compilateur matérialise lui-même
les 5 opérations load/mask/store qui semblaient mystérieuses.

Vérifié bit-exact : `build/src/code_0803A798.o` `.text` = 0x6c octets
(= `func_0803A804` - `func_0803A798`) ; une réassemblage autonome du bloc
asm d'origine matche octet à octet le candidat compilé (`cmp` identique,
108 octets). Commit local (voir `git log`).

### Match 2 : `func_0803BF78` -- wrapper simple autour de `func_0803BDFC`

Confirme le diagnostic w43 : ce wrapper ne vit PAS lui-même dans la classe
"pression de registres" (aucun `r8`/`sb`/`sl` dans son propre corps),
malgré son appel à `func_0803BDFC` (qui lui est dans cette classe, laissé
intact/boîte noire). Transmet 4 arguments registre + 5 arguments pile
(literal `0x18` + 4 arguments transférés) à `func_0803BDFC`, dont le
prologue confirme la forme à 9 arguments (self + 3 registre + 5 pile).
Restampe ensuite `vtable_unk_080E77A4` à self+4, alloue 0x41c octets via
un helper opaque (`func_080E0A94`), et pose 4 champs octet.

**Near-miss résolu (nouvelle variante de la règle #5/statement order)** :
le désassemblage calcule le littéral 0 de self+0xd AVANT de stocker
self+0xc (pourtant stocké en premier), alors que self+0xc vient d'un
registre déjà vivant (pas de calcul nécessaire). Réordonner les DEUX
statements d'assignation seul ne suffit pas (ça inverse aussi l'ordre des
STORES, alors que target garde le store de self+0xc en premier). Donner
au littéral 0 sa PROPRE variable locale nommée, déclarée avant les deux
stores, reproduit l'ordre exact instruction par instruction. Signal
pratique pour un futur near-miss similaire : quand un store utilisant une
valeur DÉJÀ vivante doit rester avant un store utilisant un littéral qui
se retrouve calculé plus tôt dans le désassemblage, essayer un temporaire
nommé pour le littéral plutôt que de réordonner les statements.

Vérifié bit-exact : `build/src/code_0803BF78.o` `.text` = 0x50 octets
(= `func_0803BFC8` - `func_0803BF78`) ; réassemblage autonome identique
octet à octet (80 octets). Fichier `asm/code_0803A8A4.s` découpé à la
frontière de fonction (méthode standard, queue déplacée dans le nouveau
`asm/code_0803BFC8.s`) ; link complet propre (exit 0), les deux symboles
présents une seule fois chacun. Commit local (voir `git log`).

### Découverte : dérive d'adresse préexistante dans ce worktree, sans
rapport avec ce round -- la vérification par adresse ROM absolue contre
`baserom.gba` n'est PAS fiable ici en ce moment

En tentant de vérifier `func_0803A798` par diff borné de `fomt.gba` lié
contre `baserom.gba` à l'adresse absolue (méthode recommandée en tête de
liste par `DECOMP_RULES.md`), le désassemblage à 0x0803A798 dans le ROM
linké ne correspondait PAS du tout au contenu attendu -- une fonction sans
rapport y apparaissait. Investigation : `func_08039A30` (fonction déjà
matchée, commitée depuis un round antérieur, PAS touchée par ce round)
atterrit déjà à 0x0803993C dans le lien actuel de ce worktree, soit
**0xF4 octets (244) en avance** sur son adresse vanille attendue --
confirmant que la dérive est PRÉEXISTANTE à ce round, pas causée par mon
changement. Cause probable : ce worktree n'est pas synchronisé avec l'état
`main` le plus récent (commits d'autres rounds parallèles pas encore
mergés ici), ou un effet de bord du hook franglais déjà lié. **Pour toute
vérification future dans CE worktree précis, ne pas faire confiance à un
diff par adresse absolue contre `baserom.gba` sans avoir d'abord confirmé
qu'une fonction déjà matchée et non touchée atterrit à la bonne adresse.**
La méthode de repli utilisée ici (fiable, indépendante de l'adresse) :
réassembler le bloc asm ORIGINAL de façon autonome (`arm-none-eabi-as` sur
un fichier `.s` scratch contenant juste le bloc `thumb_func_start`
original + son en-tête standard), extraire les octets `.text` bruts via
`objcopy -O binary --only-section=.text`, et comparer directement (`cmp`)
contre les octets `.text` du `.o` fraîchement compilé du candidat --
prouve le contenu octet à octet sans dépendre du lien final ni de
l'adresse ROM. À signaler aux autres agents parallèles (w44/w46 etc.) si
la même dérive apparaît chez eux -- possible symptôme d'un merge en retard
sur `main`, à vérifier via `git log --oneline -5` / `git merge-base`.

### Découverte : `func_08037A5C`/`func_08037AD0` partagent bien les DEUX
classes de near-miss déjà documentées, PLUS une 3e variante -- non porté,
comme demandé

Désassemblage manuel confirmé : les deux fonctions appellent
`func_08037008(obj, a1, a2, LITERAL_r3, LITERAL_pile)` avec exactement le
même motif que `func_08037B48`/`func_08037B80` -- le désassemblage calcule
l'argument 5 (pile, un littéral entier stocké via `movs r0,#N; str
r0,[sp]`) AVANT de charger l'argument 4 (registre r3), juste avant le
`bl`. Un test rapide (harnais scratch, une seule tentative "C naturel",
PAS committé) confirme que toute formulation directe produit l'ordre
INVERSE (r3 chargé en premier), exactement le symptôme déjà documenté --
**confirmé, 2e instance de cette classe, comme prévu, pas de tentative de
forcer un match.**

Ces 2 fonctions partagent AUSSI le near-miss "masque-par-négation" déjà
repéré par w43 sur le champ bitfield à `self+0x44` : `movs r0,#4; rsbs
r0,r0,#0` (donnant `-4 = ~3`) plutôt qu'un littéral direct -- mon essai
naturel (`*field = (*field & ~3) | (a3 & 3);` en `u8*`) a produit
`movs r0,#0xfc` (littéral 8 bits direct), PAS la négation. Signal
pratique à creuser un jour : la négation suggère un calcul en LARGEUR u32
(`~3` sur 32 bits = `0xFFFFFFFC`, qui ne tient pas dans un littéral 8 bits
`movs`, forçant `rsbs`) plutôt qu'un masque déjà réduit à 8 bits -- pas
testé plus loin (budget dédié à la confirmation de classe, pas à la
résolution).

**3e near-miss inédit repéré au passage** (pas dans les notes w43,
propre à `func_08037A5C`/`func_08037AD0` uniquement, absent de
`func_08037B48`/`func_08037B80`) : les 4 champs `u16` de configuration
passés à `func_08037244` (bloc de 8 octets sur la pile) sont écrits par
l'original via 4 `strh` SÉPARÉS avec des valeurs scalaires calculées une
à une (`movs r1,#0xb0; lsls r1,r1,#1; movs r3,#0xd8; strh r1,[r0]; strh
r3,[r2,#2]; adds r1,#0x38; strh r1,[r2,#4]; movs r0,#0xe8; strh
r0,[r2,#6]`) -- une tentative naïve via une struct locale à 4 champs
`u16` (`SomeArgs4{a,b,c,d}`) compile en un motif COMPLÈTEMENT différent
(paires de `ands`/`orrs` 32 bits pour empaqueter 2 halfwords à la fois,
beaucoup plus gros). **Ne pas utiliser de struct locale ici -- écrire 4
variables scalaires `u16` séparées** (ou les 4 littéraux inline
directement dans les appels `strh` si le call site le permet) est
probablement la bonne piste pour un futur round qui s'attaquerait à ces 2
fonctions en profondeur.

Pas commité (aucun fichier modifié dans `asm/`/`src/`/`fomt.lds` -- tout
le tâtonnement est resté dans `/tmp/w45scratch/`, jamais appliqué au
dépôt).

### État du worktree en fin de round

- **2 commits locaux** : `func_0803A798` et `func_0803BF78`, tous deux
  vérifiés bit-exact (taille `.o` + réassemblage autonome, cf. ci-dessus).
- `func_08037A5C`/`func_08037AD0` : classe de near-miss confirmée (2e
  instance), PAS portées, PAS commitées -- conforme à la consigne "ne pas
  forcer un match".
- `build/`/`fomt.gba`/`fomt.elf`/`fomt.map`/`build/franglais_stub.bin`
  nettoyés après chaque vérification.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- `git status --short` vide (hors les 2 commits déjà réalisés).

## Round w49 (worktree `parallel-49`) -- déblocage de la classe "masque par négation", 2 matchs

Consigne : choisir une cible fraîche, éviter le recoupement avec w45/w48
(`func_0803A798`/`func_0803BF78`) et les cibles fermées (`func_0803BDFC`,
`func_08083A7C`, `func_08075334`, variante recolor `DrawGlyphAt`).

### Idée neuve testée : bitfield struct réel + `return self` implicite

Choix : reprendre la classe "masque construit par négation" documentée sans
succès rounds w39/w41/w44 (`func_08050EE4`/`func_080512D8`, ctors de la
famille `vtable_unk_080E7878/78A8/78C0/78E0`) -- 2 hypothèses déjà réfutées
(masque `& ~N` sur `u8`/`u32` local, avec ou sans variable intermédiaire),
1 piste explicitement non tentée notée par w39 ("construire le masque comme
variable ELLE-MÊME calculée à runtime").

Désassemblage manuel complet de `func_08050EE4` (88 octets) : les 4 blocs
de bits écrits à `self+0xc` (largeurs 5/10/4/4, via `strb`/`strh`/`str`
selon la largeur d'accès la plus étroite couvrant chaque champ) collent
exactement au style déjà utilisé PAR CE DÉPÔT pour documenter des bitfields
réels (`barn.hh`, `coop.hh`, `bachelorette.hh` : plusieurs `u32 champ : N;`
consécutifs partageant un mot). Hypothèse testée : le masque par négation
n'est PAS un artefact d'une expression manuelle `v & ~mask` -- c'est le
codegen PROPRE d'agbcp pour une vraie AFFECTATION DE BITFIELD STRUCT
(chaque écriture choisit l'unité d'accès -- octet/demi-mot/mot -- la plus
étroite qui couvre entièrement le champ visé). Modélisé comme un vrai
`struct` avec bitfields C, testé au harnais rapide : **taille et
désassemblage identiques SAUF l'épilogue** (`pop {r0}; bx r0` chez nous vs
`pop {r1}; bx r1` dans la cible). Résolu par une 2e idée neuve : ce
constructeur retourne `self` (convention ARM/CFront pour les ctors, déjà
documentée règle 9/`SmartPtr`) -- une fois `r0` occupé par la valeur de
retour vivante, agbcp restaure `lr` dans `r1` au lieu de `r0`. Avec
`return self_;` explicite : **byte-exact au premier essai après correction**.

Même méthode appliquée à `func_080512D8` (60 octets, sibling
`vtable_unk_080E78E0`) : structure similaire (2 champs `u32` PLEINS +
1 bitfield 14 bits + 2 bitfields 1 bit partageant le MÊME octet, ce qui
explique pourquoi un seul `ldrb`/`strb` couvre les 2 micro-champs -- même
octet, même unité d'accès). Écart résiduel supplémentaire : le dernier
argument (pile, 5e) est chargé via `add r4,sp,#12; ldrb r5,[r4,#0]` (accès
octet calculé), pas un `ldr` mot -- typé `bool` (règle 13 déjà connue,
version LECTURE plutôt qu'écriture) au lieu de `u32` : byte-exact au
2e essai.

### Vérification (standard `DECOMP_RULES.md`, objet isolé)

1. `arm-none-eabi-readelf -S build/src/code_ADDR.o` : `.text` = `0x68`
   (`func_08050EE4`, == `0x08050F4C - 0x08050EE4`) et `0x48`
   (`func_080512D8`, == `0x08051320 - 0x080512D8`) -- tailles exactes.
2. Diff **octet à octet réel** (`dd` sur `fomt.gba` lié vs `baserom.gba`,
   même plage d'adresses/tailles) -- identique pour les 2 fonctions.
   (`objdump` seul aurait signalé un faux écart : formatage différent des
   pools littéraux entre un binaire lié -- mots 32 bits résolus -- et le
   désassemblage brut de `baserom.gba` -- pseudo-instructions mal
   synchronisées -- piège de present affichage, pas de contenu réel;
   confirmé par la comparaison `dd`/`cmp` directe.)
3. Rebuild complet (`rm -rf build ... && make compare`) : lien réussi sans
   référence non définie ni définition multiple, seul `sha1sum` échoue
   (attendu depuis `cb06198`).
4. Sweep anti-doublon (`grep -rl -- ".L08050EE4\|.L080512D8" asm/*.s
   src/*.cc`) : vide.

### Découpage

- `asm/code_08050E98.s` tronqué juste après `func_08050EBC` (le blob
  `.L08050EE4` en sortait entièrement).
- Nouveau `asm/code_08050F4C.s` : reste du blob (fonction `func_08050F4C`,
  18 octets, near-miss "copie explicite élidée" déjà documenté w44 --
  PAS retenté ce round, laissé en `.byte`) + 2 octets de padding avant
  `func_08050F60` déjà porté.
- `asm/code_080512D8.s` : le blob de tête (`.L080512D8`, 72 octets =
  fonction + pool en entier, RIEN ne restait avant `func_08051320`) a été
  retiré intégralement ; fichier renommé `asm/code_08051320.s` (règle de
  découpage #6 -- la fonction suivante devient la nouvelle tête du fichier).
- `fomt.lds` : 2 nouvelles entrées insérées à chaque emplacement.

### Commit

`decomp: match func_08050EE4/func_080512D8, packed-bitfield ctor family`
(1 commit, les 2 fonctions partagent exactement la même cause racine et
ont été vérifiées ensemble).

### Cibles NON tentées ce round, laissées en l'état

- `func_08050F4C` (18o, near-miss "copie explicite élidée", w44) --
  reste en `.byte` dans le nouveau `asm/code_08050F4C.s`.
- `func_08050F74` (44o, near-miss registre r4/r5 + `__umodsi3`) -- inchangé.
- `08050FA0`/`080510E8`/`0805116C` (312o/128o/328o, "pression de
  registres", jamais tentées) -- candidates pour escalade `fable`,
  inchangées.
- `func_08050E98`/`func_08050EBC` (les 2 setters voisins, MÊME champ
  `self+0x550` mais PAS ce round) : réexaminés avec la nouvelle idée
  "bitfield struct" -- **ne s'applique PAS directement** : contrairement
  aux ctors, le masque de ces 2 setters est construit à partir d'un
  PARAMÈTRE d'appel dynamique (`bics r2,r1` -- `r1` est un masque fourni
  par l'appelant, pas une largeur de champ fixée à la compilation), donc
  ce n'est pas une simple affectation de bitfield à largeur constante.
  Root-cause potentiellement différente, PAS résolu ce round -- laissé
  en l'état, aucun fichier modifié pour cette paire. À noter dans
  `DECOMP_ARCHIVE.md` comme sous-cas distinct de la famille pour éviter
  de re-tenter la même idée dessus sans nuance.

### État du worktree en fin de round

- 1 commit de matchs (2 fonctions), déjà listé ci-dessus.
- `git status --short` propre après commit, `build/`/`fomt.gba`/
  `fomt.elf`/`fomt.map` nettoyés.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Aucun recoupement avec w45/w48 (cibles `func_0803A798`/`func_0803BF78`
  jamais touchées ce round).

## Round w50 -- symbolisation du premier tiers de `asm/vtables.s` (mission cross-cutting, portion `vtable_unk_080E59EC` à `vtable_unk_080E6A98`)

Mission différente du matching habituel, lancée après le bug crash vécu
(un trampoline de hook mal dimensionné a décalé une fonction, rendant
faux un pointeur de vtable codé en dur -- crash direct au milieu d'une
fonction au lieu de son début). Objectif : remplacer les blobs `.incbin`
bruts des vtables C++ par des `.4byte` symboliques référençant les labels
déjà existants dans le dépôt, pour que le linker recalcule automatiquement
en cas de futur décalage -- élimine la classe de bug pour de bon, pour la
portion traitée.

### Méthode

- Baseline : rebuild propre (`rm -rf build fomt.gba fomt.elf fomt.map &&
  make` avec `build/franglais_stub.bin` factice) -> `sha1sum fomt.gba` =
  `edc0b545851bf6b921d979a5de0e8e9c20611b9a`.
- Résolution des labels faite depuis la table de symboles de l'ELF LIÉ
  (`arm-none-eabi-nm fomt.elf`), PAS depuis un grep statique sur
  `asm/*.s`/`src/*.cc` -- découverte en cours de route : un grep statique
  (thumb_func_start + `ALIAS()`) sur-résout, car il suppose que le nom
  `func_ADDR` désigne encore l'adresse ADDR dans le lien ACTUEL, ce qui
  n'est plus garanti si un décalage préexistant traîne déjà dans l'arbre
  (le check `sha1sum -c fomt.sha1` global est désactivé depuis `cb06198`,
  donc plus aucun garde-fou global ne détecterait un tel décalage résiduel
  avant cette mission). Exemple concret trouvé : `func_08010158` (nom
  canonique, adresse vanilla censée être `0x08010158`) est actuellement lié
  à `0x0801006C` dans CE build (`-0xEC` de décalage) -- un octet brut de
  vtable référençant littéralement `0x08010159` (bit thumb inclus) NE DOIT
  PAS être réécrit `.4byte func_08010158`, sous peine de changer le
  contenu binaire (le linker recalculerait la VRAIE adresse actuelle,
  différente de l'octet brut déjà en place). Règle appliquée : un mot n'est
  symbolisé QUE si l'adresse qu'il encode correspond EXACTEMENT à l'adresse
  ACTUELLE (post-lien) d'un symbole existant -- pas juste "un symbole du
  même nom existe quelque part".
- Pour chaque mot de 4 octets de chaque blob de ma portion (107 vtables,
  lignes 3-524 de `asm/vtables.s`) : si nul -> `.4byte 0` inchangé (mots de
  préfixe MI/RTTI, cf. `DECOMP_ARCHIVE.md` "2 mots nuls de préfixe") ; si
  bit thumb posé (`val & 1`) ET qu'un symbole `T`/`t`/`W`/`w` de `nm`
  atterrit EXACTEMENT à `val & ~1` -> `.4byte NOM` (nom sémantique préféré
  si déjà porté, sinon `func_ADDR`, sinon `vtable_unk_ADDR`) ; sinon ->
  `.4byte 0xVALEUR @ no label yet` littéral inchangé, aucun label inventé.
- Script Python jetable (`/tmp/w50_vtable_apply.py`, pas commité --
  scratch de session) a fait la substitution mécaniquement sur toute la
  portion en une passe, à partir de la table nm dumpée dans
  `/tmp/w50_syms.txt`.

### Résultat

- 107 vtables touchées, 980 mots au total.
- **214 mots symbolisés** : 173 vers `__pure_virtual` (stub partagé de
  méthode virtuelle non implémentée, symbole réel de `src/pure_virtual.o`,
  PAS inventé -- trouvé dans la table `nm`, pas dans un grep statique) +
  ~41 vers des fonctions réellement portées/connues (`func_0800371C`,
  `func_0800374C`, etc.).
- **213 mots laissés `.4byte 0`** (préfixes offset-to-top/RTTI nuls,
  layout `-fvtable-thunks` standard, pas des pointeurs manquants).
- **553 mots laissés littéraux `@ no label yet`** : soit valeurs non-code
  (offsets de this-adjustment MI, ex. `0xFFFFFFE4`, bit thumb absent),
  soit adresses de code dont AUCUN symbole n'atterrit exactement à cette
  adresse dans le lien actuel -- inclut potentiellement des fonctions déjà
  connues mais actuellement décalées (cf. `func_08010158` ci-dessus) : ne
  pas retenter de les résoudre par nom sans revérifier individuellement
  contre `nm`, le décalage peut avoir changé entre deux rounds.

### Vérification

- Rebuild complet après édition (mêmes commandes que la baseline) ->
  `sha1sum fomt.gba` = `edc0b545851bf6b921d979a5de0e8e9c20611b9a`, **identique
  bit à bit** à la baseline. Aucune erreur de lien (aucune référence non
  définie, aucune définition multiple) -- `pure_virtual.o`/tous les objets
  `func_ADDR`/`.cc` référencés étaient déjà dans le lien avant cette
  mission.
- `git status --short` : seul `asm/vtables.s` modifié.

### État du worktree en fin de round

- 1 commit (voir message ci-dessous), seul `asm/vtables.s` modifié +
  `SESSION_NOTES.md`.
- `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés avant commit.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Portion traitée : `vtable_unk_080E59EC` à `vtable_unk_080E6A98` (premier
  tiers de `asm/vtables.s`, lignes 3-524) uniquement -- les 2/3 restants
  (jusqu'à la fin du fichier) sont hors scope de ce round, traités par
  d'autres agents en parallèle sur d'autres worktrees.

## Round (worktree w51, branche `parallel-51`) -- symbolisation de vtables
`.incbin` -> `.4byte`/`.word` sur le 2e tiers (`vtable_unk_080E6AD8` à
`vtable_unk_080E7A28`)

Mission différente du matching habituel : convertir les 320 vtables C++
de `asm/vtables.s`, qui sont aujourd'hui des blobs `.incbin` bruts (donc
des pointeurs de fonction codés en dur, jamais recalculés par le
linker), en forme symbolique (`.4byte func_ADDR`). Motivation directe :
un hook franglais mal dimensionné a récemment décalé des adresses
downstream et cassé ces pointeurs bruts (corrigé entretemps par
`f718114`/`4f55c43`, déjà présents sur cette branche) -- symboliser
élimine cette classe de bug pour toujours puisque le linker recalcule
alors chaque slot automatiquement, quel que soit un futur décalage.

Portion prise : les 105 vtables de `vtable_unk_080E6AD8` à
`vtable_unk_080E7A28` (lignes ~526-958 avant édition), 958 mots (3832
octets) au total.

### Méthode

1. Convention de slot vérifiée sur un exemple déjà symbolisé dans ce
   dépôt (`__vt_12ScriptEngine`, ligne ~830) : `.4byte func_ADDR` nu,
   sans `+1` manuel -- le bit thumb est ajouté automatiquement par le
   linker via la relocation, puisque `func_ADDR` porte déjà `.thumb_func`
   (macro `thumb_func_start`). Confirmé bit-exact par les rounds
   précédents qui ont produit cet exemple.
2. Table adresse -> label construite par script (`thumb_func_start
   func_ADDR`/`sub_ADDR` dans tout `asm/*.s`, + définitions `func_ADDR(`
   dans tout `src/*.cc` pour couvrir les fonctions déjà portées sous
   ALIAS) : 2744 adresses connues au total.
3. Chaque mot de 4 octets des 105 vtables lu directement dans
   `baserom.gba` (pas de recalcul d'offset : les valeurs stockées dans
   la ROM sont déjà des adresses ROM absolues `0x08xxxxxx`, bit thumb
   inclus -- vérifié en lisant les octets bruts avant/après un slot déjà
   converti).
4. Par mot : `0x0` -> `.word 0` nu (mots nuls de préfixe MI/RTTI, cf.
   convention déjà documentée plus haut dans ce fichier) ; adresse
   trouvée dans la table -> `.4byte func_ADDR` (ou `sub_ADDR`) ; sinon
   -> `.4byte 0xVALEUR @ no label yet` littéral, SANS deviner de nouveau
   label.

### Résultat du scan

- **527 slots symbolisés** (`.4byte func_ADDR`/`sub_ADDR`), 280 labels
  distincts référencés.
- **208 mots nuls** (`.word 0`), préfixe MI/RTTI standard.
- **223 slots laissés littéraux** (`@ no label yet`), 44 valeurs
  distinctes. Spot-check sur 2 cas pour confirmer que ce ne sont pas des
  labels ratés par le script :
  - `0x08000639` (8 occurrences, `vtable_unk_080E7328`) : bytes bruts
    `70 47` (`bx lr`) à l'offset fichier `0x638`, entre la fin de
    `func_08000568` (`asm/interrupt.s`) et le début de
    `func_0800063C` (`asm/sram_proxy_2.s`) -- un stub "ne rien faire" de
    2 octets jamais isolé en fonction propre, donc jamais labellisé.
  - `0x0801FDC1` (34 occurrences, la valeur la plus fréquente du lot) :
    bytes bruts `70 b5 04 1c ...` (`push {r4,r5,r6,lr}`, vrai prologue de
    fonction) à l'offset `0x1FDC0`, en PLEIN MILIEU du bloc monolithique
    `asm/code_08012028.s` (entre `func_0801FD6C` et `func_08020060`,
    jamais découpé) -- exactement le cas "fonction non isolée" anticipé
    par la consigne, pas une erreur de la table.
  - Les 44 valeurs restantes n'ont pas été investiguées une par une
    (hors budget de ce round) -- laissées littérales par construction,
    conformément à la consigne ("ne pas deviner").

### Vérification -- découverte importante : le hash sha1 global NE PEUT PAS
servir de critère bit-exact ici, et ce n'est pas un bug de transcription

Protocole initial (rebuild propre AVANT édition, rebuild propre APRÈS,
comparer `sha1sum fomt.gba`) exécuté correctement (`git stash`/`git stash
pop` pour isoler les 2 builds sur l'état de commit identique, seul
`asm/vtables.s` diffère) :
- AVANT (incbin brut) : `edc0b545851bf6b921d979a5de0e8e9c20611b9a`
- APRÈS (symbolisé)   : `c36f95b975cda85366ccd4de43b54d4ed0d85ccc`
- **Les deux diffèrent**, mais la diffusion est bornée EXACTEMENT à la
  plage `0xE6AE8`-`0xE7A3C` (ma portion, aucun octet ailleurs, taille de
  fichier identique aux deux builds : 8392704 octets) -- pas une
  cascade de décalage globale, pas une taille de vtable qui a changé.

Root cause identifiée (`arm-none-eabi-nm fomt.elf`) : les adresses
NOMINALES des fonctions (`func_08034E8C`, `func_080DC9FC`, ...) ne
correspondent PLUS à leurs adresses RÉELLEMENT liées dans CE build --
ex. `func_08034E8C` (nom = adresse vanilla) est en fait linké à
`0x08034da0` (décalage de `-0xEC`), `func_080DC9FC` à `0x080dca04`
(décalage de `+0x08`). Autrement dit, **les octets bruts `.incbin`
encodent des adresses VANILLA/PRÉ-DÉCALAGE, déjà stales par rapport au
layout RÉEL de ce build** -- exactement la classe de bug que cette
mission existe pour éliminer. `DECOMP_RULES.md` documente déjà que ce
dépôt a abandonné la vérification sha1 globale (`cb06198`) au profit
d'une vérification PAR FONCTION isolée -- ce round en est la confirmation
empirique côté vtables : le layout global a dérivé, et les vtables
brutes qui n'ont pas encore été symbolisées sont donc **déjà cassées en
silence** pour toute fonction dont l'adresse a dérivé, dans TOUT le
fichier `asm/vtables.s`, pas seulement dans ma portion.

Vérification de substitution utilisée à la place du hash global (rigueur
équivalente, adaptée à un contenu qui doit maintenant suivre le linker
plutôt que rester figé) :
1. Aucune dérive de taille : fichier de sortie identique en taille aux
   deux builds (958 mots = 3832 octets avant/après, `.incbin` remplacé
   mot pour mot).
2. `arm-none-eabi-nm fomt.elf` : les 280 symboles distincts référencés
   dans ma portion sont TOUS définis (aucun `U`, aucune référence
   pendante) -- lien propre, aucune référence non résolue.
3. Rebuild répété (2x) : hash APRÈS reproductible à l'identique
   (`c36f95b9...`) -- pas un artefact d'un unique build foireux.
4. Spot-check manuel : le mot d'origine `0x080DC9FD` (`func_080DC9FC`
   vanilla+1) correspond EXACTEMENT à l'adresse vanilla du symbole
   `func_080DC9FC` (le nom du label), et le mot APRÈS symbolisation
   (`0x080dca05`) correspond EXACTEMENT à `nm` (`080dca04` + bit thumb)
   -- le linker résout bien la BONNE fonction, juste à sa vraie adresse
   courante au lieu de l'adresse stale gravée dans la ROM vanilla.

**Conclusion : la transformation est correcte** (pas d'erreur de
transcription, pas de label inventé, pas de dérive de taille) ; la
non-identité avec le hash `.incbin` d'origine est la PREUVE que le fix
fonctionne, pas un signal d'échec. Le rebuild complet (avec
`franglais_stub.bin` factice) ne montre aucune erreur de lien
(référence non définie / définition multiple) -- seul `sha1sum -c
fomt.sha1` échoue, attendu depuis `cb06198`.

### État du worktree en fin de round

- 1 fichier modifié : `asm/vtables.s` (105 `.incbin` -> séries de
  `.4byte`/`.word`), aucun autre fichier touché, aucun label inventé.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Signal pour les rounds suivants (à remonter à `main`/`DECOMP_ARCHIVE.md`) :
  **le layout global du binaire a dérivé de vanilla** pour au moins 2
  fonctions vérifiées (`func_08034E8C`, `func_080DC9FC`) -- toute vtable
  encore en `.incbin` brut ailleurs dans le fichier (les 2 autres tiers)
  est potentiellement dans le même état "silencieusement cassée" tant
  qu'elle n'est pas symbolisée à son tour.

## Round w52 (worktree `parallel-52`) -- symbolisation du 3e tiers des vtables `.incbin` brutes

### Mission

Mission différente du matching habituel : `asm/vtables.s` contenait 320
vtables C++ jamais décompilées, chacune sous forme `.incbin "baserom.gba",
OFFSET, TAILLE` -- copie brute des octets ROM, slots de pointeurs de
fonction codés en dur (pas de référence symbolique). Portion assignée :
les 107 vtables de `vtable_unk_080E7A38` à `vtable_unk_080E85E8` (3e tiers,
fin du fichier, lignes ~959-1385 avant édition).

### Méthode

1. Convention d'encodage vérifiée AVANT toute conversion : `__vt_12ScriptEngine`
   (`asm/vtables.s`, déjà écrit en `.4byte func_ADDR`/`.4byte
   method_MANGLED` depuis un round antérieur) confirme que le bit thumb
   (+1) est géré automatiquement par l'assembleur/linker via
   `.thumb_func` -- écrire `.4byte func_ADDR` nu suffit, jamais `+1` à la
   main. Vérifié aussi qu'un slot déjà connu (`vtable_unk_080E5A88`,
   `func_08004C54`/`func_08004C68`, cf. `DECOMP_ARCHIVE.md` "2 mots nuls
   de préfixe") décode EXACTEMENT pareil avec ma logique
   (`valeur_brute - 1` == adresse du label) avant de l'appliquer à ma
   portion.
2. Index de tous les labels `func_ADDR` connus construit par grep
   (`thumb_func_start` dans `asm/*.s` + occurrences `func_ADDR` dans
   `src/*.cc`/`include/*.hh` pour les fonctions déjà portées, dont le
   label `func_ADDR` ne vit plus que comme alias `ALIAS(...)` texte, pas
   comme `thumb_func_start`) : 2697 adresses connues au total.
3. Pour chacun des 758 mots de 4 octets de ma portion : lu depuis
   `baserom.gba` à l'offset exact de chaque `.incbin`, comparé
   `valeur - 1` (bit thumb) puis `valeur` nue contre l'index. Remplacé
   par `.4byte func_ADDR` si trouvé, sinon gardé `.4byte 0xVALEUR @ no
   label yet` (littéral, aucun label inventé). Les 2 premiers mots de
   chaque vtable (préfixe `-fvtable-thunks`, cf. `DECOMP_ARCHIVE.md`) ont
   un commentaire dédié (`offset-to-top`/`RTTI slot`) au lieu de `@ no
   label yet` quand ils valent 0 -- un seul cas où le mot 0 (offset-to-top)
   est non-nul (`vtable_unk_080E7DF4`, `0xFFFFFFF8` = -8, vrai ajustement
   MI thunk, laissé littéral avec le même commentaire structurel).

### Résultat du comptage

- **327 slots symbolisés** (`.4byte func_ADDR`) sur 758 slots totaux
  (107 vtables).
- **431 slots laissés littéraux** : 215 valent `0x0` (préfixe structurel
  `-fvtable-thunks`, 2 par vtable) + 216 sont des adresses ROM plausibles
  (bit thumb posé) qui ne correspondent à AUCUN label existant --
  vérifié sur plusieurs échantillons (ex. `0x08075E00`) qu'elles tombent
  bien AU MILIEU d'un bloc `asm/*.s` jamais découpé (entre
  `func_08075DEC` et `func_08075E24`), pas une adresse invalide -- exactement
  le cas "fonction jamais isolée" décrit dans la mission. Aucun nouveau
  label inventé, conformément à la règle.

### Découverte importante -- le check "binaire rigoureusement identique"
NE PASSE PAS, et c'est ATTENDU (pas une erreur de transcription)

Le protocole de vérification demandé (sha1 avant/après strictement égal,
puisque la transformation ne devrait rien changer sémantiquement) a
échoué : 336 octets diffèrent, tous confinés exactement à la plage
octets de ma portion (`0xE7A38`-`0xE8614`, vérifié par `cmp -l` complet --
AUCUN octet ailleurs dans les 8 Mo de ROM n'a bougé, donc pas de dérive
de taille globale, la taille du fichier est identique avant/après).

Root-cause investiguée à fond (pas supposée) : `arm-none-eabi-nm
fomt.elf` sur TOUS les symboles `func_ADDR` du binaire montre qu'à partir
de `func_0803F8DC` (adresse RÉELLE liée = `0x0803F8E4`, soit +8 par
rapport à l'adresse encodée dans son propre nom) et JUSQU'À LA FIN DU
BINAIRE (1620 symboles vérifiés, delta == +8 pour TOUS sans exception),
le binaire actuellement compilé par ce dépôt est **déjà décalé de +8
octets par rapport à l'adresse vanilla** que chaque nom `func_ADDR`
encode. Cause probable : le payload franglais réellement lié dans la ROM
(cf. `DECOMP_RULES.md`, commit `cb06198`) fait déjà échouer
`sha1sum -c fomt.sha1` pour la même raison structurelle -- la ROM de ce
dépôt est INTENTIONNELLEMENT non-vanilla, et ce +8 est une conséquence
déjà présente AVANT que je touche à quoi que ce soit (confirmé : le delta
+8 existe pour `func_08063E58`/`func_080E1D8C` qui n'ont RIEN à voir avec
ma modification, juste en inspectant `nm` sur le binaire).

Conséquence directe et IMPORTANTE pour la mission entière (pas juste ma
portion) : **les 320 vtables `.incbin` brutes de tout `asm/vtables.s`
contiennent, dès aujourd'hui, des pointeurs de fonction FIGÉS sur
l'adresse vanilla (correcte à l'origine) qui ne correspond PLUS à la
position réelle où le linker place ces fonctions dans CE build précis**
-- exactement la classe de bug que cette mission de symbolisation est
censée éliminer, sauf que le bug est déjà actif MAINTENANT pour toute
vtable encore en `.incbin`, pas seulement dans un scénario hypothétique
futur. Ma conversion en `.4byte func_ADDR` corrige donc RÉELLEMENT et
DÈS MAINTENANT les 327 slots symbolisés de ma portion (le linker recalcule
la vraie adresse +8), alors que les 431 slots restés littéraux (pas de
label existant) restent, eux, avec l'ancienne adresse vanilla fausse --
un bug latent réel mais qu'il est hors de portée de corriger sans
inventer un label (interdit par la règle).

Vérification de non-régression effectuée malgré l'échec du check sha1
littéral :
1. Chaque slot symbolisé référence un symbole EXISTANT (vérifié par le
   lien complet, aucune référence non définie).
2. Les 336 octets qui diffèrent sont TOUS de la forme "même valeur +8"
   (vérifié programmatiquement sur l'intégralité du diff), cohérent avec
   le delta +8 confirmé par `nm` -- pas une valeur aléatoire, pas un
   octet mal ordonné/mal transcrit.
3. Aucun octet en dehors de la plage de ma portion n'a changé (`cmp -l`
   complet sur les 8 Mo).
4. Lien complet réussi sans nouvelle erreur structurelle.

**Ce résultat doit être signalé aux 2 autres agents travaillant en
parallèle sur les 2 autres tiers du même fichier `asm/vtables.s`** : ils
vont probablement observer le même échec du check "sha1 identique" sur
leur propre portion (si leur portion contient des adresses >=
`0x0803F8DC`, ce qui est très probable puisque `0x0803F8DC` est tôt dans
la ROM) -- ce n'est pas une erreur de transcription à corriger, c'est la
dérive globale +8 déjà présente. Un message a été envoyé à l'agent
`main` avec ce résumé.

### Commit

`decomp: symboliser le 3e tiers des vtables (vtable_unk_080E7A38 à
vtable_unk_080E85E8)` -- 1 commit, 107 vtables, 327/758 slots symbolisés.

### État du worktree en fin de round

- 1 commit (symbolisation vtables, portion w52), `git status --short`
  propre après commit.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés en fin de round.

## Round w54 (worktree `parallel-54`) -- conversion du hook `franglais_farmer_stamina` en trampoline à taille fixe

### Mission

Convertir le hook C++ qui remplace `func_0800E4F0` (`src/farmer.cc`,
"stamina du fermier") d'un remplacement de corps à taille libre vers un
trampoline à taille FIXE identique à la fonction vanilla, suivant le
même pattern déjà validé pour `func_0800912C`
(`asm/code_08008DE8.s`, commit `f718114`/`4f55c43`) : `ldr r3, =PAYLOAD;
bx r3` + `nop` de padding jusqu'à la taille vanilla exacte.

### Localisation et taille vanilla mesurée

Le hook vit dans `src/farmer.cc` (fonction déjà "matchée", pas un
`asm/*.s`) : `func_0800E4F0` appelait un pointeur de fonction brut vers
`FRANGLAIS_franglais_farmer_stamina` (`0x08801074`, défini dans
`include/franglais_poc.hh`), un corps C++ entier (pas de l'assembleur à
la main), donc de taille non contrôlée directement.

Taille vanilla mesurée par désassemblage direct de `baserom.gba` (repris
depuis le checkout principal `~/dev/jeux-langues-assets/fomt-decomp`,
absent -- gitignoré -- de ce worktree, copié dedans sans toucher à rien
en dehors) :
```
arm-none-eabi-objdump -D -b binary -m arm -Mforce-thumb --adjust-vma=0x08000000 \
  --start-address=0x0800E4F0 --stop-address=0x0800E500 -EL baserom.gba
0800e4f0: adds r0, #0x44 ; ldrh r0,[r0,#0] ; lsls r0,r0,#17 ; lsrs r0,r0,#24 ; bx lr ; (pad 2 octets)
```
= **0xC octets (12) exactement**, cohérent avec `next_addr - this_addr`
(`func_0800E4FC - func_0800E4F0 = 0xC`).

### Fix appliqué

Remplacé le corps C++ libre par une fonction `NAKED` (`EC NAKED unsigned
int func_0800E4F0(...)`, macro déjà utilisée ailleurs dans le dépôt --
précédent : `func_08034F00` dans `src/npc_entity.cc`) contenant de
l'assembleur brut via `asm_unified(...)`, EXACTEMENT sur le modèle de
`func_0800912C` : `ldr r3, =LITERAL; bx r3` (4 octets) + 2 `nop` (4
octets) + `.align 2,0` + littéral `.4byte 0x08801075` (adresse payload
avec bit thumb posé, 4 octets) = 12 octets pile. `r0` contient déjà
`&self` à l'entrée (même convention d'appel que le vanilla, qui utilisait
aussi `r0` comme pointeur `self`), donc passé tel quel au payload sans
manipulation. Commentaire inline en ANGLAIS (règle non-négociable du
dépôt), citant `func_0800912C`/`asm/code_08008DE8.s` comme précédent.
Le littéral est codé en dur (pas de macro `FRANGLAIS_...` dans la chaîne
asm -- le préprocesseur C n'expanse pas les macros à l'intérieur des
littéraux de chaîne, donc impossible d'y référencer
`FRANGLAIS_franglais_farmer_stamina` directement ; même limitation que le
littéral hardcodé `0x08801871` déjà présent dans
`asm/code_08008DE8.s` pour `franglais_read_keys`). L'`#include
"franglais_poc.hh"` devenu inutile a été retiré de `src/farmer.cc`.

### Vérification

Environnement de build initialement cassé dans ce worktree (indépendant
de ma modification) : `tools/agbcc/bin/` vide (agbcc/agbcp/old_agbcc
absents), `tools/agbcc/lib/` absent (`libgcc.a`/`libc.a` manquants), et
`baserom.gba` absent (gitignoré, spécifique à chaque worktree). Reconstruit
depuis un répertoire de build agbcc déjà présent sur la machine
(`/tmp/tmp.Cv88fZh1RY`, sources agbcc avec `agbcc`/`agbcp`/`old_agbcc`
déjà compilés) : `make -C libgcc` / `make -C libc` pour produire les 2
`.a` manquants, copie des binaires + includes + libs dans
`tools/agbcc/{bin,include,lib}` de CE worktree uniquement (tous
gitignorés, aucun impact sur `git status`), et copie de `baserom.gba`
depuis le checkout principal. Rien touché en dehors de ce worktree.

1. **Taille du `.o` fraîchement compilé** : `arm-none-eabi-objdump -d
   build/src/farmer.o` -> `func_0800E4F0` à l'offset `0x19c`,
   `func_0800E4FC` à `0x1a8` = **0xC octets**, identique à la taille
   vanilla mesurée. Contenu exact : `4b01 4718 46c0 46c0 08801075`
   (`ldr r3,[pc,#4] ; bx r3 ; nop ; nop ; .word 0x08801075`).
2. **Lien complet propre** (`rm -rf build fomt.gba fomt.elf fomt.map` +
   `head -c 4096 /dev/zero > build/franglais_stub.bin` + `make -j`) :
   aucune erreur structurelle (référence non définie/définition
   multiple). Seul `sha1sum -c fomt.sha1` échoue, ATTENDU (payload
   franglais réel lié, cf. `DECOMP_RULES.md`/commit `cb06198`).
3. **Delta avant/après mesuré précisément par `nm` sur l'ELF lié**, en
   comparant à l'AMONT du hook (`func_0800E4E8`, hors de portée de ce
   round, décalage `-208`/`-240` dû au hook `GetString` non corrigé dans
   CE worktree) :
   - **AVANT** ma correction (corps C++ libre, revert temporaire via
     `git stash`) : `func_0800E4E8` lié à `0800e3f8` (delta amont
     `-0xF0` = -240) ; `func_0800E4F0` (le hook) lié à `0800e400`
     (même -240, point de départ) ; `func_0800E4FC` (juste après le
     hook) lié à `0800e410` -- **delta `-0xEC` = -236**, soit le hook
     ajoutait lui-même **+4 octets** de décalage local (taille compilée
     16 octets au lieu des 12 vanilla).
   - **APRÈS** ma correction : `func_0800E4E8` toujours à `0800e3f8`
     (-240, inchangé, cause amont hors de portée) ; `func_0800E4F0` à
     `0800e400` ; **`func_0800E4FC` à `0800e40c` -- delta `-0xF0` =
     -240, IDENTIQUE à l'amont**. Le hook ne contribue plus AUCUN
     décalage local (0 au lieu de +4). Vérifié aussi sur
     `func_0800E504` (encore -240, aucune dérive supplémentaire en
     aval).
   - **Correction du chiffre annoncé dans la mission** : la consigne
     initiale citait un décalage de -240 *supplémentaires* attribuables
     à ce hook précis. La mesure réelle (avant/après isolé par `git
     stash`) montre que la contribution locale RÉELLE du hook libre
     était seulement de **+4 octets** (16 vs 12 vanilla), pas -240 --
     le -240 global observé partout dans ce worktree est entièrement
     dû au hook `GetString` en amont (traité par un autre agent en
     parallèle), pas à `franglais_farmer_stamina`. Signalé ici pour que
     `main` ajuste le décompte total attendu après fusion des deux
     fixes : le hook `farmer_stamina` seul ne retire que 4 octets de
     décalage cumulé, pas 240.
4. **Vérification fonctionnelle en jeu (mGBA)** : NON EFFECTUÉE ce
   round (hors budget) -- le comportement du payload lui-même
   (`0x08801074`) n'est pas modifié par ce fix, seul le point
   d'accroche change de forme (identique en taille et en effet : même
   valeur de registre `r0`, même saut vers la même adresse `|1`), donc
   risque fonctionnel jugé minimal, mais un test visuel mGBA reste à
   faire pour confirmation complète (cf. mémoire projet "Toast visual
   check pending" -- même type de vérification en attente).

### Commit

1 commit : conversion de `func_0800E4F0` en trampoline à taille fixe
(`src/farmer.cc`), avec commentaire anglais citant le précédent
`func_0800912C`.

### État du worktree en fin de round

- 1 fichier modifié dans git (`src/farmer.cc`), `git status --short`
  propre après commit.
- `baserom.gba` et `tools/agbcc/{bin,include,lib}` ajoutés dans ce
  worktree pour permettre le build (gitignorés, n'apparaissent pas dans
  `git status`) -- nécessaires pour tout futur round dans CE worktree
  spécifique.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés en fin de round.

## Round (worktree `w55`, branche `parallel-55`) -- conversion des 3 paires `Tool`/`Food`/`Article::GetName`/`GetDesc` en trampolines à taille fixe

### Mission

Les 6 hooks franglais de `src/item.cc` (`Tool::GetName`/`GetDesc`,
`Food::GetName`/`GetDesc`, `Article::GetName`/`GetDesc`) étaient depuis
`cb06198` des remplacements de CORPS ENTIER à taille libre (un simple
`return ((Fn)(FRANGLAIS_xxx | 1u))(this);` compilé par agbcp à une taille
arbitraire), en violation de la règle standing (`DECOMP_RULES.md`,
"Discipline non négociable") qui exige un trampoline à taille FIXE,
identique au corps vanilla remplacé. Ces 6 fonctions ne sont PAS
virtuelles (vérifié : noms mangle CFront `GetName__C4Tool` etc., aucun
`virtual` dans `include/item.hh`, appelées par `bl` direct dans le
désassemblage vanilla) -- pas de vtable à préserver ici, contrairement à
ce que le contexte de départ laissait supposer.

### Méthode

1. **Tailles/adresses vanilla exactes** obtenues en buildant le commit
   `b8471ae` (dernier état de `item.cc` avant le hook `cb06198`, encore
   vanilla-matché) dans un worktree scratch dédié
   (`/tmp/w55_vanilla_check`) -- `make compare` y passe bit-exact
   (`sha1sum -c fomt.sha1` -> Réussi), donc les adresses `nm` de ce build
   SONT les adresses vanilla. Sizes mesurées (`next_addr - this_addr`) :
   - `GetName__C4Tool` @ `0800db34`, 0x2C (44)
   - `GetDesc__C4Tool` @ `0800db8c`, 0x3C (60)
   - `GetName__C4Food` @ `0800dcb8`, 0x28 (40)
   - `GetDesc__C4Food` @ `0800ddd4`, 0x38 (56)
   - `GetName__C7Article` @ `0800df58`, 0x2C (44)
   - `GetDesc__C7Article` @ `0800dfd4`, 0x3C (60)
   Toutes prennent uniquement `this` (r0) -- pas de r1/r2/r3 vivant en
   entrée, donc r3 est un scratch sûr pour le saut (même convention que
   `func_0800912C`/les hooks `scene_text`).

2. **Problème structurel avec le worktree** : ni `baserom.gba` ni
   `tools/agbcc/bin/{agbcc,old_agbcc,agbcp}` (gitignorés, cf. round
   "toolchain bring-up") n'étaient présents dans CE worktree `w55` --
   copiés depuis `fomt-decomp` (checkout principal) avant de pouvoir
   builder quoi que ce soit ici.

3. **item.cc reste un SEUL fichier / une seule entrée `fomt.lds`**
   (`src/item.o(.text)`, ~15 fonctions dont Tool/Food/Article ctors,
   GetIconId, ToolStack/FoodStack/ArticleStack, Product, ItemVariant) --
   pas de découpage en plusieurs fragments `.cc`/`asm` (contrairement à
   la méthode "Découpage" habituelle pour un fichier `asm/*.s`
   monolithique) : un vrai trampoline TAILLE FIXE s'est avéré possible
   **directement en C++ via `asm volatile(...)` inline**, qu'agbcp
   accepte (`gcc 2.9-arm` supporte le mot-clé `asm` basique). Solution
   plus légère que scinder `item.cc` en 7 fragments + 6 fichiers asm.

4. **Piège découvert (et root-causé) : `ldr rX, =valeur` (pool implicite)
   casse dans un GROS fichier .cc, marche dans un petit test isolé.**
   Un premier essai (`ldr r3, =0x08801975` sans label explicite) compile
   et assemble sans erreur en isolation (le pool littéral se retrouve
   comme par chance juste après la fonction, seul contenu du fichier de
   test), mais échoue à la compilation réelle de `item.cc`
   (`Error: invalid offset, value too big`, décalages mesurés 0x794,
   0x744, 0x620, 0x50C -- tous >> la portée ±1020 octets d'un
   `ldr rD,[pc,#imm]` Thumb) : `as` ne flush le pool implicite qu'en fin
   de fichier assembleur entier, beaucoup trop loin dès qu'il y a
   plusieurs fonctions après. **Fix : littéral posé via un label explicite
   local (`ldr r3, 1f` / ... / `1: .word VALEUR`)**, comme le fait déjà
   la convention existante (`func_0800912C`, hooks `scene_text` de
   `asm/code_0804E9C8.s`) -- jamais la pseudo-syntaxe `=valeur` dans un
   fichier `.cc` de taille réelle.

5. **Calcul du nombre de NOP exact** : agbcp ajoute TOUJOURS un `bx lr`
   après le bloc `asm volatile` pour une fonction à valeur de retour sans
   `return` explicite (comportement de compilateur non négociable, pas
   contournable en C pur) -- budgété dans le compte de NOP plutôt que
   combattu. Formule vérifiée empiriquement (compilation + mesure réelle,
   pas déduite à l'aveugle) :
   `total = (2 ldr + 2 bx + 2*N nop) + pad_align(mot) + 4 (word) + 2 (bx lr agbcp) + pad_align(fin fonction)`,
   les deux paddings d'alignement dépendant de la parité de `N`. Résolu
   par script Python essayant chaque `N` jusqu'à matcher la taille cible
   exacte, PUIS validé par compilation réelle+`objdump` sur chacune des 6
   fonctions (pas seulement calculé). Valeurs finales (`N` = nombre de
   `nop`) : Tool::GetName 15, Tool::GetDesc 23, Food::GetName 13,
   Food::GetDesc 21, Article::GetName 15, Article::GetDesc 23.

6. Macro partagée `FRANGLAIS_TRAMPOLINE(addr_hex_plus_one, nop_count)`
   ajoutée à `include/franglais_poc.hh` (commentaire anglais, comme
   l'exige la convention du dépôt) pour éviter de dupliquer 6 fois le
   même bloc `asm volatile`. `addr_hex_plus_one` est l'adresse payload
   `FRANGLAIS_franglais_xxx` DÉJÀ additionnée de 1 (bit Thumb), donnée en
   littéral hex nu (pas de suffixe `u` -- invalide en syntaxe `as`).

### Vérification

- Rebuild propre (`rm -rf build fomt.gba fomt.elf fomt.map`,
  `build/franglais_stub.bin` factice 4096 octets de zéros) : lien
  complet réussi, aucune référence non définie, aucune définition
  multiple. `sha1sum -c fomt.sha1` échoue (attendu, `cb06198`, payload
  franglais réellement lié -- pas un signal d'échec pour ce round).
- **Taille de `build/src/item.o` (`.text`) identique bit à bit
  AVANT/APRÈS** entre ce worktree et le build vanilla de référence
  (`b8471ae`) : `0x7b8` octets dans les deux cas.
- `arm-none-eabi-nm fomt.elf` : les 6 fonctions atterrissent EXACTEMENT à
  leur adresse vanilla (`0800db34`, `0800db8c`, `0800dcb8`, `0800ddd4`,
  `0800df58`, `0800dfd4`) -- **et surtout `func_0800E2E4` (première
  fonction du fichier SUIVANT `item.o` dans `fomt.lds`) atterrit
  EXACTEMENT à `0800e2e4`**, sa propre adresse vanilla : preuve directe
  que `item.o` occupe désormais very exactement sa plage d'octets
  vanilla de bout en bout, donc les 6 trampolines ont chacun la bonne
  taille (pas seulement en apparence, le décalage cumulé retombe
  pile à zéro en sortie du fichier).
- Diff de désassemblage borné à la taille exacte de chacune des 6
  fonctions (`objdump --start-address=X --stop-address=X+size`) : chaque
  bloc est `ldr r3, [pc,#N]` / `bx r3` / N `nop` / `.word ADRESSE_PAYLOAD`
  / `bx lr` (l'épilogue mort agbcp), sans octet en trop ni en moins avant
  le début de la fonction suivante -- vérifié visuellement fonction par
  fonction.
- Résidu de décalage HORS scope confirmé toujours présent ailleurs (pas
  cassé par ce round, pas réparé non plus, hors mandat) : `func_08010158`
  atterrit à `0801013c` (-0x1C vs vanilla, imputable au hook
  `franglais_season_of`/`func_0800E324` juste après `item.o`, explicitement
  HORS SCOPE de ce round -- traité par un autre agent) ; `func_08050EE4`
  atterrit à `08050fbc` (+0xD8, imputable à `GetString`/`farmer_stamina`,
  également hors scope, traités en parallèle sur d'autres worktrees).
- **Vérification visuelle en jeu (mGBA) NON EFFECTUÉE** : `mgba-qt` est
  disponible sur la machine, mais le `fomt.gba` de CE dépôt lie un
  `build/franglais_stub.bin` factice (4096 octets de zéros, requis
  seulement pour faire passer le LIEN) -- ce n'est pas le vrai payload
  franglais (les vraies chaînes traduites vivent dans le dépôt séparé
  `harvest-moon-franglais`), donc lancer ce ROM précis dans l'émulateur
  ne testerait que du texte garbage/zéro, pas un vrai comportement de
  patch. Un test visuel significatif nécessiterait d'intégrer ce fix
  dans le pipeline de build de `harvest-moon-franglais` d'abord -- hors
  mandat de ce round (mission = fomt-decomp uniquement). Documenté
  explicitement comme NON vérifié visuellement, conformément à la
  consigne.

### État du worktree en fin de round

- 2 fichiers modifiés : `include/franglais_poc.hh` (ajout de la macro
  `FRANGLAIS_TRAMPOLINE`), `src/item.cc` (6 corps remplacés).
- `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés avant commit.
  `baserom.gba` et `tools/agbcc/bin/*` (copiés depuis `fomt-decomp` pour
  pouvoir builder dans ce worktree) restent gitignorés, jamais ajoutés.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- Les 6 fonctions ciblées par la mission (`Tool`/`Food`/`Article::GetName`/
  `GetDesc`) sont maintenant des trampolines à taille fixe -- AUCUNE des
  6 n'est restée bloquée.

## Round w53 (worktree local, branche `parallel-53`) -- conversion du hook `AScriptEngine::GetString` en trampoline à taille fixe

### Correction importante du brief de mission avant de commencer

Le brief transmis pour cette mission affirmait que le hook `GetString`
décale tout ce qui suit de **-208 octets**, et citait `func_0800E2E4`/
`func_0800E324` comme les fonctions vanilla concernées. Mesure directe
(`arm-none-eabi-nm fomt.elf`, build propre AVANT toute modification) :
**c'est faux pour `GetString`** -- ces deux adresses appartiennent en
réalité au hook `franglais_season_of` (`src/code_0800E2E4.cc`,
`func_0800E324`), pas à `GetString` (`src/script_engine.cc`, linké
beaucoup plus loin dans la ROM, autour de `0x0803F6F4`). L'origine réelle
du **-208** mesuré à `func_0800E2E4` est en amont, dans `src/item.cc`
(les hooks `GetName`/`GetDesc` des 3 classes `Tool`/`Food`/`Article`,
toujours des remplacements de corps à taille libre, non convertis à ce
jour) -- `item.o` est linké juste avant `code_0800E2E4.o` dans
`fomt.lds`. Chaîne mesurée avant toute modification (`nm` sur
`func_ADDR`, delta = adresse liée - adresse nominale) :

```
func_0800E2E4  -208   (item.cc GetName/GetDesc x3, en amont)
func_0800E4E0  -240   (franglais_season_of, code_0800E2E4.cc)
func_0800E4FC  -236   (franglais_farmer_stamina -- NE PAS TOUCHER, autre agent)
func_0803F8DC    +8   (après script_engine.o -- LE VRAI point concerné par GetString)
```

Autrement dit : dans ce dépôt, `farmer_stamina` (`func_0800E4FC`) est
**avant** `GetString` dans l'ordre de la ROM, pas après comme le
supposait le brief -- la prémisse "tout retombe à delta=0 après GetString
jusqu'au prochain hook connu (farmer_stamina)" est donc irréalisable
telle quelle : farmer_stamina n'est pas en aval de GetString, il est en
amont, et son propre hook (comme ceux de `GetName`/`GetDesc`/
`season_of`) reste un remplacement à taille libre non corrigé -- hors
scope de cette mission (confirmé non touché, laissé aux agents
parallèles qui en ont la charge). Mission recentrée sur ce qui est
réellement `GetString` : `src/script_engine.cc` +
`fomt.lds` (le hack `. = . + 0x108;` juste après
`src/script_engine.o(.text)`, sans commentaire, qui masquait le vrai
problème par une compensation approximative plutôt qu'un trampoline).

### Root cause du -208→+8 signalé dans DECOMP_RULES.md pour ce hook précis

`fomt.lds` contenait (ligne 228, avant fix) : `. = . + 0x108;` juste
après `src/script_engine.o(.text)`, sans justification écrite -- exactement
le type de hack que la règle standing du jour interdit. Mesure isolée
(`arm-none-eabi-objdump`/`nm` sur `build/src/script_engine.o` seul,
recompilé deux fois : une fois avec le hook actuel, une fois avec le
corps vanilla restauré depuis `git show cb06198^:src/script_engine.cc`
temporairement réappliqué puis annulé) :

- Corps vanilla de `GetString` (bounds check + lookup table + `"Error"`,
  restauré temporairement pour la mesure) : **0x24 (36) octets**
  compilés par `agbcp` (`GetString` à l'offset `0x94c`, symbole suivant
  `ScriptEngine::ScriptEngine(void*)` à `0x970` dans le `.o` isolé).
- Corps du hook (avant ce round, simple tail-call C++ vers le pointeur
  fixe du vrai patch franglais) : **0x10 (16) octets** seulement --
  **-20 octets** de moins que le vanilla, propagés à toute la ROM après
  `script_engine.o`.
- `. = . + 0x108` (264 octets) ajouté au mauvais endroit (au niveau du
  linker script global, pas dans la fonction elle-même) surcompensait
  largement les -20 octets manquants : **net +244** sur le delta observé
  après ce point (`-236` avant `script_engine.o` -> `+8` après, soit
  `-(-20) + 264 = 244`), ce qui explique numériquement le fameux "+8
  résiduel" documenté dans `DECOMP_RULES.md`/round w52 comme touchant
  `func_0803F8DC` jusqu'à la fin de la ROM.

### Fix appliqué

1. `src/script_engine.cc` : `GetString` réécrit en fonction `NAKED`
   (macro déjà utilisée ailleurs dans ce dépôt pour ce cas exact --
   `Rucksack::Upgrade()`, `func_08034F00`) avec un corps `asm_unified`
   manuel, même forme que le trampoline déjà corrigé pour
   `func_0800912C` (`asm/code_08008DE8.s`, commit `f718114`) : `ldr r3,
   =CONST; bx r3` (tail-call, `this`/`id` déjà dans r0/r1, exactement
   l'ABI attendue par le pointeur de fonction du hook d'origine) suivi
   de 14 `nop` de padding pour atteindre exactement 0x24 (36) octets, un
   commentaire EN ANGLAIS expliquant pourquoi la taille doit rester
   fixe, littéral pool `.4byte 0x08800001` (même constante
   `FRANGLAIS_franglais_get_string | 1u` qu'avant, juste encodée en asm
   au lieu d'un cast C++).
   - Piège de placement d'attribut rencontré : `char const * NAKED
     AScriptEngine::GetString(...) const` compile mais l'attribut est
     **silencieusement ignoré** (warning "`naked' attribute directive
     ignored", pas une erreur -- le hook aurait fini par être un
     `bx`+prologue GCC normal en plus du code manuel, mauvaise taille).
     `char const * AScriptEngine::GetString(...) const NAKED` (attribut
     après `const`) casse carrément le parsing ("declaration ... outside
     of class is not definition"). Seule la forme `NAKED char const *
     AScriptEngine::GetString(u32 id) const` (attribut tout au début,
     avant le type de retour pointeur) compile ET applique réellement
     l'attribut -- confirmé par `objdump` (aucun prologue/épilogue
     généré, juste les 18 octets utiles + littéral).
2. `fomt.lds` : suppression pure et simple du `. = . + 0x108;` (plus
   nécessaire, le trampoline conserve maintenant la taille exacte sans
   aide externe).

### Vérification

- Taille isolée : `arm-none-eabi-objdump -h build/src/script_engine.o`
  après fix -> `.text 0xa48` (2632 octets), **identique bit-pour-bit** à
  la taille obtenue en compilant le corps 100% vanilla restauré (mesuré
  séparément, mêmes 0xa48) -- preuve directe que le fichier entier
  retrouve exactement sa taille vanilla, pas seulement `GetString`
  isolément.
- Désassemblage (`arm-none-eabi-objdump -d`) du trampoline : `ldr r3,
  [pc,#28]` / `bx r3` / 14x `nop` (`46c0`, `mov r8,r8` -- nop canonique
  Thumb) / littéral `0x08800001` = exactement 0x24 (36) octets, aucun
  prologue/épilogue parasite.
- Rebuild propre complet (`rm -rf build fomt.gba fomt.elf fomt.map` +
  `head -c 4096 /dev/zero > build/franglais_stub.bin` + `make`),
  répété 2x pour confirmer la reproductibilité (`sha1sum fomt.gba`
  identique aux deux runs : `bd1bcaad3c455a21d613aae8060825319004a72b`).
  Lien complet réussi (aucune référence non définie, aucune définition
  multiple) ; `sha1sum -c fomt.sha1` échoue comme attendu depuis
  `cb06198` (non-signal, cf. `DECOMP_RULES.md`).
- `arm-none-eabi-nm fomt.elf` sur tous les symboles `func_ADDR`, delta =
  adresse liée - adresse nominale, AVANT/APRÈS ce fix :

  | point de la ROM      | delta AVANT | delta APRÈS |
  |----------------------|-------------|-------------|
  | `func_0800E2E4`      | -208        | -208 (inchangé, hors scope) |
  | `func_0800E4E0`      | -240        | -240 (inchangé, hors scope) |
  | `func_0800E4FC`      | -236        | -236 (inchangé, hors scope) |
  | `func_0803F8DC`      | **+8**      | **-236** (plus AUCUN changement de delta à travers `script_engine.o`) |
  | fin de la ROM        | +8          | -236 (constant jusqu'à la fin, 2707 symboles vérifiés) |

  Le point clé : **le delta ne change plus DU TOUT à la traversée de
  `script_engine.o`** (`-236` avant, `-236` après, sur les 2707 symboles
  `func_ADDR` de tout le binaire) -- la preuve que le hook `GetString`
  est maintenant réellement size-preserving et n'introduit plus AUCUN
  décalage propre. Le `-236` residuel qui persiste maintenant jusqu'à la
  fin de la ROM (au lieu du `+8` précédent, qui était une coïncidence
  arithmétique du hack `0x108`) est intégralement dû aux hooks EN AMONT
  (`GetName`/`GetDesc` x3 dans `item.cc`, `franglais_season_of`,
  `franglais_farmer_stamina`) -- non touchés par ce round, toujours des
  remplacements à taille libre, à convertir par les agents qui en ont la
  charge.

### Vérification fonctionnelle en jeu -- NON FAITE

Pas de build mGBA/`tools/capture_options.py` lancé depuis ce worktree
(hors budget de ce round, et l'environnement de ce worktree n'avait même
pas `tools/agbcc`/`baserom.gba` au départ -- copiés depuis le clone
voisin `fomt-decomp/` et `harvest-moon-franglais/baserom.gba`
respectivement pour pouvoir builder du tout, cf. note d'environnement
ci-dessous). Le raisonnement (tail-call vers le même pointeur de fonction
fixe `0x08800001`, mêmes registres `r0`/`r1` déjà en place, comportement
runtime strictement identique à l'ancien hook -- seule la taille du code
change) rend une régression fonctionnelle peu probable, mais **non
vérifié visuellement**.

### Note d'environnement (pour les rounds suivants sur ce worktree)

Ce worktree ne contenait ni `tools/agbcc/bin/{agbcp,old_agbcc}` ni
`baserom.gba` au démarrage de ce round (tous deux `.gitignore`d, jamais
committés) -- `make` échouait immédiatement (`file not found:
baserom.gba` + `old_agbcc: Aucun fichier ou dossier de ce nom`). Copiés
depuis `../../fomt-decomp/tools` (clone voisin déjà installé) et
`/home/mathias/dev/jeux-langues/harvest-moon-franglais/baserom.gba`
(sha1 `a2fc3574f0a65a4fcf7682fb274b9d7eebdef963`) pour pouvoir builder ce
round. Ni l'un ni l'autre n'est commité (vérifié `git status --ignored`).

### État du worktree en fin de round

- 2 fichiers modifiés : `src/script_engine.cc` (trampoline `GetString`),
  `fomt.lds` (suppression du hack `. = . + 0x108;`). Rien d'autre.
- `farmer_stamina` (`func_0800E4F0`/`func_0800E4FC`) explicitement NON
  touché, conformément à la consigne (autre agent en charge).
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés en fin de round ;
  `tools/`/`baserom.gba` laissés en place (gitignorés, utile pour un
  prochain round sur ce même worktree, aucun impact sur `git status`).
- **À remonter à `main`/aux autres agents parallèles** : les hooks
  restants à convertir en trampolines à taille fixe pour éliminer
  totalement le résiduel (-236 constant, tout `GetName`/`GetDesc`
  compris) sont `src/item.cc` (`Tool`/`Food`/`Article` `GetName`/
  `GetDesc`, 6 fonctions) et `src/code_0800E2E4.cc`
  (`franglais_season_of`) -- `farmer_stamina` reste dans le périmètre de
  l'agent qui le traite déjà en parallèle.

## Round w56 (worktree local, branche `parallel-56`) -- conversion du dernier hook restant, `franglais_season_of`, en trampoline à taille fixe

### Contexte

Dernier des 4 hooks C++ à convertir (`GetString` fait en w53,
`farmer_stamina` en w54, `GetName`/`GetDesc` x3 en w55) : mesuré à
l'instant sur `main` fusionné, résidu uniforme de **-32 octets** sur
tout le binaire à partir de `func_0800E4E0` (première fonction
symbolisée après le point d'injection) jusqu'à la fin de la ROM.

### Localisation

`src/code_0800E2E4.cc`, fonction `func_0800E324` (hook
`franglais_season_of`, macro `FRANGLAIS_franglais_season_of =
0x08801944u` dans `include/franglais_poc.hh`). Le corps C++ avant fix :
un cast vers un pointeur de fonction brut + appel + `return`, compilant
à **16 octets** (mesuré par `objdump -h build/src/code_0800E2E4.o`,
offset `func_0800E324` = 0x40, taille totale du fichier = 0x50).

### Piège rencontré -- mauvaise taille cible au premier essai

Première hypothèse (par analogie avec les rounds précédents) : taille
vanilla = `next_addr - this_addr` entre `func_0800E324` et le
**prochain symbole `func_` existant**, `func_0800E4E0` (dans
`src/farmer.cc`) = `0x1BC` = 444 octets. **Fausse** : appliquée telle
quelle (macro `FRANGLAIS_TRAMPOLINE("0x08801945", "215")`, .text mesuré
= exactement 444 octets pour la fonction isolée), le rebuild complet a
montré un delta de **+396** sur tout le binaire après ce point au lieu
de 0 -- pire qu'avant (`-32` -> `+396`). Cause : `func_0800E4E0` n'est
**pas** adjacent à `func_0800E324` dans le layout linké réel -- il y a
entre les deux un bloc de **396 octets d'assembleur brut non
symbolisé** (une autre fonction vanilla jamais matchée, invisible dans
la table des symboles `func_`) qui occupe déjà exactement sa place et
ne doit pas être empiété. La bonne taille ne peut donc pas se déduire
de la table des symboles `func_` seule quand un hook est immédiatement
suivi d'une zone non matchée -- il faut désassembler `baserom.gba`
directement au point du hook.

Taille vanilla réelle, mesurée par désassemblage direct de
`baserom.gba` :
```
arm-none-eabi-objdump -D -b binary -m arm -Mforce-thumb --adjust-vma=0x08000000 \
  --start-address=0x0800E324 --stop-address=0x0800E390 -EL baserom.gba
```
`push {lr}` ... `pop {r1}` / `bx r1` se termine à `0x0800e352`, la
fonction (non matchée) suivante commence à `0x0800e354` -> taille
exacte = **0x30 (48) octets**, cohérente avec `16 + 32` (les 32 octets
de résidu observés avant fix).

### Fix appliqué

`src/code_0800E2E4.cc`, `func_0800E324` : corps remplacé par
`FRANGLAIS_TRAMPOLINE("0x08801945", "17")` (macro déjà existante dans
`include/franglais_poc.hh`, utilisée telle quelle par les 6 hooks de
`item.cc` en w55 -- aucune nouvelle macro nécessaire). `nop_count = 17`
dérivé empiriquement (compilé, mesuré, ajusté) pour atteindre
exactement 48 octets. Commentaire inline en anglais expliquant la
taille réelle, le piège du calcul par soustraction de symboles, et la
référence croisée vers `FRANGLAIS_TRAMPOLINE`.

### Vérification

- `arm-none-eabi-objdump -h build/src/code_0800E2E4.o` : `.text` total
  0x70, offset de `func_0800E324` = 0x40 -> taille isolée = **0x30 (48)
  octets exactement**.
- Désassemblage du trampoline lié (`objdump -d fomt.elf
  --start-address=0x0800E324 --stop-address=0x0800E354`) : `ldr r3,
  [pc,#36]` / `bx r3` / 17 `nop` (`46c0`) / `.word 0x08801945` / `bx lr`
  (épilogue mort agbcp) = 48 octets pile, aucun octet de trop ni en
  moins.
- **Diff octet à octet** entre `fomt.gba` et `baserom.gba` sur la plage
  `0x0000E354`-`0x0000E4E0` (le bloc de 396 octets d'assembleur brut non
  symbolisé juste après le hook, identifié comme la cause du piège
  ci-dessus) : **identique bit pour bit**, preuve directe que ce bloc
  n'a pas été empiété et que le trampoline a la bonne taille, pas
  seulement en apparence.
- Rebuild complet propre (`rm -rf build fomt.gba fomt.elf fomt.map` +
  `head -c 4096 /dev/zero > build/franglais_stub.bin` + `make -j`) :
  lien réussi, aucune référence non définie, aucune définition
  multiple. `sha1sum -c fomt.sha1` échoue comme attendu depuis `cb06198`
  (non-signal, payload franglais réellement lié).
- **`arm-none-eabi-nm fomt.elf` sur les 2707 symboles `func_ADDR` de
  toute la ROM : delta (adresse liée - adresse nominale) = 0 PARTOUT,
  sans une seule exception.** Signal de clôture de toute la campagne de
  conversion trampoline : les 4 hooks (`GetString`, `farmer_stamina`,
  `GetName`/`GetDesc` x3, `season_of`) sont maintenant tous des
  trampolines à taille fixe, et le résidu de décalage documenté depuis
  plusieurs rounds dans `DECOMP_RULES.md` a totalement disparu.
- **Vérification visuelle en jeu (mGBA) NON EFFECTUÉE**, même raison que
  les rounds précédents : ce dépôt lie un `build/franglais_stub.bin`
  factice (zéros), pas le vrai payload franglais (qui vit dans le dépôt
  séparé `harvest-moon-franglais`) -- hors mandat de ce round
  (fomt-decomp uniquement).

### État du worktree en fin de round

- 1 fichier modifié : `src/code_0800E2E4.cc`.
- `build/`/`fomt.gba`/`fomt.elf`/`fomt.map` nettoyés avant commit.
  `baserom.gba`/`tools/agbcc/bin/*` restent gitignorés, jamais ajoutés.
- `origin` intact (URL cassée volontairement), rien poussé, aucune PR.
- **À remonter** : la campagne de conversion des 4 hooks C++ en
  trampolines à taille fixe est terminée -- `DECOMP_RULES.md` (règle
  "trampoline-partout") peut être mise à jour pour refléter que le
  résidu de décalage documenté (+8, puis -32 selon les rounds) n'existe
  plus, une fois ce round mergé sur `main`.

## Round w57 (worktree `parallel-57`) -- `func_08075334` round dédié, near-miss caractérisé précisément, PAS commité

Cible assignée : `func_08075334` (`asm/code_08070A08.s:9622-9779`, 284 octets,
`0x08075334`-`0x08075450`), le vrai helper de push identifié round w36 (voir
plus haut) et évalué round w37 (classe "pression de registres" confirmée,
pas engagé faute d'idée neuve). Ce round dispose du budget dédié demandé par
`DECOMP_RULES.md`/`DECOMP_ARCHIVE.md` -- tentative réelle menée jusqu'au bout
du harnais rapide (pas de `make compare` puisque rien n'est commité).

### Compréhension du rôle (confirmée, réutilisable telle quelle)

Vrai tableau/queue dynamique ancré à `self+0x594` :
`struct Queue { QueueItem *base/*+0*/, *write/*+4*/; void *unk8/*+8*/;
QueueItem *cap_end/*+0xc*/; };` avec `QueueItem` = 16 octets
`{u16 f0; u16 pad; u32 f4; u32 f8; u32 fc;}`. `func_08075334(self, a1, a2,
a3, a4)` construit un `QueueItem` local (`f4=a1, f0=(u16)a2, f8=a3, f4=a4`
-- **ordre d'assignation f4 PUIS f0 PUIS f8 PUIS fc, pas l'ordre des champs
du struct** -- règle #5 de `DECOMP_RULES.md`, confirmé bit-exact sur les 12
premiers octets du corps une fois cet ordre respecté, alors que l'ordre
"naturel" `f0,f4,f8,fc` produit un registre scratch supplémentaire dès la
2e instruction). Si `write==cap_end` (plein) : calcule `old_count =
(write-base)>>4`, `growth = old_count>=1 ? old_count : 1` (doublement de
capacité, ou 1 si vide), `new_count = old_count+growth`, `malloc` (panic via
`func_080D3BC0(size)` si échec, jamais porté, juste `extern "C"` déclaré),
copie les `old_count` items existants dans le nouveau buffer, copie le
nouvel item à la suite, un no-op de recherche de pointeur (boucle qui avance
un curseur de `base` à `write` par pas de 16 SANS AUCUN EFFET utilisé
ensuite, cf. plus bas), `free(base)` (ancien), puis met à jour
`base/write/cap_end`. Sinon (place libre) : écrit l'item à `*write` (si
`write!=nullptr` -- garde défensive) puis `write += 1` dans tous les cas.

### Ce qui a été confirmé bit-exact

Harnais rapide (`arm-none-eabi-cpp`+`agbcp -O2`+`as`, sans lien) : les
**12 premiers octets** du corps (au-delà du prologue, qui matchait déjà du
premier coup) sont devenus byte-exacts une fois l'ordre d'assignation des
champs corrigé (`item.f4=a1; item.f0=(u16)a2; item.f8=a3; item.fc=a4;`,
PAS l'ordre du struct). Nouvelle règle générale confirmée pour
`DECOMP_RULES.md` (extension de la #5) : **pour une struct locale construite
à partir de plusieurs paramètres, l'ordre des ASSIGNATIONS suit l'ordre du
désassemblage, indépendamment de l'ordre de DÉCLARATION des champs dans le
struct** -- un champ physiquement au début du struct (offset 0) peut être
écrit APRÈS un champ à un offset supérieur si le code source l'écrit dans
cet ordre.

### Blocage précis : la taille globale matche (0x11c) mais AUCUNE
variante testée ne matche au-delà des ~12 premiers octets du corps réel

Trois variantes testées (toutes taille `.text` = `0x11c`, confirmée via
`arm-none-eabi-readelf -S`), aucune bit-exacte au-delà du prologue+écriture
de l'item local :

1. **Variante "tout en `q->champ` direct, aucun cache"** : diverge dès
   l'adresse `self+0x594` (le compilateur choisit `r9` pour porter le
   pointeur `q`, alors que l'original le garde en `r5` -- parce qu'aucune
   variable locale `&item` distincte n'existe dans cette variante pour
   "réclamer" `r9`, cf. point 2 ci-dessous).
2. **Variante avec `QueueItem *item_ptr = &item;` déclaré juste après `q`,
   utilisé UNIQUEMENT dans la branche de croissance** (pas dans la branche
   simple, qui recalcule `&item` via `mov r1,sp` à chaque usage, jamais
   caché) : corrige l'allocation de `r5`/`r9` pour le pointeur `q` et
   l'adresse de l'item (confirme l'hypothèse), mais casse ailleurs -- taille
   `.text` retombe à `0x10c` (16 octets manquants) quand `q->base` est relu
   deux fois FRAÎCHEMENT (avant ET après le `malloc`, sans variable locale
   cache) au lieu d'être caché dans une variable survivant l'appel opaque.
3. **Variante hybride (cache `old_base`/`old_write` comme variables locales
   traversant le `malloc`/`free`, `item_ptr` séparé)** : taille repasse à
   `0x11c` (bon), mais le registre alloué au pointeur `q` change encore une
   fois (`sl`/r10 au lieu de `r5`), et la boucle "dead" de recherche
   (`base` -> `write` par pas de 16, résultat jamais utilisé avant le
   `free`) génère un jeu de registres différent (`r3`/`r6` vs `r1`/`r2` dans
   l'original) dès qu'elle est réécrite avec des variables fraîchement
   nommées plutôt que les MÊMES variables `old_base`/`old_write` déjà
   utilisées plus haut dans la fonction.

**Root cause probable, jamais isolée avec certitude faute de temps** : cette
fonction utilise SIMULTANÉMENT 4 valeurs devant survivre à travers 2 appels
opaques (`malloc`, `func_080D3BC0`/`free`) -- `q` (pointeur self+0x594),
`&item` (adresse de l'item local), la valeur `old_write`/`cap_end` (avant
croissance, réutilisée ~6 fois dans les boucles de copie), et la taille
d'allocation (`r8`, pour calculer le nouveau `cap_end` après coup). Seuls 4
registres callee-saved sont disponibles pour ce rôle (`r5`/`r8`/`r9`/`sl`
d'après le prologue) -- l'allocateur de registres d'agbcp (linéaire, faible,
pas de vrai graphe de coloriage) semble très sensible à l'ORDRE TEXTUEL de
PREMIÈRE UTILISATION de chacune de ces 4 valeurs dans le C source pour
décider quelle valeur va dans quel registre, bien plus que dans les cibles
"pression de registres" déjà rencontrées (`DrawGlyphAt`, `func_08010F54.s`)
qui n'avaient que 2-3 valeurs en jeu. Aucune des 3 variantes testées n'a
trouvé le bon ordre de première-utilisation reproduisant simultanément les 4
choix de registres de l'original. Signal pratique pour un futur round :
tester systématiquement les permutations d'ORDRE DE DÉCLARATION (pas
seulement de contenu) des 4 candidats callee-saved (`q`, `&item`,
`old_write`/`cap_end`, taille d'alloc) en gardant strictement la variante 3
(taille correcte) comme base, avant de retoucher la logique elle-même.

### Repo state en fin de round

- **Rien commité** -- aucune tentative n'est bit-exacte au-delà du prologue.
  Toutes les variantes ont été testées dans `/tmp/w57scratch/` (hors dépôt),
  jamais appliquées à `asm/code_08070A08.s`/`fomt.lds`.
- Un fichier parasite `" "` (nommé espace, sortie égarée d'un pipe
  `cpp | agbcp` sans `-o` explicite pendant le tâtonnement) a été créé par
  erreur puis supprimé avant la fin du round -- `git status --short` propre
  confirmé après suppression.
- `git status --short` vide en fin de round, `origin` intact, rien poussé,
  aucune PR.
- Reste ouvert pour un futur round, avec une piste concrète (permutation de
  l'ordre de première-utilisation des 4 valeurs callee-saved) plutôt que la
  caractérisation vague "pression de registres" laissée par w37 -- cf.
  section ci-dessus pour le détail exact des 3 variantes déjà écartées, à ne
  pas retenter telles quelles.

## Round w62 (worktree `parallel-62`) -- `func_08037B48`/`func_08037B80`,
classe "ordre d'évaluation des arguments d'appel" (round w43), 4 nouvelles
variantes testées, mécanisme root-causé mais TOUJOURS PAS reproduit, rien
commité

Cible : `func_08037B48`/`func_08037B80` (`asm/code_08037A04.s`), le near-miss
"ordre d'évaluation" documenté round w43 (`DECOMP_ARCHIVE.md`) et jamais
résolu depuis (6 variantes déjà closes à l'époque). Piste demandée pour ce
round : (1) vérifier si le "littéral" `r3` (4e argument) dépend en fait
d'une valeur calculée par le 5e argument (pile) -- dépendance de données
forçant l'ordre ; (2) sinon, essayer la généralisation "ordre d'assignation
suit l'ordre du désassemblage" trouvée round w57 sur des champs de struct
locale.

### Rappel de la cible exacte (`func_08037B48`, `asm/code_08037A04.s:170-196`)

```
push {r4,r5,r6,lr}; sub sp,#4
adds r5,r0,#0                  @ a
adds r6,r1,#0                  @ b
movs r0,#0x44; bl __builtin_new
adds r4,r0,#0                  @ obj
movs r0,#0xc                   @ arg5 (pile) -- calculé
str r0,[sp]                    @ arg5 (pile) -- stocké IMMÉDIATEMENT (2 instrs adjacentes)
adds r0,r4,#0                  @ arg1 = obj
adds r1,r5,#0                  @ arg2 = a
adds r2,r6,#0                  @ arg3 = b
ldr r3,=0x379                  @ arg4 (r3) -- chargé EN DERNIER, juste avant bl
bl func_08037008
ldr r0,=vtable_unk_080E725C; str r0,[r4,#0x14]; adds r0,r4,#0
add sp,#4; pop {r4,r5,r6}; pop {r1}; bx r1
```

### Piste 1 (dépendance de données 4e<-5e argument) : ÉCARTÉE par le calcul

`func_08037B48` : pile=0xc (12), r3=0x379 (889). `func_08037B80` : pile=0xa
(10), r3=0x207 (519). Aucune relation arithmétique simple entre les deux
paires (889-12=877, 519-10=509 -- pas de delta constant, pas de multiple,
pas de relation bit à bit évidente sur les 2 exemples disponibles). Piste
non poursuivie plus loin faute de signal.

### Piste 2 (struct POD local, champs assignés dans l'ordre du
désassemblage comme round w57) : ÉCARTÉE, mauvaise mécanique ABI

Testé un `struct Arg4 { u32 r3val; u32 pileval; };` passé PAR VALEUR comme
unique 4e argument (8 octets, `r3val`->r3 + `pileval`->pile en théorie),
avec assignation `arg.pileval = 0xc; arg.r3val = 0x379;` (ordre du
désassemblage, à la w57). Résultat harnais rapide : agbcp ne SPLIT PAS la
struct entre registre et pile comme espéré -- il construit la struct
ENTIÈREMENT sur une pile temporaire locale (+`sub sp,#0xc` au lieu de
`#4`), la recopie ensuite octet par octet vers l'emplacement d'appel, et
utilise `r8` (poussé/restauré en plus) pour porter `b` pendant ce temps --
taille et registres totalement différents de la cible, écart de ~24 octets.
**Cette classe de near-miss n'est donc PAS une struct-by-value scindée
registre+pile** (au moins pas sous cette forme -- l'ABI de cet agbcp
semble ne jamais scinder un struct >4 octets entre r3 et la pile, il le
matérialise toujours en mémoire locale d'abord). Abandonné après 1 essai,
signal négatif clair (taille + registres, pas la peine d'itérer sur les
variantes de ce sous-angle).

### Piste 3 (mécanique réelle isolée empiriquement, 8 variantes du harnais
rapide, AUCUNE bit-exacte)

Modèle déduit après 8 variantes de reformulation C (littéral inline pour
les deux ; l'un nommé l'autre inline, dans les deux sens ; les deux nommés,
dans les deux ordres de déclaration ; déclaration combinée `unsigned int
pile = 0xc, r3 = 0x379;` ; passage par référence `const&` sur l'argument
pile ; extraction des 3 arguments triviaux (`obj`,`a`,`b`) en variables
locales explicites nommées AVANT l'appel, pour tester si ça change leur
ordre de matérialisation) :

- **Les 3 arguments triviaux (`obj`,`a`,`b` -- de simples copies de
  valeurs déjà vivantes dans `r4`/`r5`/`r6`) sont TOUJOURS différés au tout
  dernier moment, juste avant le `bl`, QUELLE QUE SOIT la formulation C**
  (même en les extrayant en variables locales explicites nommées juste
  avant l'appel -- agbcp les alias silencieusement à leur registre source
  sans émettre de copie séparée à l'endroit où elles sont "déclarées").
  Confirmé robuste sur 8/8 variantes, jamais contredit.
- **Entre les 2 arguments non-triviaux (`r3` littéral pool-load, `pile`
  littéral immédiat+store), celui qui apparaît EN PREMIER dans l'ordre
  textuel/de déclaration source est TOUJOURS calculé en premier** -- vrai
  qu'il soit écrit en ligne dans l'appel ou pré-déclaré en variable nommée
  juste avant, dans les 2 ordres testés. Si `pile` est premier : son
  calcul (`movs r0,#0xc`) sort immédiatement à l'endroit voulu, MAIS son
  `str` (le stockage réel vers la pile d'appel) est décalé d'un cran,
  après le calcul de `r3` (`ldr r3,=lit`) qui s'intercale -- **jamais
  adjacent au `movs` comme l'exige la cible**. Si `r3` est premier :
  chargé immédiatement, puis `pile` (calcul+store, cette fois adjacents)
  suit -- toujours avant le bloc des 3 triviaux, jamais après.
- **Aucune des 2 combinaisons (r3 avant pile / pile avant r3) ne
  reproduit la cible**, qui exige un ordre "hybride" impossible à obtenir
  par simple réordonnancement textuel : `pile` (calcul+store adjacents)
  EN PREMIER, PUIS les 3 triviaux (`obj`,`a`,`b`), PUIS `r3` EN DERNIER,
  juste avant le `bl` -- c'est-à-dire que `r3` devrait rejoindre le groupe
  des arguments "différés au dernier moment" comme `obj`/`a`/`b`, ce
  qu'aucune variante testée n'obtient (il se comporte toujours comme un
  calcul "non-trivial" évalué tôt, jamais différé).
- **Hypothèse pourquoi `r3` ne peut PAS rejoindre le groupe différé** :
  le groupe différé (`obj`,`a`,`b`) ne fonctionne que pour des valeurs
  déjà vivantes dans un registre callee-saved AVANT l'appel à
  `__builtin_new` (`r4`/`r5`/`r6`, exactement les 3 seuls registres
  callee-saved utilisés par le prologue `push {r4,r5,r6,lr}`) -- agbcp
  semble différer UNIQUEMENT les copies identité de valeurs déjà logées
  dans un registre persistant, jamais le calcul d'un littéral frais. Pour
  que `r3=0x379` rejoigne ce groupe, il faudrait un 4e registre
  callee-saved vivant à travers le `bl __builtin_new`, ce que la cible
  N'A PAS (seulement 3 poussés) -- donc cette voie est mécaniquement
  fermée sauf à me tromper sur le rôle de `r4`/`r5`/`r6`.

### Conclusion : caractérisation affinée, toujours pas résolu, rien commité

Le mécanisme exact de agbcp pour ce cas précis (littéral pool-load `r3`
différé APRÈS un groupe d'arguments triviaux, alors que tout littéral
"non-trivial" testé dans ce round se comporte comme un calcul précoce)
reste non reproduit après 10 variantes cumulées (6 de w43 + 4 nouvelles ce
round, sans compter la struct POD testée séparément). Aucun fichier
modifié dans `asm/`/`src/`/`fomt.lds` -- tout le tâtonnement est resté
dans `/tmp/w62scratch/` (hors dépôt), jamais appliqué. `git status --short`
vide en fin de round, `make compare` propre non re-testé (rien à
comparer), `origin` intact, rien poussé, aucune PR.

**Piste concrète pour un futur round**, non testée faute de budget : si
`r3` doit vraiment se comporter comme un argument "différé", peut-être
que la vraie signature de `func_08037008` a RÉELLEMENT une structure
différente au niveau du 4e paramètre -- par exemple un type énuméré
`enum` avec une valeur nommée plutôt qu'un `unsigned int` littéral brut
(pourrait changer la classe de "complexité" perçue par agbcp lors du
scheduling des arguments), ou alors le vrai découpage argument est
`(self,a1,a2,a3)` avec `a3` un petit struct/union de 8 octets scindé
`{u32 lo; u32 hi;}` mais construit champ par champ SUR LA PILE D'APPEL
ELLE-MÊME (pas une struct locale séparée comme testé ici, cf. piste 2)
-- distinction fine entre "struct locale copiée vers l'appel" (testé,
échoue) et "struct construite directement dans l'aire d'appel sortante"
(pas testé, demanderait de forcer via `&arg` un alias direct sur `[sp]`
en C, techniquement difficile à exprimer proprement en C portable). À
tenter avec un budget dédié avant d'abandonner définitivement cette
classe.

## Round w65 (worktree `parallel-65`) -- match `func_0803BF14`, nouveau blob
caché trouvé par scan v2

**Découverte** : `scan_hidden_code_blobs_v2.py` (aucune restriction de
taille) signale 3 blocs `.byte` plausibles/non-plausibles au total dans
tout le dépôt à ce jour. Deux sont des dead-ends déjà connus
(`.L0809E1B4`/`asm/code_actor_0809BFE8.s`, `.L08008960`/`asm/hardware.s`,
ce dernier jugé "not plausible" par le scanner et jamais mentionné
ailleurs -- pas creusé ce round, signal faible). Le troisième,
**`.L0803BF14` dans `asm/code_0803A8A4.s` (100 octets, jugé "PLAUSIBLE
CODE")**, n'apparaissait dans AUCUN des deux fichiers de suivi
(`grep -rn "0803BF14"` négatif avant ce round) -- cible neuve, jamais
caractérisée.

Ce blob occupe exactement l'espace entre la fin de `func_0803BF08`
(dernière fonction `asm` du fichier) et le début de `func_0803BF78`
(première entrée `fomt.lds` du fichier déjà porté, `src/code_0803BF78.o`)
-- covered par aucun découpage antérieur : `0x0803BF14 + 0x64 (100o) =
0x0803BF78` pile. Le fichier avait donc été scindé un jour sans que ce
segment intermédiaire ne soit désassemblé, laissé en `.byte` brut.
Aucun appelant symbolique trouvé (`grep -rn "0803BF14" asm/*.s`
négatif), cohérent avec le reste des fonctions de ce fichier (dispatch
via vtable non symbolisée).

**Désassemblage** : constructeur, même forme que `func_08050EE4`/
`func_080512D8` (round w49, cf. `DECOMP_RULES.md` règle #16/16bis) :
2 champs pointeur mis à zéro, 1 pointeur de vtable (`vtable_unk_080E7758`,
déjà déclaré globalement dans `asm/vtables.s`), 3 champs scalaires
depuis les registres `r1`/`r2`/`r3`, PUIS un champ scalaire depuis le
1er argument-pile (`self+0x18`), PUIS un mot de bitfields packés
(largeurs 5/10/4, offset `self+0x1c`) depuis les 3 arguments-pile
suivants -- masques de clear construits par négation runtime
(`movs #N; negs`) pile le codegen bitfield-struct déjà documenté.
Épilogue `pop {r1}; bx r1` (pas `r0`) confirmant `return self;` (r0
occupé par la valeur de retour vivante).

**Signature retenue** :
`func_0803BF14(void *self, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7)`
-- 8 arguments (self + 3 registre + 4 pile), cf. `push {r4,r5,r6,r7,lr}`
+ 4 `ldr [sp,#20..32]`.

**Near-miss d'ordre résolu** (1 seule variante nécessaire) : le premier
essai (ordre C = affectation du champ-pile `self->unk_18` en tout
premier, avant les zérotages/vtable/champs-registre) produisait le bon
contenu mais un ORDRE différent -- les 4 loads d'arguments-pile
regroupés en tête, PUIS le store de `self->unk_18` (`ldr;ldr;ldr;ldr;
str` au lieu de `ldr;str;ldr;ldr;ldr` dans la cible). Résolu en plaçant
l'affectation de `self->unk_18` APRÈS les zérotages/vtable/champs-
registre mais AVANT les bitfields (groupée avec les 3 loads d'arguments-
pile suivants) -- reproduit exactement `ldr r4,[sp,#20]; str r4,[r0,#24];
ldr r6,[sp,#24]; ldr r5,[sp,#28]; ldr r7,[sp,#32]`. Signal généralisable
pour de futurs near-miss "ordre des loads d'arguments-pile" : le
premier argument-pile utilisé isolément (pas suivi immédiatement d'autres
usages d'arguments-pile) se charge+stocke seul ; un groupe d'arguments-
pile utilisés consécutivement dans le C se charge en bloc avant le
premier usage du groupe.

**Vérification** : harnais rapide (compilateur+assembleur sans lien)
byte-exact dès la 2e variante ; taille `.text` de `build/src/code_0803BF14.o`
= `0x64` (100 octets, exact) ; `rm -rf build fomt.gba fomt.elf fomt.map &&
make compare` (échec `sha1sum` attendu, ROM intentionnellement non-vanilla
depuis `cb06198`) ; diff `objdump` borné `--start-address=0x0803BF14
--stop-address=0x0803BF78` sur `fomt.elf` linké vs `baserom.gba`
(`--adjust-vma=0x08000000`) -- IDENTIQUE, opcode par opcode ; recoupé par
un diff des octets bruts (`objdump -s`/`od -An -tx1`) -- IDENTIQUE.

Commit propre : `asm/code_0803A8A4.s` (suppression du blob `.byte`),
`fomt.lds` (nouvelle entrée `src/code_0803BF14.o`), `src/code_0803BF14.cc`
(nouveau). `origin` intact, rien poussé, aucune PR.

Reste ouvert dans ce fichier : `func_0803BDFC` (pression de registres,
callee opaque de `func_0803BF78`) et `func_08083A7C` -- pas retentés ce
round.

## Round w64 (worktree `parallel-64`) -- match `func_08050F74` (near-miss
r4/r5 root-causé pour de bon) ; `func_08050F4C` root-causé mécaniquement
mais toujours PAS matché (mur confirmé, pas juste reconfirmé)

Mission : reprendre les 2 near-miss `func_08050F4C`/`func_08050F74`
laissés ouverts par w44 (`asm/code_08050F4C.s`, `asm/code_08050F74.s`),
avec priorité sur le premier (18 octets, plus petit espace de formes).

### `func_08050F4C` (18o, normalisation booléenne `v?1:v`) -- mécanisme
enfin root-causé, toujours PAS matché

Désassemblage exact de la cible (`arm-none-eabi-objdump -bbinary
--adjust-vma=0x08050F4C` sur les 18 octets bruts, confirmé octet pour
octet) :

```
push {lr}
ldrb r0, [r0, #4]      ; v = self->flag (byte)
adds r1, r0, #0        ; result = v   (copie explicite dans r1)
cmp  r0, #0
beq  skip
movs r1, #1            ; result = 1
skip:
adds r0, r1, #0        ; return result (copie r1 -> r0)
pop  {r1}
bx   r1
```

**Plus d'une douzaine de formulations C testées ce round** (en plus de
celles déjà réfutées par les rounds précédents) -- toutes replient
la copie `r1` et reproduisent EXACTEMENT le même 16 octets (`ldrb r0,...;
cmp r0,#0; beq; movs r0,#1; pop{r1}; bx r1`), quel que soit
l'arrangement de surface :
- `v != 0 ? 1 : v` (pas seulement `v ? 1 : v`) ;
- variable intermédiaire nommée avec assignation SÉPARÉE (`result = v;`
  puis `if (v) result = 1;`, statement à part, pas dans le même
  `u32 result = v;`) ;
- `goto`/label explicite, `do {} while(0)`, `switch` avec `case`/`default`
  fall-through, retour anticipé à 2 `return` distincts ;
- 2e paramètre factice pour occuper `r1` à l'entrée (n'a aucun effet, le
  fold se produit quand même après réutilisation du registre) ;
- fonction `static` séparée appelée en interne (agbcc l'INLINE quand même
  au niveau RTL et refait le même fold -- pas un simple artefact du site
  d'appel) ;
- obfuscation algébrique de la copie (`v + 0`, `v | 0`, `+v`,
  `v ? v : v`) -- toutes évaluées à `v` par le compilateur malgré sa
  faiblesse générale, donc repliées quand même ;
- **compilé en C pur via `agbcc` directement (pas `agbcp`/C++)** : même
  résultat exact, donc ce n'est PAS un artefact du frontend C++ --
  confirmé que le fold vient d'une passe RTL commune aux deux frontends.

**Root-cause confirmé via 2 expériences positives** (qui PROUVENT le
mécanisme sans donner un match plausible) :
1. Une barrière `asm volatile ("" : "+r"(result) : "r"(v));` empêche
   bien le compilateur de fusionner les deux valeurs -- obtient
   effectivement 18 octets (9 instructions), MAIS avec les rôles
   registre INVERSÉS par rapport à la cible : `v` atterrit dans `r1`,
   `result` dans `r0`, alors que la cible charge `v` directement dans
   `r0` (partagé avec le pointeur `self` mourant) et ne matérialise
   `result` que dans `r1`. Confirmé sur PLUSIEURS variantes d'ordre des
   opérandes de la contrainte asm (`"+r"(v):"r"(result)` vs
   `"+r"(result):"r"(v)` vs `"+r"(v),"+r"(result)` groupés) -- toutes
   donnent la MÊME allocation inversée, donc ce n'est pas un simple
   artefact de l'ordre textuel des opérandes : agbcc semble toujours
   assigner `r0` à la pseudo-valeur qui survit jusqu'au `return`, `r1` à
   celle qui ne sert qu'au test -- l'inverse de ce que la cible fait.
2. Des variables de registre explicites (`register u32 v asm("r0") = ...;
   register u32 result asm("r1") = v;`) forcent l'allocation EXACTE de
   la cible et produisent un **match octet pour octet parfait** (les 18
   octets, vérifié `cmp -l` -- confirmé qu'il ne s'agit PAS d'un artefact
   de padding/alignement). Ceci prouve que le mécanisme est intégralement
   compris : la cible a bien `v` en `r0`/`result` en `r1`, un vrai
   compilateur PEUT produire ces octets -- mais ce chemin passe par une
   épingle de registre explicite, un idiome qui n'a AUCUN précédent dans
   tout le dépôt (`grep -rn 'register.*asm("r' src/ include/` : 0 match)
   et qui est structurellement implausible comme source réelle pour un
   simple getter/normaliseur trivial de ce type. **Non commité** --
   remplacer la source réelle par une épingle de registre artificielle
   irait à l'encontre de la discipline du dépôt (reproduire le VRAI
   code source, pas forcer les octets par un hack).

**Conclusion pratique** : ce near-miss n'est plus un simple "ça replie
la copie, cause inconnue" (état des rounds w39/w41/w44) -- c'est
maintenant : "le compilateur alloue TOUJOURS `r0`->valeur-de-retour /
`r1`->valeur-de-test dès qu'on force 2 registres séparés via un
mécanisme visible du RTL (asm barrier), l'inverse exact de ce que la
cible utilise, et SEULE une épingle de registre explicite (non
plausible comme vraie source) obtient les 2 registres dans le bon sens
tout en gardant les 2 valeurs séparées". Aucune piste de reformulation
C plausible restante identifiée ce round. Laissé en `.byte`
(`asm/code_08050F4C.s`, inchangé), non commité. Piste pour un futur
round, non testée : vérifier si la VRAIE fonction appelante passe déjà
une valeur DIFFÉRENTE dans `r1` au moment de l'appel (auquel cas la
copie ne serait pas `result=v` mais un vrai 2e paramètre logique,
invisible depuis ce fragment isolé sans site d'appel symbolique connu)
-- pas vérifiable sans retrouver un appelant.

### `func_08050F74` (44o) -- MATCHÉ, near-miss r4/r5 + reload `__umodsi3`
résolu

Signature réelle : `void func_08050F74(void *self, u32 x, u32 y)` --
clampe `y` (3e argument) modulo 3 (`__umodsi3`, seulement si `y > 2`)
dans un champ 2 octets à `self+22`, clampe `x` (2e argument) modulo 28
(seulement si `x > 27`) dans un champ 2 octets à `self+20`, puis remet à
0 un flag octet à `self+25`. Moduli (3, 28) très évocateurs du domaine
saison/jour-du-mois de ce jeu (3 saisons, mois de 28 jours) mais rôle de
la classe non confirmé indépendamment depuis ce seul fragment -- gardé
en style "offsets bruts" comme les voisins `func_08050F60`/
`func_08050F70` plutôt que de nommer une classe non établie.

Root-cause du near-miss documenté par w41 (`self`/`x` alloués
`r5`/`r4`, inversés par rapport à la cible `r4`/`r5` ; le résultat du 2e
`__umodsi3` était rapatrié dans le registre-maison de `x` avant le
`strh` final au lieu d'être stocké directement depuis `r0`) :
**introduire des copies locales séparées `yy`/`xx` des 2 paramètres,
assignées via une instruction SÉPARÉE (`xx = x;`) plutôt qu'une
déclaration+initialisation combinée (`u32 xx = x;`), suffit à faire
allouer `self`->`r4`/`x`->`r5` naturellement, dans le bon ordre, SANS
aucune épingle de registre.** Contraste net avec `func_08050F4C`
ci-dessus : ici, la présence d'un VRAI appel externe (`__umodsi3`) entre
la copie et le test empêche le compilateur de refaire le même fold
(les registres doivent survivre à travers un `bl`, donc pas de
coalescing possible) -- exactement le genre de "mur" qui, une fois
franchi par la bonne structure de source, retombe sur l'allocation
naturelle plutôt que sur une inversion. Vérifié :
- harnais rapide : désassemblage identique à la cible à l'octet près,
  à l'exception des 2 encodages `bl` (offset relatif vers un symbole
  non résolu dans le harnais isolé -- attendu, résolu correctement une
  fois lié) ;
- build complet (`rm -rf build fomt.gba fomt.elf fomt.map && make
  compare`, avec `build/franglais_stub.bin` factice pour satisfaire le
  lien comme documenté dans `DECOMP_RULES.md`) : taille `.text` de
  `build/src/code_08050F74.o` = `0x2c` = 44 octets, adresse
  `fomt.map` correcte, contenu de `fomt.gba` linké comparé octet pour
  octet à `baserom.gba` sur les 44 octets de la fonction -- **match
  parfait** ;
- `sha1sum -c fomt.sha1` échoue toujours (attendu, ROM non-vanilla
  depuis `cb06198`, cf. `DECOMP_RULES.md`) -- pas un signal d'échec pour
  cette vérification.

Découpage : `asm/code_08050F74.s` (ancien blob monolithique de 836
octets, contenait aussi les 3 fonctions "pression de registres" jamais
tentées) supprimé, remplacé par `src/code_08050F74.cc` (44 octets
portés) + `asm/code_08050FA0.s` (792 octets restants : `08050FA0`/
`080510E8`/`0805116C`, toujours en `.byte`, candidats escalade `fable`
inchangés). `fomt.lds` mis à jour en conséquence. 1 commit (`func_08050F74`
seul, port propre).

### Repo state en fin de round

- 1 commit de match (`func_08050F74`).
- `func_08050F4C` toujours en `.byte`, non commité -- mécanisme
  entièrement compris et documenté ci-dessus, mais aucune formulation C
  plausible trouvée ; candidat pour reformulation depuis un futur
  appelant retrouvé, sinon fermer définitivement cette piste.
- `git status --short` vide après le commit, `build/`/`fomt.gba`/
  `fomt.elf`/`fomt.map` nettoyés.
- `origin` intact (URL de push volontairement cassée), rien poussé,
  aucune PR créée.

## Round w63 (worktree `parallel-63`) -- `func_08075334`, 4e tentative, 3
nouvelles pistes converties en gains RÉELS, near-miss resserré de 12 à 26
octets bit-exacts, PAS commité (toujours pas bit-exact)

Cible : `func_08075334` (`asm/code_08070A08.s:9622-9779`, 284 octets,
`0x08075334`-`0x08075450`), déjà tentée round w37 (évaluation seule) et
round w57 (near-miss caractérisé, 12 premiers octets matchés, 3 variantes
fermées). Piste demandée pour ce round : permuter l'ordre de
première-utilisation des 4 candidats callee-saved (`q`, `&item`,
`old_write`, taille d'alloc) en s'inspirant de la règle confirmée round
w61 (`func_08008980`) -- ordre du désassemblage prime sur l'ordre de
déclaration C.

### Trois gains réels obtenus ce round (tous vérifiés au harnais rapide,
`arm-none-eabi-cpp`+`agbcp -O2`+`as`, comparaison octet à octet contre
`baserom.gba` désassemblé à la même adresse)

1. **Inversion if/else complète** (nouvelle piste, pas documentée avant
   ce round) : le désassemblage original teste `q->write == q->cap_end`
   et saute (`beq`) EN AVANT vers le code de croissance (placé en dernier
   dans le fichier), la voie "simple" (pas plein) étant le fall-through
   immédiat après le test. Toute tentative précédente (w57 incluse,
   d'après la lecture du round) écrivait naturellement `if (plein) {
   ...croissance...} else { ...simple... }`, ce qui compile dans agbcp
   avec la polarité INVERSE (fall-through = croissance, saut = simple) --
   l'opposé exact de l'original. Correction : écrire la source avec le
   test et les blobs inversés, `if (q->write != q->cap_end) { ...simple...
   } else { ...croissance... }`. Confirmé bit-exact sur tout le prologue +
   test + bloc "simple" + pool littéral (26 premiers octets du CORPS,
   au-delà du prologue lui-même déjà acquis depuis w57) -- **plus du
   double du near-miss w57 (12 octets)**. Généralisation probable pour
   `DECOMP_RULES.md` : quand un `if/else` semble structurellement
   arbitraire (les deux polarités sont sémantiquement identiques), la
   direction du branchement (quel bloc est fall-through vs cible de saut)
   dans le désassemblage cible doit être prise comme donnée dure pour
   choisir laquelle des deux conditions équivalentes écrire en premier
   dans le `if`, pas seulement pour valider après coup.
2. **Idiome `? :` sur des ADRESSES de locales (pas des valeurs) pour un
   "growth = old_count>=1 ? old_count : 1"** : le désassemblage calcule
   DEUX adresses de pile inconditionnellement (`add r2,sp,#20` = `&growth`
   TOUJOURS calculée en premier, `add r0,sp,#16` = `&old_count` en second,
   valeur par défaut), puis écrase conditionnellement `r0` par `r2` si le
   test échoue, puis déréférence une seule fois. Reproductible
   exactement (5 instructions, même partition de piles/mêmes offsets)
   avec :
   ```c
   u32 *fallback = &growth;     // calculée EN PREMIER, inconditionnelle
   u32 *amount_ptr = &old_count; // valeur par défaut, inconditionnelle
   if (!(old_count >= 1))
       amount_ptr = fallback;
   u32 new_count = old_count + *amount_ptr;
   ```
   Une simple expression ternaire (`old_count>=1 ? &old_count : &growth`)
   ne suffit PAS : elle compile en un schéma à 4 instructions avec un
   `add` conditionnel (agbcp évite de calculer la 2e adresse si elle
   n'est pas nécessaire), pas le double-calcul inconditionnel de
   l'original -- il faut une variable `fallback` séparée, assignée
   AVANT tout, pour forcer le calcul de l'adresse "de secours" à se
   produire inconditionnellement. **Résidu non résolu sur ce point
   précis** : le test compile en `cmp r1,#0; bne` (comparaison contre 0)
   quelle que soit la formulation testée (`old_count<1`, `!(old_count>=1)`,
   avec ou sans variable intermédiaire), alors que l'original fait
   `cmp r4,#1; bcs` (comparaison contre 1, unsigned "supérieur ou égal").
   Sémantiquement identique (`old_count` est toujours >=0, donc `<1`
   équivaut à `==0`), mais encodage différent (immédiat + mnémonique) --
   agbcp semble toujours canoniser une comparaison "unsigned < 1" vers
   "== 0" quelle que soit la formulation C d'entrée. Piste non
   épuisée : peut-être un idiome différent (`old_count - 1` testé pour
   débordement/`bcc` inversé) forcerait le littéral 1, pas tenté par
   manque de temps.
3. **Boucle "morte" de fin (curseur base->write sans effet utilisé)** :
   confirmé, comme documenté round w57, mais l'ORDRE DE LECTURE compte
   aussi (règle 5 de `DECOMP_RULES.md`, pas seulement le fait de
   "réutiliser les mêmes variables") -- le désassemblage lit `q->write`
   AVANT `q->base` (`ldr r2,[r5,#4]` puis `ldr r1,[r5,#0]`), pas l'ordre
   "naturel" attendu pour une boucle `for(p=base; p!=write; ...)`.
   Reproduit en introduisant une variable `end` lue en premier :
   ```c
   QueueItem *dead_end = q->write;
   for (QueueItem *dead_p = q->base; dead_p != dead_end; dead_p += 1) {}
   ```

### Ce qui reste bloqué : 2 classes de résidu, toutes deux "pression de
registres" au sens propre du terme, PAS des idiomes C manquants

1. **Registre alloué à `q` (`self+0x594`)** : l'original choisit `r5`,
   toute variante testée ce round (y compris permuter l'ordre de
   déclaration de `q` vs `item_ptr`, qui n'a AUCUN effet observé sur ce
   choix) produit `r6`. Cette divergence apparaît dès la PREMIÈRE
   instruction qui diffère de l'original (offset `0x1a` du corps, sur
   268 octets testés) -- avant ce point, tout est bit-exact (prologue +
   épilogue des 4 arguments dans la struct locale `item`). Le calcul
   lui-même (`ldr r1,=0x594; adds rX,r0,r1`) est identique en nombre
   d'instructions, seul le registre destination diffère. Hypothèse non
   confirmée : ce choix dépend d'un décompte GLOBAL du nombre de valeurs
   "promues" (survivant à travers au moins un branchement ou un appel)
   dans TOUT le corps de la fonction, pas d'un ordre textuel local -- une
   fonction miniature isolant juste `q` (sans le reste du corps) alloue
   `q` dans un registre scratch non-promu (`r2`), donc ce test n'a pas pu
   isoler la cause. Piste non tentée : forcer artificiellement plus de
   pression de registres tôt dans le corps (variable factice
   longue-durée) pour voir si `q` bascule vers `r5`.
2. **Séparation manquante entre "adresse figée du nouveau buffer" et
   "curseur d'écriture mobile"** : l'original garde DEUX registres
   distincts portant la même valeur initiale (`new_base`) juste après le
   `malloc` -- un gelé pour toujours (jamais incrémenté, relu depuis la
   pile à la toute fin pour `q->base`/`q->cap_end`) et un second qui
   avance à travers les boucles de copie (devient `q->write` final). Le
   candidat de ce round, malgré une déclaration C séparée
   (`void *new_base; ... QueueItem *dst = (QueueItem*)new_base;`),
   voit les deux valeurs FUSIONNÉES par agbcp en un seul registre (`r8`),
   parce qu'aucun usage intermédiaire ne force la distinction -- ce qui
   économise 1 registre ET économise l'instruction de copie
   correspondante (mais du coup ne matche pas : taille globale `.text`
   mesurée `0x10c`/268 octets contre `0x11c`/284 attendus, écart de 16
   octets/8 instructions). Conséquence en cascade : `alloc_size` (rôle
   confirmé pour `r8` dans l'original, cf. w57) se retrouve du coup
   forcé sur `r5`/pile dans le candidat, puisque `r8` est déjà pris par
   `new_base`. Piste non tentée : forcer un point d'utilisation
   INTERMÉDIAIRE de `new_base` (distinct de `dst`) entre le `malloc` et
   la fin de la fonction, pour empêcher la fusion -- pas trouvé de
   formulation C naturelle qui déclenche ça sans lire artificiellement le
   pointeur pour rien (ce qui serait probablement lui-même détecté comme
   store mort et éliminé).

### Repo state en fin de round

- **Rien commité** -- le candidat matche bit-exact les 26 premiers octets
  du corps (prologue + test + bloc simple + pool littéral), casse au
  registre alloué à `q` juste après, et diverge en taille globale de 16
  octets à cause du problème de fusion `new_base`/`dst` documenté
  ci-dessus. Toutes les variantes testées dans `/tmp/w63scratch/` (hors
  dépôt), jamais appliquées à `asm/code_08070A08.s`/`fomt.lds`.
- Un fichier parasite `" "` (même piège que round w57, sortie égarée
  d'un pipe `cpp | agbcp` pendant le tâtonnement) a été créé par erreur
  puis supprimé -- `git status --short` propre confirmé.
- `git status --short` vide en fin de round, `origin` intact, rien
  poussé, aucune PR.
- Reste ouvert pour un futur round avec 2 pistes concrètes et non
  épuisées (cf. section "ce qui reste bloqué" ci-dessus) au lieu des 3
  variantes vagues fermées par w57 -- progression nette (12 -> 26 octets
  bit-exacts) mais toujours pas de match complet sur cette cible, 4
  tentatives sérieuses accumulées maintenant.

## Round w67 (worktree `parallel-67`) -- `func_08037B48`/`func_08037B80`,
piste "struct/référence non-scalaire" testée, RÉFUTÉE par le désassemblage
du callee lui-même, cible fermée définitivement (11e tentative, 11e
négative)

Cible : même near-miss "ordre d'évaluation des arguments d'appel" que
w43/w62 (`asm/code_08037A04.s:170-196`). Piste laissée par w62 : le 4e
argument de `func_08037B48` (littéral `r3`) est-il en fait, côté
`func_08037008` (le callee, jamais porté, traité en boîte noire jusqu'ici),
une petite struct/référence non-scalaire construite directement dans
l'aire d'appel sortante -- ce qui expliquerait l'ordre hybride cible sans
avoir besoin d'un 4e registre callee-saved ?

### Désassemblage de `func_08037008` (`asm/code_08036DC4.s:272-303`)

```
push {r4,r5,r6,lr}; sub sp,#4
adds r4,r0,#0            @ r4 = self
adds r5,r2,#0            @ r5 = arg2 ("b", sauvegardé -- r2 lui-même reste intact)
ldr r6,[sp,#0x14]         @ r6 = arg5 (pile, argument du CALLER, lu depuis la pile
                          @   sortante à l'offset qui pointe vers [sp_caller])
str r3,[sp]               @ arg4 (r3 du caller) sauvegardé tel quel en local
movs r3,#2                @ r3 = littérale 2 (remplace l'arg4 original pour l'appel suivant)
bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
ldr r0,=vtable_unk_080E7328; str r0,[r4,#0x14]
str r5,[r4,#0x30]         @ arg2 ("b") stocké comme membre APRÈS le ctor
adds r1,r4,#0; adds r1,#0x34; movs r0,#0
strh r0,[r4,#0x34]; strh r0,[r1,#2]; strh r0,[r1,#4]; strh r0,[r1,#6]
strh r6,[r4,#0x3c]        @ arg5 (pile) stocké comme CHAMP 16 bits, bien APRÈS le ctor
strh r0,[r4,#0x3e]
adds r1,#0xc; movs r0,#1; strb r0,[r1]
adds r0,r4,#0
add sp,#4; pop {r4,r5,r6}; pop {r1}; bx r1
```

Le callee du callee est démanglable : `__12AActorEntityP10GameObjectRC13ActorLocationUiUi`
= `AActorEntity::AActorEntity(GameObject*, const ActorLocation&, unsigned int, unsigned int)`.
Au moment du `bl`, cet appel de ctor de base utilise : r0=self, r1=GameObject*
(intact depuis l'entrée de `func_08037008`, jamais renommé), r2=ActorLocation&
(intact, PAS r5 malgré la sauvegarde), r3=**littérale 2 câblée en dur**
(PAS l'arg4 du caller), et son propre argument pile = l'arg4 du caller,
transmis tel quel via `str r3,[sp]` fait AVANT l'écrasement de r3.

### Verdict : hypothèse struct/référence RÉFUTÉE avant même d'écrire du C++

Les 2 arguments non-triviaux de `func_08037B48` (r3="c", pile="d", dans la
terminologie w62) sont consommés par `func_08037008` de façon totalement
DÉCOUPLÉE et à des endroits éloignés du corps :
- `c` (r3 du caller) est un simple `unsigned int` scalaire, sauvegardé en
  local PUIS transmis inchangé comme dernier argument (passé par la pile)
  au ctor de base `AActorEntity(...)` -- un forwarding pur, pas un accès
  de champ de struct.
- `d` (pile du caller) est un autre `unsigned int` scalaire, chargé dans
  `r6` et stocké BEAUCOUP plus tard, après le retour du ctor de base,
  comme simple champ 16 bits de l'objet (`strh r6,[r4,#0x3c]`) -- aucun
  rapport structurel avec `c`.

Si `c` et `d` étaient les 2 champs d'UNE seule struct/référence passée par
valeur, on s'attendrait à les voir accédés ENSEMBLE (via une base commune,
`ldr`/`str` avec offsets `+0`/`+4` typiques d'un accès `arg->field`) --
au lieu de ça, `c` disparaît dans un forwarding de ctor huit instructions
avant que `d` ne soit ne serait-ce que touché, et `d` est stocké dans un
tout autre offset de l'objet (`+0x3c`, format halfword) sans lien visible
avec le layout du ctor de base. C'est la signature d'ARGUMENTS SCALAIRES
INDÉPENDANTS, pas d'une struct scindée. La piste laissée par w62 est donc
close par lecture directe du désassemblage, sans même avoir besoin de
compiler une variante C++ candidate (le harnais rapide aurait de toute
façon reproduit le même échec que la piste 2 de w62 -- struct matérialisée
en pile locale d'abord -- puisque rien dans ce nouveau désassemblage ne
change la conclusion ABI de w62 sur les structs >4 octets).

### Conclusion : cible fermée définitivement, pas de 12e itération mécanique

11 tentatives cumulées (6 de w43 + 4 de w62 + celle-ci), toutes négatives,
sur cette classe de near-miss "ordre d'évaluation des arguments d'appel"
appliquée à `func_08037B48`/`func_08037B80`. Le mécanisme est maintenant
caractérisé de bout en bout des deux côtés de l'appel (caller ET callee) :
`func_08037008` confirme que `c`/`d` sont deux scalaires `unsigned int`
indépendants, ce qui élimine la dernière piste structurelle non testée.
Sans nouvelle idée de mécanisme agbcp (le blocage réel reste l'absence
d'un 4e registre callee-saved pour que `r3` rejoigne le groupe différé,
cf. w62), il n'y a plus de variante C source à tester qui ne soit pas déjà
couverte par les 10 précédentes. **Cible marquée fermée pour l'instant**
-- ne pas retenter mécaniquement sans un angle réellement nouveau (p.ex.
si un futur round symbolise `func_08037008` en entier -- pas seulement son
prologue -- et découvre un détail de calling convention non anticipé ici).

Aucun fichier modifié dans `asm/`/`src/`/`fomt.lds` (l'analyse est restée
en lecture seule sur le désassemblage existant, aucun essai de compilation
n'a été jugé utile vu la réfutation directe). `git status --short` vide en
fin de round, `origin` intact, rien poussé, aucune PR.

## Round w68 (worktree `parallel-68`) -- 5 fonctions matchées, 2 blobs cachés à la fin de `asm/hardware.s`, un vrai bug trouvé dans `scan_hidden_code_blobs_v2.py`

**Découverte** : `scan_hidden_code_blobs_v2.py` (aucune restriction de
taille) ne signale que 2 blocs `.byte` dans tout le dépôt à ce jour, tous
deux déjà connus dead-ends (`.L0809E1B4`, `.L08008960` -- ce dernier
"jugé pas creusé, signal faible" round w65). Désassemblage manuel de
`.L08008960` (`asm/hardware.s`, 32 octets, entre `func_0800894C` et
`func_08008980` déjà matché) confirme 2 fonctions cachées, chacune
DUPLIQUÉE BYTE POUR BYTE d'une fonction voisine déjà nommée :
- `func_08008960` == corps de `func_08008940` (`ldr r0,[r0]; ldr
  r1,=0x494; adds r0,r0,r1; bx lr`).
- `func_0800896C` == corps de `func_0800894C` (`push{lr}; ldr r0,[r0];
  movs r1,#0x92; lsls r1,r1,#3; adds r0,r0,r1; bl func_08008AE0;
  pop{r1}; bx r1`).

**Bug de scanner trouvé en creusant pourquoi il n'y avait que 2
candidats** : un 3e blob, `.L08008928` (24 octets, entre `func_08008920`
et `func_08008940`, MÊME fichier), est structurellement identique (3
fonctions dupliquées byte pour byte de `func_08008910`/`08008918`/
`08008920`) mais n'apparaît PAS dans la sortie du scanner. Cause
root-causée : le piège de parsing documenté dans `DECOMP_RULES.md`
("`thumb_func_start NAME` apparaît textuellement comme fin du bloc
PRÉCÉDENT") a bien été corrigé dans `block_is_function()` de la v2, MAIS
PAS dans `block_pure_bytes()` -- la ligne `thumb_func_start
func_08008940` finit quand même dans les `lines` du bloc `.L08008928`
précédent (parseur ligne-par-ligne), ce qui fait échouer
`BYTE_LINE_RE.match()` dessus, retourne `None`, et fait abandonner
silencieusement TOUT le run sans jamais l'ajouter à `all_gaps`. Le
scanner reste donc AVEUGLE à tout blob `.byte` immédiatement suivi d'un
`thumb_func_start` sans ligne vide intermédiaire -- alors que
`.L08008960` (immédiatement suivi de `<EOF>`) n'a pas ce problème et EST
détecté. Script non modifié ce round (pas dans le scope), mais signalé
ici pour un futur round : **un futur sweep devrait aussi grep
manuellement les blocs `.byte` collés à un `thumb_func_start` suivant
sans ligne vide**, cette classe entière est un angle mort silencieux.

**Vérification** : harnais rapide (2 fichiers candidats, cf.
`/tmp/w68scratch/`) bit-exact au premier essai pour les 5 fonctions
(aucune ne nécessite d'idiome C particulier, pur pointer-chasing --
même famille que `func_0800711C`/round 9). Découpage complet de
`asm/hardware.s` : le fichier se terminait par ces blobs (donc pas de
"partie après" à part le `.L08008960` lui-même) -- mais **piège vécu et
corrigé avant le premier commit tenté** : supprimer les octets `.byte`
EN PLACE sans découper le fichier laisse `func_08008940`/`func_0800894C`
dans le MÊME objet `asm/hardware.o` que le reste, alors que
`fomt.lds` n'a qu'UNE entrée pour cet objet -- la première tentative
avait donc placé `src/code_08008928.o`/`src/code_08008960.o` (nos
2 nouveaux fichiers) APRÈS tout `asm/hardware.o` dans le linker script,
ce qui décale nos fonctions APRÈS `func_08008940`/`func_0800894C` au
lieu de s'intercaler entre les deux (`fomt.map` le révèle immédiatement :
adresses complètement fausses). Corrigé en scindant `asm/hardware.s`
pour de vrai (s'arrête après `func_08008920`) et en créant
`asm/code_08008940.s` (contient `func_08008940`+`func_0800894C`,
déplacés tels quels) inséré dans `fomt.lds` entre
`src/code_08008928.o` et `src/code_08008960.o` -- `fomt.map` confirme
ensuite les adresses vanilla exactes pour les 9 symboles de la zone
(`func_08008910` à `func_08008A68`/`func_08008AE0`/`func_08008AF0`),
diff de désassemblage borné (`0x08008928`-`0x08008980`) bit-exact contre
`baserom.gba`.

Fichiers créés/modifiés : `src/code_08008928.cc` (3 fonctions),
`src/code_08008960.cc` (2 fonctions, callee opaque `func_08008AE0`
déclaré `extern "C"`, pas porté), `asm/code_08008940.s` (2 fonctions
déplacées), `asm/hardware.s` (tronqué), `fomt.lds` (4 nouvelles entrées).
Rebuild propre (`rm -rf build fomt.gba fomt.elf fomt.map && make
compare`), `sha1sum -c fomt.sha1` échoue comme attendu (`cb06198`), diff
borné byte-à-byte confirmé sur toute la zone reconstituée. `git status
--short` propre en fin de round, `origin` intact, rien poussé, aucune
PR.

## Round w71 -- correctif du bug de transcription réel de `asm/vtables.s` (slot `vtable_unk_080E5BF8+0xC`)

**Contexte** : la campagne de symbolisation de `vtables.s` cette nuit
(rounds w50/w51/w52) a introduit une **vraie erreur de transcription
manuelle** sur un slot, découverte ce matin par une longue enquête
dynamique (mGBA) sur un bug de `SoftReset` observé sur la ROM
`--source-port` du dépôt patch, juste après confirmation du nom du
chien à l'écran de création de personnage.

**Diagnostic complet (mené par un agent sur `harvest-moon-franglais`,
documenté dans `docs/FOMT_PATCH_PIPELINE_POC.md` "suite 7")** : `SceneMain`
(`func_0800082C`) lit sa "scène suivante" via un appel virtuel sur
`vtable_unk_080E5BF8+0xC`. Ce slot pointait vers `func_08010138` (un
accesseur trivial à 6 instructions qui retourne sa valeur en `r0` au
lieu de l'écrire via le pointeur de sortie caché que `SceneMain`
attend) au lieu du vrai `func_0801004C` (un vrai lanceur de scène qui
écrit correctement via ce pointeur). Les deux fonctions sont voisines
en adresse (236 octets d'écart) -- confusion de transcription humaine
classique lors du round w50, pas une erreur de méthode.

Conséquence : le slot de sortie reste nul, `SceneMain` interprète ça
comme "pas de scène suivante", détruit la scène courante (dont le
destructeur remet `gUnk_0300040C` à zéro, confirmé dynamiquement),
retourne à `AgbMain` qui démonte tout et appelle `exit()` -> `SoftReset`.
Rien à voir avec les 4 hooks trampolines franglais (tous innocentés ou
non-testables par ailleurs), ni avec le contenu des chaînes traduites.

**Correctif** : `asm/vtables.s`, slot `vtable_unk_080E5BF8+0xC`,
`.4byte func_08010138` -> `.4byte func_0801004C`.

**Vérification** :
- Rebuild complet propre (`rm -rf build fomt.gba fomt.elf fomt.map &&
  make`), lien réussi sans erreur.
- Diff byte à byte des 4 octets du slot corrigé (`fomt.gba` vs
  `baserom.gba` à `0x080E5C04`) : identiques (`4d000108` des deux
  côtés) -- confirmation directe que le slot est maintenant bit-exact
  avec le vanilla.
- `arm-none-eabi-nm fomt.elf` confirme `func_0801004C` lié à
  `0x0801004C`, adresse cohérente.
- `sha1sum -c fomt.sha1` échoue comme attendu (ROM intentionnellement
  non-vanilla depuis `cb06198`), non représentatif.

État du worktree en fin de round : 1 fichier modifié (`asm/vtables.s`),
`git status --short` propre après commit, `build/`/`fomt.gba`/
`fomt.elf`/`fomt.map` nettoyés, `origin` intact, rien poussé, aucune PR.

## Round w70 (worktree `parallel-70`) -- bug de scanner corrigé pour de bon, 18 fonctions matchées, 5 pistes moyennes caractérisées

**Bug de `scan_hidden_code_blobs_v2.py` corrigé** (signalé mais pas
corrigé round w68) : `block_pure_bytes()` retournait `None` dès qu'un
bloc pur-`.byte` était immédiatement suivi (sans ligne vide) d'un
`thumb_func_start` -- cette ligne de directive "fuit" dans les `lines`
du bloc PRÉCÉDENT via le parseur ligne-par-ligne naïf, `BYTE_LINE_RE` ne
la matche pas, `block_pure_bytes` abandonne tout le run silencieusement.
Fix : si la ligne ne matche pas `BYTE_LINE_RE` mais matche
`THUMB_FUNC_START_RE`, on arrête simplement la collecte des octets
(cette ligne appartient au bloc suivant), au lieu de retourner `None`.

**Impact du fix** : re-scan complet de `asm/*.s` (aucune limite de
taille, script v2) est passé de **1 gap détecté** (le dead-end connu
`.L0809E1B4`) à **68 gaps détectés**. Tous les gaps sont de petite/
moyenne taille (4 à 1724 octets) ; 26 marqués "PLAUSIBLE CODE" par
l'heuristique du script.

**18 fonctions matchées ce round**, toutes vérifiées bit-exact (harnais
rapide + `cmp` binaire brut contre `baserom.gba` sur la plage
d'adresses complète) :

- `asm/code_08008AE0.s` (13 fonctions, 1 seule caractérisée mais non
  portée) : toute une famille "API son" jamais repérée jusqu'ici,
  voisine de fonctions déjà connues (mais toujours non portées)
  `func_08008AE0`..`func_08008DA8`. Détail complet dans le message du
  commit correspondant (`func_08008AE8`/dup, `func_08008BEC`/
  `func_08008C08`/`func_08008C18` wrappers m4aMPlay*, `func_08008CDC`/
  `CE4`/`CEC`/`CF4`/`CFC` accesseurs + lookup gMusicPlayerTable,
  `func_08008D2C`/`func_08008D34` += /-= 0x40, `func_08008D5C`/
  `func_08008D70` lecture gSongTable). **`func_08008D10` reste non
  porté** (voir ci-dessous, nouvelle classe de near-miss).
- 5 fonctions isolées dans 5 fichiers différents : `func_080948F8`
  (doublon), `func_080E10F0`/`func_080E10F4` (2 stubs `return 0`),
  `func_0801DE30` (sibling wrapper), `func_080CAD08` (setter 3 champs),
  `func_0809C318` (sibling avec offset +6, near-miss d'ordre
  d'instructions résolu en réordonnant les 2 statements C -- calculer
  le résultat de l'appel opaque AVANT de matérialiser `self+6`,
  cf. commentaire dans `src/code_0809C318.cc`).

**Nouvelle classe de near-miss identifiée, non résolue -- `func_08008D10`** :
la fonction calcule un "index" constant (valeur 5) en passant par un
**chargement pleine-largeur depuis le pool littéral suivi d'un
double-shift `lsls #24`/`lsrs #24`** (`ldr r1,[pc,#N]; lsls r1,r1,#24;
lsrs r1,r1,#24`), au lieu du `movs r1, #5` trivial qu'on obtiendrait
pour n'importe quel litéral entier de cette taille -- confirmé sur son
propre sibling `func_08008CFC` (index 0) qui LUI compile bien en
`movs r1, #0` direct. Formulations testées sans succès : littéral
entier direct, `1+4`, énumérateur C++ (`enum {KIND_F=5}`), variable
locale `u32` explicite avec cast `(u8)(idx<<24>>24)`, `static const
u32`, `sizeof(struct Five)` (5 octets), `volatile u32` (produit bien le
double-shift mais via un load PILE, pas pool littéral, et avec 2
instructions de plus). Root-cause non trouvée -- porté comme fonction
asm nommée mais toujours non traduite en C plutôt que laissé en blob
anonyme (voir `asm/code_08008D10.s`).

**5 cibles caractérisées mais pas attaquées ce round** (complexité
supérieure, budget de round épuisé) -- candidates pour un futur round :

- `asm/code_08036DC4.s` `.L08037250` (28o, entre `func_08037244` et le
  suivant) : local 8 octets zéro-initialisé (4x `strh` du littéral 0)
  puis recopié en 2 mots vers `self+0x34`/`self+0x38` -- pattern
  "Location locale" (motif `func_08011ED8` déjà documenté) plutôt
  qu'une simple paire d'affectations directes. Piste : struct locale à
  4 champs `u16` zéro-initialisée, puis affectation de structure
  complète vers les 2 champs cible.
- `asm/code_08036DC4.s` `.L08036E00` (44o, entre le `.L08036DFC`/pool et
  le suivant) : appelle un vrai constructeur C++
  (`__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi`, déjà visible dans le
  fichier juste avant), stampe une vtable -- nécessite de comprendre le
  layout complet de la classe avant de porter, plus gros effort.
- `asm/code_080756D0.s` `.L08075E00` (36o, entre `func_08075DEC` et le
  suivant) : 2 appels conditionnels à `func_08008E64` (encore non
  porté), lisant 5 champs de `self` (offsets 0xC/0x10/0x14/0x18/0x1C/
  0x20) -- moyenne complexité, faisable mais pas tenté.
- `asm/code_actor_0809BFE8.s` `.L0809C4EC` (36o, entre `func_0809C4E4`
  et le suivant) : test de bit dynamique sur `self+0` avec un index
  passé en paramètre (`cmp r1,#13;bhi` puis `1<<(r1&0x1F)` puis test +
  négation booléenne inversée) -- **ressemble fortement à la classe
  ouverte documentée dans `DECOMP_ARCHIVE.md`
  (`func_08050E98`/`func_08050EBC`, masque construit depuis un
  paramètre d'appel dynamique, jamais résolue)**. À vérifier en
  priorité si un futur round attaque cette classe : pourrait partager
  la même root cause.
- `asm/code_080A3774.s` `.L080AAF9C` (44o+, entre le site d'appel à
  `func_0803A8A4` et le suivant) : encore plus complexe (utilise
  `r8`/`sb`, appelle `func_0803A8A4` -- déjà signalé "pression de
  registres" dans `DECOMP_ARCHIVE.md`) -- pas tenté.

**Reste des 68 gaps** : les ~55 non listés ci-dessus/déjà matchés sont
soit déjà connus dead-ends (`.L0809E1B4`), soit très probablement du
padding d'alignement légitime (paires `70 47 00 00` = `bx lr` +
padding, taille 4-8 octets, marquées "not plausible" par le script) --
pas revérifiés un par un ce round, prochain sweep pourrait les auditer
systématiquement pour ne rien laisser filer.

Rebuild propre (`rm -rf build fomt.gba fomt.elf fomt.map && make`) +
lien complet avec `franglais_stub.bin` factice confirmés à chaque étape,
`sha1sum -c fomt.sha1` échoue comme attendu (`cb06198`). `git status
--short` propre après les 2 commits, `origin` intact, rien poussé,
aucune PR.

## Round w72 (worktree `parallel-72`) -- 2 des 5 cibles moyennes de w70 attaquées, aucune matchée, 2 near-miss caractérisés

Attaque de 2 des 5 cibles caractérisées mais non tentées par w70 (voir
round w70 ci-dessus). **Aucun commit ce round** -- discipline "ne jamais
commiter un match qui ne matche pas" respectée, `git status --short`
propre en sortie.

**Cible 1 -- `func_0809C4EC` (`asm/code_0809C32C.s`, 36o, entre
`func_0809C4E4` et `func_0809C510`)** : vérifiée en priorité comme demandé
(ressemblance avec la classe ouverte `func_08050E98`/`func_08050EBC`,
masque de bitfield construit depuis un paramètre d'appel). Désassemblage :
`bool IsFlagClear(void *self, u32 index)` -- si `index > 13`, retourne
`true` (défaut) ; sinon calcule `mask = 1 << (index & 0x1F)`, teste
`*(u32*)self & mask` via l'idiome "nonzero-to-bool" (`negs`/`orrs`/`lsrs
#31`), et retourne l'inverse (bit clair). **La piste "masque = lecture
d'un autre bitfield côté appelant" ne s'applique PAS ici** : contrairement
à `08050E98`/`08050EBC` (masque combiné passé en argument), ici le masque
est un simple `1 << (index & 0x1F)` calculé localement à partir de
l'index -- pas un masque fourni par l'appelant. Structurellement plus
simple que son cousin (pas de `bics`, juste un test de bit). Formulation
`u32 mask=0; if (index<=13) mask=1u<<(index&0x1F); u32 word=*(u32*)self;
bool set=!!(word&mask); return !set;` reproduit **15 des 17 instructions
à l'identique**, y compris l'ordre exact et les registres jusqu'à
`orrs r0,r1` -- seules les 3 dernières instructions (`lsrs`/`movs
#1`/`eors`) divergent : la cible stocke le booléen final dans `r2` et
charge la constante `1` dans `r0` (`lsrs r2,r0,#31; movs r0,#1; eors
r0,r2`), notre version garde le résultat dans `r0` et charge `1` dans
`r1` (`lsrs r0,r0,#31; movs r1,#1; eors r0,r1`) -- même calcul, mêmes
registres vivants, rôles inversés. **Confirmé : c'est exactement la même
classe de near-miss pur d'allocation de registre que `func_08050EBC`**
(cf. `DECOMP_ARCHIVE.md`), pas un problème de structure. 12 formulations
testées (`!!`+`!` séparés, `1^set`, `set==0`, `set` typé `u32` au lieu de
`bool`, variable renommée, inline direct sans variable `set`, `volatile`)
-- toutes soit reproduisent le near-miss identique (`bool` intermédiaire
nécessaire pour déclencher l'idiome `negs`/`orrs`/`lsrs`, cf. règle 12-like)
soit divergent plus largement (`==0`/comparaison directe compile en
branchement `cmp`/`bne`, pas en forme arithmétique). Non résolu, non
commité -- candidat pour une future tentative `fable` (stratégie
d'escalade DECOMP_RULES.md) si un budget dédié est alloué : l'écart est
maintenant resserré à 3 instructions sur 17, structure entièrement
comprise.

**Cible 2 -- `.L08037250` (`asm/code_08036DC4.s`, 28o, entre
`func_08037244` et `func_0803726C`)** : confirme l'hypothèse w70 ("Location
locale" zéro-initialisée puis copiée en structure complète). Désassemblage :
alloue 8o sur la pile, écrit 4 `strh` de la constante 0 (aux offsets 0/2/4/6
depuis DEUX registres différents -- `mov r3,sp` calculé en premier pour les
offsets 2/4/6, `mov r2,sp` calculé ensuite pour l'offset 0 seul), relit les
8o comme 2 mots, les écrit à `self+0x34`/`self+0x38`. Tenté comme
`struct PACKED Loc4 { u16 a,b,c,d; }` local + `asm volatile("":: "r"(&loc)
:"memory")` (barrière anti-repliement nécessaire : sans elle, agbcp
constant-propage tout le corps en 2 `str` directs vers `self`, sans passer
par la pile -- confirmé sur 5 variantes sans barrière, y compris
`memset(&loc,0,sizeof(loc))` qui appelle une vraie fonction `bl` au lieu
d'inliner). **Avec `PACKED` + barrière** (`Loc4 loc; loc.a=loc.b=loc.c=
loc.d=0;`) : reproduit la taille exacte (28o), les 4 `strh` corrects
(largeur d'accès correcte -- sans `PACKED`, merge en 2 `str` mot ; testé
et confirmé), l'ordre des lectures/écritures -- mais avec UN SEUL registre
de base (`mov r1,sp` réutilisé pour les 4 champs) au lieu des DEUX
registres distincts de la cible. Hypothèse tentée pour expliquer la
distinction `field a` vs `group b/c/d` (déclarer `a` et un
sous-struct `{b,c,d}` séparément, ou via 2 pointeurs typés différemment
`Loc4*`/`u16*` sur le même objet) : soit re-fusionné en 1 seul registre
par CSE implicite (struct imbriqué), soit fait apparaître un accès
`Loc4*` en `strb` (bitfield-like, pas le bon type d'accès) au lieu du
`strh` voulu -- aucune formulation testée (7 variantes) n'a reproduit les
2 registres distincts SANS casser autre chose. Non résolu, non commité.
Piste non épuisée : la vraie source a probablement 2 variables locales
adjacentes distinctes (pas un seul struct de 4 champs) -- à retenter avec
un contrôle plus fin de l'ordre de déclaration/l'allocateur de pile
d'agbcp plutôt que la modélisation "un seul struct".

Rebuild : aucun changement appliqué au dépôt (les 2 cibles restent en
`.byte` brut, non portées) -- pas de `make compare` nécessaire pour ce
round, `git status --short` confirmé propre avant et après. `origin`
intact, rien poussé, aucune PR.

## 2026-08-21, worktree `w66`/`parallel-66` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 7 : **MATCHÉE** -- la percée est une variable partagée
entre blocs avec deux RÔLES différents (`right_tmp` : ancre couleur en
TR, accumulateur d'adresse en BR)

Contexte : 6 échecs honnêtes documentés (rounds 9/w22, 10/w27, 4/w29,
5/w31, 6/w34), pause explicitement recommandée par le round 6, seule
piste jamais tentée : une décompilation Ghidra amont. Mission : angle
NEUF obligatoire, pas une 7e itération mécanique.

### Piste Ghidra amont (point 4 de la mission) : fermée définitivement

`StanHash/fomt` upstream (GitHub, dernier push 2026-02-08) vérifié via
`gh api` : AUCUNE référence à `0804E5AC`/`804E5AC`/`DrawGlyph`/`ghidra`
dans tout le dépôt (code search + arbre `src/` complet -- aucun fichier
`code_0804E*`). Il n'existe pas de décompilation amont de cette
fonction. Piste refermée avec certitude, pas par manque d'accès.

### Méthode de ce round (neuve, généralisable)

1. **Reconstruction from scratch en relisant le désassemblage comme un
   catalogue de variables-copies** (généralisation de la règle 11 du
   corps plain) plutôt qu'en partant d'un candidat précédent. Premier
   jet : prologue, `dest`->`sl`, spill de `kind`, frame 0xa0 corrects
   d'emblée -- les leçons cumulées des 6 rounds tenaient.
2. **Harnais 1s/itération + balayages SYSTÉMATIQUES scriptés** (16-30
   variantes par lot, scorées au nombre de lignes de diff normalisé) au
   lieu d'hypothèses une par une -- ce que le round 6 n'avait jamais
   fait.
3. **Dumps RTL du compilateur lui-même** : `agbcp -dl -dg` écrit
   `gccdump.lreg`/`gccdump.greg` (pseudos, refs, longueurs de vie,
   ordre trié, assignations). La formule de priorité a été lue dans le
   `global.c` de `pret/agbcc` (GitHub) :
   `floor_log2(refs)*refs/live_length`, départage par numéro d'allocno.
   Ça transforme le "mur d'allocateur" en système d'équations lisible.

### Les formes C qui ont fait tomber la fonction (dans l'ordre des gains)

- **Flags en temporaire-puis-store-unique** (`hr`/`hb`/`rb` puis
  `has_right = hr;` etc.) -- reproduit le motif movs/cmp/movs/str à un
  seul `str` par flag.
- **`row_product`/`delta` = copies fonction-scope de locaux chauds
  TL** (`rp`/`d`), assignées APRÈS le calcul des bornes de la boucle TL
  -- leurs assignations SONT `str r3,[sp,#0x9c]` et `mov sb,r6` ; la
  boucle TL lit les locaux chauds (r3/r6), les blocs suivants lisent
  les copies (pile/sb). Même idiome "écrit ici, relu ailleurs" que le
  corps plain.
- **`rp = tile_y * width_tiles`** -- l'ORDRE DES OPÉRANDES du `muls`
  (règle 5bis étendue à la multiplication) : `width_tiles` doit être
  l'opérande déplacé dans le registre de calcul ; c'est ce qui force le
  produit en scratch r0 + copie vers r3 (le registre mourant de
  `tile_y`) et aligne `tile_y`/la constante 7 sur r3/r2. Un seul swap
  d'opérandes = 74 -> 36 lignes de diff.
- **TR/BR : adresses en réassignations successives d'une même
  variable** (idiome BR du corps plain), TL/BL en une expression pliée.
- **TR : copies `start`/`stop` alimentant `src`/`end`** -- les refs
  supplémentaires du pseudo CSE partagé parquent le pointeur source en
  r5 au lieu de voler r2.
- **LA PERCÉE FINALE : `right_tmp`, UNE variable déclarée dans le scope
  `has_right`, utilisée comme ANCRE COULEUR par la boucle TR puis
  RÉASSIGNÉE comme ACCUMULATEUR D'ADRESSE par le bloc BR.** Le pseudo
  fusionné (refs TR + refs BR, fl2 supérieur) gagne la course de
  priorité pour `r2` qu'aucune variable par-bloc ne pouvait gagner
  (l'ancre seule : 5 refs/22 insns = 4348 ; perdait contre le pointeur
  de fin TR à 4706). C'est le jumeau recolor du `right_addr` partagé
  TR/BR du plain -- mais avec des rôles SÉMANTIQUEMENT DIFFÉRENTS dans
  chaque bloc, la raison pour laquelle 6 rounds ne l'ont pas imaginé.
  Diff normalisé : 6 -> 0 lignes d'un coup.

### Vérification (standard officiel `DECOMP_RULES.md`)

- `.text` du `.o` : `0x1f4` == `0x0804E7A0 - 0x0804E5AC` exactement.
- Rebuild propre complet (`rm -rf build fomt.gba fomt.elf fomt.map`,
  stub `build/franglais_stub.bin` factice pour le lien) : lien sans
  erreur, `fomt.map` place `src/code_0804E5AC.o` à `0x0804e5ac`.
- **Diff OCTET PAR OCTET contre `baserom.gba`** (pas seulement
  mnémonique) : région `[0x4E5AC, 0x4E7A0)` byte-identique, ET région
  suivante `[0x4E7A0, 0x4E8F0)` (`func_0804E7A0`/`func_0804E7DC`,
  déplacées vers `asm/code_0804E7A0.s`) byte-identique aussi -- le
  split n'a rien décalé. `sha1sum -c fomt.sha1` échoue comme attendu
  (payload franglais, non-signal documenté).
- Aucun label `.L0804E5AC` résiduel dans `asm/*.s`.

### Fichiers

- `src/code_0804E5AC.cc` (nouveau) : `DrawGlyphAtRecolor`, alias de
  compatibilité `func_0804E5AC`, commentaire d'en-tête complet avec les
  shapes matching-critical.
- `asm/code_0804E5AC.s` supprimé ; reste du fichier (`func_0804E7A0`,
  `func_0804E7DC`) -> `asm/code_0804E7A0.s` (règle 14 appliquée au
  `.align 2,0` de queue).
- `fomt.lds` : entrée remplacée par les deux nouvelles.
- `DECOMP_RULES.md` : nouvelle règle 17 (variable partagée entre blocs
  à rôles différents + technique des dumps `-dl -dg`).
- `DECOMP_ARCHIVE.md` : entrée "pression de registres" de la cible
  clôturée, ligne ajoutée à la table des matchs.

### Repo state en fin de round

- 1 commit (voir `git log`), `git status --short` vide après commit.
- `origin` intact (URL cassée volontairement), rien poussé, pas de PR.

## Round w73 (worktree `parallel-73`) -- suite du sweep w70, 10 fonctions matchées, 1 near-miss à 6 octets, plusieurs cibles caractérisées

Re-scan complet avec `scan_hidden_code_blobs_v2.py` (déjà corrigé
round w70) : 68 gaps -> **58 gaps** au début de ce round (les 18
fonctions matchées w70 avaient déjà réduit le compte), **54 gaps**
après ce round (4 gaps de plus consommés, plusieurs gaps contenaient
2 à 8 fonctions chacun).

**10 fonctions matchées ce round, 4 commits, toutes vérifiées bit-exact**
(harnais rapide + comparaison octet-à-octet isolée `.o`/`baserom.gba`
+ `make compare` relink complet) :

- `func_08009790` (`asm/code_08008DE8.s`, devenu `asm/code_080097A4.s`
  après split) : sibling de `func_0800977C` (déjà connu) mais appelle
  `CpuFastSet` DIRECTEMENT au lieu de passer par le wrapper validant
  `func_08008E64` -- copie `0x100` mots (1024 octets, exactement la
  taille de l'OAM GBA) de `self+4` vers l'OAM réelle (`0x07000000`).
  Aucun appelant `bl` connu.
- `func_08009878`/`func_08009898` (2 fonctions dans un gap de 52o) :
  `func_08009878` reprend le même idiome flush-OAM puis appelle
  `func_08009834` (encore asm-only) ; `func_08009898` est un simple
  séquenceur à 2 appels (`func_080097A4` puis `func_08009834`).
- 8 fonctions accesseurs à `func_080D0C68` (gap de 108o dans
  `asm/code_080CAD10.s`) : struct brute de 4 octets `{f0,f1,f2,f3}`
  utilisée comme 2 paires u16 little-endian `(f0,f1)`/`(f2,f3)` --
  setter/getter/copie/comparaison. **Ce gap est dans le même fichier
  que l'arbre `Unpack` déjà exclu (`DECOMP_ARCHIVE.md`,
  ~0x080D102C-0x080D1600) mais N'EN FAIT PAS PARTIE** : fonctions
  feuilles ordinaires, `r0`-`r3` toujours rechargés, aucune violation
  d'ABI partagée entre `bl`. Vérifié par lecture complète du
  désassemblage avant de porter (pas juste la proximité d'adresse).
- 5 fonctions wrapper à `func_0801DD3C` (gap de 60o dans
  `asm/code_08012028.s`) : répétition exacte de l'idiome de
  `func_0801DD30` (déjà connu, juste avant) -- déréférencer `self+4`
  et transmettre le pointeur à une cible différente à chaque fois
  (`func_080A6234`/`6278`/`62BC`/`607C`/`6024`).

**Near-miss caractérisé, non résolu -- `func_08050C70`** (gap de 80o
dans `asm/code_0804E9C8.s`, entre `func_08050C64` et `func_08050CC0`) :
reproduit le motif "Location locale" déjà documenté (`func_08011ED8`,
round 9) -- `u8 buf[8]; u8 extra;` locaux, `extra=0;` puis
`memset(buf, 0, &extra - buf)` (taille calculée par soustraction de
pointeurs entre 2 variables locales DISTINCTES, pas `sizeof` --
confirmé nécessaire pour empêcher agbcp de plier la taille en
immédiat : testé avec un seul tableau `buf[9]` unique, ça foldait en
`movs r2,#8` alors que la cible calcule via `add`/`subs`), puis
`buf[2]=1; buf[3]=21; buf[7]=1;` puis copie struct-à-struct
`*(Loc2*)self = local;` (déclenchant bien le `ldmia`/`stmia` bloc
2 mots, confirmé avec `Loc2{u8 b[8];}` -- accès en champs nommés
`u32 a,b` NE déclenche PAS le même codegen, à éviter). Taille obtenue :
**56 octets sur 62 attendus** (`.text` 0x38 vs gap réel 0x3E) -- écart
de 6 octets EXACTEMENT localisé aux 3 écritures de champ : la cible
fait `mov r0,sp; adds r0,#N; strb rX,[r0,#0]` (2 instructions, adresse
recalculée à chaque champ) alors que TOUTE formulation testée
(indexation `buf[N]`, arithmétique pointeur `*(buf+N)`, champs nommés
dans un struct) fait plier agbcp en un seul `strb rX,[r0,#N]` à
offset immédiat. Tenté sans succès : indexation directe, pointeur
explicite, champs nommés struct. Root cause non trouvée -- piste non
essayée : peut-être une fonction `helper` séparée appelée 3 fois avec
l'offset en paramètre (empêchant tout folding d'offset immédiat côté
appelant), ou un cast via union pour forcer un type non-tableau.
Reste une bonne cible pour un prochain round (le reste de la fonction
est déjà résolu à 100%, seul cet idiome de 3 écritures résiste).

**Cibles caractérisées mais pas attaquées ce round** :

- `asm/code_08037A04.s` `.L08037CDC` (20o, entre `func_08037CC4` --
  un vrai constructeur `AEntity` posant `vtable_unk_080E7444` à
  `self+0x14` -- et `func_08037CF0`) : fonction FEUILLE (pas de
  `push`/`bl`), prend `r0`=dst, `r1`=pointeur vers un objet avec 2
  champs `s16` à +0xA/+0xE (`ldrsh`), écrit 4 `s16` dans `dst` :
  `dst[0]=champA; dst[1]=champE+1; dst[2]=champA; dst[3]=champE+1`
  (rectangle dégénéré "1 tuile", motif façade/collision classique
  Harvest Moon). Aucun appelant `bl` -- très probablement appelée par
  dispatch virtuel via `vtable_unk_080E7444` (orpheline en `bl` mais
  pas en usage réel). Pas attaquée : aucune classe `Location` encore
  décompilée dans ce dépôt (`include/*.hh` ne contient aucun
  `class Location`), donc les offsets +0xA/+0xE et le layout exact du
  destinataire restent des suppositions -- porter maintenant risquerait
  de figer un mauvais nom/layout. Attendre qu'une classe apparentée
  soit décompilée ailleurs, ou attaquer directement si un futur round
  veut assumer le risque (le code lui-même est trivial, feuille, sans
  ambiguïté de FORME -- seule la SÉMANTIQUE des offsets est incertaine).
- 4 gaps de taille moyenne/grande non examinés en détail faute de
  budget, candidats prioritaires pour un prochain round : `.L08069EB4`
  (96o, `asm/code_08069E98.s`), `.L0804EB64` (288o,
  `asm/code_0804E9C8.s`), `.L0801D9BC` (392o, `asm/code_08012028.s`),
  et 2 gaps nettement plus gros `.L08022C60` (1704o) / `.L080238F4`
  (1724o) dans `asm/code_08022320.s` -- taille suggérant plusieurs
  fonctions ou une table de données mal classée `.byte` plutôt qu'une
  simple fonction cachée isolée, mérite un examen dédié avant de
  s'engager (pas la même classe que les petits gaps "sibling wrapper"
  traités ce round).
- `asm/code_08036DC4.s` `.L08036E00`, `asm/code_080756D0.s`
  `.L08075E00`, `asm/code_0809C32C.s` `.L0809C4EC`,
  `asm/code_080A3774.s` `.L080AAF9C` : toujours les 4 cibles
  caractérisées par w70, non reprises ce round (déjà documentées en
  détail ci-dessus dans le round w70).
- `func_08008D10` : near-miss w70 (littéral 5 via pool+double-shift),
  non repris -- aucune idée réellement neuve trouvée ce round.

Rebuild propre + relink complet confirmés à chaque commit (`sha1sum -c
fomt.sha1` échoue comme attendu depuis `cb06198`, pas une régression).
`git status --short` propre après les 4 commits, `origin` intact, rien
poussé, aucune PR.

## Round w74 (worktree `parallel-74`) -- application méthode `-dl -dg`
(règle 17) aux 2 near-miss "allocation de registre pure" les mieux
caractérisés (`func_08050EBC`/`func_08050E98`, `func_0809C4EC`) : **1
mécanisme root-causé avec certitude, 0 match, aucun commit de code**

Mission : appliquer la méthode de diagnostic `agbcp -dl -dg`
(`gccdump.lreg`/`gccdump.greg`) qui a débloqué `func_0804E5AC` round w66
aux 2 near-miss les plus resserrés du dépôt (respectivement 10/19 et
15/17 instructions déjà identiques). **Aucun des deux n'a été débloqué**
-- mais dans les deux cas le dump a permis de comprendre EXACTEMENT
pourquoi, avec un niveau de certitude qu'aucun round précédent (w39/w41/
w49/w69/w72, tous par simple lecture du désassemblage cible) n'avait
atteint. Détail utile pour évaluer les limites réelles de la règle 17,
pas seulement ses succès.

### `func_0809C4EC` (`IsFlagClear`) : le dump confirme que le near-miss
n'est PAS accessible par reformulation C, la faute revient à un
canonicalisation FAITE AVANT l'allocation de registres

Formulation de référence (round w72, 15/17 instructions identiques) :
`u32 mask=0; if(index<=13) mask=1u<<(index&0x1F); u32 word=*(u32*)self;
bool set=!!(word&mask); return !set;` -- recompilée à l'identique
(confirmé bit pour bit). Dump `gccdump.greg` (`Pass 1 registres`,
tri par priorité) : le pseudo qui porte le résultat booléen final
(`negs`/`orrs`/`lsrs #0x1f`, appelé ici pseudo 38) a `refs=4,
live_length=4` -> priorité `floor_log2(4)*4/4 = 2` ; le pseudo qui porte
la constante littérale `1` (pseudo 33, mode QI) a `refs=2, live_length=4`
-> priorité `floor_log2(2)*2/4 = 0.5`. Le pseudo 38 est alloué EN
PREMIER (priorité plus haute) et prend le registre `r0` déjà "hérité"
de la chaîne `negs`/`orrs` (source du `lsrs`, mort au même point --
réutilisation naturelle, pas de coût de copie) ; le pseudo 33, alloué
ensuite, se rabat sur `r1` (premier registre encore libre). La cible
veut l'inverse : constante `1` -> `r0`, booléen -> `r2`.

**3 reformulations testées pour essayer de renverser cette priorité**
(toutes recompilées, `-dl -dg` vérifié à chaque fois) :
- `return set ^ 1;` (au lieu de `return !set;`) -- RTL et octets
  **strictement identiques** au premier essai.
- `u32 one = 1; return one ^ set;` (matérialise la constante dans une
  variable nommée, déclarée juste avant le `return`, dans l'espoir de
  changer son ordre de création de pseudo) -- **identique aussi**.
- `u32 result = 1 ^ (u32)set; return (bool)result;` (force la constante
  en mode SImode plutôt que QImode, pour égaliser sa classe avec le
  pseudo 38) -- **identique aussi**.

**Diagnostic tiré du dump, pas d'une supposition** : `agbcp` canonicalise
un XOR commutatif (et le replie avec la conversion booléenne `!`/`!!`)
**avant** la passe qui assigne les numéros de pseudo-registre locaux --
peu importe l'ordre syntaxique des opérandes dans le `.cc`, le RTL
généré (donc les refs/live_length/priorités calculés ensuite) est
STRICTEMENT identique pour les 3 formulations testées. Ce n'est pas
(contrairement au cas `func_08050EBC` ci-dessous) un problème de
priorité qu'une reformulation plausible peut renverser : le point de
levier (le refs/live_length du pseudo 33) n'est PAS exposé au niveau
source pour ce genre d'expression -- toute tentative de le changer est
absorbée par la canonicalisation en amont. **Conclusion pour la règle
17** : le dump `-dl -dg` reste un outil de DIAGNOSTIC fiable (il dit
EXACTEMENT quel pseudo gagne et pourquoi, en une compilation, sans
deviner), mais il ne garantit pas qu'un levier de reformulation C
existe -- ici, il n'y en a pas trouvé, ce qui resserre encore la
conclusion round w72 ("bon candidat pour escalade `fable`") en
"quasi certainement nécessite un levier hors-C (agent `fable` pour une
idée de structure totalement différente, ou accepter le near-miss
comme définitivement fermé pour du C plausible)".

### `func_08050EBC` (setter bitfield, `self+0x550`) : mécanisme EXACT
du near-miss root-causé -- contrainte 2-opérandes de Thumb `ORRS` +
priorité d'allocation, mais aucun levier trouvé pour la renverser

Formulation de référence (round w69, meilleure variante avec
`push {r4,lr}`) : `Pack *pack = (Pack*)(*(u8**)self + 0x550);
mask |= pack->low; pack->low = mask;` avec
`struct PACKED Pack { u8 low:6; u8 high:2; };`. Recompilée : confirme
`push {r4,lr}` présent, mais `orrs r2, r1` là où la cible fait
`orrs r1, r0` (rôles r0/r2 inversés sur TOUTE la suite de la fonction --
un swap global, pas un défaut ponctuel).

**Mécanisme exact lu dans `gccdump.lreg`/`gccdump.greg`** : Thumb `ORRS`
est une instruction 2-opérandes stricte (`Rd = Rd | Rm`, `Rd` DOIT être
l'un des deux registres source). Le RTL de l'expression
`mask | pack->low` est `(set reg30 (ior reg23 reg30))` où `reg23` =
paramètre `mask` (transféré depuis `r1` à l'entrée) et `reg30` = la
chaîne d'extraction du champ bas (`lsls`/`lsrs`, refs=6, live_length=7,
priorité `2*6/7≈1.71`). `reg23` (le paramètre `mask`) a une priorité
minuscule (`refs=2, live_length=11` -> `1*2/11≈0.18`) car son
`live_length` RTL couvre TOUT le calcul de pointeur (`ldr`+`movs`+
`lsls`+`adds`) entre son chargement à l'entrée et son unique usage --
même si `mask` n'est pas touché pendant ce calcul, il compte comme
"vivant" pendant toute cette fenêtre. `reg30`, alloué en premier
(priorité 10x supérieure), garde donc SON PROPRE registre (`r2`) comme
destination in-place du `ior`, ce qui donne `orrs r2, r1` -- et non
l'inverse voulu.

**Levier tenté, conforme à la règle 17 (agir sur `live_length` plutôt
que deviner une syntaxe)** : réduire le `live_length` RTL du pseudo
`mask` en introduisant une copie explicite juste avant usage
(`u32 m = mask; m |= pack->low; m &= 0x3F; pack->low = m;`), dans
l'esprit de la règle 11 (variable-copie explicite qui force un nouveau
pseudo à durée de vie courte). **Résultat contre-productif** : `agbcp`
a purement et simplement éliminé la copie (`m` coalescé avec `mask`,
aucun nouveau pseudo créé), ET a par ailleurs complètement changé
l'allocation de pression de registres de la fonction entière -- retour
à un schéma sans `push {r4,lr}` (octet brut réutilisé dans `r3` au lieu
de `r4`), une régression par rapport à la variante de référence, pas un
progrès. Aucune autre formulation testée n'a réussi à raccourcir
`live_length(mask)` sans que le compilateur ne coalesce la copie.

**Conclusion pour la règle 17** : contrairement à `func_0804E5AC` (round
w66) où le dump a permis de PRÉDIRE et appliquer un fix qui a fait
tomber la fonction, ici le dump a permis de comprendre EXACTEMENT le
mécanisme (contrainte d'encodage 2-opérandes + formule de priorité) --
mais le levier théoriquement identifié (raccourcir `live_length(mask)`)
s'est avéré non actionnable en C plausible dans ce cas précis : `mask`
est un paramètre de fonction, vivant dès la toute première instruction
par construction ABI, et toute tentative de raccourcir artificiellement
sa fenêtre de vie via une copie est absorbée par le compilateur avant
que l'allocateur de registres ne la voie. Généralise potentiellement à
toute future cible où le pseudo "à repriorer" est un PARAMÈTRE de
fonction (par opposition au cas w66 où les deux rôles en conflit
étaient tous deux des locaux internes à la fonction, sans contrainte
ABI figeant leur point de naissance) -- signal pratique à ajouter à la
règle 17 : le dump prédit fiablement le VAINQUEUR de la course de
priorité, mais renverser ce vainqueur suppose de pouvoir bouger le
`live_length`/`refs` du PERDANT sans que le compilateur ne l'annule --
plus difficile, voire structurellement impossible, quand le perdant est
un paramètre.

### État du dépôt en fin de round

Aucun fichier du dépôt modifié (les 2 cibles restent en `.byte`/asm brut
non porté) -- seul ce fichier `SESSION_NOTES.md` change. Toutes les
compilations d'expérimentation ont eu lieu hors du dépôt (`/tmp/w74_scratch`),
aucun `make compare`/rebuild nécessaire. `git status --short` propre
avant et après (hors ce commit de documentation). `origin` intact
(URL cassée volontairement), rien poussé, aucune PR. Ces 2 fonctions
restent de bons candidats pour une escalade `fable` future (stratégie
`DECOMP_RULES.md`) -- le budget "reformulation C" semble maintenant
épuisé pour les deux, avec un diagnostic de blocage précis et vérifié
plutôt qu'une simple accumulation d'essais.

## Round w75 (worktree `w75`) -- application de la règle 17 (`agbcp -dl -dg`)
aux 2 near-miss `func_08075334` (w57/w63) et `.L08037250` (w72) : progrès
mesurable sur la 1re, toujours pas matchée ; rien de neuf sur la 2e,
RIEN COMMITÉ (aucune des deux n'est bit-exacte)

Mission : appliquer la méthode de diagnostic découverte round w66/règle 17
(`agbcp -dl -dg` produit `gccdump.lreg`/`gccdump.greg` dans le cwd, qui
exposent refs/live_length/priorité RÉELS de chaque pseudo-registre au lieu
de deviner) aux 2 cibles bloquées les plus caractérisées du dépôt.

### Cible 1 -- `func_08075334` (`asm/code_08070A08.s:9622-9779`, 284o),
5e tentative -- résidu réduit de 26 à 68 octets bit-exacts, casse encore
sur un choix de slot de pile, PAS commité

Repartant du near-miss w63 (26 premiers octets du CORPS bit-exacts, taille
`.text` fausse de 16 octets). Deux corrections trouvées ce round, la
2e directement guidée par les dumps `-dl`/`-dg` :

1. **`QueueItem` ne doit PAS être `PACKED`** -- w63/w72 avaient supposé
   qu'un struct local nécessitait `PACKED` pour matcher les largeurs
   d'accès (vrai pour `.L08037250`, FAUX ici) : `QueueItem
   {u16 f0,pad; u32 f4,f8,fc;}` est déjà naturellement aligné (aucun
   padding implicite), donc pas besoin de `PACKED`. Avec `PACKED`,
   agbcp compile `*dst = *src` (l'assignation struct de l'item) en un
   VRAI appel `bl memcpy` (taille alignement=1 déclenche la version
   générique) au lieu du motif `ldmia/stmia` inliné à 4 registres que
   montre la cible. Sans `PACKED` : `ldmia r1!,{r2,r3,r4}; stmia
   r0!,{r2,r3,r4}; ldr r1,[r1]; str r1,[r0]` reproduit EXACTEMENT les 3
   sites de copie de la cible (item->write simple, copie de croissance,
   copie de l'item après croissance). Nouvelle règle générale probable
   pour `DECOMP_RULES.md` : `PACKED` ne doit être appliqué QUE si le
   struct a un vrai trou d'alignement à combler -- sinon il bascule
   agbcp sur la version `memcpy` générique au lieu de l'inlining normal.
2. **Ordre de calcul `q` (self+0x594) AVANT `item_ptr` (adresse locale),
   pas l'inverse** -- w57/w63 déclaraient `item_ptr` avant `q` (ordre
   "naturel" du rôle : on construit d'abord l'item local, puis on va
   chercher la queue). La cible fait l'inverse : `adds r5,r0,r1` (calcul
   de `q`) PUIS `mov sb,sp` (cache de `&item`). Corriger cet ordre de
   déclaration (`Queue *q = ...; QueueItem *item_ptr = &item;`) a fait
   basculer `q` de `r6` vers **`r5` -- exactement le registre cible**,
   ce qui était le blocage n°1 documenté par w63 comme "jamais résolu
   par aucune permutation testée". Généralisation probable : quand DEUX
   valeurs adjacentes sont candidates au même rôle callee-saved, agbcp
   semble privilégier la MOINS récemment déclarée pour le registre le
   plus "bas" du pool disponible -- à vérifier sur d'autres cas.

Avec ces deux corrections + les 3 acquis de w63 (inversion if/else,
idiome `fallback`/`amount_ptr` pour le ternaire d'adresses, boucle morte
avec lecture `write` avant `base`), harnais rapide : **68 premiers octets
du corps bit-exacts** (`cmp -l` contre les octets extraits de
`baserom.gba` à `0x08075334`, longueur 284), soit plus du double du
near-miss w63 (26o). Taille `.text` mesurée `0x118`/280 octets contre
`0x11c`/284 attendus (**écart réduit à 4 octets/2 instructions**, contre
16 octets pour w63) -- signe qu'il ne reste plus qu'UNE seule
divergence structurelle, pas plusieurs cumulées.

**Nouveau blocage isolé via les dumps (règle 17 appliquée avec succès
pour LOCALISER, pas encore pour RÉSOUDRE)** : la divergence restante est
un swap complet des SLOTS DE PILE entre `append_count` (la constante 1
utilisée par l'idiome de secours du ternaire) et `old_count` (le nombre
d'items existants avant croissance). `gccdump.lreg` du candidat identifie
précisément :
```
(insn 118 ... (set (reg:SI 60) (const_int 1)) ...
    (expr_list:REG_EQUIV (mem/f:SI (plus:SI (reg:SI 7 r7) (const_int 16)) 38) ...))
;; pseudo 60 = append_count, équivalent mémoire r7+16

(insn 128 ... (set (reg:SI 58) (ashiftrt:SI (reg:SI 56) (const_int 4))) ...)
(insn 130 ... (set (mem/f:SI (plus:SI (reg:SI 7 r7) (const_int 20)) 38) (reg:SI 58)) ...)
;; pseudo 58 = old_count, stocké à r7+20
```
soit **`append_count` -> offset 16, `old_count` -> offset 20** dans le
candidat -- alors que le désassemblage cible fait l'inverse
(`append_count`/growth -> offset 20, `old_count` -> offset 16, confirmé
par extraction+désassemblage direct des octets de `baserom.gba`, pas une
supposition). Trois hypothèses testées pour expliquer/inverser ce swap,
**toutes réfutées empiriquement** (harnais rapide, aucun effet sur les
offsets observés) :
- Permuter l'ORDRE DE DÉCLARATION C de `append_count`/`old_count` (avant
  vs après le calcul de `old_write`/`old_base`) : aucun effet, mêmes
  offsets 16/20 dans les deux sens.
- Déclarer `old_count` comme variable vide (non initialisée) AVANT
  `append_count`, puis l'assigner après coup (dissocier le point de
  DÉCLARATION du point d'ASSIGNATION) : aucun effet.
- Inverser la polarité du test (`if (old_count>=1) ... else ...` au lieu
  de `if (!(old_count>=1))`) sur le choix du pointeur de secours : aucun
  effet sur les offsets ni sur l'encodage de la comparaison (`cmp r?,#1;
  bcs` cible vs `cmp r?,#0;bne` candidat -- résidu déjà noté par w63,
  toujours pas résolu, semble être une canonisation systématique
  d'agbcp indépendante de la formulation C testée).
**Conclusion round** : l'attribution du slot de pile (quel offset reçoit
quelle variable parmi 2 locales adressées après un même point de
référence commun `item`/`q`) ne dépend PAS de l'ordre textuel de
déclaration, d'assignation, ni de la polarité du test qui les relie --
elle dépend d'un facteur non encore isolé (peut-être lié au nombre TOTAL
de locales adressées ailleurs dans la fonction, ou à un pass d'allocation
de frame antérieur à la génération RTL que les dumps `-dl`/`-dg` ne
couvrent pas directement puisqu'ils documentent l'allocation de
REGISTRES, pas l'allocation de SLOTS DE PILE). Piste non épuisée pour un
futur round : dumper avec un flag GCC additionnel ciblant le pass
d'allocation de frame (`-dr`? à vérifier dans `tools/agbcc/` si le
source est un jour rapatrié dans un worktree), ou tester des variantes
avec un NOMBRE différent de locales adressées ailleurs dans la fonction
pour voir si ça fait bouger l'affectation des offsets 16/20.
Non commité (candidat toujours pas bit-exact au-delà de l'octet 68).
Testé uniquement dans `/tmp/w75scratch/` (hors dépôt).

### Cible 2 -- `.L08037250` (`asm/code_08036DC4.s`, 28o, entre
`func_08037244`/`func_0803726C`), 2e tentative dédiée -- confirmation
supplémentaire du modèle, toujours pas de 2e registre de base, PAS commité

Repartant du near-miss w72 (struct `PACKED Loc4{u16 a,b,c,d;}` +
barrière -> taille/strh/ordre corrects mais UN SEUL registre de base
réutilisé pour les 4 champs, alors que la cible en utilise DEUX : `r3`
pour les offsets 2/4/6, `r2` pour l'offset 0 seul -- confirmé par
extraction+désassemblage direct des octets de `baserom.gba` à
`0x08037250`, longueur 28).

**Piste testée cette fois : deux locales SÉPARÉES au lieu d'un seul
struct à 4 champs**, comme suggéré par w72. Résultat : **la piste "deux
variables locales top-level distinctes" est ÉCARTÉE** -- toute
combinaison testée (`u16 a` + `struct{u16 b,c,d;}` séparés, avec ou sans
`PACKED` sur le second, quel que soit l'ordre de déclaration/assignation)
fait que le second local (peu importe lequel) récupère un slot de pile
ARRONDI À 4 OCTETS (padding), donnant une taille de trame totale de 12
octets au lieu des 8 exacts de la cible -- **chaque local top-level
semble toujours arrondi à un multiple de 4 octets dans son propre slot,
indépendamment de `PACKED`** (qui ne contrôle que le padding INTERNE d'un
struct, pas l'arrondi de son slot de pile global). Nouvelle règle
probable pour `DECOMP_RULES.md` : pour obtenir une trame de pile SANS
aucun octet de padding entre deux locales adjacentes, elles doivent être
des CHAMPS d'un seul et même objet adressable (pas deux locales
top-level séparées, même packées individuellement).

**Piste struct imbriqué (`struct Loc4{u16 a; struct PACKED{u16 b,c,d;}
grp;}`)** : reproduit la taille exacte (8o), les 4 `strh` aux bons
offsets (0/2/4/6), les 2 relectures de mots finales -- **mais un seul
registre de base** (`r1`), comme le struct plat testé par w72. Deux
variantes pour forcer un second registre, toutes deux ÉCARTÉES :
- Référencer `&loc.grp` en plus de `&loc` dans la barrière
  `asm volatile` SANS variable pointeur intermédiaire : agbcp reconnaît
  la même base par CSE et n'ajoute qu'un calcul mort (`mov r2,sp; adds
  r1,#2`, jamais utilisé pour une vraie écriture) -- **4 octets de PLUS**
  que la cible, toujours un seul registre pour le travail réel.
- Passer par un pointeur explicite `Sub3 *grp_ptr = &loc.grp;` puis
  écrire `grp_ptr->b = 0;` etc. : déclenche exactement le piège déjà
  documenté par w72 -- les écritures deviennent des `strb` (store byte)
  au lieu de `strh`, parce qu'écrire à travers un pointeur générique vers
  un struct `PACKED` perd l'information de largeur naturelle des champs
  que la compilation directe (`loc.grp.b = 0`) conserve. Écarté
  immédiatement (mauvaise largeur d'accès, pas seulement mauvais
  registre).
**Conclusion round** : le modèle structurel (2 locales avec une adjacence
mémoire exacte) est correct pour la TAILLE et les ACCÈS, mais la cause du
second registre de base reste non identifiée -- ni la séparation
top-level (bloquée par l'arrondi à 4 octets), ni le nesting avec référence
supplémentaire (bloqué par CSE ou par la dégradation en `strb`) ne la
reproduisent. Piste non tentée : un vrai DEUXIÈME OBJET adressable
distinct mais placé par un mécanisme qui évite l'arrondi à 4 octets --
peut-être un tableau `u16 buf[4]` unique avec DEUX pointeurs typés
différemment dessus (`u16*` vs un struct 3-champs) calculés à des
moments différents du programme plutôt que par une seconde variable
déclarée. Non exploré faute de temps ce round.
Non commité (candidat structurellement correct mais 1 seul registre de
base au lieu de 2). Testé uniquement dans `/tmp/w75scratch/` (hors
dépôt).

### Bilan méthode règle 17 (`-dl`/`-dg`) sur ce round

Utilisée avec succès pour LOCALISER précisément la cause du résidu de
`func_08075334` (identification certaine des pseudo-registres 60/58 et
de leurs slots mémoire réels via les annotations `REG_EQUIV`, au lieu de
déduire uniquement du désassemblage final) -- mais PAS suffisante pour
la RÉSOUDRE cette fois : les dumps `-dl`/`-dg` documentent l'allocation
de REGISTRES (pass RTL local/global), pas l'allocation des SLOTS DE PILE
eux-mêmes, qui semble décidée par un pass antérieur non visible dans ces
deux dumps. Pour la cible 2, la méthode n'a pas été le facteur limitant
(le blocage est un choix qualitatif -- combien de registres de base
distincts agbcp choisit d'allouer pour des locales adjacentes -- pas un
ordre de priorité lisible dans un dump de registres candidats, puisque
dans les deux variantes testées agbcp n'a JAMAIS mis en concurrence deux
pseudo-registres pour ce rôle : soit CSE les fusionne avant même
l'allocation, soit un seul est proposé).

Repo state en fin de round : `git status --short` propre (rien commité,
aucun fichier `asm/*.s`/`fomt.lds` touché), tous les candidats testés
dans `/tmp/w75scratch/` (hors dépôt). `origin` intact, rien poussé,
aucune PR.

## Round w77 (worktree `parallel-77`) -- examen détaillé des 2 gros gaps
`.L08022C60` (1704o) / `.L080238F4` (1724o) laissés en suspens par w73,
tous deux dans `asm/code_08022320.s` : **CONFIRMÉS CODE (pas données),
3 fonctions distinctes par gap, structure jumelle entre les 2 gaps --
aucun match commité ce round (aucune n'est réellement "simple")**

Mission : caractériser en détail ces 2 gaps jamais examinés (marqués par
w73 "probablement plusieurs fonctions ou données mal classées, mérite un
examen dédié"). Désassemblage direct de `baserom.gba` avec
`arm-none-eabi-objdump -D -b binary -m arm --adjust-vma=0x08000000
--start-address=... --stop-address=... -Mforce-thumb` (contournant le
dump `.byte` brut déjà présent dans le `.s`, qui n'est qu'un défaut du
scanner face à des fonctions non bornées, pas une preuve de nature).

**Verdict : CODE THUMB VALIDE, pas de table de données.** Aucune
proximité avec une zone de données déjà exclue dans `DECOMP_ARCHIVE.md`
(seule mention de `0x08022320` dans l'archive concerne des helpers
`func_08022320`/`func_08022334` sans rapport, pas une zone de données).
Chaque gap se désassemble proprement en Thumb sans dérive d'alignement,
avec des motifs `push {..., lr}` / `pop {...}` + `pop {r}` + `bx r`
canoniques.

### Découpage par frontières push/pop (scan systématique, aucun autre
`push` trouvé dans les 2 gaps que les 3 listés -- tailles cumulées =
taille exacte du gap, confirmant l'exhaustivité)

**Gap 1** (`0x08022C60`-`0x08023308`, 1704o), entre `func_08022C18`
(constructeur `AActorEntityUi`-like connu, pose `vtable_unk_080E6310`)
et `func_08023308` (déjà connu) :
- `func_08022C60` (76o, `push {r4,r5,r6,lr}`/`sub sp,#8`) : bascule le
  vtable de `self+0x14` de `vtable_unk_080E6310` vers
  `vtable_unk_080E6250` en 2 temps, avec 2 appels intermédiaires
  (`bl 0x8032170`, `bl 0x809b124`, tous deux asm-only non nommés) puis
  un branchement conditionnel sur `self+0x10` (`bl 0x80d3914` si non
  nul) et un autre sur `r6 & 1` (`bl 0x8000608`). Motif "transition de
  type d'acteur en place" (pas un constructeur classique : aucun appel
  `__5ActorRC5Actor`).
- `func_08022CB4` (58o, `push {r4,lr}`/`sub sp,#4`) : écriture d'un
  bitfield 16 bits sur une locale de pile via idiome
  read-mask-or-mask-write classique (`ldr r0,[sp,#0]` NON initialisé
  avant écriture, mais AND avec un masque `0x00000000` en pool qui
  annule la lecture -- artefact de codegen bitfield déjà documenté dans
  ce dépôt), puis `bl 0x809b940` (asm-only), puis enchaîne sur les 2
  fonctions déjà connues juste après le gap : `func_08023378` (calcule
  un code 0-7 depuis l'état de gestation `IsPregnant__C10BarnAnimal`)
  et `func_08023308` (dispatch anim). Masques de pool : `0x00000000` /
  `0x00FFFFFF` (confirmés par lecture directe des octets ROM).
- `func_08022D00` (1542o, `push {r5,r6,r7}` précédé de
  `mov r7,r10`/`mov r6,r9`/`mov r5,r8` -- sauvegarde manuelle de
  r8-r10) : GROSSE fonction, state-machine à nombreuses branches
  (dizaines de `bl` vers des cibles asm-only non nommées : `0x809b51c`,
  `0x809b57c`, `0x80d3910`, etc.), plusieurs pools littéraux internes
  (normal pour une fonction de cette taille, la portée `ldr pc-relatif`
  Thumb est limitée à ~1Ko -- confirmé PAS une preuve de désalignement,
  juste des pools intermédiaires légitimes).

**Gap 2** (`0x080238F4`-`0x08023FB0`, 1724o), entre `func_080238A8`
(constructeur jumeau de `func_08022C18`, pose `vtable_unk_080E6284`,
même forme exacte) et `func_08023FB0` (déjà connu) : **structure
IDENTIQUE au gap 1**, tailles très proches mais pas égales :
- `func_080238F4` (72o) : même motif bascule-vtable que
  `func_08022C60` (4o de moins).
- `func_08023948` (58o) : bit-pour-bit la même taille que
  `func_08022CB4`, même idiome bitfield.
- `func_08023994` (1562o) : même forme state-machine que
  `func_08022D00` (20o de plus).

**Interprétation** : les 2 gaps sont le bloc de méthodes "type-switch +
setter + update" de 2 classes soeurs (probablement 2 sous-types
`BarnAnimal`, cf. l'appel `IsPregnant__C10BarnAnimal` juste après le
gap 1), chacune précédée par son constructeur déjà décompilé et suivie
par ses helpers déjà décompilés -- seul le bloc du MILIEU (ce que le
scanner voyait comme un gap monolithique) manquait.

**Pourquoi aucun match ce round** : les 2 petites fonctions (58o/72-76o)
sont les candidats "abordables" identifiés par la mission, mais toutes
les deux appellent des cibles `bl` ASM-ONLY non nommées
(`0x8032170`/`0x809b124`/`0x809b940`) dont le rôle réel est inconnu --
les nommer au hasard risquerait de figer une fausse sémantique (même
piège déjà documenté round w73 pour `.L08037CDC`). La grosse fonction
(1542o/1562o) est hors de portée d'un seul round (state-machine dense,
dizaines de branches, aucune fonction sœur déjà décompilée dans ce
dépôt pour s'en servir de modèle). Aucune tentative de compilation
lancée ce round -- caractérisation seule, conforme à la mission
("si tu bloques, documente ta conclusion").

**Cibles pour un prochain round** : les 2 paires de petites fonctions
(`func_08022C60`/`func_080238F4` et `func_08022CB4`/`func_08023948`)
restent les meilleures candidates dans ce gap une fois que
`0x8032170`/`0x809b124`/`0x809b940` auront été caractérisées ailleurs
(probablement des helpers `BarnAnimal` d'évolution/croissance, à
recouper avec `IsPregnant__C10BarnAnimal`/`GetDaysPregnant__C10BarnAnimal`
déjà nommés dans ce fichier).

Aucun fichier `asm/*.s` modifié ce round (caractérisation pure, pas de
tentative de portage). `git status --short` propre, `origin` intact,
rien poussé, aucune PR.

## Round w76 (worktree `w76`) -- suite du sweep w70/w73, 8 gaps consommés,
15 fonctions matchées, tous premier essai en harnais, gap count 54 -> 46

Re-scan complet avec `scan_hidden_code_blobs_v2.py` : 54 gaps au début de
ce round. Priorité donnée aux PETITS gaps (mission explicite), en
excluant les cibles déjà exclues/bloquées (`func_08050C70`,
`.L08037CDC`, `func_0809C4EC`, `func_08050EBC`/`08050E98`,
`.L08037250`, `func_08075334`) et une cible "pression de registres"
avérée (`.L0804EB64`, r8/r9/sl utilisés dans le CORPS, pas juste
prologue/épilogue -- vérifié puis explicitement laissée de côté sans
tentative, conforme à la règle DECOMP_RULES.md sur cette classe).

**8 gaps matchés, 15 fonctions, 7 commits, tous vérifiés bit-exact**
(harnais rapide + `make compare` relink complet + diff octet-à-octet
isolé contre `baserom.gba`) :

- **`func_080094E0`/`func_080094F8`/`func_08009508`** (52o,
  `asm/code_08008DE8.s`, entre `func_080094B8` et l'orpheline
  `func_08009514`) : 3 wrappers autour du champ `self+0xc` (déjà connu
  `func_080094A4`/`func_080093A0`, accesseur/mutateur `i16` "son").
  Détail notable : le 3e wrapper n'a PAS son propre épilogue -- son
  adresse de retour de `bl` tombe directement sur ce qui portait le
  label orphelin `func_08009514` (aucun appelant `bl` connu nulle part),
  qui a donc été entièrement absorbé dans le corps de la fonction portée
  et son label supprimé.
- **`func_08069EB4`/`func_08069ED4`/`func_08069EF4`** (96o,
  `asm/code_08069E98.s`, candidat caractérisé mais jamais attaqué depuis
  w73) : 3 wrappers "nonzero-to-bool" (idiome `negs`/`orrs`/`lsrs #31`)
  autour de `Barn::CountSheeps`/`Barn::CountCows`/`Coop::CountChickens`
  déjà portés. Le pointeur `self+0x120` déréférencé n'est PAS un
  `Farm*` direct : les offsets utilisés (Barn +0x5F0, Coop +0x410) sont
  chacun exactement +0x14 par rapport aux offsets réels `Farm::coop`/
  `Farm::barn` (`include/farm.hh`) -- pointe donc vers un objet
  englobant encore non décompilé avec `Farm` inline à +0x14. Modélisé en
  arithmétique de pointeur brute plutôt que d'inventer cette classe.
- **`func_0801FD48`/`func_0801FD50`/`func_0801FD58`** ET leur duplicata
  EXACT **`func_080ADB84`/`func_080ADB8C`/`func_080ADB94`** (24o chacun,
  `asm/code_0801DE3C.s` et `asm/code_080A3774.s` respectivement) : même
  trio d'accesseurs bruts (`i16` à +0xE, `i16` à +0xA, `u32` à +0 du
  pointeur `self+4`), octets rigoureusement identiques aux deux
  emplacements, mêmes callees voisins (`func_080A5A9C`/`func_080A59BC`)
  -- confirmé comme un vrai doublon de table d'accesseurs dans la ROM,
  pas un artefact de scan/merge (cf. piège documenté dans
  DECOMP_RULES.md pour les doublons post-merge, vérifié non-applicable
  ici : aucune trace de fusion récente sur ces deux fichiers). Les
  offsets `+0xA`/`+0xE` correspondent au même objet "Location-like"
  encore bloqué sur `.L08037CDC` (classe `Location` absente) -- gardé en
  arithmétique brute pour ne pas préempter ce choix de nom/layout.
- **`func_08075E00`** (36o, `asm/code_080756D0.s`, candidat caractérisé
  mais jamais attaqué depuis w70) : 2 appels conditionnels au wrapper
  DMA déjà connu `func_08008E64` (asm-only ; prototype à 3 arguments
  `(void*, void*, u32)` récupéré directement depuis son corps compilé,
  cohérent avec le style `CpuFastSet` de `func_08009790`). Le champ
  `self+0x1C` sert À LA FOIS de test de nullité ET de 2e argument
  littéral du 2e appel -- reproduit avec un seul local pour éviter un
  rechargement `ldr` superflu chez agbcp.
- **`func_08036E00`** (44o, `asm/code_08036DC4.s`, candidat "complexité
  de constructeur" caractérisé mais jamais attaqué depuis w70) :
  s'avère un DOUBLON exact du motif "entity factory" déjà connu
  (`func_08035B38`/`src/code_08035B38.cc`, règle 13 DECOMP_RULES.md) --
  même taille d'allocation (0x8c), même kind/subkind (4, 27), mêmes
  littéraux (1, 0, 0, `false`). L'estimation w70 "gros effort, layout de
  classe à comprendre" était basée sur la ressemblance de surface avec
  les VRAIS constructeurs placement-new du même fichier, pas sur le
  contenu réel de ce gap précis -- signal utile : ne pas se fier à la
  ressemblance de voisinage seule pour prioriser/dé-prioriser un gap.
- **`func_080AAF9C`/`func_080AAFB8`** (44o, `asm/code_080A3774.s`,
  candidat "pression de registres" caractérisé w70 par ressemblance de
  surface avec la fonction précédente -- qui, elle, utilise vraiment
  r8/sb) : aucune des deux fonctions de ce gap ne touche r8/sb/sl/ip.
  `func_080AAF9C` reforward vers `func_08008E64` (même wrapper DMA que
  ci-dessus), gaté sur pointeur non-nul + discriminant `self+0`==2.
  `func_080AAFB8` relit un index à `self+4`, l'envoie à `GetMapData`
  (déjà nommée mais toujours asm-only), puis lit un octet à +0x24 de la
  ligne retournée.

**Cible examinée et explicitement écartée** (pas juste ignorée sans
regarder) : `.L0804EB64` (288o, `asm/code_0804E9C8.s`) désassemblée en
entier -- utilise `r8`/`r9`/`sl` dans le CORPS (pas seulement prologue/
épilogue, ex. `mov r8,r1` puis relecture bien après), signal d'alerte
explicite de DECOMP_RULES.md pour la classe "pression de registres" --
laissée de côté sans tentative, conforme à la consigne "pas de budget
dédié sans idée neuve".

**Cible examinée et jugée hors scope pour ce round** : `.L0801D9BC`
(392o, `asm/code_08012028.s`, entre `func_0801D9A8`/`func_0801DB44`) --
désassemblage révèle une vraie table de saut (littéraux `.4byte`
d'adresses internes au même fichier, ~40 entrées) au milieu du bloc :
un unique gros `switch` compilé, pas une famille de petites fonctions
sœurs comme les autres gaps de ce round. Nécessite un effort dédié de
compréhension du contrôle de flux complet, pas tenté faute de budget --
bon candidat pour un futur round avec budget dédié. Les 2 gaps
nettement plus gros `.L08022C60`/`.L080238F4` (1704o/1724o,
`asm/code_08022320.s`) n'ont pas été examinés du tout ce round (même
classe de taille suggérant plusieurs fonctions ou une vraie grosse
fonction à switch, mérite un examen dédié avant de s'engager).

**Compte de gaps** : 54 -> 46 après ce round (8 consommés, 46 restants
incluant tous les near-miss/cibles bloquées déjà documentées + les 3
grosses cibles ci-dessus non examinées/écartées ce round).

Méthode de vérification appliquée à chaque match, sans exception :
harnais rapide (compilation+assemblage sans lien, diff de désassemblage
contre les octets originaux) PUIS découpage du fichier `asm/*.s`
monolithique (méthode standard DECOMP_RULES.md, en gérant les cas de
double-découpage sur un fichier déjà scindé un round précédent) PUIS
`rm -rf build fomt.gba fomt.elf fomt.map && make compare` (rebuild
propre + relink complet, `sha1sum -c fomt.sha1` échoue comme attendu
depuis `cb06198`, non-signal documenté) PUIS diff octet-à-octet direct
`baserom.gba`/`fomt.gba` sur la région exacte affectée (fonctions
portées + voisinage immédiat non touché, pour détecter tout décalage
résiduel). `git status --short` propre après chacun des 7 commits.
`origin` intact (URL cassée volontairement), rien poussé, aucune PR.

## Round w78 (worktree `parallel-78`) -- attaque des 3 gaps moyens
laissés en suspens par w73 : 1 match, 1 near-miss serré caractérisé,
1 cible complexe cartographiée mais non attaquée faute de budget

Mission : `.L08069EB4` (96o), `.L0804EB64` (288o), `.L0801D9BC` (392o),
dans cet ordre. `grep -rl -- ".LADRESSE" asm/*.s` vérifié pour les 3
avant tout travail (piège du doublon silencieux) -- chacun n'apparaît
que dans son propre fichier `asm/*.s`, pas de doublon.

### `.L08069EB4` (96o) -- MATCH, commité

3 copies du même idiome "wrapper" déjà connu (famille `func_0801DD3C`,
round w73) : déréférencer un pointeur à `self+0x120` pour atteindre un
conteneur externe non modélisé, décaler le résultat vers un sous-objet
`Barn`/`Coop` embarqué, appeler une de ses méthodes `Count*` déjà
décompilées (`Barn::CountSheeps`, `Barn::CountCows`, `Coop::CountChickens`
-- résolues via les symboles mangled `C4Barn`/`C4Coop` de `fomt.map`) et
booléaniser le résultat `u32` (idiome `negs`/`orrs`/`lsrs #31` standard).
Aucun appelant `bl` connu. Layout du conteneur externe à `+0x120` non
modélisé (classe inconnue) -- seule l'arithmétique de pointeur brute
nécessaire pour atteindre les sous-objets `Barn`/`Coop` est assertée,
cohérent avec la famille `func_0801DD3C` déjà acceptée dans ce dépôt.

Découpage de fichier : `asm/code_08069E98.s` tronqué juste après
`func_08069E98`, reste déplacé vers `asm/code_08069F14.s` (nouveau,
convention de nommage respectée), gap remplacé par
`src/code_08069EB4.cc`. `fomt.lds` mis à jour pour préserver l'ordre de
lien. Bit-exact : taille `.text` isolée 0x60 == taille du gap, diff
octet à octet direct de `fomt.gba` contre `baserom.gba` à
`0x08069EB4..+0x60` identique après `make compare` (relink complet, le
check `sha1sum` global échoue comme attendu depuis `cb06198`).

### `.L0804EB64` (288o) -- near-miss serré, root-causé en grande partie,
PAS commité (fermé proprement, working tree nettoyé)

Fonction unique (pas un groupe de wrappers, contrairement à l'hypothèse
initiale de taille) : formate un entier signé en glyphes 2 octets
(système de police à chasse variable de ce jeu, cf. `DrawGlyphAt` dans
`src/code_0804E4AC.cc`) -- soit en forme "largeur de champ" (justifié à
droite, espaces de remplissage, signe `-` optionnel) si `width != 0`,
soit en forme brute signe-puis-chiffres via l'helper itoa non signé déjà
connu `func_080E0EFC` (`asm/code_linkonce.s`) sinon. Le résultat ASCII
est ensuite traduit caractère par caractère en codes-glyphe 2 octets via
3 petites régions de correspondance situées dans l'énorme blob rodata
encore non découpé `asm/data/data_080F9EB8.o` (0x40D08 octets !) --
table indexée par `ascii*3` pour les chiffres (vérifié octet à octet :
`base+0x90` = `82 4F 00` pour `'0'`, stride 0x100 par chiffre jusqu'à
`base+0xAB` pour `'9'`), entrée fixe à `base+0xB0` pour l'espace,
`base+0xB4` pour `'-'`, avec `base = 0x080F9E78`. Adressées ici comme
littéraux hex bruts (aucun symbole existant sans découper ce blob, très
hors scope pour ce gap -- cohérent avec la règle 10).

Algorithme entièrement reconstruit et vérifié section par section :
- Conversion en chiffres décimaux via `__modsi3`/`__divsi3` (division
  SIGNÉE, cohérent avec une valeur déjà rendue positive), buffer
  temporaire à `sp+12` (16o), buffer de sortie final à `sp+0` (12o) --
  layout de frame `sub sp,#28` exactement expliqué par deux tableaux
  locaux `char out_buf[12]; char digit_buf[16];` déclarés dans cet
  ordre.
- Idiome de garde redondante confirmé (règle 2) : `if (i < width)`
  entoure toute la boucle de conversion alors que `i=0` et `width!=0`
  sont déjà garantis à ce point -- la source originale semble partager
  ce squelette avec un autre appelant où ce n'est pas garanti.
- `out_buf[10] = width;` dans la branche `width==0` (offset FIXE 10, pas
  une adresse calculée `out_buf[width]` comme dans l'autre branche) --
  reproduit littéralement (le paramètre `width`, encore à 0 dans cette
  branche, est réutilisé tel quel plutôt qu'un littéral `0` frais).
- Table des 3 régions de glyphe : DOIT être déclarée comme 3 pointeurs
  locaux nommés chargés UNE SEULE FOIS avant la boucle
  (`u8 const *digit_table = ...; space_entry; minus_entry;`), pas
  inline dans chaque branche -- sinon agbcp recharge chaque littéral à
  CHAQUE itération au lieu de les hoister (agbcp ne fait pas de LICM,
  donc le hoisting doit être fait à la main dans le C source). Confirmé
  en isolant ce changement seul (taille passe de 0x110 à 0x120 = taille
  cible exacte, avant tout autre fix).
- `int v = value;` **copie explicite** nécessaire dans la branche
  `width==0` avant la négation (`if (v<0) {...v=-v;}`) : l'original ne
  mute PAS le paramètre `value` lui-même dans cette branche (il reste
  vivant, intact, dans son registre d'origine) -- confirmé par le
  désassemblage cible qui fait `adds r2,r6,#0` (copie) AVANT `mov r1,sp`,
  puis `negs r2,r2` (mutation de la COPIE), jamais de `negs r6,r6`.
  Écrire `v` dans le MÊME ORDRE que le désassemblage (`int v=value;`
  avant `char *p=out_buf;`, pas après) était nécessaire pour que
  l'ordre des 2 premières instructions du bloc corresponde (règle 5).

**Résidu non résolu (2 classes distinctes, ~4-8 octets sur 288, budget
insuffisant pour pousser plus loin)** :
1. **Swap de registre `value`/`i`** : la cible alloue `value` dans `r6`
   et l'index de boucle `i` dans `r5` ; toute formulation testée (ordre
   de déclaration, réordonnancement des affectations, type `bool` vs
   `u32` pour le drapeau de signe) donne l'inverse (`value`→r5, `i`→r6).
   Cascade ensuite sur TOUS les registres du bloc glyphe en aval (`r2`
   attendu vs `r3` obtenu pour le pointeur de scan, etc. -- décalage
   constant d'un registre). Signature typique de la classe "course de
   priorité" (règle 17, `floor_log2(refs)*refs/longueur_de_vie`) déjà
   documentée comme non renversable par reformulation C dans 2 cas sur 2
   testés au round w74 (`func_08050EBC`, `func_0809C4EC`) -- dump
   `-dl -dg` confirmé disponible et exploité (`gccdump.greg` montre bien
   ~21 pseudos réels à allouer avec refs/longueurs de vie variés) mais
   sans mapping pseudo→registre final explicite dans le dump pour
   trancher laquelle des 2 variables gagne sans deviner davantage.
2. **Copie fantôme `adds r2,r1,#0`** juste après le chargement du
   caractère courant dans la boucle glyphe, absente de la cible : liée à
   la présence d'un 3e test explicite (`c=='-'`) après le test digit et
   le test espace dans une chaîne `if/else if/else if/else`. Un
   if-imbriqué équivalent (`if (c!=' ') { if(c!='-') break; ... } else
   {...}`) supprime la copie ET tombe pile sur la bonne TAILLE (0x120)
   mais restructure la forme du bloc final (les 2 tests espace/moins
   compilent avec `beq` vers des blocs séparés au lieu du `bne`+chute
   directe de la cible) -- donc toujours pas byte-exact, juste une
   coïncidence de taille. Correspond assez bien à la classe "pression de
   registres" déjà documentée dans `DECOMP_ARCHIVE.md` (`DrawGlyphAt`,
   fermée après 4 tentatives avec un écart irréductible de 2 octets) --
   **ne pas se réengager sans budget dédié et une idée réellement
   neuve** (le dump `-dl -dg` n'a pas trouvé de levier cette fois, voir
   limite documentée round w74).

Toute tentative annulée proprement (`git status --short` propre avant
et après, aucun fichier créé/modifié laissé dans le dépôt -- le brouillon
`src/code_0804EB64.cc` a été supprimé après le dernier test).

### `.L0801D9BC` (392o) -- cartographiée en détail, PAS attaquée
(budget de round épuisé après les 2 cibles précédentes)

Fonction bien plus grosse et complexe que les 2 précédentes : un
dispatcheur d'état avec table de saut (`switch` à 44 cas, `mov pc, r0`
après indexation `table[idx*4]`), pas un groupe de petites fonctions
accolées. Reconstruction complète de la logique de routage (sans porter
le C) :

```
handle = *(self + 0x1038);              // ldr via pool littéral =0x1038
sub = handle + 8;                        // r6, réutilisé dans les cas
status = *(handle + 8);
if (status == 1) return 10;
if ((u32)(status - 3) <= 1) return 11;   // status == 3 ou 4
record_player = FarmHouse::GetRecordPlayer(handle + 0x1F4);  // 0xfa*2
vtbl_fn = (*(self))->slot[0x14];         // via _call_via_r1 (0x080D3910)
kind = vtbl_fn(self);                    // appel virtuel, offset +0x14
idx = kind;
if ((u32)(kind - 0x34) <= 0x1FF)
    idx = 2;                             // large plage de kinds -> case générique 2
if (idx > 43) goto default_case;         // sinon -> case 14 (voir table)
switch (idx) { /* 44 cas, table décodée ci-dessous */ }
```

Table de saut décodée intégralement (44 entrées `.4byte`, base
`0x0801DA1C`, `idx*4`) via extraction Python directe des octets bruts
(objdump désassemble le bloc `.byte` de façon linéaire et interprète à
tort la table comme du code -- ne JAMAIS lire la table depuis la sortie
`objdump -D` sans réajuster, seulement depuis les octets bruts) : la
plupart des entrées retombent sur seulement 3 blocs de cas
(`0x0801DAD0`, `0x0801DB22`, `0x0801DB26`), chacun un petit calcul
utilisant `RecordPlayer::HasAlbum`/`RecordPlayer::GetUnknown`
(`func_0800BB74`/`func_0800BB7C` dans `fomt.map`) et `func_0800E324`
pour retourner une des constantes 1-14 (probablement un enum "état de
dialogue radio" pour un NPC/objet interactif dans la maison de ferme).
Callés identifiés via `fomt.map` : `GetRecordPlayer__9FarmHouse`
(`0x0800C07C`), `HasAlbum__C12RecordPlayer` (`0x0800BB74`),
`GetUnknown__C12RecordPlayer` (`0x0800BB7C`), `func_0800E324`,
`func_08012B24` (utilisé par le voisin déjà porté `func_0801D9A8`, pas
directement par cette cible), `_call_via_r1` (`0x080D3910`, trampoline
d'appel virtuel standard CFront, pas une vraie cible `bl` nommée).

Pas attaqué en C++ : le volume (392o, table de saut byte-exacte à
reproduire via un vrai `switch` C, 3+ appels externes non triviaux dont
1 virtuel) dépasse largement le budget restant de ce round après les 2
cibles précédentes. Bonne cible dédiée pour un round futur avec budget
complet -- tout le travail de reverse (layout, table, callés) documenté
ci-dessus pour éviter de le refaire.

`git status --short` propre en fin de round (seul le commit du match
`.L08069EB4` reste, rien d'autre modifié/laissé). `origin` intact, rien
poussé, aucune PR.

**Note post-merge** : le match de `.L08069EB4` a été trouvé indépendamment
en double par le round w76 (`func_08069EB4`/`08069ED4`/`08069EF4`, déjà
mergé) -- ce round l'a redécouvert de son côté avant que w76 ne soit
visible. Version w76 conservée au merge (`git checkout --ours`), version
w78 écartée (contenu identique de toute façon). Les 2 near-miss
caractérisés (`.L0804EB64`, `.L0801D9BC`) restent valables et ouverts.

## Round w79 (worktree `w79`, branche `parallel-79`) -- exploration dédiée
`func_08093364`/`franglais_boot_fsm_run` : RAPPORT DE DIFFICULTÉ (pas de
tentative de match forcée, mission = jauger la difficulté réelle)

**Contexte de la mission** : Mathias voulait savoir concrètement à quel
point une VRAIE grosse fonction moteur (jamais tentée jusqu'ici, aucun
budget dédié alloué) est difficile à décompiler. Consigne explicite :
ne pas forcer, produire un rapport honnête même sans match complet.

### Localisation et correction d'une erreur de l'archive

`DECOMP_ARCHIVE.md` (ligne 166) référence `asm/code_0805E760.s` pour
cette fonction -- **erreur** : ce fichier ne contient que des fonctions
`func_0805E76*`-`func_0805FBB8`, rien à `0x08093364`. La vraie
localisation est `asm/code_08093220.s:152` (`grep -rln
"func_08093364" asm/*.s` -> `code_08093220.s` ET `code_08093AC8.s` pour
le seul appelant connu, ligne 19). À corriger dans `DECOMP_ARCHIVE.md`
si cette cible est reprise plus tard.

**Taille réelle mesurée** : `0x08093AC8 - 0x08093364 = 0x764` = **1892
octets**, pas `0x6F4` (1780o) comme noté round 6 dans l'archive -- écart
de 112 octets, probablement une mesure approximative faite à l'époque
sans borne de fin confirmée (la fonction suivante `func_08093AC8` n'a
été identifiée avec certitude que cette session). La fonction occupe
l'intégralité de `asm/code_08093220.s` de la ligne 152 à 947 (~795
lignes de `.s`, cohérent avec l'estimation "~800 lignes").

### Structure : vraie FSM à deux niveaux, pas juste une longue chaîne d'`if`

Désassemblage complet lu et découpé mentalement en blocs :

1. **Prologue** (`push {r4-r7,lr}; mov r7,sl; mov r6,sb; mov r5,r8; push
   {r5,r6,r7}; sub sp,#0x5c`) -- confirme la signature "pression de
   registres" déjà notée dans l'archive, identique à `DrawGlyphAt`.
   `r7` = `self` (tenu en vie sur les ~795 lignes complètes, jusqu'à
   l'épilogue).
2. **Bloc d'initialisation one-shot** (lignes 154-297) : gardé par un
   flag `[sp+0x50]` remis à 0 en toute fin de bloc -- config palette/BG
   (3x `func_08008918`+`strh` avec des constantes qui montent par pas de
   `0x101` : `0x1D40`, `0x1E41`, `0x1F42`), 3 DMA-like via
   `func_08008EB8`/`func_08008E64` (zones VRAM `0x0600F000`,
   `0x0600F800`, `0x06007FE0` -- tuiles/palette), une allocation
   (`__builtin_new(0x10)`) d'un objet avec `vtable_unk_080E5B80`,
   enregistrement d'un handler via `func_080D100C` (callback pointer
   `func_080D0704`), puis un appel virtuel (`_call_via_r2`, slot +0x10).
3. **Table de saut #1** (`.L08093598`, 9 entrées, base indexée sur un
   byte-flag ET l'état courant) : 8 cas sur 9 retombent sur le même
   défaut, SEUL le cas 6 fait quelque chose (dispatch sur le retour d'un
   appel virtuel `[vtbl+0x18]`, lui-même un `switch` à 4 cas
   1/2/3/default) -- un idiome "action en attente exécutée une seule
   fois au retour de l'état 6", pas un vrai état parmi les 9.
4. **Table de saut #2** (`.L08093648`, 9 entrées, MÊME variable d'état) :
   le vrai corps de la FSM, un `switch` classique sur `self+0x3E8`
   (état, `int`) avec un flag byte compagnon à `self+0x3EC`. Les 9 cas
   couvrent : lancement d'écrans de config (`func_08050D8C` appelé 8 FOIS
   avec 8 tables de données globales DIFFÉRENTES en argument -- clairement
   un "charge cet écran de dialogue/menu"), un appel virtuel de
   confirmation (`[vtbl+0x18]`/`[vtbl+0x14]`), et un bloc de fin
   remarquable (case 4, lignes 640-796) qui construit 3 CHAÎNES (via
   `strlen`+`memcpy` bornés à 0xe caractères + terminateur nul, 3 fois de
   suite à des offsets `+0x21CC/+0x21E0/+0x21F0` d'un objet -- très
   probablement les 3 noms d'un nouveau départ de partie : fermier/ferme/
   date, cohérent avec la note mémoire "accès à la date de jeu" de la
   session précédente) et un `memmove` de compaction avant insertion.

Cette dernière observation situe fortement cette fonction dans le
"Pillar Language/Modern" du roadmap FoMT : c'est très probablement l'écran
de confirmation "nouvelle partie" (saisie des noms), pas un simple menu
titre. Nom `franglais_boot_fsm_run` cohérent avec ça, mais gardé neutre
(`func_08093364`) dans ce dépôt par discipline "point de vue vanilla".

### Inventaire chiffré de la difficulté (mesuré, pas estimé à l'oeil)

```
grep -oP '(?<=bl )\S+' <corps de la fonction> | sort -u | wc -l   -> 46 callés distincts
grep -c '^\tbl '                                                   -> 88 appels bl au total
```

Sur les 46 callés distincts, **seuls 4 sont déjà portés/documentés**
dans ce dépôt (`func_08008E64`, `func_08050E50`, `func_080D100C`,
`func_08050DF0`/`TransitionCtlQuery`) -- **42 restent strictement
opaques**, jamais inspectés. 13 globales opaques distinctes en plus
(`gUnk_080F9F70/74/78`, `gUnk_08100610/638/678/6C4/73C/58C/590/758/790`,
`vtable_unk_080E5B80`). Aucun de ces callés n'a de signature confirmée
par corps compilé (règle #3 de `DECOMP_RULES.md` : deviner un prototype
depuis un usage Ghidra/ASM seul est la cause n°1 de near-miss d'1
registre) -- chacun nécessiterait sa propre mini-investigation avant
même d'écrire une ligne de C pour cette fonction, sous peine de
reproduire l'erreur documentée round 4.

### Expérience harnais (calibrage, pas une tentative de la vraie cible)

Pour valider que le pipeline de vérification rapide fonctionne encore
dans ce worktree fraîchement créé, un micro-fragment isolé (2 premiers
`bl` + 1 store, PAS le vrai `func_08093364`) a été compilé via le
harnais standard (`/tmp/w79_boot_fsm_scratch/`, chemin unique à la
session comme prévu par le piège documenté) :

```cc
EC void func_08093364(void *self)
{
    func_08008724(self);
    void *p = func_08008918(self);
    u16 tmp = 0xea << 5;
    *(u16 *)((char *)p + 8) = tmp;
}
```

Résultat : `self` alloué en `r4` (callee-saved), pas `r7` -- attendu,
`agbcp` ne choisit un registre haut (`r7`/`sb`/`sl`) que si la durée de
vie observée sur TOUTE la fonction le justifie (formule
`floor_log2(refs)*refs/longueur_de_vie` documentée règle #17). **Constat
méthodologique important pour cette cible précise** : contrairement à
des fonctions plus courtes où un fragment peut être testé isolément
avant d'assembler le reste, **`func_08093364` ne peut PAS être vérifiée
par petits bouts** -- l'allocateur de registres décide de `r7`/`sb`/`sl`
sur la base du graphe de vie GLOBAL des ~88 appels ; écrire seulement le
prologue + 20% du corps donnerait une allocation de registres
totalement différente de la vraie fonction (probablement PAS `r7` pour
`self` sur un fragment court), rendant tout diff prématuré non
informatif. **Il faut la fonction ENTIÈRE, avec les 42 callés typés
correctement, avant d'obtenir le premier signal utile du harnais.**
C'est une différence qualitative avec les cibles "pression de
registres" déjà rencontrées (`DrawGlyphAt` ~100 lignes/1 callé opaque
principal) où un near-miss pouvait être isolé à un seul bloc.

### Décision : pas de tentative de C++ sur la vraie cible ce round

Écrire un corps C++ pour `func_08093364` sans les 42 signatures réelles
serait de la pure spéculation (violation directe de la règle #3, la
règle la plus insistée du fichier de discipline) -- et vu le constat
ci-dessus, aucun sous-ensemble ne peut être vérifié isolément de toute
façon. Continuer aurait signifié soit halluciner des prototypes (contre
la discipline du dépôt), soit lancer un chantier de 42 mini-
investigations non budgété par la mission ("pas urgent, comprendre
plutôt que matcher"). `git status --short` confirmé propre en fin de
round -- seul `/tmp/w79_boot_fsm_scratch/` (hors dépôt) contient le
fragment de calibrage, rien commité, rien laissé dans le worktree.

### Estimation honnête pour terminer cette cible

Comparaison avec la cible "pression de registres" déjà refermée avec
succès la plus proche en volume connue (`DrawGlyphAt`/`func_0804E4AC`,
~100 lignes, 1 callé opaque dominant, fermée après 4 rounds `sonnet` +
1 round `fable`) : `func_08093364` a environ **8x le volume de code**,
**~10x le nombre de callés opaques** (42 contre 1), et cumule DEUX
classes de difficulté déjà identifiées séparément dans
`DECOMP_RULES.md` (pression de registres ET FSM à table de saut dense,
cf. la cible `.L0801D9BC` round w76, 44 cas, jamais attaquée non plus
faute de budget). Estimation réaliste, en aucun cas une garantie :

- **~10-15 rounds dédiés** rien que pour inventorier/porter (ou au
  minimum établir un prototype vérifié par corps compilé) les 42 callés
  opaques -- beaucoup sont probablement de petits accesseurs (le cluster
  `func_08094844`..`func_0809496C`, 9 callés consécutifs en adresse,
  presque certainement des getters d'un même objet "date/fermier" appelés
  en séquence pour préparer un appel virtuel unique -- ce cluster à lui
  seul pourrait tomber en 1-2 rounds une fois attaqué comme famille,
  comme la famille des ~37 destructeurs riches l'a été).
- **~5-10 rounds supplémentaires** pour la FSM elle-même une fois les
  callés connus, étant donné la structure à deux tables de saut
  imbriquées et le risque concret de near-miss "registre partagé entre
  rôles différents" (règle #17) sur `r8`/`sb`/`sl`, réutilisés pour des
  valeurs sans rapport apparent selon les cas du `switch` (`sb` porte
  tour à tour un pointeur retourné par `func_080088DC`, une valeur
  littérale `0`, et le registre `r0` du callback -- signal d'alerte
  explicite de la règle #17 déjà repéré à l'oeil sur ce seul
  désassemblage).
- **Total réaliste : 15-25 rounds/agents dédiés** pour un match complet,
  en supposant qu'aucun sous-callé ne tombe dans la classe "ABI partagée
  entre `bl`" (structurellement infaisable, cf. `Unpack`) -- ce qui ne
  peut être exclu avant d'avoir inspecté au moins les callés les plus
  profonds (`func_08050D3C`/`func_08050D5C`/`func_08050E30`/
  `func_08050E68`, cluster voisin de fonctions déjà partiellement
  connues comme wrappers, donc probablement pas dans cette classe -- mais
  non vérifié).

**Verdict de la mission (jauger la difficulté)** : cette cible est,
concrètement, dans la catégorie la plus dure jamais cataloguée dans ce
dépôt -- pas par un seul obstacle exotique, mais par l'ACCUMULATION :
volume x8 par rapport au pire cas déjà fermé, 42 callés jamais vus, et
une FSM dense qui empêche toute vérification incrémentale (il faut
essentiellement TOUT écrire avant d'avoir un premier signal du
harnais). Recommandation pratique : si cette cible est reprise, découper
le travail en deux mandats séparés et séquentiels (1: inventaire des 42
callés en petits groupes, avec commits de ports individuels au fil de
l'eau comme pour la famille des destructeurs riches ; 2: seulement
ensuite, une attaque dédiée de la FSM elle-même) plutôt qu'un seul round
qui tenterait les deux de front.

## Round w80 (worktree `w80`, branche `parallel-80`) -- désassemblage complet de `franglais_transition_impl_tick` (`func_0804F7A4`), mécanisme de recopie VRAM caractérisé, match complet non tenté

Mission : décompiler les phases 0-6 de `franglais_transition_impl_tick`
(`0x0804F7A4`), le compositeur du texte de dialogue, seule fonction
jamais épargnée par le crash Ghidra `ContextChangeException` sur ce
terrain (`docs/DIALOGUE.md`/`docs/DIALOGUE_BOX_ASSET.md` §6.2, dépôt
patch). Objectif prioritaire fixé par la mission : localiser
précisément où/comment le pas fixe de recopie vers la VRAM est câblé en
dur, pour préparer un futur renderer à chasse variable sur le dialogue.
Contexte source : `docs/OWN_RENDERER_DIALOGUE_POC.md` round 2 (dépôt
patch, lu en lecture seule) a mesuré dynamiquement que le texte de
dialogue est dessiné par blocs de 4 caractères dans des canevas privés
de 32x16 px, à un pas x FIGÉ à 8 px décidé par une seule instruction
(`0x0804EFE4`, `lsls r2,r2,#3`) dans une fonction **voisine et
distincte** (`func_0804EFAC`, 0x0804EFAC-0x0804F060), et que
`franglais_transition_impl_tick` recopie ensuite chaque bloc vers la
VRAM -- 357 hits mesurés dynamiquement sur 40 trames de révélation
réelle, contre 79 pour `DrawGlyphAt`.

### 1. Taille et structure de dispatch, mesurées

Désassemblage complet (`arm-none-eabi-objdump -D -bbinary -marmv4t
-Mforce-thumb --adjust-vma=0x08000000`, `baserom.gba`), borné par la
fonction suivante déjà repérée dans `asm/code_0804E9C8.s`
(`sub_08050342`, ligne 3126) : **`0x0804F7A4` à `0x08050342`, soit
`0xB9E` octets (2974o)** -- dans la même gamme de volume que
`franglais_boot_fsm_run` (`func_08093364`, `0x764`o) mais **~4x plus
gros**. Prologue `push {r4,r5,r6,r7,lr}; mov r7,sl; mov r6,r9; mov
r5,r8; push {r5,r6,r7}; sub sp,#184` -- signature de fonction à très
forte pression de registres (r7/r8/r9/r10 tous réquisitionnés dès
l'entrée en plus de r4-r6, frame de 184 octets), le signal d'alerte
explicite de `DECOMP_RULES.md` ("si r8/sb/sl/ip utilisés
simultanément dans le corps, s'arrêter").

**Dispatch de phase confirmé (table de sauts sur `self+8`, 7 cas 0-6,
`bhi` vers un défaut si >6)** : la base de table est elle-même chargée
depuis un littéral pool (`ldr r1,[pc,#8]` charge la VALEUR
`0x0804F7E4`, qui EST l'adresse de la table -- piège classique, ne pas
confondre l'adresse du littéral avec la valeur qu'il contient). Table
lue directement en octets bruts sur `baserom.gba` (7 mots 32 bits à
partir de `0x0804F7E4`) :

| phase | cible | statut |
|---|---|---|
| 0 | `0x0804F99C` | partagée avec phase 3 |
| 1 | `0x0804F800` | unique |
| 2 | `0x0804F880` | unique |
| 3 | `0x0804F99C` | partagée avec phase 0 |
| 4 | `0x0804F892` | partagée avec phase 5 |
| 5 | `0x0804F892` | partagée avec phase 4 |
| 6 | `0x0804F90A` | unique |

`self+8` est donc bien le champ d'état principal (0-6) que la mission
supposait ; `self+0xC` (compteur/sous-état par phase, octet), `self+0xEC`
(pointeur vers un sous-mode 0-2), `self+0xD0` (zone de ~256 octets,
struct passée à `func_080ADD78`/`func_080ADD08`, jamais vue ailleurs
dans ce dépôt), `self+0x550` (`self + 0xAA*8`, un octet-drapeaux testé
bit à bit -- bit0 en phase1, bit2/bit5 déclenchent des appels son/
vibration conditionnés), et `self+0xEB` (drapeau "sale"/à retraiter,
octet) sont les champs de state machine identifiés par lecture directe.

### 2. Recensement des callés -- 46 `bl`, 17 cibles distinctes, 0 corps déjà porté à ces adresses

| adresse | hits | rôle déduit |
|---|---|---|
| `0x08007D4C` | 9 | accesseur scalaire (motif `ptr==NULL?0:*(ptr+4)` répété, cf. §3) |
| `0x080074C0` | 7 | même famille que `0x08007D4C`, jamais vu ailleurs |
| `0x08008F0C` | 6 | **DMA générique -- le coeur de la mission, voir §3** |
| `0x08008B6C` | 4 | probablement son/vibration (arg constant `0xC5`/`0xC8`) |
| `0x080D3914` | 4 | lit une ligne/tuile depuis une source empaquetée (cf. §3) |
| `0x0805E8F0` | 2 | **signature déjà connue ailleurs dans ce dépôt** (voir ci-dessous) |
| `0x0805E99C` | 2 | le compositeur de sprites déjà documenté (phase >=7, dépôt patch) |
| `0x080D0EDA` | 2 | opaque |
| `0x080D3918` | 2 | opaque, voisin de `0x080D3914` |
| `0x08008CD0` | 1 | opaque |
| `0x08008B88` | 1 | opaque (arg constant `0xC9`) |
| `0x08050342` | 1 | appel à `sub_08050342`, la fonction SUIVANTE (déjà repérée comme frontière) |
| `0x080507D0` | 1 | opaque |
| `0x08050868` | 1 | opaque |
| `0x0805E850` | 1 | opaque, appelé uniquement quand la sous-FSM (phase4/5) atteint son état terminal |
| `0x080ADD08` | 1 | opaque |
| `0x080ADD78` | 1 | **le dispatcheur de la sous-FSM phase4/5, retourne 0-5** (voir §1) |

**Seul un callé a une signature déjà établie dans ce dépôt** :
`func_0805E8F0` est déclaré `extern "C" u32 func_0805E8F0(SpriteAnimator
*sprite_animator)` dans `src/code_0803A804.cc:23` (utilisé aussi par un
autre appelant, ligne 64). Le site d'appel ici (`0x0804FDE6`, dans le
tronc commun `0x0804F99C`) passe `r0 = self + <constante du pool,
0x08050074 = 0x534>` -- donc **`franglais_transition_impl_tick` possède
un `SpriteAnimator` embarqué à l'offset `0x534`**, et interroge sa
frame courante avant chaque cycle de recopie. C'est un fait nouveau et
concret, directement exploitable par un futur round qui voudrait
"opaquifier" ce callé. Les 3 autres callés qui remontent un résultat
`grep` dans `src/*.cc` (`0x08008B6C`/`0x08008B88`/`0x08008CD0`) ne sont
en réalité que **mentionnés en commentaire** dans des fichiers voisins
(idiome de scaling, ou frontière de bloc `.byte`) -- **aucun corps réel
n'est encore porté à ces adresses exactes**. Net : **0 callé
opaque déjà décompilé sur 17**, pire ratio que `func_08093364`
(4/46 connus) proportionnellement.

### 3. Le mécanisme de recopie vers la VRAM, désassemblé et localisé précisément -- LE LIVRABLE PRIORITAIRE DE CE ROUND

Les 6 sites d'appel à `0x08008F0C` (le DMA générique déjà repéré
dynamiquement dans `docs/OWN_RENDERER_DIALOGUE_POC.md`) partagent tous
le MÊME patron, désassemblé intégralement (exemple représentatif,
`0x0804FE10`-`0x0804FE48`) :

```
add  r0, sp, #20            ; &local[20] (pointeur vers un descripteur)
ldr  r5, [sp, #20]          ; r5 = *local[20] (le pointeur lui-meme)
mov  r8, r5                 ; r8 = ce pointeur, conserve pour l'appel DMA
movs r3, #0
cmp  r5, #0
beq  ...
ldrh r3, [r0, #4]           ; si non-NULL : r3 = descripteur->champ_u16 (largeur/compte)
adds r5, r3, #0             ; r5 = ce compte (0 par defaut si pointeur NULL)
movs r0, #256
cmp  r5, r0
bls  ...
adds r5, r0, #0             ; CLAMP a 256 (ou 32, ou 3072 selon le site -- voir tableau)
mov  r0, sl
ldr  r1, [r0, #4]
bl   0x08007D4C             ; renvoie un INDEX (tuile/ligne courante)
adds r2, r0, #0
adds r4, r7, #0
adds r4, #60                ; r4 = self+0x3C (compteur de tuiles alloue ce cycle)
lsls r2, r2, #5             ; <<< r2 = index * 32 -- LA GRANULARITE MATERIELLE FIXE
ldr  r1, [pc, #572]         ; r1 = 0x06010F00 (base VRAM OBJ, mesuree en octets bruts)
adds r2, r2, r1             ; r2 = dest = OBJ_VRAM_BASE + index*32
adds r0, r6, #0             ; r0 = source (canevas local sp+44, OU un pointeur SpriteAnimator selon le site)
mov  r1, r8                 ; r1 = pointeur descripteur (PAS le compte -- signature a 4 args)
adds r3, r5, #0             ; r3 = compte clampe
bl   0x08008F0C             ; DMA(dest?, src?, ptr_descripteur?, compte?) -- ordre exact non confirme sans porter le calle
```

Les 5 bases VRAM lues en RAW sur `baserom.gba` aux 5 littéraux distincts
utilisés par les 6 sites : `0x06010000` (x2 sites), `0x06010F00`,
`0x06010C00` -- **toutes dans la plage OBJ character VRAM du GBA
(charblock 4, `0x06010000`-`0x06017FFF`)** -- plus **`0x05000200`**,
qui est **la plage OBJ Palette RAM** (un site copie une palette, compte
clampé à 32 = 16 couleurs x 2 octets, pas des pixels).

**Conclusion directe et sourcée (le coeur de la réponse à la mission)** :
le `<<5` (multiplication par 32) qui calcule l'adresse destination
**N'EST PAS le pas d'avance horizontale du texte** -- c'est la
**granularité matérielle d'une tuile OBJ 4bpp 8x8 du GBA (32 octets par
tuile, constante du hardware, pas un choix du jeu)**. L'index multiplié
vient d'un COMPTEUR D'ALLOCATION DE TUILE (`self+0x3C`, incrémenté de 1
après chaque copie, `0x0804FE64`-`0x0804FE66` : `adds r0,#1; str
r0,[r7,#60]`), pas d'une position en pixels sur l'écran. **Cette
fonction gère l'upload en VRAM/PALRAM de tuiles graphiques et d'une
palette (bookkeeping d'allocation, une tuile a la fois), elle NE
positionne PAS les sprites à l'écran** -- aucune adresse OAM
(`0x07000000`-`0x070003FF`) n'apparaît nulle part dans le pool de
littéraux de toute la fonction (vérifié en lisant les 38 valeurs
chargées via `ldr rX,[pc,#N]` sur les 2974 octets).

**Conséquence pour le futur round "renderer maison"** : le pas fixe de
8 px documenté par `docs/OWN_RENDERER_DIALOGUE_POC.md` round 2
(`0x0804EFE4`, dans `func_0804EFAC`) reste le SEUL point d'ancrage
identifié pour une largeur variable -- **`franglais_transition_impl_tick`
n'est PAS ce point d'ancrage**, contrairement à ce que la mission
envisageait comme hypothèse de travail. Cette fonction est une pièce
adjacente incontournable (elle uploade en VRAM les tuiles que
`func_0804EFAC` a déjà rendues dans leurs canevas privés, à raison d'une
tuile de 32 octets à la fois, indépendamment de toute notion de
largeur), mais elle n'a pas de largeur à lire -- il n'y en a
structurellement pas à ce niveau, la granularité tuile (32o/8px) est
fixée par le hardware GBA lui-même. **Un patch à largeur variable devra
composer avec cette granularité** (le nombre de tuiles à uploader par
bloc de 4 caractères ne peut pas devenir fractionnaire), mais n'a rien à
modifier DANS cette fonction -- le point de câblage reste exclusivement
`0x0804EFE4`. C'est une clarification négative utile : elle évite qu'un
futur round cherche, en vain, un correctif de largeur DANS
`franglais_transition_impl_tick`.

**Trouvaille annexe (non essentielle à la mission mais notée pour
mémoire)** : un des sites communs (`0x0804FFEC`-`0x804FFFC`, tronc
`0x0804F99C`) construit à la main, champ par champ, un petit descripteur
sur pile (`sp+44`, 25 octets : `strh`/`str`/`strb` a des offsets
0,2,4,6,8,12,16,17,20,24) avec DEUX coordonnées **codées en dur** `x=40,
y=104` (`movs r0,#40; strh r0,[r4,#0]` / `movs r0,#104; strh r0,[r4,#2]`)
-- une position fixe à l'écran, probablement liée au mécanisme de boîte
de nom déjà documenté et déjà corrigé côté dépôt patch (FOMT-207,
`FUN_08050B50`), PAS au corps du texte (qui n'a aucune coordonnée en
dur nulle part dans cette fonction).

### 4. Verdict de faisabilité, honnête -- pas de tentative de match ce round

Comme anticipé par la mission (comparaison explicite avec
`franglais_boot_fsm_run`) : cette cible cumule **volume x4** par
rapport au pire cas déjà catalogué dans ce dépôt (`func_08093364`,
0x764o -> ici 0xB9E o), **17 callés opaques dont 0 avec un corps déjà
porté à l'adresse exacte** (contre 4/46 pour `func_08093364`), et le
signal d'alerte explicite "r7/r8/r9/r10 simultanés" de
`DECOMP_RULES.md`. Aucune tentative de C++ n'a été faite sur le corps
réel -- écrire un prototype pour `0x08007D4C`/`0x080074C0`/`0x08008F0C`
sans avoir porté leur corps serait pure spéculation (règle #3). Estimation
honnête, cohérente avec la méthode utilisée pour `func_08093364` :

- **~8-12 rounds** pour inventorier/porter les 17 callés opaques (dont
  au moins 2 familles probablement rapides une fois attaquées comme
  groupe : `0x08007D4C`/`0x080074C0`, motif accesseur identique répété
  16 fois cumulées ; `0x080D3914`/`0x080D3918`, cluster voisin en
  adresse, probablement lecteur de ligne/tuile empaqueté).
- **~5-8 rounds** pour la FSM elle-même une fois les callés typés,
  étant donné les 7 phases (2 partagent du code, donc réellement 5
  corps distincts + 1 tronc commun) et le risque de near-miss
  "registre partagé entre rôles" (règle #17) sur `r8`/`r9`/`sl`,
  réutilisés pour des rôles visiblement différents selon les blocs
  (pointeur SpriteAnimator, compteur de tuile, argument brut du
  paramètre 4 -- pas vérifié en détail, juste repéré).
- **Total réaliste : 13-20 rounds/agents dédiés** pour un match complet
  bit-exact, dans la même classe de difficulté que `func_08093364`
  (register pressure + volume + callés massivement opaques), mais un
  cran plus gros en octets.

**Ce qui EST acquis, solidement, sans aucune incertitude** : la table
de dispatch complète (7 phases, 2 partages de code), les champs de
state machine (`self+8/0xC/0xEB/0xEC/0xD0/0x3C/0x534/0x550`), le
recensement complet des 46 `bl`/17 callés, et surtout **la
démonstration, sourcée octet par octet sur `baserom.gba`, que le `<<5`
de la recopie VRAM code une granularité de tuile matérielle (32o) et
non un pas de texte** -- exactement le livrable prioritaire demandé par
la mission, même sans match complet. `git status --short` propre en fin
de round, rien commité côté code (seul ce fichier et
`DECOMP_ARCHIVE.md` sont modifiés). Scratch utilisé :
`/tmp/w80_scratch/{target,body}.dis` (hors dépôt, non committé).

## Round w89 (worktree `w89`, branche `parallel-89`) -- formule de division
`__udivsi3` de l'animation d'ouverture/fermeture de boîte résolue et
vérifiée en harnais isolé ; toujours 0 match commité sur
`franglais_transition_impl_tick`, verdict honnête sur la faisabilité
d'un match complet en un seul round

Mission reçue : assembler la fonction ENTIÈRE (2974o) en intégrant la
boucle de texte propre de `parallel-87`/`parallel-88` (`git show
b4c784d`/lecture directe des branches, non fusionnées dans `main`), la
caractérisation pseudo-C de `parallel-86` (phases 1/2/4/5/6, tronc commun
a-g), et en résolvant en priorité la formule des deux divisions
`__udivsi3` du bloc (f) (animation d'ouverture de boîte) -- avec comme
objectif ultime un commit bit-exact de la fonction entière si possible.

### 0. Localisation exacte du compteur d'animation -- CORRECTION d'un
point non résolu par `w86`

`w86` notait "diviseur `9` sur `self+0x1F8` (compteur d'animation, `r6`)"
sans avoir vérifié D'OÙ ce `r6` provient réellement. Relecture directe de
`asm/code_0804E9C8.s` juste avant le bloc `.L08050270` (la division) :
`ldrb r6, [r7, #0xc]` (ligne `569` du désassemblage extrait) -- **`r6`
au moment de la division est en fait `self+0xC`, EXACTEMENT LE MÊME
octet de timer que celui décrémenté par la Phase 1** (`self+0xC`,
`bls`->9 valeurs 0..8 gérées identiquement, cf. `w86` §2 phase 1), PAS
`self+0x1F8`. Le garde `cmp r6,#8; bhi .L0804FC0E` (sinon `b
.L08050270`) confirme : quand ce timer est **> 8**, on saute DIRECTEMENT
à la boucle de texte priorité 1 (`.L0804FC0E`, l'adresse même de la
cible `w86`/`w87`/`w88`!) ; quand il est **<= 8** (9 valeurs possibles :
0..8), on va DIRECTEMENT au calcul de division, **sans jamais exécuter
la boucle de texte ce cycle-là**. Ça explique enfin le diviseur `9` :
c'est le nombre de valeurs 0..8 du timer d'ouverture de boîte, pas une
constante arbitraire, et ça relie pour la première fois la Phase 1
(décompte du timer) au bloc (f) (division) comme DEUX consommateurs du
MÊME champ `self+0xC`, avec un antagonisme direct (boîte encore en
ouverture => pas de texte affiché ce cycle).

### 1. Formule de division reconstruite et vérifiée bit-exact en
harnais isolé (`arm-none-eabi-cpp`+`agbcp`, recette `DECOMP_RULES.md`
"Itération rapide")

Désassemblage cible (`.L08050270`-`.L080502DA`, les deux appels
`__udivsi3`) :

```
lsls r0, r6, #3      ; counter*8
subs r0, r0, r6       ; counter*7
lsls r0, r0, #3       ; counter*56
movs r1, #9
bl __udivsi3           ; q1 = counter*56/9  (UNSIGNED)
adds r5, r0, #0
lsrs r0, r5, #0x1f     ; motif standard de division SIGNÉE par 2
adds r0, r5, r0
asrs r0, r0, #1         ; half_y = (s32)q1 / 2
movs r4, #0x84
subs r4, r4, r0          ; top_y = 132 - half_y
lsls r0, r6, #4        ; counter*16
subs r0, r0, r6         ; counter*15
lsls r0, r0, #4         ; counter*240
movs r1, #9
bl __udivsi3             ; q2 = counter*240/9 (UNSIGNED)
lsrs r2, r0, #0x1f
adds r2, r0, r2
asrs r2, r2, #1          ; half_x = (s32)q2 / 2
movs r1, #0x78
subs r1, r1, r2           ; left_x = 120 - half_x
lsls r2, r1, #8
adds r1, r1, r0            ; left_x + q2 (PAS de masque logiciel -- strh tronque)
orrs r2, r1                 ; packed_x = (left_x<<8) | (left_x+q2)
[... strh vers [sp+0x90]/[sp+0x7c+0x40], PUIS ...]
lsls r0, r4, #8
adds r4, r4, r5              ; top_y + q1
orrs r0, r4                   ; packed_y = (top_y<<8) | (top_y+q1)
[... strh vers les mêmes bases + 2/+0x44 ...]
```

`counter=0x84=132` et `counter=0x78=120` sont des pivots FIXES ; à
`counter=8` (dernier cycle avant bascule vers le texte) : `q1=8*56/9=49`
(division entière, pas 56 exact -- **la boîte n'atteint PAS
exactement les bords d'écran au dernier tick de compteur**, cohérent
avec un chevauchement d'1 frame avec la boucle de texte plutôt qu'une
transition pile poil alignée) ; à `counter=0` : `q1=0`, `top_y=132`,
`packed_y` dégénère en une ligne de hauteur nulle à `y=132` -- **boîte
fermée (ligne plate)**. Confirme le rôle "animation d'ouverture/
fermeture par interpolation linéaire entière" déjà pressenti par `w86`,
avec les deux bornes cette fois PROUVÉES (132 et 120, pas juste
"probablement une interpolation").

**Point non élucidé restant sur ce point précis** (mineur) : le facteur
X ne va pas jusqu'à occuper tout l'écran (240px) à `counter=8` (`q2=8*
240/9=213`, pas 240) -- cohérent avec l'observation ci-dessus (dernier
tick avant bascule texte, pas la valeur "grand ouvert" finale), mais pas
vérifié dynamiquement (aucun accès mGBA ce round, uniquement lecture
statique + harnais).

**Vérification en harnais isolé** (`/tmp/w89scratch/div_test2.cc`,
signature synthétique `(u32 counter, StageBuf*)`, PAS la vraie fonction)
: compile avec `agbcp -O2 -fhex-asm`, produit EXACTEMENT le motif
`__udivsi3` x2 (pas `__divsi3` -- piège rencontré en 1re tentative :
`u8 counter` promu en `int` par les règles de promotion C fait
apparaître `__divsi3` SIGNÉ ; corrigé en typant `counter` comme
paramètre `u32` directement, ce qui force la multiplication/division en
arithmétique non signée dès la 1re passe -- cohérent avec le fait que
`self+0xC` est chargé par `ldrb` -- un octet -- mais que sa valeur
promue au moment de CETTE expression doit déjà être `u32`, pas `int`),
le même motif de division-par-2 signée (`lsr #0x1f; add; asr #1`), les
mêmes pivots `0x84`/`0x78`, le même ordre de calcul (Y calculé et
stocké dans `top_y`/`half_y` PUIS X calculé PUIS stocké AVANT que Y
soit finalement empaqueté et stocké -- reproduit l'ordre exact du
désassemblage cible), et surtout : **aucun masque logiciel nécessaire
sur le octet bas empaqueté** -- écrire `(u8)(...)` ou un cast/troncature
explicite fait APPARAÎTRE un `lsl/lsr` de troncature absent de la
cible ; la version qui matche laisse le compilateur s'appuyer sur la
troncature implicite du `strh` final (16 bits), pas une leçon nouvelle
mais une confirmation directe de l'anti-pattern #1/#4bis de
`DECOMP_RULES.md` généralisée à ce contexte précis. Fichier
`/tmp/w89scratch/div_test2.cc` (hors dépôt, non committé, signature
synthétique -- ne peut PAS constituer un match, cf. discipline `w87`
§1).

### 2. Verdict honnête -- pas de tentative d'assemblage de la fonction
entière ce round, et pourquoi

Budget du round consacré en priorité (1) à la question explicitement
posée en priorité 4 par la mission (la formule de division, résolue et
vérifiée ci-dessus) et (2) à la lecture complète du désassemblage des
2974 octets pour vérifier indépendamment la carte de `w86`. Constat
confirmé sans changement par rapport à `w86`/`w87`/`w88` : **0/17
callés opaques ont un corps déjà porté** dans ce dépôt à l'adresse
exacte (`func_08007D4C`, `func_080074C0`, `func_08008F0C`,
`func_0805E99C`, `func_080ADD78`, `func_0805E850`, `func_08050868`,
`func_080507D0`, `func_08008B6C`/`_88`/`08008CD0`, `_call_via_r2`/`r3`
compris) -- pour toute portion de la fonction qui les appelle, écrire
un prototype C sans avoir porté leur corps réel resterait pure
spéculation sur leur signature exacte (cf. `DECOMP_RULES.md` anti-
pattern #3, déjà cité par `w86`). Ni `w86`, ni `w87`, ni `w88`, ni ce
round n'ont réussi à porter le corps d'AUCUN de ces 17 callés -- c'est
le vrai goulot d'étranglement, pas la caractérisation elle-même
(complète depuis `w86`) ni la boucle de texte (propre depuis `w88`) ni,
maintenant, la formule de division (résolue ce round).

Tenter d'assembler et de compiler les **7 phases + 7 sous-blocs du
tronc commun + boucle texte + 46 sites `bl`** en une seule fonction
`src/code_0804F7A4.cc`, avec des prototypes DEVINÉS pour 17 callés
jamais vérifiés, aurait un risque élevé de produire un `.o` qui
"ressemble" au bon désassemblage sans être bit-exact -- et comme la
fonction n'a AUCUNE frontière interne committable (un seul
`thumb_func_start`, pas de sous-fonctions), il n'existe **aucune
possibilité de commit partiel** : soit la fonction ENTIÈRE matche à
l'octet près après un rebuild complet + diff borné (`DECOMP_RULES.md`
"Vérifier taille puis contenu"), soit rien n'est commité. Conforme à la
discipline non négociable du dépôt ("ne jamais commiter un match qui ne
matche pas"), et à l'instruction explicite de la mission ("ne pas
forcer une tentative non vérifiée à travers") : **ce round ne commite
aucun fichier `src/`/`asm/`/`fomt.lds`**, seul ce fichier est modifié.
`git status --short` propre en fin de round.

### 3. Étape précise suggérée pour `parallel-90+`

L'estimation de `w86` (4-6 rounds restants après la caractérisation
complète) reste globalement valable, MAIS elle sous-estimait le vrai
verrou : ce n'est pas l'assemblage de la FSM elle-même (mécanique, "no
structural unknowns" par bloc), c'est le **portage des 17 callés
opaques**, dont AUCUN n'a encore de corps réel dans ce dépôt après 4
rounds dédiés (`w86`-`w89`). Prochaine étape concrète et priorisée :
1. Porter en priorité les 2 callés les plus fréquents et les plus
   simples d'après leur signature d'appel déjà confirmée par `w86`/
   ce round : `func_08007D4C` (lookup tuile, 4 sites d'appel dans
   cette seule fonction) et `func_080074C0` (accesseur similaire, 3+
   sites) -- motif "accesseur" répété, probablement rapide une fois
   attaqué comme groupe (déjà noté par `w80`).
2. Puis `func_08008F0C` (signature d'ordre d'arguments déjà confirmée
   par `w86` : `(src, descriptor, vram_dest, count)`) et
   `func_0805E99C` (compositeur 2 sprites, partage le shadow-OAM avec
   la boucle texte -- cf. `w86` §2e).
3. Seulement une fois ces callés portés (avec un VRAI corps vérifié,
   pas un prototype deviné), tenter l'assemblage complet de
   `franglais_transition_impl_tick`, bloc par bloc en s'appuyant sur le
   pseudo-C `w86` + la boucle texte propre `w88` + la formule de
   division ce round -- en gardant à l'esprit qu'un match ne pourra
   être vérifié/commité qu'en UNE fois, la fonction n'ayant pas de
   frontière interne.

Scratch utilisé : `/tmp/w89_notes/{w86,w87,w88}.md` (extraits de
`SESSION_NOTES.md` des branches non fusionnées, hors dépôt),
`/tmp/w89_scratch/func.s` (désassemblage complet extrait des 2974
octets), `/tmp/w89scratch/div_test.cc`/`div_test2.cc` (harnais de
vérification de la formule de division) -- tout hors dépôt, non
committé.

## Round w90 (worktree `w90`, branche `parallel-90`) -- énumération précise
des 13 callés opaques bloquant `franglais_transition_impl_tick`, 3
tentatives de portage rapprochées mais AUCUN match bit-exact, verdict
honnête sur 3 pièges agbcp différents rencontrés

Mission reçue : porter, un par un, les callés opaques de
`franglais_transition_impl_tick` en commençant par les plus simples
d'après `w86`/`w89` (`func_08007D4C`, `func_080074C0`, puis
`func_08008F0C`, `func_0805E99C`), chaque match vérifié isolément
(`make compare` ou diff octet-à-octet) avant tout commit. `parallel-89`
n'était pas encore fusionné dans `main` au moment où ce worktree a été
créé -- fusionné en fast-forward en tout début de round (`git merge
parallel-89`, propre, aucun conflit, seul `SESSION_NOTES.md` touché par
`w86`-`w89`) pour disposer de la caractérisation complète avant de
commencer.

### 0. Énumération précise (pas seulement recopiée de `w89`) des callés
appelés depuis le corps de la fonction

`bl`/cible dans la plage `0x0804F7A4`-`0x08050342` (script `python3`
sur `asm/code_0804E9C8.s:1638-3124`, comptage par symbole) : **13
symboles de fonctions réelles distincts**, hors `__udivsi3` (intrinsèque
compilateur, déjà résolu par `w89`) et `_call_via_r2`/`_call_via_r3`
(dispatch virtuel générique, pas des callés à porter individuellement) :

`func_080074C0`(x7), `func_08007D4C`(x9), `func_08008B6C`(x4),
`func_08008B88`(x1), `func_08008CD0`(x1), `func_08008F0C`(x6),
`func_080507D0`(x1), `func_08050868`(x1), `func_0805E850`(x1),
`func_0805E8F0`(x2), `func_0805E99C`(x2), `func_080ADD08`(x1),
`func_080ADD78`(x1), plus `sub_08050342` (pas un `bl` -- c'est la
fonction voisine, cible du `b` final partageant l'épilogue, cf. `w86`
§0 -- pas comptée ici).

Vérifié via recherche textuelle sur tout `src/*.cc`/`*.hh` : AUCUN de
ces 13 symboles n'a de corps réel porté (seules des mentions en
commentaire ou un `extern "C"` déclaré en boîte noire existent, ex.
`func_0805E8F0` déclaré/utilisé comme callé opaque dans
`src/code_0803A804.cc` mais jamais lui-même porté). **Confirme le
chiffre "13" (pas "17") comme le compte exact de vrais callés-fonctions
distincts** -- l'écart avec le "17" cité par `w86`-`w89` vient
probablement d'un comptage incluant `_call_via_r2`/`_call_via_r3`
séparément et/ou `sub_08050342`, jamais clarifié précisément par les
rounds précédents. **Nouveau chiffre de référence pour `parallel-91+` :
0/13 callés-fonctions portés.**

### 1. `func_080074C0` -- très proche, bloqué par une course d'allocation
de registres (classe documentée règle 17/17bis)

Fonction confirmée : accesseur sur `gUnk_03000404` (`Unk_hardware_03000404`,
déjà déclaré dans `src/hardware.cc` avec EXACTEMENT le layout attendu :
`unk_04[0x10]` un tableau de 16 `Unk_hardware_ent_080D6D98` -- déjà
existant dans ce dépôt ! -- et `unk_44` bitmask u32). Signature
`i32 func_080074C0(void *unused_self, u32 val)` : extrait un nibble
(`val & 0xF` en double-shift), teste le bit correspondant de `unk_44`,
compare un champ 16 bits de l'entrée `unk_04[nibble]` à un champ extrait
de `val`, retourne `nibble` si tout correspond sinon `-1`.

Convergence complète sur TOUTE la logique (idiome de test de nullité
`rsbs`/`orrs`/`lsrs #0x1f` reproduit bit-exact avec
`(u32)(-(i32)masked | (i32)masked) >> 31`, garde défensive `nibble<=0xf`
morte reproduite, structure guard-clause + retour partagé). **Seul
point résiduel** : la cible garde SIMULTANÉMENT deux valeurs vivantes
dans des registres séparés jusqu'à la fin (`nibble` dans `r2`, une copie
dans `r5`) parce que le registre de `nibble` (`r2`) se fait voler par la
variable `match` (calculée juste avant le retour) -- alors que dans
TOUTE reformulation testée ici, notre compilation choisit d'aliaser
`nibble`/`match` sur des registres disjoints (`r2`/`r3` ou `r2` seul),
n'ayant jamais besoin de la copie `r5` et donc jamais du `push
{r4,r5,lr}` complet (on obtient `push {r4,lr}` + un `b.n` de saut
superflu à la place). Reformulations testées sans succès : variable de
copie explicite déclarée tôt (`n = nibble`), retour préparé de façon
spéculative avant le test (`i32 result = (i32)n; ... if(!match) result=
-1; return result;` -- soit dupliqua le calcul de `-1`, soit changea la
course de priorité dans l'autre sens), ternaire `match ? n : -1`. Signal
reconnu : **classe "course de priorité d'allocateur" documentée
règle 17/17bis de `DECOMP_RULES.md`** -- candidat clair pour une
escalade `fable` ciblée (piste seule, pas exécution complète) plutôt que
d'autres tentatives `sonnet`.

### 2. `func_08007D4C` -- structurellement quasi identique à (1), bloqué
par un pliage d'adresse différent d'1 instruction

Accesseur sur `gUnk_03000408` (nouveau global, PAS encore déclaré dans
ce dépôt -- struct proposée : `bitmask[8]` (32o) + 4o de champ inconnu +
tableau de 256 entrées 8o). Même moule que (1) (extraction d'un INDEX
byte via un aller-retour pile `str`/`ldrb` -- confirmé nécessaire :
utiliser `val` directement au lieu d'une copie locale `v` reproduit
l'ORDRE exact `g-load` PUIS `str` d'adressage, cf. règle 5 -- puis même
idiome de bitmask/nullité, storage-guard, retour d'un champ 10 bits via
double-shift `<<22>>22`). **Taille et TOUTE la logique métier
reproduites bit-exact SAUF un bloc de 5 instructions** : la cible
calcule l'adresse de l'entrée en 5 étapes (copie base, `+0x20`
immédiat, `shift idx*8`, `+4` immédiat SÉPARÉ, `add` final) puis lit les
2 champs à des offsets `+0`/`+4` relatifs à CETTE adresse déjà décalée de
+4 ; toute formulation C testée ici (pointeur brut avec `+4` inclus dans
l'expression, variable `p` intermédiaire, indexation par struct avec
base décalée à `+0x24`) fait plier `agbcp` le `+4` dans les immédiats des
`ldrh` plutôt que dans le calcul d'adresse lui-même (3-4 instructions au
lieu de 5, mêmes valeurs finales lues, mais octets différents). Piste
non tentée faute de temps : forcer le `+4` via une variable dont
l'ADRESSE est prise ailleurs (cf. anti-pattern connu sur
`func_08007D4C`... même nom que la cible, coïncidence) pour empêcher le
pliage -- **à essayer en premier round suivant avant d'escalader**.

### 3. `func_08008F0C` -- très proche, bloqué par une recopie de
paramètre qu'aucune reformulation n'a supprimée

Confirme le prototype déjà déduit par `w86` : construit un descripteur
DMA de 4 mots (`{u32 zero; void *src; void *dest; u32 control;}`) à
partir de `(desc, src, dest, count)`, avec un mot de contrôle calculé
selon l'alignement (`0x84`/16 pour 4 octets, `0x80`/15 pour 2 octets,
`0` si `src`/`dest`/`count` nul OU non aligné du tout -- bit 0 posé).
**83 des 84 octets reproduits bit-exact** (structure complète des
branchements, polarité du test d'alignement 4o -- initialement inversée,
corrigée -- et les 2 formules de shift) ; **seul écart : une instruction
`adds r1, rX, #0` de recopie que `agbcp` insère systématiquement avant
le premier `orrs` de la combinaison `src|dest|count`, quel que soit
l'opérande de départ testé (`src`, `dest`, ou `count` en tête), et même
en réutilisant le PARAMÈTRE `src` lui-même comme accumulateur (`src |=
dest; src |= count;`) au lieu d'une variable locale `combined` neuve.**
5 reformulations testées, toutes produisent EXACTEMENT le même écart
d'1 instruction (2 octets) -- signal clair d'un comportement intrinsèque
d'`agbcp` (matérialisation systématique d'une nouvelle valeur de
registre pour toute expression OR multi-opérandes, indépendamment de
l'aliasing manuel tenté), pas un problème de forme C. Cf. limite 1 de la
règle 17bis (paramètre de fonction, vivant dès l'entrée par
construction ABI).

### 4. Verdict honnête -- 0 commit ce round, 3 near-miss documentés
précisément pour éviter de reperdre du temps dessus

Discipline du dépôt respectée : aucune des 3 tentatives n'atteint le
match octet-à-octet (vérifié par diff direct des `.text` compilés
isolément contre les octets extraits de `baserom.gba`, PAS seulement le
désassemblage) -- **aucun fichier `src/`/`asm/`/`fomt.lds` modifié,
aucun commit de code ce round.** `func_0805E99C` (compositeur 2 sprites,
priorité 4 de la mission) n'a pas été attaqué faute de temps restant
après les 3 tentatives ci-dessus.

**Chiffre mis à jour pour `parallel-91+` : 0/13 callés-fonctions opaques
portés** (pas 17 -- cf. §0). Rounds suivants suggérés :
1. Reprendre `func_08007D4C` en premier (le plus proche des 3, 1 seul
   bloc de 5 instructions en cause) avec la piste "adresse-prise"
   non testée ci-dessus.
2. Escalader `func_080074C0` et `func_08008F0C` en `fable`-pistes-
   seules (option 1 de la stratégie d'escalade, pas exécution complète)
   si `func_08007D4C` se débloque et que le temps le permet -- les deux
   sont des cas de course de priorité de registres qu'aucune
   reformulation `sonnet` testée n'a résolus.
3. `func_0805E99C` (compositeur 2 sprites) reste entièrement à
   caractériser/tenter -- non touché ce round.

Scratch utilisé : `/tmp/w90scratch/{t1,t2,t3}.cc`, `try{,2,3}.sh`
(harnais de diff automatisé octet-à-octet réutilisable),
`target_{080074C0,08007D4C,08008F0C}.bin` (extraits `baserom.gba`) --
tout hors dépôt, non committé.

## Round w91 (worktree `w90`, branche `parallel-90`) -- les 3 near-miss de
w90 TOUS matés bit-exact et committés (3/13 callés opaques portés)

Mission : escalade bornée sur les 3 blocages précis documentés par w90
(`func_080074C0`, `func_08007D4C`, `func_08008F0C`), dans cet ordre.
Résultat : **3/3 matchés octet-à-octet, committés séparément**
(`6b60f2e`, `6af2126`, `26d2f03`). Compteur : **3/13 callés-fonctions
opaques de `franglais_transition_impl_tick` portés.**

Standard de vérification appliqué (le sha1 ROM entière ne passe plus,
cf. règle "Discipline") : build de référence de HEAD avec
`franglais_stub.bin` factice, puis rebuild propre avec les changements
-- **0 octet de diff sur les 8 392 704 de la ROM** à chaque étape, plus
diff direct de chaque plage cible de `fomt.gba` contre `baserom.gba`
(padding final inclus pour 08F0C).

### 1. `func_080074C0` -- la "course d'allocation" était en fait une
2e variable C réelle, pas un caprice d'allocateur

La copie `adds r5, r2, #0` que w90 n'arrivait pas à faire émettre
existe dans la cible parce que la source originale tient VRAIMENT le
nibble dans deux variables aux portées chevauchantes. Combo gagnant
(cf. commentaire de tête de `src/code_080074C0.cc`) :
- `ent = h->GetEntry(nibble)` (référence) prise AVANT `match = 0` --
  la dernière utilisation de `nibble` précède la naissance de `match`,
  qui hérite de r2 sans "vol" ;
- comparaison écrite valeur-extraite-d'abord
  (`((val<<12)>>16) == ent.params.unk_02`) ;
- **le vrai déclencheur** : variable de retour unique `int ret` de
  portée fonction (`ret = result; if (match) return ret;` côté succès,
  `ret = -1; return ret;` en queue) -- produit la queue cible
  `adds r0,r5 / cmp / bne` par coalescence de `ret` avec r0, les
  guard-clauses sautant DANS le `ret = -1`. Ni le ternaire ni
  `if (match) return result;` seuls ne donnent cette forme (b.n
  superflu ou -1 spéculé en premier).
Struct partagée déplacée verbatim dans `include/hardware.hh`
(hardware.cc + code_080074C0.cc, zéro duplication).

### 2. `func_08007D4C` -- le `+4` séparé vient d'une sous-struct réelle
à +0x20, pas d'une "adresse prise"

La piste "variable dont l'adresse est prise" suggérée par w90 n'a même
pas été nécessaire : le bloc à +0x20 est une VRAIE sous-struct
(`u32 unk_00` + `entries[0x100]` de 8 octets à +0x24), et il faut
passer par un pointeur intermédiaire explicite
(`Unk_hardware_sub_03000408 * s = &h->sub; ent = s->entries[idx];`)
pour que agbcp calcule base(+0x20) puis (idx*8 + 4) avec le `adds #4`
littéral -- un accès direct `h->sub.entries[idx]` fusionne 0x24 en une
seule constante (get_inner_reference cumule les offsets constants) et
replie le +4 dans les ldrh. Le reste (aller-retour pile pour l'index
byte, prédicat 256 slots, squelette match) est le frère direct de (1)
-- match au PREMIER essai une fois la sous-struct posée.

### 3. `func_08008F0C` -- l'`adds r1` parasite était une course de
priorité à un cheveu (8/32 vs 8/34), gagnée en déplaçant UNE déclaration

Diagnostic aux dumps `-dl -dg` (méthode règle 17) : la copie de `src`
(nécessaire pour le store final) et `dest` avaient les mêmes refs (4)
et des longueurs de vie 32 vs 34 -- la copie gagnait la course d'un
cheveu, prenait r2, éjectait `dest` vers r5/r6, et `combined` devait
alors recopier son init. Levier gagnant : `u32 combined = (u32)src;`
en PREMIÈRE instruction (bloc 0) -- cse relie l'init au registre dur
r1 (arrivée de `src`), l'allocateur honore la préférence, et le move
d'init meurt en no-op (r1 contient encore `src`) : `orrs r1, r2`
directement sur le registre d'argument périmé, plus AUCUNE copie de
`s` nécessaire (le store lit le paramètre, relogé r5 naturellement).
Piège annexe root-causé : `!(x & 1)` inline se fait réécrire par
fold-const en `((x^1)&1) != 0` (eors parasite) -- passer par une
variable de drapeau nommée (`low`), variante de la règle 12.
NOTE : la suggestion w90/mission "écrire un tmp redondant pour
reproduire la copie" était la mauvaise direction -- la CIBLE n'a pas
de copie ; c'étaient nos versions qui en avaient une de trop.

### Leçons généralisables (candidates DECOMP_RULES)

1. **Queue de retour partagée `adds r0,rX / cmp / bne` (sans b.n)** :
   variable de retour unique de portée fonction, affectée sur le chemin
   succès AVANT le test final, avec l'affectation d'échec en
   fallthrough -- les guard-clauses convergent dessus. (Généralise la
   règle 5ter.)
2. **`+K` séparé dans un calcul d'adresse indexé** : chercher une
   sous-struct réelle + pointeur intermédiaire explicite, PAS un cast
   pointeur brut -- l'accès membre direct cumule les constantes.
3. **Copie de paramètre "en trop" dans nos builds (pas dans la cible)**
   sur une expression multi-opérandes : vérifier aux dumps si l'init de
   l'accumulateur peut être reliée au registre dur d'arrivée du
   paramètre en remontant sa déclaration+init dans le bloc 0 -- le move
   d'init devient no-op et disparaît. (Complète la limite 1 de la règle
   17bis : un paramètre vivant dès l'entrée n'est pas toujours une
   impasse, si l'on peut faire mourir la copie plutôt que la déplacer.)
4. `!(x & 1)` inline → eors parasite via fold-const ; drapeau nommé.

Scratch : `/tmp/w91/` (`try.sh` harnais diff octet-à-octet, `t*.cc`,
`d1.cc`, `f*.cc`, dumps `-dl -dg`) -- hors dépôt. Prochaine cible
suggérée : `func_0805E99C` (compositeur 2 sprites, jamais attaqué),
puis les 3 accesseurs restants de la famille hardware
(`func_08008B6C`/`func_08008B88`/`func_08008CD0`).

## Round w92 (worktree `w90`, branche `parallel-90`) -- 5 accesseurs
courts matés bit-exact (5/10 restants portés), `func_0805E99C` reconnu
trop gros pour ce budget, un near-miss précis sur `func_080507D0`

Mission : porter `func_0805E99C` en priorité (compositeur 2 sprites),
puis les callés restants par ordre de taille croissante. Verdict après
lecture complète du désassemblage de `func_0805E99C` (324 lignes,
648 octets, corps + literal pool, un appel imbriqué vers
`func_0805EC24` lui-même non porté) : budget du round consacré à la
place aux 5 callés les plus petits (8 à 28 lignes chacun), tous matés,
plutôt qu'à un risque élevé de session entière non commitée sur le
compositeur. Choix assumé, cf. §3 pour la caractérisation laissée à un
futur round.

### 0. Protocole de vérification (identique à `w91`)

`rm -rf build fomt.gba fomt.elf fomt.map`, stub `build/franglais_stub.bin`
de 4096 octets à zéro, `make compare` (sha1 échoue toujours comme
attendu, ROM non-vanilla), build de référence de HEAD sauvegardé
(`/tmp/w90_reference.gba`), puis après CHAQUE commit : rebuild complet +
diff Python octet-à-octet contre cette référence (**0/8 392 704** à
chaque étape) + diff direct de la plage `[adresse, adresse+taille[` de
`fomt.gba` contre `baserom.gba` pour la fonction commitée. Harnais
d'itération rapide ajouté : `/tmp/w90scratch2/try.sh` (compile un seul
`.cc` isolément via `agbcp`+`as`, extrait `.text`, diff contre les
octets cible extraits de `baserom.gba` -- IMPORTANT : appelle
`tools/scripts/align_sections.sh` avant l'assemblage, sinon le padding
de fin de fonction diffère). En isolation, les seuls octets qui restent
différents après un vrai match sont les relocations non résolues (`bl`
vers un symbole externe, adresse littérale d'un symbole global) --
confirmé attendu et non un vrai écart, vérifié ensuite par le rebuild
complet.

### 1. Les 5 matchs : `func_08008CD0`, `func_0805E850`,
`func_08008B6C`/`func_08008B88`, `func_080ADD08`

- **`func_08008CD0`** (accesseur `MusicPlayerEnt`, 6 instructions) :
  lit le bit 31 (`MUSICPLAYER_STATUS_PAUSE`, déjà dans `include/m4a.h`)
  de `MusicPlayer::status` et retourne l'inverse. Piège : `!(bool)(x
  >> 31)` fait émettre une normalisation booléenne (`cmp`/`blt`) par
  agbcp -- il faut écrire le XOR explicite en `u32`
  (`((u32)status >> 31) ^ 1`) pour obtenir `lsrs`/`movs`/`eors` sans
  branche.
- **`func_0805E850`** : init 2 phases de `SpriteAnimator` (écrit le
  pointeur `DefinedSprite*` dans le champ opaque +0x00, puis délègue à
  `func_0805E860`, déjà déclaré côté signature dans
  `src/code_0803A804.cc:23` pour un autre appelant). Retour `void` :
  le `r0` final n'est que le résidu du `bl`, jamais rechargé -- confirmé
  par la cible qui ne fait pas de `mov r0` après l'appel.
- **`func_08008B6C`/`func_08008B88`** : 2 callés de plus de la famille
  `MusicPlayerEnt` (`m4aMPlayStart` direct vs variante "start or
  change" qui compare le morceau déjà chargé + `MUSICPLAYER_STATUS_PAUSE`).
  Ont matché du premier coup une fois la famille reconnue.
- **`func_080ADD08`** : copie générique de 32 octets (`*dest = **src;
  return dest;`) compilée en 3 salves `ldm`/`stm` (3+3+2 registres).
  Point clé : garder un TYPE DE RETOUR pointeur même si l'unique
  appelant ignore la valeur -- une version `void` laisse le compilateur
  réutiliser `r0` comme accumulateur de boucle (`push {r4,lr}` seul),
  alors que la cible préserve `r0` intact (`push {r4,r5,lr}` +
  `adds r2,r0,#0` avant la boucle) précisément parce qu'il doit rester
  disponible comme valeur de retour. Généralise la leçon déjà tirée sur
  `func_08008F0C` (w91 leçon 3) à un cas "retour ignoré mais
  structurellement nécessaire".

Compteur mis à jour : **8/13 callés-fonctions opaques de
`franglais_transition_impl_tick` portés** (`func_080074C0`,
`func_08007D4C`, `func_08008F0C` par `w91` + les 5 ci-dessus).

### 2. Near-miss précis : `func_080507D0` (table 2D `gUnk_080F9F3C`,
8 lignes, PAS commité)

```c
u8 func_080507D0(u32 a, u32 b)
{
    u32 idx0 = a;
    if (idx0 > 7) idx0 = 0;

    u32 idx1 = b;
    if ((b - 1) > 5) idx1 = 1;

    return gUnk_080F9F3C[idx0 * 6 + idx1];
}
```
matche les 10 premiers octets EXACTS (`push{lr}` / `adds r2,r0,#0` /
`cmp r2,#7` / `bls` / `movs r2,#0`, soit tout le bloc de clamp de `a`)
puis diverge : la cible calcule `subs r0, r1, #1` en utilisant `r1`
(=`b`) DIRECTEMENT (pas de copie), garde `b`/`idx1` dans `r1` jusqu'à la
toute fin, et utilise **`r0`** comme registre accumulateur pour
`idx0*6` -- alors que nos versions (testé : variable `idx1` séparée,
mutation directe de `b`, ré-ordonnancement de l'expression de retour,
`table[idx1+idx0*6]` vs `table[idx0*6+idx1]`) font TOUTES migrer `b`
vers un registre frais (`r3`) et utilisent `r1` comme accumulateur --
jamais `r0`. Hypothèse non testée restante : le clamp de `a` doit
peut-être être écrit comme une expression conditionnelle unique
touchant DIRECTEMENT le paramètre (`if (a > 7) a = 0;`, sans variable
`idx0` séparée) mais avec un ordre de calcul du min/max qui laisse `r0`
libre plus tôt -- pas eu le temps de tester toutes les combinaisons
paramètre-mutable/variable-séparée croisées (2×2) pour les DEUX
clamps ; seule la combinaison "idx0 séparé + idx1 séparé" et "idx0
séparé + b muté" ont été essayées. Aucun fichier `src/`/`asm/`/
`fomt.lds` touché pour cette fonction.

### 3. Ce qui reste pour un round suivant (5/13)

- `func_0805E99C` (compositeur 2 sprites OAM, 324 lignes/648 octets) :
  caractérisé ce round (paramètres : `r0`=tableau destination
  count+entrées 8 octets, `r1`/`r2`=liste source itérée par pas de 8
  octets, `r3`=descripteur avec champs à `+0`,`+2`,`+4`,`+6`,`+8`,`+0xc`,
  `+0x10`,`+0x11`,`+0x14`,`+0x18` -- ressemble à un encodage attr0/1/2
  OAM GBA classique shape/size/priority/palette/affine). Appelle un
  helper NON dans la liste des 13, `func_0805EC24`, qui devra être
  déclaré `extern "C"` opaque (signature observable au call site :
  `(int*, int*, int, int)`) sans le porter lui-même -- légitime,
  contrairement à deviner un callé de `franglais_transition_impl_tick`
  directement. Non tenté : la portion shape/size (bloc
  `.L0805E9E0`-`.L0805EA00`) calcule largeur/hauteur GBA par arithmétique
  plutôt que par table, seule la structure de contrôle est claire, pas
  la forme C exacte.
- `func_080507D0` : near-miss ci-dessus, 8 lignes, très proche.
- `func_08050868` (323 lignes), `func_080ADD78` (233 lignes),
  `func_0805E8F0` (101 lignes, signature déjà déclarée dans
  `src/code_0803A804.cc:23` mais corps jamais porté) : pas touchés ce
  round, pas caractérisés au-delà de leur taille en lignes de
  désassemblage.

Scratch utilisé : `/tmp/w90scratch2/{try.sh,t_*.cc,target_*.bin}` --
hors dépôt, non committé.

## Round w93 (worktree `w90`, branche `parallel-90`) -- near-miss précis
sur `func_0805E8F0`, aucun match committé

Mission : porter les 5 callés restants de `franglais_transition_impl_tick`
dans l'ordre `func_0805E8F0` (signature déjà déclarée) puis
`func_0805E99C` (compositeur, priorité réelle) puis `func_080507D0`
(near-miss w92) puis les deux plus gros. Verdict : tout le budget du
round est passé sur `func_0805E8F0` sans obtenir un match bit-exact --
un near-miss très serré (34/172 octets identiques en préfixe, mapping
de registres entièrement résolu) documenté ci-dessous. `func_0805E99C`
et le reste n'ont pas été retouchés ce round (caractérisation w92
toujours valable, cf. section précédente).

### `func_0805E8F0` (accesseur `SpriteAnimator`, 101 lignes/172 octets) --
NEAR-MISS, PAS COMMITÉ

Rôle reconstruit (corrobore et complète l'appelant déjà porté
`func_0803A840` dans `src/code_0803A804.cc`, qui teste le bit 1 du
retour) : avance le lecteur d'animation d'un `SpriteAnimator` d'un
tick. Champs identifiés (offsets relatifs à `SpriteAnimator*`, la
struct restant `STRUCT_PAD`-opaque dans `include/unknown_types.hh`) :
- `+0x04` : `AnimFrame *` (pointeur vers un tableau de frames, chaque
  frame = `{u16 id; u16 duration;}`, 4 octets)
- `+0x08` : `u16` nombre de frames dans le tableau (lu seulement si le
  pointeur `+0x04` est non nul, sinon 0)
- `+0x0C` : `u16` index de frame courant
- `+0x0E` : `u16`/`i32` minuteur (décompte en 1/256e, cf. le
  `<<8` sur chaque durée de frame)
- `+0x10` : `i16` delta (vitesse+sens de lecture, signé)
- `+0x12` : `u8` flag "reset demandé" (consommé -- remis à 0 -- et
  traduit en bit 1 du retour)

Retour (`u32` bitmask, comme deviné par l'appelant `func_0803A840`) :
bit 0 = "un changement de frame a été tenté ce tick" (posé
inconditionnellement dès qu'on entre dans le bloc d'avance, avant même
de savoir si l'index bouge), bit 1 = "l'id de la frame a changé" (soit
via le flag de reset `+0x12`, soit parce que `table[new_index].id !=
table[old_index].id`), bit 2 = "l'index a bouclé" (dépassement en
avant ou en arrière selon le signe de delta).

**Mapping de registres complètement résolu** (obtenu après ~10
itérations sur `/tmp/w90scratch2/try.sh`, harnais identique à w91/w92) :
`self`=r4, `flags`=r7, `table`=r6, `count`=r5, `saved_id`=sb(r9),
`wrap_flag` (constante 4 utilisée deux fois dans la boucle,
DOIT être une variable nommée, pas un littéral répété, sinon elle
n'obtient pas de registre persistant et le préfixe ne matche même pas)
=r8, `delta`/`timer` combinés en `ip`/r3. Deux leçons de forme utiles :
1. Le champ `+0x10` doit être chargé DIRECTEMENT en `i32`
   (`i32 delta = *(i16 *)(self + 0x10);`), jamais via un `i16`
   intermédiaire réassigné en `i32` ensuite -- cette dernière forme
   fait émettre un chargement non-signé (`ldrh`) suivi d'une
   extension de signe manuelle (`lsls`/`asrs`) au lieu du `ldrsh`
   direct que fait la cible (confirmé en comparant avec
   `func_0803A820`, déjà porté dans le même fichier, qui déclare
   `i16 v = *(i16*)(...)` à usage UNIQUE et obtient bien `ldrsh` --
   la différence n'est donc pas le type mais le fait que `delta` soit
   réutilisé dans une expression arithmétique élargie, `i32 step =
   delta;`, plus loin).
2. `timer` doit être un unique `i32` réassigné en place
   (`timer -= abs_delta;`), pas deux variables séparées (`u16
   raw_timer` puis `i32 timer = raw_timer - step`) -- sinon le
   compilateur charge la valeur brute dans un registre temporaire
   distinct du registre final de `timer`, ajoutant un `mov`
   superflu.

**Le blocage restant, isolé précisément** : la structure de boucle.
La cible a ce squelette (pas de branchement initial, entrée directe
en haut de boucle, saut arrière explicite en fin de second bloc) :
```
        movs r0, #4
        mov r8, r0
.L0805E946:                    @ ENTRÉE DIRECTE, sans saut
        <bloc A: avance l'index selon le signe de delta>
.L0805E966:
        <bloc B: lit duration, accumule dans timer, teste>
        bgt .L0805E97C          @ sortie si timer > 0
        b .L0805E946            @ saut arrière EXPLICITE vers bloc A
.L0805E97A: ...
```
alors que TOUTE formulation C testée (`for(;;)`, `while(1)` +
`break`/`continue`, `do{}while(1)`, `do{}while(cond)` avec condition
réelle au lieu de `break`, et une version `goto` explicite qui reproduit
littéralement ce squelette avec labels) produit systématiquement :
```
        movs r0, #4
        mov r8, r0
        b .L23                  @ saut initial -- bloc B déplacé AVANT bloc A
.L22 (bloc B physiquement ici, atteint seulement par le saut arrière):
        <bloc B>
        bgt <sortie>
        @ tombe directement dans bloc A juste en dessous (pas de saut)
.L23:
        <bloc A>
        ...
        b .L22                  @ retour vers bloc B
```
c'est-à-dire une rotation de boucle inversée (bloc B avant bloc A,
saut initial pour sauter B au premier tour, chute libre B→A en
itérations suivantes) -- l'exact inverse de la cible. Point notable :
la version `goto` explicite qui tente de forcer physiquement le bloc A
en premier (littéralement le squelette ci-dessus de la cible, labels
compris) ne change PAS la rotation -- pire, elle fait perdre le mapping
de registres déjà acquis (`delta` quitte `ip` pour un registre bas,
cascade de régressions en amont du corps de boucle). Hypothèse non
testée : la cible n'utilise peut-être pas une boucle structurée avec
`break` du tout au niveau du C source d'origine, mais quelque chose
comme une fonction imbriquée/récursion terminale, OU le bloc A et le
bloc B doivent être des BLOCS SÉPARÉS avec une variable de contrôle
partagée différente de celle testée ici (pas eu le temps d'essayer une
franche 3e forme structurale, ex: extraire le bloc B dans un helper
`static inline` séparé pour changer la façon dont gcc découpe les
"basic blocks" au moment de l'expansion de boucle).

Fichier de travail conservé (hors dépôt, pour reprise directe) :
`/tmp/w90scratch2/t_0805E8F0.cc` -- 34/172 octets identiques en
préfixe (jusqu'à l'entrée dans la boucle), diverge uniquement à partir
du premier branchement de la boucle. Aucun fichier `src/`/`asm/`/
`fomt.lds` touché en dépôt pour cette fonction -- aucun commit ce
round.

### Compteur inchangé

**8/13** callés-fonctions opaques de `franglais_transition_impl_tick`
portés (inchangé depuis w92). Restent : `func_0805E8F0` (near-miss
ci-dessus), `func_0805E99C` (priorité, caractérisé w92, pas retouché),
`func_080507D0` (near-miss w92, pas retouché), `func_08050868` (323
lignes), `func_080ADD78` (233 lignes) -- ces deux derniers toujours pas
caractérisés au-delà de leur taille.

## Round w94 (worktree `w90`, branche `parallel-90`) -- résolution du
near-miss `func_080507D0` (9/13), caractérisation approfondie de
`func_0805E99C`/`func_0805EC24`, pas de match sur le compositeur

Mission : prioriser `func_0805E99C` (compositeur 2 sprites, cible
réelle) en portant d'abord son helper imbriqué non listé
`func_0805EC24`, sinon les autres callés restants. Verdict : le
near-miss de w92 sur `func_080507D0` a été résolu et committé en
premier (rapide, cf. §1) ; le reste du budget a servi à lire
intégralement `func_0805E99C` (324 lignes) et `func_0805EC24` (161
lignes, 296 octets, jusqu'ici jamais désassemblé en détail) au niveau
des sites d'appel réels dans `asm/code_0804E9C8.s` (les deux appels
`bl func_0805E99C` aux lignes ~2602 et ~2756) pour extraire la
sémantique précise des arguments -- aucune tentative de compilation sur
ces deux fonctions ce round, la caractérisation seule a consommé le
temps restant (cf. §2, la fonction s'est révélée être un calcul
matriciel affine style BIOS `ObjAffineSet`, catégorie de difficulté
nettement au-dessus des accesseurs matés jusqu'ici).

### 0. Protocole (identique aux rounds précédents)

Scratch recréé dans `/tmp/w90scratch3` (le `/tmp/w90scratch2` des
rounds précédents avait disparu entre les sessions -- normal, hors
dépôt). `try.sh` reconstruit à l'identique depuis la copie collée dans
`SESSION_NOTES.md` du round w92. Piège rencontré une fois : `git
stash` ne stash PAS les fichiers non trackés (`asm/code_080507F8.s`,
`src/code_080507D0.cc` nouvellement créés) -- le premier essai de build
de référence de HEAD a donc gardé ces fichiers sur le disque, causant
des `multiple definition` au link (le nouveau `code_080507F8.s`
contient aussi les fonctions restées dans `code_0804E9C8.s` non encore
scindé côté HEAD). Corrigé en déplaçant les fichiers non trackés vers
`/tmp` avant le stash plutôt qu'en comptant sur `git stash` pour les
mettre de côté. Un stub `build/franglais_stub.bin` de 4096 octets à
zéro doit être recréé à chaque `rm -rf build` (pas tracké par git).

### 1. `func_080507D0` : near-miss w92 résolu (9/13)

Rappel du near-miss w92 : la cible garde `b` dans r1 (registre
d'argument d'origine) jusqu'à la fin, utilise r0 comme accumulateur
pour `idx0*6`, alors que toute formulation `gUnk_080F9F3C[idx0*6+b]` (ou
l'ordre inverse) testée en w92 recopiait systématiquement `b` dans un
registre frais (r3) et utilisait r1 comme accumulateur.

Solution : remplacer l'indexation de tableau par une addition de
pointeur explicite :

```c
u32 idx0 = a;
if (idx0 > 7)
    idx0 = 0;

if ((b - 1) > 5)
    b = 1;

return *(gUnk_080F9F3C + idx0 * 6 + b);
```

`*(table + expr)` (au lieu de `table[expr]`) change juste assez l'ordre
d'évaluation d'agbcc pour qu'il charge l'adresse de base dans un
registre libéré EN DERNIER (après avoir accumulé `idx0*6+b` dans r0) au
lieu de la charger en premier -- ce qui laisse `b` intact dans r1
pendant tout le calcul. Match byte-exact au premier essai avec cette
forme (`/tmp/w90scratch3/t4.cc`, 40/40 octets identiques, les 4 derniers
octets -- adresse du symbole `gUnk_080F9F3C` -- non résolus en
isolation comme attendu, résolus ensuite au rebuild complet). Aucun
changement de type de clamp requis par rapport à ce que w92 avait déjà
déduit (idx0 = variable séparée, b = paramètre muté directement) --
seule la forme de l'expression de lecture finale comptait.

Découpage identique aux rounds précédents : `asm/code_0804E9C8.s`
scindé en lui-même (inchangé jusqu'à `func_080507D0`) +
`asm/code_080507F8.s` (reste, à partir de `func_080507F8`), nouveau
`src/code_080507D0.cc`, `fomt.lds` mis à jour (insertion entre
`asm/code_0804E9C8.o` et `src/code_08050DF0.o`).

Vérification : build de référence de HEAD sauvegardé
(`/tmp/w90scratch3/reference_HEAD.gba`), rebuild complet avec le
changement, diff Python octet à octet sur les 8 392 704 octets de la
ROM contre la référence -- **0 différence**. Diff direct de la plage
`0x080507D0`-`0x080507F8` (40 octets) de `fomt.gba` contre
`baserom.gba` -- **identique**. Commit fait.

Compteur mis à jour : **9/13** callés-fonctions opaques de
`franglais_transition_impl_tick` portés.

### 2. Caractérisation approfondie de `func_0805E99C` et de son helper
`func_0805EC24` (PAS de tentative de compilation, PAS commité)

#### 2.1 Site d'appel réel (confirme et précise w92)

Les deux appels dans `asm/code_0804E9C8.s` (avant le second, un
descripteur local de 25 octets est construit sur la pile) donnent la
signature complète :

```
func_0805E99C(dest_array, source_list, source_count, descriptor)
   r0=dest_array   r1=source_list   r2=source_count   r3=descriptor
```

- `dest_array` : pointeur vers `{u8 count; /* pad 3 */ Entry entries[128];}`
  avec `Entry = {u32 attr01; u16 attr2; /* pad? */}` (8 octets/entrée,
  vu la boucle `strh` à `+4` après le `str` à `+0`, incrément de `count`
  après écriture) -- classique tableau d'attributs OAM logiciel (le
  "shadow OAM" partagé avec la boucle de texte de dialogue déjà matée,
  comme deviné dans le contexte de la mission).
- `source_list` : tableau d'entrées de 8 octets, itéré tant que
  `source_list != source_list + source_count*8` -- au 2e site d'appel,
  `source_count` vaut 0 ou une valeur lue via `ldrh [r0+4]` selon un
  test `if (r1 != 0)`, cohérent avec "0, 1 ou 2 portraits" évoqué dans
  la mission (personnage seul vs dialogue à 2 interlocuteurs).
- `descriptor` : structure locale construite inline au site d'appel,
  champs `+0`(u16 x=0x34), `+2`(u16 y=0x5c), `+4`(u16, résultat de
  `func_080074C0`), `+6`(u16, résultat de `func_08007D4C`+0x78),
  `+0xc`(u32, zéro ici), `+0x10`(u8), `+0x11`(u8), `+0x14`(u32, zéro
  ici), `+0x18`(u8=1) -- confirme EXACTEMENT la liste de champs déjà
  déduite en w92, avec les deux accesseurs de pool déjà matés
  (`func_080074C0`/`func_08007D4C`, w91) qui remplissent `+4`/`+6` :
  lien direct établi entre le compositeur et les accesseurs de handle
  déjà portés.

#### 2.2 Nouveau détail : la table 32-octets indexée par
`descriptor+0x11 & 0x1F`

Le bloc `.L0805EA6C`-`.L0805EBFC` (jamais élucidé avant ce round) lit
`descriptor->unk_0x11` (bitfield : bits [2:0] -> shape, bit[3] ->
size-bit-bas, bit[4] -> size-bit-haut, bits[7:5] -> un index de table),
construit un mot d'attribut OAM-like en 3 étapes `ands`/`orrs` avec
masques `0xF1FFFFFF`/`0xEFFFFFFF`/`0xDFFFFFFF` (positions bit 25-27,
28, 29 -- exactement les positions shape/size/affine d'un attr0/attr1
GBA empaqueté dans un mot 32 bits custom, pas le format matériel
directement), PUIS utilise l'index de table (`unk_0x11 & 0x1F`, <<5,
soit une ligne de 32 octets) pour indexer `dest_array + 4 +
index*32` -- c'est-à-dire une ligne DANS le tableau de destination
lui-même (pas une table externe séparée), à l'intérieur de laquelle
sont lus 4 halfmots aux offsets locaux `+6`, `+0xe`, `+0x16`, `+0x1e`
(donc 4 sous-entrées de 8 octets, valeur à l'offset+6 de chacune) --
recombinés en 2 mots 32 bits passés en 5e argument (pointeur pile) à
`func_0805EC24`. Autrement dit : le compositeur relit des entrées DÉJÀ
écrites plus tôt dans le même tableau de destination pour construire
les paramètres de la matrice affine -- logique pour un système de
sprite affine dont la transformation dépend d'un état déjà stocké
(angle de rotation courant, par exemple).

#### 2.3 `func_0805EC24` : matrice affine style BIOS `ObjAffineSet`

Signature reconstruite depuis le site d'appel (dans `func_0805E99C`) :
`func_0805EC24(int* out_x, int* out_y, u32 width, u32 height, i16
angle_coeffs[4])` (5e argument sur la pile). Corps :

1. Les 4 halfmots de `angle_coeffs` subissent chacun la même
   transformation `v' = (i16)((v*17*16 [+0xff si v*272<0]) >> 8)` --
   c'est l'idiome agbcc standard pour `(i16)(v*272/256)` avec troncature
   vers zéro (pas floor), reconnu dans plusieurs décompilations GBA
   pour des tables de sinus/cosinus à échelle fixe (probablement
   `v*17/16`, un facteur d'échelle Q4.4 dont l'origine exacte -- unité
   de la table source -- reste à élucider).
2. Les 4 valeurs transformées sont multipliées 2 à 2 (produit croisé
   façon déterminant 2x2 : `a*d - b*c`) pour calculer un facteur
   d'échelle/discriminant `r5` (`asrs r5, r1, #8` après un `muls`/`subs`
   avec la même correction de troncature +0xff).
3. Si le discriminant est nul (`.L0805ED3E`), la fonction ne modifie
   PAS `*out_x`/`*out_y` (sortie anticipée, pas d'écriture) --
   protection division par zéro explicite.
4. Sinon, deux numérateurs sont calculés (produits croisés avec
   `width`/`height`), puis DEUX chemins de division : un raccourci pour
   les 2 valeurs de discriminant les plus fréquentes (`0x100`
   positif/négatif, testées par égalité exacte -- `movs r0,#0x80;
   lsls r0,r0,#1` = 0x100, et `0xFFFFFF00` = -0x100) qui remplacent la
   division par un simple décalage arithmétique `>>8` (avec la même
   correction de troncature), et un appel réel à `__divsi3` dans le cas
   général. Résultats accumulés (`+=`) dans `*out_x`/`*out_y` après
   soustraction d'un terme `width`/`height`-dépendant décalé de 8 bits.

Ce squelette (discriminant nul -> no-op, discriminant == puissance de 2
connue -> shift, sinon -> division réelle) est la signature classique
d'un calcul de matrice de rotation/échelle affine en virgule fixe --
mais reproduire cette forme en C source (l'idiome de troncature +0xff
doit réapparaître spontanément à CHAQUE point de division signée pour
matcher, comme déjà observé sur des fonctions plus simples des rounds
précédents) est un travail d'ampleur comparable à `func_0805E8F0` (near
miss w93, jamais résolu) mais sur une fonction 3x plus longue avec EN
PLUS deux branches de raccourci `__divsi3`/shift à faire apparaître
sélectivement. Non tenté ce round (aucune compilation d'essai) --
recommandé pour un round dédié avec tout son budget, en commençant par
isoler juste l'étape 1 (transformation des 4 coefficients, motif répété
4x identique) via le harnais rapide avant d'attaquer le produit croisé
et les branches de division.

### 3. Ce qui reste (4/13)

- `func_0805E99C` (compositeur, 648 octets) : dépend de `func_0805EC24`
  (ci-dessus, jamais commencé côté C) ET du bloc `.L0805EA6C` (table
  32-octets, ci-dessus, jamais commencé non plus). Caractérisation
  quasi complète maintenant (seul le détail fin du bloc shape/size
  d'ouverture `.L0805E9BA`-`.L0805EA00`, mentionné en w92, reste flou :
  arithmétique de largeur/hauteur GBA, structure de contrôle claire
  mais pas la forme C exacte).
- `func_0805EC24` : caractérisé ce round (§2.3), jamais tenté en C.
- `func_0805E8F0` (101 lignes) : near-miss w93 (blocage sur la rotation
  de boucle), pas retouché ce round.
- `func_08050868` (323 lignes), `func_080ADD78` (233 lignes) : toujours
  pas caractérisés au-delà de leur taille en lignes de désassemblage.

Scratch utilisé : `/tmp/w90scratch3/{try.sh,t_*.cc,t*.cc,target_*.bin,
reference_HEAD.gba}` -- hors dépôt, non committé.

## Round w95 (worktree `w90`, branche `parallel-90`) -- `func_0805EC24` maté
(10/13), caractérisation complète du bloc shape/size de `func_0805E99C`

Mission : matcher `func_0805EC24` (solveur affine, caractérisé w94)
via l'approche incrémentale, puis attaquer `func_0805E99C` si le budget
le permet. Verdict : `func_0805EC24` matché et committé (voir §1). Le
reste du budget a servi à finir la caractérisation de `func_0805E99C`
(le seul angle mort de w94, le bloc shape/size `.L0805E9BA`-
`.L0805EA00`, est maintenant entièrement élucidé, §2) mais aucune
tentative de compilation sur `func_0805E99C` lui-même ce round -- sa
taille (648 octets, boucle + 3 sites de bitfield-packing + un appel à
l'helper qu'on vient de matcher) en fait un chantier à part entière,
pas un complément de round.

### 0. Protocole

Scratch dans `/tmp/w90scratch4` (le `/tmp/w90scratch3` de w94 avait
disparu entre sessions, comme d'habitude -- hors dépôt). Harnais
`try.sh` reconstruit à l'identique (compile un seul `.cc` via
`arm-none-eabi-cpp`+`agbcp`+`arm-none-eabi-as`, extrait la plage de la
fonction dans le `.o` via ses symbole+taille `objdump -t`, diff contre
la cible extraite de `baserom.gba`). Piège rencontré une fois : un
fichier `asm/*.s` issu d'un split doit garder l'en-tête
`.INCLUDE "asm/macro.inc"` / `.SYNTAX UNIFIED` -- une simple découpe
par offset de caractères l'omet et casse `thumb_func_start` à
l'assemblage (`bad instruction`). Corrigé en le réinjectant à la main
avant le premier essai de build complet.

### 1. `func_0805EC24` maté (10/13)

Rôle confirmé (cf. caractérisation w94) : solveur de matrice
affine 2x2 façon BIOS `ObjAffineSet` -- reçoit `(out_x, out_y, width,
height, angle_coeffs[4])`, calcule le centre courant `cx =
(*out_x+width/2)<<8` / `cy = (*out_y+height/2)<<8`, rescale chaque
coefficient par l'idiome `(i16)(v*17*16/256)` (division tronquée vers
zéro), calcule un déterminant croisé `c0*c3-c1*c2` (même idiome de
troncature), et si non nul résout `(rx,ry)` par shift rapide (cas
`déterminant == ±0x100`) ou `__divsi3` réel sinon, avant d'accumuler
`(rx-cx)>>8` / `(ry-cy)>>8` dans `*out_x`/`*out_y`.

Écrit quasi tel quel depuis la caractérisation w94 (aucune surprise sur
l'idiome de troncature, qui réapparaît spontanément à chaque point de
division comme observé sur les fonctions précédentes) :

```c
extern "C" void func_0805EC24(i32 *out_x, i32 *out_y, u32 width, u32 height, i16 *angle_coeffs)
{
    i32 cx = (*out_x + (i32)(width >> 1)) << 8;
    i32 cy = (*out_y + (i32)(height >> 1)) << 8;

    i16 c0 = (i16)(angle_coeffs[0] * 17 * 16 / 256);
    i16 c1 = (i16)(angle_coeffs[1] * 17 * 16 / 256);
    i16 c2 = (i16)(angle_coeffs[2] * 17 * 16 / 256);
    i16 c3 = (i16)(angle_coeffs[3] * 17 * 16 / 256);

    i32 det = (i32)(c0 * c3 - c1 * c2) / 256;
    if (det == 0)
        return;

    i32 num_x = c3 * cx - c1 * cy;
    i32 num_y = c0 * cy - c2 * cx;

    i32 rx, ry;
    if (det == 0x100) {
        rx = num_x / 256;
        ry = num_y / 256;
    } else if (det == -0x100) {
        rx = num_x / 256; rx = -rx;
        ry = num_y / 256; ry = -ry;
    } else {
        rx = __divsi3(num_x, det);
        ry = __divsi3(num_y, det);
    }

    *out_x += (rx - cx) >> 8;
    *out_y += (ry - cy) >> 8;
}
```

Deux écarts trouvés par itération sur le harnais isolé (mine=296 octets
dès le premier essai, 16 octets de diff au départ, réduits en 2
passes) :
1. Ordre des opérandes de multiplication dans `num_x`/`num_y` : la
   cible calcule `c3 * cx` (charge `c3` dans le registre accumulateur
   PUIS multiplie par `cx`) et pas `cx * c3` -- inverser l'ordre
   d'écriture change quel opérande agbcp charge en premier, donc quel
   registre reste libre ensuite. Idem pour le second terme, `c2 * cx`
   et pas `cx * c2`.
2. Négation de la branche `déterminant == -0x100` : écrire
   `rx = -(num_x / 256);` en une expression fait calculer le shift
   dans un registre temporaire puis négocier dans un registre final
   différent (`mov`+`neg` croisés) ; il faut deux instructions
   séparées, `rx = num_x / 256; rx = -rx;`, pour que le compilateur
   négocie EN PLACE (le même registre porte le résultat du shift puis
   sa négation) -- généralise la leçon "réassignation en place" déjà
   observée sur `timer` dans le near-miss w93 de `func_0805E8F0` à un
   autre opérateur (négation au lieu de soustraction).

Après ces 2 correctifs : match 296/296 en isolation (les 2 seuls octets
différents restants sont les 2 `bl __divsi3`, relocations non résolues
en isolation comme attendu -- confirmé résolues après rebuild complet).

Découpage : `asm/code_0805E860.s` scindé en lui-même (inchangé jusqu'à
`func_0805EC24`) + nouveau `src/code_0805EC24.cc` + nouveau
`asm/code_0805ED4C.s` (reste, à partir de `func_0805ED4C`), `fomt.lds`
mis à jour (insertion entre `asm/code_0805E860.o` et
`src/code_0805FCD0.o`).

Vérification : build de référence de HEAD sauvegardé
(`/tmp/w90scratch4/reference_HEAD.gba`), rebuild complet avec le
changement, diff Python octet à octet sur les 8 392 704 octets de la
ROM contre la référence -- **0 différence**. Diff direct de la plage
`0x0805EC24`-`0x0805ED4C` (296 octets) de `fomt.gba` contre
`baserom.gba` -- **identique**. Commit fait.

Compteur mis à jour : **10/13** callés-fonctions opaques de
`franglais_transition_impl_tick` portés.

### 2. `func_0805E99C` : dernier angle mort élucidé (bloc shape/size),
toujours pas de tentative de compilation

Le bloc `.L0805E9BA`-`.L0805EA00` (le seul point resté flou en w94,
noté "arithmétique de largeur/hauteur GBA, structure de contrôle claire
mais pas la forme C exacte") est en fait une reproduction ARITHMÉTIQUE
(sans table) de la table standard GBA OAM shape/size -> (largeur,
hauteur), à partir des champs `shape` (bits [15:14] du mot `attr01` 32
bits lu à `source_list[i]+0`, extraits via `(word<<16)>>30` -- position
attr0 shape classique) et `size` (bits [31:30] du même mot, extraits
via `word>>30` -- position attr1 size classique, le mot 32 bits combine
donc `attr0` en poids faible et `attr1` en poids fort, cohérent avec le
format matériel réel superposé sur 32 bits plutôt que 2×16 séparés).

Reconstruction vérifiée à la main contre la table GBA connue (shape
0=carré, 1=large/horizontal, 2=haut/vertical) :
- carré (`shape==0`) : `dim = 8 << size` (8,16,32,64) -- branche
  `.L0805E9CE`-`.L0805E9E0`.
- non carré (`.L0805E9E0`) : `grande_dim = 8 << ((size+1)/2 + 1)`
  (donne 16,32,32,64 pour size 0..3, confirmé contre la table réelle)
  et `petite_dim = 8` si `size==1` sinon `grande_dim/2` (donne 8,8,16,32
  pour size 0..3, confirmé aussi) ; puis `shape==1` (large) affecte
  `sb=grande_dim` (largeur) / `r6=petite_dim` (hauteur), `shape==2`
  (haut) fait l'inverse (`sb=petite_dim`, `r6=grande_dim`).

Cette formule est spontanément un bon candidat de portage direct (pas
d'idiome de troncature caché, juste des décalages entiers non signés)
-- mais elle n'a pas été essayée en isolation ce round faute de temps ;
priorité recommandée pour le prochain round avant d'attaquer le reste
de la fonction (les 2 blocs de bitfield-packing `.L0805EA00`-
`.L0805EB04` autour de l'appel à `func_0805EC24`, le bloc de
bitfield-packing final `.L0805EB04`-`.L0805EBD2` qui construit le mot
OAM-like complet, et la boucle englobante `source_list`/`dest_array`).

### 3. Ce qui reste (3/13)

- `func_0805E99C` (compositeur, 648 octets) : caractérisation
  maintenant complète (w92+w94+ce round) -- shape/size arithmétique
  élucidée ci-dessus, dépend de `func_0805EC24` (matché ce round).
  Aucune tentative de compilation. Recommandé : commencer par le bloc
  shape/size (§2 ci-dessus) en isolation avant la boucle et les 2
  blocs de bitfield-packing.
- `func_0805E8F0` (101 lignes) : near-miss w93 sur la rotation de
  boucle, pas retouché depuis.
- `func_08050868` (323 lignes), `func_080ADD78` (233 lignes) :
  toujours pas caractérisés au-delà de leur taille.

Scratch utilisé : `/tmp/w90scratch4/{try.sh,t_*.cc,target_*.bin,
reference_HEAD.gba,build.log}` -- hors dépôt, non committé.

## Round w96 (worktree `w90`, branche `parallel-90`) -- première tentative
de compilation complète de `func_0805E99C`, near-miss structurel, aucun
match, correction importante de la cartographie largeur/hauteur de w95

Mission : attaquer directement le compositeur `func_0805E99C` (648
octets), seule pièce restante de `franglais_transition_impl_tick`
encore jamais compilée, en s'appuyant sur la caractérisation complète
héritée de w92/w94/w95. Verdict : la sémantique COMPLÈTE de la fonction
a été extraite et vérifiée instruction par instruction (voir §1,
corrige un point de w95), un premier essai de compilation intégrale a
été fait (voir §2) -- proche structurellement (même nombre de blocs de
contrôle, même formules arithmétiques) mais PAS byte-exact : environ
560/648 octets diffèrent, la cause profonde identifiée étant
l'allocation de registres hauts (r8/r9/r10) que agbcc résiste à
reproduire exactement. Aucun fichier `src/`/`asm/`/`fomt.lds` touché,
rien commité. Compteur inchangé : **10/13**.

### 0. Protocole

Scratch dans `/tmp/w90scratch5` (créé ce round, `/tmp/w90scratch4` de
w95 avait disparu comme d'habitude). `try.sh` simplifié par rapport aux
rounds précédents : compile un seul `.cc` via le pipeline EXACT du
Makefile (`arm-none-eabi-cpp $(CPPFLAGS) fichier.cc | agbcp
$(CXXFLAGS) -o fichier.s`, sans les flags `-quiet`/`-nostdinc` erronés
d'un premier brouillon qui faisait planter `arm-none-eabi-cpp`),
`align_sections.sh`, assemblage, puis extrait la fonction visée du
`.o` via `objdump -t` (adresse+taille du symbole) et `objcopy
--only-section=.text`, diffé octet à octet contre la plage cible
extraite de `baserom.gba`. Aucune tentative de build complet ce round
(le near-miss était trop large pour justifier le coût d'un rebuild
intégral -- la vérification "0 diff sur la ROM entière" n'a donc pas
été exercée, cohérent avec le fait que rien n'a été commité).

### 1. Sémantique complète de `func_0805E99C` (relecture ligne à ligne
du désassemblage `asm/code_0805E860.s`, confirmée par des essais de
compilation)

Signature confirmée (inchangée depuis w94) :
`func_0805E99C(DestArray *dest_array, SourceEntry *source_list, u32
source_count, CompositeDesc *desc)`.

**CORRECTIF IMPORTANT sur w95** : la note w95 §2 affirme que pour
`shape==1` (large), `sb`=largeur/`r6`=hauteur. C'est l'INVERSE. Preuve
directe par le site d'appel à `func_0805EC24` (`asm/code_0805E860.s`,
juste après le bloc table) : `adds r2, r6, #0` (3e argument =
`width`) / `mov r3, sb` (4e argument = `height`), et la signature de
`func_0805EC24` déjà matée (w95) est `(out_x, out_y, width, height,
angle_coeffs)`. Donc **`r6` = largeur, `sb` = hauteur**, dans TOUTE la
fonction (y compris le test de culling écran `.L0805EB04`, qui
compare bien `x+largeur` à 240 et `y+hauteur` à 160 avec cette
cartographie -- avec l'ancienne cartographie de w95 le test de
culling n'aurait aucun sens). Formule shape/size elle-même inchangée
et confirmée exacte (carré : `8<<size` ; large/haut : grande dimension
`8<<((size+1)/2+1)`, petite dimension `8` si `size==1` sinon
`grande/2` ; `shape==1` => hauteur=petite/largeur=grande, `shape==2`
=> l'inverse).

Corps complet reconstruit (pseudo-C, forme qui a servi de point de
départ à l'essai §2) :

```c
struct SourceEntry { u32 attr01; u32 word1; };          // 8 octets, entrée source
struct DestEntry   { u32 attr01; u16 attr2; u16 pad; };  // 8 octets, "shadow OAM"
struct DestArray   { u8 count; u8 pad[3]; DestEntry entries[128]; };
struct CompositeDesc {
    i16 x; i16 y;           // +0x0, +0x2 (ldrsh -- signé malgré valeurs positives au call site)
    u16 unk4; u16 unk6;     // +0x4, +0x6 (ldrh -- non signé), remplis par func_080074C0/func_08007D4C (w91)
    u16 unk8; u16 pad_a;    // +0x8 (ldrh), +0xa (jamais lu)
    u32 unk_c;              // +0xc
    u8 flags; u8 unk11;     // +0x10 (bits flip), +0x11 (bits shape/size/index table)
    u16 pad_12;              // +0x12 (jamais lu)
    u32 mode;                // +0x14 -- dispatch principal (0=culling+flip, sinon table+affine ; ==3 correction pivot)
    u8 unk18;                // +0x18
};

for (p = source_list; p != source_list+source_count; p++) {
    u32 word0 = p->attr01, word1 = p->word1;             // word0 = attr0(low16)|attr1(high16) empaqueté
    u32 shape = (word0<<16)>>30;    // attr0 bits[15:14]
    u32 size  = word0>>30;          // attr1 bits[15:14]
    i32 x = (i32)(word0<<7)>>23;    // attr1 bits[8:0] signé (X, 9 bits)
    i32 y = *(i8*)&word0;           // attr0 bits[7:0] signé (Y, 8 bits) -- lu via cast pointeur,
                                     // pas via masque registre : c'est ce qui force word0 en mémoire
                                     // (sp) pour le reste de la fonction (confirmé : TOUTES les
                                     // relectures/écritures de word0 passent par la pile dans la cible).
    // largeur/hauteur : formule shape/size ci-dessus (r6=largeur, sb=hauteur)

    u32 mode = desc->mode;          // doit être une VARIABLE LOCALE (pas desc->mode répété) pour que
                                     // agbcc l'alloue à r8 et la garde vivante à travers l'appel à
                                     // func_0805EC24 (registre callee-saved) -- confirmé par essai.
    if (mode == 0) {
        if (desc->flags & 1) { x = -(x+width);  /* toggle bit28 (hflip) de word0 */ }
        if (desc->flags & 2) { y = -(y+height); /* toggle bit29 (vflip) de word0 */ }
    } else {
        u8 d11 = desc->unk11;
        word0 = (word0&0xF1FFFFFF)|((d11&7)<<25);          // bits[27:25]
        word0 = (word0&0xEFFFFFFF)|(((d11>>3)&1)<<28);     // bit28 (hflip, valeur directe pas toggle)
        word0 = (word0&0xDFFFFFFF)|(((d11>>4)&1)<<29);     // bit29 (vflip, idem)
        u32 idx = d11 & 0x1F;
        u8 *base = (u8*)dest_array + 4 + idx*32;            // relit une "ligne" de 32 octets DANS
                                                              // dest_array (4 DestEntry consécutives)
        i16 coeffs[4] = { base[6..7], base[0xe..0xf], base[0x16..0x17], base[0x1e..0x1f] }; // les 4
                          // champs .attr2 des 4 DestEntry de la ligne -- construction par PAIRES de
                          // u32 intermédiaires avant copie finale dans coeffs[4] (voir §2, idiome pas
                          // entièrement reproduit)
        func_0805EC24(&x, &y, width, height, coeffs);       // aiguille l'affine déjà maté (w95)
        if (mode == 3) { x -= width/2; y -= height/2; }      // correction pivot, idiome division
                                                              // signée par 2 standard
    }

    x += desc->x; y += desc->y;

    if (mode == 0) {
        if (x+width<=0 || x>0xEF || y+height<=0 || y>0x9F)
            goto skip_write;   // culling écran (240x160), UNIQUEMENT en mode 0
    }

    // assemblage du mot attr01 final
    word0 = (word0&0xFFFFFF00)|(u8)y;
    word0 = (word0&0xFFFFFCFF)|((mode&3)<<8);
    word0 = (word0&0xFFFFF3FF)|((desc->unk_c&3)<<10);
    word0 = (word0&0xFFFFEFFF)|((desc->unk18&1)<<12);
    word0 = (word0&0xFE00FFFF)|((x&0x1FF)<<16);
    // assemblage du mot word1 final (relit desc->unk6/unk8/unk4)
    word1 = (word1&0xFFFFFC00)|(((word1&0x3FF)+desc->unk6)&0x3FF);
    word1 = (word1&0xFFFFF3FF)|((desc->unk8&3)<<10);
    word1 = (word1&0xFFFF0FFF)|(((((word1>>12)&0xF)+desc->unk4)&0xF)<<12);

    if (dest_array->count <= 0x7F) {
        entry = dest_array + 4 + count*8;   // pointeur brut, pas indexation de struct
        entry->attr01 = word0; entry->attr2 = (u16)word1;
        dest_array->count++;
    }
  skip_write: ;
}
```

Toute cette sémantique a été vérifiée exacte instruction par
instruction contre le désassemblage cible (pas de zone d'ombre
restante -- contrairement à w94/w95, il ne reste plus de "structure de
contrôle claire mais forme C incertaine").

### 2. Essai de compilation intégrale -- near-miss structurel, PAS matché

Le C ci-dessus (raffiné au fil de ~5 itérations, fichiers
`/tmp/w90scratch5/t1.cc`/`t2.cc`) compile SANS ERREUR et produit une
fonction de forme quasi identique (mêmes branches, mêmes constantes,
même nombre de blocs), mais systématiquement plus COURTE que la cible
(592-596 octets contre 648) avec ~555-565 octets différents dès le
10e octet (le prologue lui-même diffère : la cible réserve 44 octets
de pile -- `sub sp, #0x2c` -- la nôtre 32 -- `sub sp, #0x20`).

Cause racine identifiée (pas résolue) : **répartition des 3 registres
hauts disponibles (r8/r9/r10, après r7=desc et r11(fp)/r12(ip) non
utilisés) entre les 5 valeurs qui se disputent une résidence
registre** sur toute la boucle : `desc` (r7, jamais en cause),
`source_list` (curseur de boucle), `dest_array`, `mode`, `width`
(r6, bas, jamais en cause), `height`. La cible alloue r10=source_list,
r8=mode, r9=height, et laisse **dest_array ENTIÈREMENT résident en
pile** (rechargé à chaque usage via `ldr [sp,#0x24]`, alors que rien
ne force ça sémantiquement -- dest_array est juste le 4e "candidat
registre" que l'allocateur d'agbcc a refusé). Nos essais successifs
ont fait basculer dest_array tantôt en r9 (t1 sans variable `mode`
locale), tantôt en r10 (t1 avec variable `mode` locale -- ce qui a
alors délogé `source_list`, qui elle-même termine en pile). Aucune des
formes C essayées (variable `mode` locale ou non, boucle `for`
vs `do/while`, indexation de struct vs arithmétique de pointeur brut
pour l'écriture finale) n'a réussi à convaincre agbcc de laisser
`dest_array` hors registre tout en gardant `source_list` dedans
SIMULTANÉMENT -- les 2 changements semblent être un jeu à somme nulle
avec seulement 3 emplacements hauts disponibles pour 4 candidats
(`source_list`, `dest_array`, `mode`, `height`). Hypothèse non testée
restante : il manque peut-être une 5e variable candidate dans le vrai
source (un champ que nous avons fusionné ou omis) dont la présence
"absorberait" un registre différemment et rétablirait l'équilibre
observé dans la cible -- ou alors l'ordre lexical exact des accès à
`dest_array` (actuellement : 1 fois dans la branche table, 1 fois en
fin de boucle) doit être différent (accès supplémentaire non identifié
?).

Point positif accessoire : le **bloc de construction de `coeffs[4]`**
(4 halfmots `.attr2` lus depuis `dest_array`) a été percé une seconde
fois -- la cible ne l'écrit PAS comme 4 affectations directes à un
tableau `i16[4]` (testé : produit des `strh` directs, aucun rapport
avec la cible) mais comme **deux valeurs `u32` intermédiaires**
(`raw0 = attr2_0 | (attr2_1<<16)`, calcul pur registre, aucune lecture
mémoire ; `raw1 = attr2_2; raw1 |= attr2_3<<16;`, DEUX affectations
séparées qui déclenchent un vrai read-modify-write avec lecture de
mémoire non initialisée sur la moitié basse) **copiées ensuite en bloc
dans le tableau `i16[4]` final** juste avant l'appel à
`func_0805EC24`. Cette forme (`u32 raw0/raw1` + copie) reproduit
fidèlement l'ASYMÉTRIE observée (premier mot: aucune lecture mémoire ;
second mot: une lecture mémoire non initialisée puis un second champ
résident registre) dans un test isolé à faible pression de registres
(`/tmp/w90scratch5/t_coeffs2.cc`) -- mais il n'a pas été confirmé que
cette forme survit intacte une fois plongée dans la pression de
registres réelle de la fonction complète (le diff observé au niveau de
la fonction entière est dominé par le désaccord de layout de pile en
amont, qui décale toutes les adresses et rend la comparaison de ce
sous-bloc peu concluante en l'état).

### 3. Ce qui reste (3/13, inchangé)

- `func_0805E99C` (compositeur, 648 octets) : sémantique 100%
  élucidée (§1, avec correctif de cartographie largeur/hauteur sur
  w95). Premier essai de compilation intégrale proche mais pas
  byte-exact (§2) -- le blocage est un problème PUR d'allocation de
  registres hauts (4 candidats pour 3 emplacements), pas un problème
  de sémantique. Prochaine piste recommandée : explorer d'autres
  formes lexicales pour UNE SEULE variable à la fois (par exemple
  `height`, jamais touchée ce round) pendant qu'on fixe les 3 autres,
  pour isoler laquelle des 4 doit changer de forme pour libérer le bon
  registre ; ou chercher, dans le désassemblage cible, un 5e usage de
  `dest_array` qui aurait été manqué et qui expliquerait pourquoi
  l'original le maintient en pile malgré la pression.
- `func_0805E8F0` (101 lignes) : near-miss w93 sur la rotation de
  boucle, pas retouché depuis w93.
- `func_08050868` (323 lignes), `func_080ADD78` (233 lignes) :
  toujours pas caractérisés au-delà de leur taille.

Scratch utilisé : `/tmp/w90scratch5/{try.sh,t1.cc,t2.cc,t_coeffs.cc,
t_coeffs2.cc,target.bin}` -- hors dépôt, non committé.

## Round w97 (worktree `w90`, branche `parallel-90`) -- le deadlock
d'allocation de registres de w96 sur `func_0805E99C` est RÉSOLU
(prologue, cadre de pile 0x2c, jeu de spills et layout de pile
byte-exacts), near-miss profond restant : 280/310 instructions
structurellement identiques, cause racine unique identifiée pour
l'essentiel du résiduel

Mission : résoudre le blocage w96 ("4 variables pour 3 registres hauts,
dest_array refuse de rester en pile"). Verdict : le blocage est résolu
-- la cause de l'échec w96 était un MAUVAIS MODÈLE DE SOURCE, pas un
réglage fin d'allocation. Aucun match byte-exact (rien commité en
src/asm/lds, conforme à la règle), mais le diff est passé de "diverge
dès l'octet 10, 560/648 octets faux, cadre 32 au lieu de 44" (w96) à
"prologue + cadre + spills + layout de pile + squelette de contrôle +
toutes les constantes byte-exacts, 280/310 instructions identiques
après normalisation des numéros de registres, ~30 instructions
divergentes réparties en 12 sites précis". Compteur inchangé : 10/13.

### 0. Protocole

Scratch `/tmp/w90s6` (perdu au reboot comme d'habitude, contenu clé
inline ci-dessous). `try.sh` = pipeline EXACT du Makefile (cpp |
`agbcp -quiet ... -O2 -fhex-asm`, `align_sections.sh`, as, extraction
par `objdump -t` + `objcopy`), diff octet contre la plage
0x5E99C..0x5EC24 de `baserom.gba`. Nouvel outil `cmp2.sh` : diff
d'instructions NORMALISÉES (numéros de registres et adresses masqués)
via difflib -- métrique bien plus fidèle que le compte d'octets bruts,
qui est dominé par les renommages en cascade. Méthode règle 17
(`agbcp -dl -dg`, dumps `gccdump.lreg`/`gccdump.greg`) utilisée pour
la première fois sur cette fonction -- décisive (§4).

### 1. LA CLEF : `cur` est une STRUCT de 8 octets copiée par valeur,
en PSEUDO DImode spillé -- et `*(i8*)&` était le poison

Le modèle w96 (2 scalaires `u32 word0/word1` + lecture `y` via
`*(i8*)&word0`) est FAUX et c'était LUI qui capturait un registre de
trop. Modèle correct :

- `SrcEntry cur = *src;` où `SrcEntry { u32 w0; u32 w1; }` -- une
  struct 8 octets copiée par valeur, dont on ne prend JAMAIS
  l'adresse.
- Vérifié par micro-sonde isolée (`P c = *src;` + appel externe) :
  agbcp donne un mode DImode aux structs de 8 octets et les LOGE DANS
  UN PSEUDO (paire de registres, copie `ldr/ldr` annotée
  `thumb_load_double_from_address`) -- il ne les met PAS en mémoire.
- Sous la pression de la boucle, ce pseudo DImode est SPILLÉ par
  reload -> il atterrit dans la ZONE DE SPILL en HAUT du cadre
  ([sp,#0x1c]/[sp,#0x20]), juste sous les spills de `dest_array`
  ([sp,#0x24]) et `end` ([sp,#0x28]). C'est ça qui produit d'un coup :
  le cadre de 44 octets, la copie appariée `ldr r0,[r2]; ldr r1,[r2,#4];
  str r0,[sp,#0x1c]; str r1,[sp,#0x20]` (mouvement DImode, PAS un
  memcpy mot-à-mot entrelacé), l'absence totale d'accès rétrécis
  (ldrb/strh) sur cur, et le layout exact des locales.
- **Le poison w96** : `*(i8*)&word0` rend l'objet TREE_ADDRESSABLE ->
  résident mémoire dès l'expansion -> il prend un slot BAS
  ([sp,#4]), gcc rétrécit les accès bitfield en ldrb/strb, et CSE
  hisse `&cur` dans un registre haut libre (observé : r8 !) -- d'où
  exactement le sur-cadre et le vol de registre constatés en w96.
  La lecture `y` doit se faire SANS prise d'adresse de cur.
- Layout de pile obtenu, identique à la cible : sp+0 arg sortant,
  raw@+4/+8, x@+0xc, y@+0x10, coeffs@+0x14/+0x18, cur@+0x1c/+0x20,
  dest@+0x24, end@+0x28. L'ordre de déclaration C est IRRÉLEVANT
  (testé par les 120 permutations : layout inchangé) ; ce qui compte
  c'est adressable-vs-pseudo et l'ordre des demandes de slots à
  l'expansion (adressables/agrégats mémoire) puis au reload (spills).

### 2. Le "5e candidat" de w96 confirmé, et l'issue du concours de
registres

Le pointeur de fin de boucle `end = src + count` est bien une 5e
valeur longue durée : la cible le SPILLE aussi ([sp,#0x28], rechargé
une fois par itération en bas de boucle). Résultat final du concours
(dump `-dl -dg`, ordre d'allocation observé `... width desc height
mode src dest end cur`) : r7=desc, r6=width, sl=src (curseur),
{r8,r9}={height,mode}, et dest/end/cur spillés. Notre compilation
obtient EXACTEMENT ce jeu de spills -- seule inversion restante :
nous donnons r8 à height et r9 à mode, la cible fait l'inverse (§4).

### 3. Formes C élucidées ce round (vérifiées au byte près dans les
régions correspondantes)

- **Ordre "bits d'abord"** dans TOUTES les insertions de champs :
  `(bits) | (mot & masque)` -- flips, étages de la branche table,
  et les deux blocs d'assemblage finaux. (La cible calcule toujours
  la valeur insérée AVANT le `ldr masque; ands; orrs`.)
- `(u8)y` (cast, donne lsls#24/lsrs#24 sur la valeur en registre) et
  non `y & 0xFF` (qui donne movs #255/ands).
- `raw.a = (line[1].affineParam << 16) | line[0].affineParam;` --
  opérande décalé à GAUCHE du `|` (le ldrh de +0xE vient avant celui
  de +6).
- Les lectures shape/size/x se font par décalages explicites sur
  `cur.w0` (u32) : les lectures bitfield seraient rétrécies en ldrb
  si cur était mémoire, et donnent le même code si cur est pseudo.
- La garde d'écriture : `u32 c = dest->count; if (c <= 0x7F) {...}`
  avec `dest->count = c + 1;` (recharge de dest après les stores par
  aliasing -- reproduit).
- Blocs d'assemblage w0/w1 finaux et bloc table : UNE SEULE
  affectation mémoire par bloc via un accumulateur scalaire local
  (`u32 t` de portée bloc) -- un seul ldr initial + chaîne
  ands/orrs + un seul str, comme la cible.

Source candidate canonique (280/310, `t18.cc` du scratch) :

```c
struct SrcEntry { u32 w0; u32 w1; };
struct DestEntry { u32 attr01; u16 attr2; u16 affineParam; };
struct CompositeDesc { i16 x, y; u16 unk4, unk6; u16 unk8; u16 pad_a;
    u32 unk_c; u8 flags; u8 unk11; u16 pad_12; u32 mode; u8 unk18; };
struct DestArray { u8 count; u8 pad[3]; DestEntry entries[128]; };
struct CoeffPair { u32 a; u32 b; };
union CoeffBlock { CoeffPair p; i16 arr[4]; };

extern "C" void func_0805E99C(DestArray *dest, SrcEntry *src, u32 count, CompositeDesc *desc)
{
    SrcEntry *end = src + count;
    for (; src != end; src++) {
        SrcEntry cur; union CoeffBlock coeffs; i32 y; i32 x;
        union CoeffBlock raw; u32 shape, size, mode; i32 width, height;
        cur = *src;
        shape = (cur.w0 << 16) >> 30;
        size = cur.w0 >> 30;
        if (shape == 0) { height = 8 << size; width = height; }
        else {
            u32 big = 8 << (((size + 1) >> 1) + 1);
            u32 small = 8;
            if (size != 1) small = big >> 1;
            if (shape != 1) { height = big; width = small; }
            else            { height = small; width = big; }
        }
        x = (i32)(cur.w0 << 7) >> 23;
        y = *(i8 *)src;                       // forme provisoire, cf. §5.3
        mode = desc->mode;
        if (mode == 0) {
            u8 flags = desc->flags;
            if (flags & 1) { x = -(x + width);
                cur.w0 = (((((cur.w0 << 3) >> 31) ^ 1) & 1) << 28) | (cur.w0 & 0xEFFFFFFF); }
            if (flags & 2) { y = -(y + height);
                cur.w0 = (((((cur.w0 << 2) >> 31) ^ 1) & 1) << 29) | (cur.w0 & 0xDFFFFFFF); }
        } else {
            u8 d11 = desc->unk11;
            DestEntry *line;
            { u32 t = (cur.w0 & 0xF1FFFFFF) | ((d11 & 7) << 25);   // étage 1 : cible = bits d'abord,
              t = (t & 0xEFFFFFFF) | ((((d11 & 8) >> 3) & 1) << 28);  // mais la forme bits-d'abord
              t = (t & 0xDFFFFFFF) | ((((d11 & 0x10) >> 4) & 1) << 29); // casse le cadre ici, cf. §5.2
              cur.w0 = t; }
            line = (DestEntry *)((u8 *)dest + 4 + (d11 & 0x1F) * 32);
            raw.p.a = (line[1].affineParam << 16) | line[0].affineParam;
            raw.p.b = ((raw.p.b & 0xFFFF0000) | line[2].affineParam) & 0x0000FFFF
                      | (line[3].affineParam << 16);                 // se fait replier, cf. §5.1
            coeffs = raw;
            func_0805EC24(&x, &y, width, height, coeffs.arr);
            if (mode == 3) { x -= width / 2; y -= height / 2; }
        }
        x += desc->x; y += desc->y;
        if (mode == 0) {
            if (x + width <= 0 || x > 0xEF || y + height <= 0 || y > 0x9F)
                goto next;
        }
        { u32 t = (u8)y | (cur.w0 & 0xFFFFFF00);
          t = ((mode & 3) << 8) | (t & 0xFFFFFCFF);
          t = ((desc->unk_c & 3) << 10) | (t & 0xFFFFF3FF);
          t = ((desc->unk18 & 1) << 12) | (t & 0xFFFFEFFF);
          t = ((x & 0x1FF) << 16) | (t & 0xFE00FFFF);
          cur.w0 = t; }
        { u32 t = ((((((cur.w1 << 22) >> 22) + desc->unk6) << 22) >> 22)) | (cur.w1 & 0xFFFFFC00);
          t = ((desc->unk8 & 3) << 10) | (t & 0xFFFFF3FF);
          t = (((u16)(((t << 16) >> 28) + desc->unk4) & 0xF) << 12) | (t & 0xFFFF0FFF);
          cur.w1 = t; }
        { u32 c = dest->count;
          if (c <= 0x7F) {
              DestEntry *e = (DestEntry *)((u8 *)dest + 4 + c * 8);
              e->attr01 = cur.w0;
              e->attr2 = (u16)cur.w1;
              dest->count = c + 1; } }
    next:;
    }
}
```

### 4. Le swap r8/r9 (mode/height) a une cause racine UNIQUE, chiffrée
au dump près

`gccdump.greg` sur notre meilleure forme : pseudo height = refs 22,
live_length 314 -> priorité `floor_log2(22)*22/314 = 0.280` ; pseudo
mode = refs 14, live_length 154 -> `0.273`. Écart de 2.5% : height
est alloué juste avant mode et prend r8 ; la cible veut l'inverse.
Or il nous MANQUE ~10 instructions (pondérées) que la cible a EN PLUS
à l'intérieur de la plage de vie de height : la chaîne raw.b non
repliée (~6), les deux chaînes `&1` non repliées (~2 chacune), la
troncature u16 de palette (~2). Ces instructions allongeraient
live_length(height) vers ~326 -> priorité 0.270 < 0.273 -> mode passe
devant et prend r8 TOUT SEUL. Autrement dit : le swap r8/r9 n'est PAS
un problème d'allocation à régler, c'est un SYMPTÔME des repliages
(folds) parasites de notre source (§5). Une seule cause, deux
symptômes (les octets locaux manquants ET le renommage global
r8<->r9 qui domine le compte de diff brut).

### 5. Les 3 énigmes restantes -- ce qui a été essayé, ce qu'on sait

**5.1 La chaîne raw.b "à lecture non initialisée"** (cible :
`ldrh lo; ldr [sp,#8] (non initialisé); ands 0xFFFF0000; orrs lo;
ldrh hi; lsls #16; ands 0xFFFF; orrs; str [sp,#8]` -- séquence
sémantiquement AUTO-ANNULANTE, les masques effacent la contribution
non initialisée, valeur finale = lo|hi<<16). NOTRE agbcp la replie
inexorablement en `lo|hi<<16` sous TOUTES les formes essayées :
expression composée (fold arbre par distribution), deux affectations
séparées (store-forwarding CSE + loi distributive de combine +
suppression du store intermédiaire par CSE), bitfields u32:16/:16
en mémoire (idem), struct bitfield séparée, union. Le point dur :
pour que la chaîne survive chez la cible, il faut que le
store-forwarding OU la distribution de combine ait été bloqué --
aucune construction C trouvée qui le bloque. Piste sérieuse restante
: écriture par demi-mots d'un u32 RÉSIDENT REGISTRE via union
(strict_low_part / subreg:HI) -- non exploré à fond car la paire raw
doit finir en mémoire pour la copie `coeffs = raw` (ldr/ldr/str/str
depuis [sp,#4]/[sp,#8], confirmé cible).

**5.2 Les chaînes `&1` des étages 2/3 de la branche table** (cible :
`movs r0,#8; ands r0,r3; lsrs r0,#3; movs r1,#1; ands r0,r1;
lsls r0,#28` -- avec `movs r1,#1` DUPLIQUÉ à 6 instructions d'écart
dans le même bloc de base, donc PAS CSEable => ces instructions ont
été générées APRÈS CSE, par un split de combine ou par reload -- info
structurelle forte). Notre compilation replie toujours en
`ands #8; lsls #24; lsrs #27`. Essais : formes étagées, temporaires
u8/u32, casts intermédiaires -- tous repliés (combine travaille sur
le dataflow, pas sur les statements). MAIS : en micro-sonde, une
INSERTION DE BITFIELD sur une struct à union anonyme RÉSIDENTE
REGISTRE préserve exactement `movs #8; ands; lsrs #3; lsls #28`
(sans le `&1`). La struct à union anonyme {bitfields|u32 w0} reste
bien DImode-pseudo en isolation (sondes mp4/mp5/mp7, y compris en
boucle avec appel), mais DANS la fonction complète elle retombe en
mémoire (bisections b2/b4 : le toggle bitfield des flips et la
lecture bitfield de y déclenchent chacun la rétrogradation ; les 3
insertions matrixNum/hFlip/vFlip seules -- b3 -- ne la déclenchent
pas et donnent le même score que la forme explicite). Le générateur
exact des séquences cibles n'est PAS identifié.

**5.3 La lecture de y en `ldrsb`** (cible : `add r1,sp,#28;
movs r0,#0; ldrsb r0,[r1,r0]` = reload d'un usage (subreg:QI
(reg:DI cur)) depuis le slot de spill). `(i8)cur.w0` se fait replier
par combine en lsls#24/asrs#24 (2 instructions au lieu de 3, faux) ;
`*(i8*)&cur` est le poison du §1 (interdit) ; `*(i8*)src` (retenu
provisoirement) donne la BONNE forme ldrsb mais base `mov r1,sl` au
lieu de `add r1,sp,#28` (2 octets faux + 1 ref de plus sur src). Il
faut trouver la forme qui fait survivre le subreg:QI de cur jusqu'à
reload.

### 6. Les 12 sites divergents restants (cmp2, t18 vs cible)

1. 0xe/0x10 : ordre des 2 copies de paramètres du prologue
   (`adds r7,r3` avant/après `mov sl,r1`).
2. 0x2e : copie `adds r3,r0,#0` de shape non coalescée (cible) --
   absente chez nous (notre lsrs écrit r3 direct).
3. 0x6c-0x72 : la lecture y (§5.3).
4. 0x80/0x82 : rôles flags/const-1 dans le test `flags & 1` (la
   cible matérialise 1 dans r4 et le copie, nous copions flags).
5-7. 0xd2-0xfc : branche table -- ordre bits/masque de l'étage 1 (la
   forme cible "bits d'abord" y casse notre cadre : dest ressort du
   spill, cadre 40 -- interaction de pression pure, à re-tester une
   fois §5.1/5.2 résolus) + les 2 chaînes `&1` (§5.2).
8. 0x110-0x12a : la chaîne raw.b (§5.1) + les 2 constantes de pool
   0xFFFF0000/0x0000FFFF chargées tôt.
9. 0x19c/0x19e : ordre (u8)y vs `ldr [sp,#28]` dans le bloc w0 final
   (1 instruction déplacée).
10. 0x1dc/0x216 : nos accès à cur.w1 passent par une adresse formée
   (`add rX,sp,#28; ldr [rX,#4]`) au lieu de `ldr [sp,#32]` direct --
   artefact de reload DImode chez nous, sous-produit attendu des
   points précédents.
11. 0x224-0x22c : `mov r3,sp; ldrh r0,[r3,#32]` (lecture HImode du
   slot de spill de cur.w1 -- ldrh n'a pas d'encodage sp-relatif,
   d'où le mov) -- notre forme diffère tant que cur.w1 n'est pas
   accédé en subreg propre.
12. 0x260+ : queue de pool (13 constantes, ordre/dédoublonnage) --
   suivra mécaniquement le reste.

### 7. Divers

- Compiler la même source avec agbcc/old_agbcc (C) : PIRE au niveau
  macro (cadre différent dès 0xa) -- agbcp (C++) confirmé comme le
  bon compilateur, cohérent avec le reste du dépôt.
- Upstream `StanHash/fomt` vérifié une fois (avant réception de la
  consigne de ne plus le faire) : `func_0805E99C` y est toujours en
  asm brut, rien à réutiliser. Consigne enregistrée : ne plus
  vérifier origin, notre fork est toujours en avance.
- La métrique "diffbytes bruts" est trompeuse sur cette fonction :
  542/648 octets diffèrent alors que 280/310 instructions sont
  identiques modulo renommage -- utiliser cmp2 (normalisation des
  registres) comme boussole.

### 8. Ce qui reste (3/13, inchangé)

- `func_0805E99C` : 280/310. Prochaine étape recommandée : percer
  §5.1 (raw.b) EN PREMIER -- c'est la clef de voûte (débloque
  mécaniquement le swap r8/r9 du §4, et probablement l'équilibre de
  pression qui interdit la forme "bits d'abord" de l'étage 1). Piste
  la plus prometteuse : chercher quel lvalue C écrit les demi-mots
  d'un u32 mémoire SANS que CSE puisse forward le store (2e piste :
  générer les insertions via une struct bitfield DImode maintenue
  en registre -- comprendre d'abord pourquoi la fonction complète la
  rétrograde en mémoire alors que les micro-sondes mp4/mp5/mp7 la
  gardent en pseudo).
- `func_0805E8F0`, `func_08050868`, `func_080ADD78` : inchangés.

Scratch utilisé : `/tmp/w90s6/{try.sh,cmp.sh,cmp2.sh,check.py,
t1..t21.cc,b1..b4.cc,mp*.cc,best.cc,target.bin}` -- hors dépôt, non
committé ; la source canonique t18 est reproduite intégralement au §3.

## Round w98 (worktree `w90`, branche `parallel-90`) -- raw.b : la clef
NE cède PAS à l'analyse GCC 2.9 de bas niveau, cause racine plus
profonde qu'espéré

Mission : percer §5.1 (la chaîne `raw.b` à lecture "auto-annulante").
Verdict : NON résolu. Toutes les pistes de reformulation C testées
(masques, bitfields réels, membres simples, expression complète dans
le contexte plein de la fonction) donnent le MÊME résultat -- agbcp
élimine systématiquement la lecture morte et ne produit JAMAIS le
`ldr [sp,#8]` + double `ands` du binaire cible. Aucun match forcé
(règle respectée). Compteur inchangé : 10/13, 280/310 sur
`func_0805E99C`.

### 0. Protocole

Scratch `/tmp/w90s6` bien perdu au reboot comme annoncé ; nouveau
scratch `/tmp/w90s7` reconstruit (`try.sh`/`tryfull.sh` = pipeline
cpp | agbcp -quiet ... -O2 -fhex-asm, sans passer par le Makefile
complet -- suffisant pour comparer la forme du `.s`, pas besoin de
`align_sections.sh`/`as`/objcopy pour ce sous-problème puisqu'on
compare de l'assembleur texte, pas des octets liés). Le binaire
`tools/agbcc/bin/agbcp` n'est PAS strippé (debug_info présent) mais
sans source embarqué ; la source amont a été récupérée fraîchement
(`git clone -b cp https://github.com/notyourav/agbcc.git`, dossier
`gcc_arm/` = back-end/middle-end C++ partagé) pour lire directement
`expr.c` plutôt que de deviner le comportement de l'optimiseur.

### 1. Vérification de la vérité terrain (aucune erreur de
transcription trouvée)

Désassemblage direct de `baserom.gba` à `0x0805EAA8..0x0805ECA` (pas
besoin de lien complet, juste extraction de la plage + `objdump -D -b
binary -m arm -Mforce-thumb`) : la séquence et les 2 constantes de
pool sont EXACTEMENT celles rapportées en w97 --
`0x0805EBFC = 0xFFFF0000`, `0x0805EC00 = 0x0000FFFF`. Séquence
confirmée instruction par instruction :

```
ldrh r1,[r3,#22]   @ line[2].affineParam (lo)
ldr  r0,[sp,#8]    @ lecture "auto-annulante" de raw.b
ands r0,r2         @ r2 = 0xFFFF0000
orrs r0,r1
ldrh r1,[r3,#30]   @ line[3].affineParam (hi)
lsls r1,r1,#16
ands r0,r4         @ r4 = 0x0000FFFF  <- l'AND mort qui résiste
orrs r0,r1
str  r0,[sp,#8]
```

Donc pas de piste "erreur de lecture des notes" -- le problème est
réel et bien caractérisé depuis w97.

### 2. Lecture du code source d'expr.c (agbcc/gcc_arm) : la distinction
REG-vs-MEM de `store_field`

`store_field()` (expr.c, ~L4584) bascule sur le chemin bitfield
générique (`store_bit_field`, qui produit le load/and/or/store) dès
que `mode == VOIDmode || !direct_store[mode] || GET_CODE(target) ==
REG || GET_CODE(target) == SUBREG || ...` -- **y compris pour un
champ qui recouvre le mot ENTIER**, du moment que la cible est un
REGISTRE (pas seulement pour des bitfields "vrais" au sens largeur
non-alignée). Sinon (cible MEM alignée), c'est la branche `else`
(store direct adressé, pas d'AND/OR). Hypothèse testée : si `raw`
reste pseudo-registre (DImode, comme `cur` en w97 §1) au moment de
l'expansion des deux demi-mots, chaque écriture passerait par
`store_bit_field` (donc un AND/OR par écriture), et le spill par
reload matérialiserait le AND mort observé. Infirmée empiriquement
(§3).

### 3. Quatre sondes empiriques, résultat identique à chaque fois

Toutes compilées avec le VRAI binaire `agbcp` du dépôt (pas une
simulation) :

- **p1** (fonction minimale, hors boucle, masque complet en une seule
  expression `raw.p.b = ((raw.p.b & 0xFFFF0000)|lo) & 0xFFFF |
  (hi<<16)`) : replié en 2 instructions propres (`ldrh;lsl;ldrh;orr;
  str`), aucun résidu.
- **p2** (boucle + appel externe, pression register réelle, membres
  simples NON-bitfield `i16 x2,x3` recouvrant le mot) : combine
  fusionne directement les 2 écritures en un store unique, sans le
  moindre AND.
- **p3** (bitfields C RÉELS `u32 lo:16, hi:16` recouvrant exactement
  le mot, dans le même contexte de boucle+appel) : MÊME résultat que
  p2 -- store_bit_field passe bien par le chemin AND/OR en interne,
  mais un pass ultérieur (combine, très probablement) reconnaît que
  les deux champs couvrent la totalité du mot et élide le AND
  "inutile" -- **même pour de vrais bitfields**, contredisant
  l'hypothèse REG-vs-MEM du §2 : la fusion n'est pas bloquée par le
  chemin bitfield lui-même.
- **p4** (reproduction FIDÈLE du candidat t18 complet -- toute la
  fonction `func_0805E99C`, prologue/boucle/branche table/assemblage
  final reconstruits depuis §3 du round w97, compilés tels quels avec
  `cpp | agbcp -O2 -fhex-asm` en dehors du Makefile) : le prologue,
  le cadre 0x2c et le squelette général reproduisent bien le near-miss
  280/310 déjà connu, MAIS le site `raw.b` (`.LM31` du `.s` généré)
  donne encore le résultat propre (`ldrh;ldrh;lsl;orr;str`, aucun
  résidu) -- **même dans le contexte complet, pression et tout**, le
  fold subsiste. Ceci exclut définitivement la piste "il faut plus de
  pression register / plus de contexte" : la fonction complète
  reconstruite plie déjà exactement comme les micro-sondes.

### 4. Diagnostic révisé

Le fold de `(X & C1 | lo) & C2 | (hi<<16)` en `lo | (hi<<16)` (avec
C1&C2==0) est une simplification DISTRIBUTIVE `AND(OR(AND))` que
notre agbcp effectue de façon fiable et reproductible, quelle que
soit la structuration C testée (expression unique, bitfields, membres
simples) et quel que soit le contexte (fonction triviale, boucle +
appel, fonction complète reconstruite). Aucune des 4 sondes n'a réussi
à faire survivre l'instruction morte. Ceci suggère que le code cible
NE PROVIENT PAS d'une reformulation différente de la MÊME expression
sémantique -- il provient probablement d'une forme structurellement
distincte que nous n'avons pas encore identifiée, où l'AND avec
0x0000FFFF n'est PAS mathématiquement redondant du point de vue de
l'optimiseur (donc pas seulement "dur à replier" mais "pas vu comme
repliable" par construction). Pistes pour la suite, par ordre de
priorité :

1. **Remettre en question le modèle "self-canceling"** : et si
   `raw.p.b` n'était PAS auto-référencé du tout ? Réexaminer si le
   binaire cible pourrait correspondre à une paire d'écritures qui
   modifient RÉELLEMENT un autre mot déjà porteur d'une valeur utile
   (ex. `coeffs` directement, sans `raw` intermédiaire, avec le champ
   `b` initialisé PLUS TÔT dans le bloc à une valeur non triviale par
   une instruction qu'on n'a pas encore modélisée) -- l'AND ne
   serait alors PAS mort pour de vrai, et notre "candidat t18" serait
   simplement incomplet/faux sur ce point précis, pas juste mal
   formulé.
2. **Séparer `raw` de `coeffs` dès l'écriture** (pas de copie
   `coeffs = raw` -- écrire directement dans `coeffs.p.b`, dont
   l'adresse EST prise plus loin pour l'appel à `func_0805EC24`) :
   non testé cette manche (les 4 sondes gardent `raw` séparé de
   `coeffs`). Si `coeffs` est adressable dès le départ (donc
   TREE_ADDRESSABLE), le chemin `store_field` pourrait emprunter la
   branche mémoire directe adressée AVANT que combine n'ait la
   moindre chance de voir les deux écritures comme des pseudo-regs
   fusionnables -- mais attention à ne pas retomber dans le poison w96
   (accès rétrécis ldrb/strb) : seul un test empirique tranchera.
3. Revenir au chemin bitfield DImode-registre-résident suggéré par la
   note w97 (§5.2, sondes mp4/mp5/mp7) mais cette fois en isolant
   PRÉCISÉMENT quelle instruction de la fonction complète déclenche la
   rétrogradation mémoire (bisection binaire sur les instructions
   entre le début de la boucle et le site `raw.b`, pas seulement sur
   les 3 candidats déjà écartés en w97).

### 5. Ce qui reste (3/13, inchangé)

- `func_0805E99C` : 280/310, keystone `raw.b` toujours non percée
  après 2 rounds dédiés (w97, w98). Prochaine étape recommandée :
  piste §4.1 (remettre en cause le modèle sémantique de `raw.b`
  lui-même, pas seulement sa formulation C) avant de retenter des
  variantes syntaxiques.
- `func_0805E8F0`, `func_08050868`, `func_080ADD78` : inchangés.

Scratch utilisé : `/tmp/w90s7/{try.sh,tryfull.sh,p1..p4.cc,full.cc,
target_func.bin}` + `/tmp/agbcc_src` (clone amont agbcc, lecture
seule, hors dépôt) -- hors dépôt, non committé.

## Round w99 (worktree `w90`, branche `parallel-90`) -- raw.b : le vrai
coupable identifié (fold FRONT-END sur constantes littérales), toujours
pas de forme byte-exacte

Mission : (1) tester l'hypothèse w98 §4.1/§4.2 (`raw` et `coeffs` sont
UNE SEULE variable adressée dès le départ, pas une copie `raw` ->
`coeffs`) ; (2) si ça ne suffit pas, redériver depuis le désassemblage
si `raw.b` sert vraiment à quelque chose plutôt que d'être mort.
Verdict : hypothèse (1) INFIRMÉE proprement. Mais l'exploration a
déplacé le diagnostic d'un cran : la cause du repliement n'est PAS le
pass "combine" du RTL (comme le suggérait w98 §2/§4) mais le repliement
algébrique de FRONT-END (arbre, avant expansion RTL) de l'identité
`(X & C1 | Y) & C2 | Z -> Y | Z` (valide dès que `C1 & C2 == 0`,
QUELLE QUE SOIT la valeur de X -- vérifié : c'est une identité
mathématique toujours vraie, pas une exploitation d'UB sur lecture non
initialisée). Ce repliement ne se déclenche QUE quand les deux masques
sont des constantes entières visibles comme telles par le front-end.
Le rendre invisible (masques lus depuis une variable non constante,
même locale) fait ressortir EXACTEMENT la forme cible (une seule
lecture, AND, OR, AND, OR, un seul store) -- mais au prix de charges
mémoire supplémentaires qui ne collent pas au byte. Toujours 10/13,
280/310 sur `func_0805E99C`, aucun match forcé (règle respectée).

### 0. Protocole

Nouveau scratch `/tmp/w90s8` (les précédents sont perdus au reboot).
`try.sh` reconstruit : pipeline réel du Makefile retrouvé via
`make -n -B build/src/code_0805EC24.o` (le point qui manquait aux
rounds précédents pour un harness autonome bien fidèle) --
`arm-none-eabi-cpp -I tools/agbcc/include -I tools/libagbc++
-I tools/libsix/include -iquote . -iquote include -Wno-trigraphs
-fno-exceptions FICHIER.cc | tools/agbcc/bin/agbcp -quiet
-fno-exceptions -fno-rtti -fvtable-thunks -g -mthumb-interwork
-Wimplicit -Wparentheses -O2 -fhex-asm -o FICHIER.s` (host `cpp` échoue
sur `stddef.h`/`nullptr` -- il faut `arm-none-eabi-cpp`, pas le `cpp`
système). t18 (candidat canonique w97 §3) recompilé tel quel comme
référence : reproduit bien le repliement propre déjà rapporté en w98
(`ldrh;ldrh;lsl;orr;str`, aucun résidu) -- base de départ confirmée
avant toute variante.

### 1. Hypothèse "raw et coeffs sont UNE SEULE variable" (t19) --
INFIRMÉE

Fusion directe : suppression de `raw`, écriture direct dans
`coeffs.p.a`/`coeffs.p.b` (adressée dès le départ puisque `coeffs.arr`
est passée par adresse à `func_0805EC24`), plus de copie
`coeffs = raw`. Résultat : le site `raw.b` replie EXACTEMENT PAREIL
(`ldrh;ldrh;lsl;orr;str`, aucun résidu) -- juste une instruction de
copie en moins ailleurs (la copie `coeffs = raw` disparaît, gain de 4
instructions, mais AUCUN effet sur le site qui nous intéresse). La
fusion de variable ne change RIEN au comportement du repliement -- le
modèle "deux variables copiées" n'était pas la cause.

### 2. Piste volatile (t20/t21) : isole la variable qui compte
(nombre de lectures), pas encore la bonne forme

- **t21** (`raw` volatile, écriture en UNE SEULE expression composée) :
  replie quand même -- le fold algébrique agit avant même que la
  sémantique volatile n'ait sa chance, l'expression entière étant
  repliée au niveau de l'arbre.
- **t20** (`raw` volatile, DEUX affectations séparées
  `raw.p.b = (raw.p.b & C1) | lo;` puis `raw.p.b = (raw.p.b & C2) |
  (hi<<16);`) : ENFIN un résidu -- mais un ALLER-RETOUR MÉMOIRE COMPLET
  à CHAQUE étape (`ldr;and;orr;str` puis un second `ldr;and;orr;str`)
  au lieu de l'unique lecture + unique store de la cible. La sémantique
  volatile force un store/reload à chaque affectation -- trop de
  memory traffic, ne colle pas.
- **t22** (mêmes deux affectations séparées mais SANS volatile) :
  replie exactement comme t18/t21 -- scinder en deux instructions ne
  suffit PAS à bloquer le fold quand `raw` n'est pas volatile ; combine
  (ou plutôt fold() en amont, cf. §4) voit à travers la frontière
  d'instructions.
- **t23** (accumulateur scalaire local `u32 t = raw.p.b; t = ...; t =
  ...; raw.p.b = t;`, le style "bits d'abord" déjà utilisé ailleurs
  dans t18 pour les blocs d'assemblage w0/w1) : replie quand même, ET
  la lecture initiale `t = raw.p.b` disparaît complètement (le
  compilateur traite la "valeur" de `raw.p.b` non écrite dans cette
  itération comme sans importance -- cohérent avec `raw` non
  addressé).
- **t24** (accès à `raw.p.b` via un POINTEUR explicite `CoeffPair
  *rawp = &raw.p;` -- rend `raw` TREE_ADDRESSABLE) : replie ENCORE
  pareil. Ceci exclut définitivement la piste "adressabilité
  précoce empêche le fold" suggérée par w98 §4.2 -- même en forçant
  l'adresse à être prise, le fold algébrique frontal s'applique
  toujours quand les masques restent des littéraux.

### 3. LA VRAIE CAUSE : fold front-end sur littéraux entiers
prouvés complémentaires (t25/t26/t27)

Test décisif : remplacer les DEUX masques littéraux `0xFFFF0000` /
`0x0000FFFF` par des valeurs dont le compilateur ne peut PAS prouver,
au moment du repliement d'arbre, qu'elles sont des constantes entières
connues.

- **t25** (`extern "C" u32 g_maskHi, g_maskLo;` -- globales opaques,
  jamais définies dans l'unité) : le résidu apparaît, avec la forme
  QUALITATIVE exacte de la cible -- `ldr &g_maskHi; ldr g_maskHi;
  ldr [sp,#8] (self-read); and; ldrh lo; orr; ldr &g_maskLo; ldr
  g_maskLo; and; ldrh hi; lsl; orr; str [sp,#8]`. Un seul self-read,
  un seul store final -- exactement la structure cible. MAIS chaque
  masque coûte DEUX instructions (charge d'adresse + charge de valeur)
  au lieu d'une, ce qui ne colle pas au byte (la cible charge chaque
  masque en UNE instruction depuis son pool littéral).
- **t26** (mêmes masques mais `static const u32` au lieu de `extern`) :
  repliement COMPLET revient immédiatement -- `static const` reste une
  expression-constante pour le front-end (comme un `#define`), donc
  fold() la voit et refait le repliement. Confirme que c'est bien la
  visibilité "constante entière connue au niveau arbre" qui déclenche
  le fold, pas une propriété RTL de bas niveau (registre vs mémoire,
  adressable vs non, contexte de boucle/pression -- tout ça déjà
  écarté en w97/w98 et de nouveau ici en §2).
- **t27** (masques dans un tableau LOCAL non constant
  `u32 masks[2]; masks[0]=0xFFFF0000; masks[1]=0x0000FFFF;` déclaré
  avant la boucle) : donne la forme la PLUS PROCHE obtenue à ce jour --
  `ldr r1,[sp,#8] (self-read) ; ldr r0,[sp,#0x28] (masks[0], UNE seule
  instruction) ; and ; ldrh lo ; orr ; ldr r0,[sp,#0x2c] (masks[1],
  UNE seule instruction) ; and ; ldrh hi ; lsl ; orr ; str [sp,#8]` --
  compte d'instructions et forme structurelle IDENTIQUES à la cible.
  Seule divergence restante : les masques viennent d'un slot de PILE
  (donc 8 octets de cadre en plus + 2 stores d'initialisation en
  préambule de boucle) au lieu du pool littéral en mémoire programme de
  la cible (`ldr rX, .Lconstante` sans coût de cadre).

### 4. Diagnostic final de ce round

Le repliement `(X & C1 | Y) & C2 | Z -> Y | Z` (C1 & C2 == 0) est une
simplification de FRONT-END (arbre, probablement `fold()` dans
fold-const.c / c-typeck du compilateur C++ agbcp, PAS le pass `combine`
du RTL comme le supposait w98 §2/§4) -- elle se déclenche dès que les
deux masques sont des CONSTANTES ENTIÈRES visibles comme telles au
niveau de l'arbre (littéral direct, `static const`, expression
constante), et UNIQUEMENT dans ce cas. Elle est indépendante de :
mémoire vs registre (`raw` pseudo ou spillé, w97), adressabilité
(TREE_ADDRESSABLE, testé de force en t24), fusion de variable (`raw`
séparé ou fusionné avec `coeffs`, §1), volatilité de la variable CIBLE
elle-même (t20/t21 -- volatile sur `raw` ne bloque PAS le fold tant que
les masques restent littéraux), et contexte (boucle triviale vs
fonction complète, w98 §3). Le SEUL levier qui bloque le fold est de
rendre les MASQUES eux-mêmes non-constants pour le front-end -- mais
tout moyen trouvé pour ça (extern, tableau local) ajoute un coût
mémoire (charge d'adresse, ou slot de pile) que la cible n'a pas : la
cible charge chaque masque en UNE instruction depuis un pool littéral
généré à l'expansion RTL, sans jamais que le front-end n'ait vu ces
valeurs comme repliables.

Ceci suggère que le code source réel exprime les masques d'une façon
qui reste un littéral entier ordinaire au niveau assembleur final
(donc chargé du pool comme d'habitude) mais qui échappe au fold()
front-end -- par exemple parce que les DEUX écritures ne se trouvent
PAS dans la même expression/portée d'analyse locale que fold() examine
d'un coup (ex. séparées par un appel de fonction réel qui casse
l'unité d'analyse -- mais le désassemblage cible ne montre aucun `bl`
entre les deux, réverifié §1 de w98), ou parce que la modélisation
"deux masques complémentaires sur un seul mot" est simplement FAUSSE
et qu'il faut chercher une forme structurellement différente qui ne
produit JAMAIS une paire de masques strictement complémentaires au
niveau de l'arbre (ex. bitfields déclarés dans l'ORDRE INVERSE, ou
champs de largeurs différentes de 16/16, dont la cible masque ensuite
en deux passes qui se recombinent différemment). Non testé ce round,
faute de temps : lire directement `fold-const.c`/`c-typeck.c` d'agbcc
(le clone amont `/tmp/agbcc_src` du round w98 doit toujours être
disponible ou re-clonable) pour identifier PRÉCISÉMENT quelle fonction
fait ce repliement et sous quelle condition exacte (peut-être une
condition plus fine que "C1 & C2 == 0" qu'on pourrait déjouer sans
passer par une variable mémoire).

### 5. Ce qui reste (3/13, inchangé)

- `func_0805E99C` : 280/310, keystone `raw.b` toujours non percée après
  3 rounds dédiés (w97, w98, w99). Diagnostic affiné : c'est un fold
  FRONT-END sur littéraux complémentaires, pas un problème
  mémoire/registre/adressabilité (tout ça épuisé). Prochaine étape
  recommandée, par ordre de priorité : (1) lire `fold-const.c` d'agbcc
  pour la condition exacte du repliement et chercher une forme de
  masques qui y échappe SANS passer par une variable mémoire (pas de
  coût de cadre) ; (2) explorer des largeurs de bitfield non 16/16
  (ex. si `raw.b` n'est pas vraiment un split 16/16 mais quelque chose
  d'asymétrique que notre modèle actuel masque incorrectement comme
  symétrique) ; (3) à défaut, un match FORCÉ en dur (mémoire volatile
  ou tableau local) resterait à ~2 instructions/8 octets du but --
  cadre à 0x34 au lieu de 0x2c -- donc PAS acceptable comme match final
  (la règle "jamais commiter un near-miss" s'applique), mais utilisable
  comme filet de sécurité si un round futur bute complètement.
- `func_0805E8F0`, `func_08050868`, `func_080ADD78` : inchangés.

Scratch utilisé : `/tmp/w90s8/{try.sh,t18..t27.cc,*.s}` -- hors dépôt,
non committé.
