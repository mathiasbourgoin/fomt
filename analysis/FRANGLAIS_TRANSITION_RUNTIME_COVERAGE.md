# Couverture runtime de `func_08050D3C`

## Résultat

Le wrapper conventionnel `func_08050D3C` est atteignable dès le boot frais,
sans save ni savestate. Le scénario borné existant (`820` frames rapides puis
`120` frames instruction-stepped) l'appelle 61 fois et observe naturellement
les phases `0`, `1`, `2`, `3` et `6`.

Le premier traceur cherchait à tort `core.cpu.pc == 0x08050D3C`. Comme tous
les autres traceurs Thumb du projet, il faut comparer
`core.cpu.pc - 2 == 0x08050D3C`. Ce décalage explique entièrement l'ancien
faux résultat « wrapper_calls=0 ».

Commande de validation naturelle :

```sh
python3 tools/test_franglais_transition_boot_phases.py fomt.gba
```

Résultat reproductible :

```text
wrapper_calls=61 phase_counts=0:12, 1:10, 2:10, 3:1, 6:28
first_seen(frame,selector)=0:(844,0), 1:(845,0), 2:(886,0),
                           3:(885,0), 6:(857,0)
```

## Couverture des phases 4 et 5

L'assembleur fournit une condition étroite, sans hypothèse UI : après neuf
ticks de phase 1, le `u32` à `TransitionState+0xEC` choisit la phase suivante :

| sélecteur | phase |
|---:|---:|
| 0 | 3 |
| 1 | 4 |
| 2 | 5 |

Le boot automatique conserve la valeur 0 ; il ne peut donc pas couvrir 4 et
5 à lui seul. Le mode `--cover-all` rejoue trois boots indépendants et injecte
uniquement les valeurs 1 puis 2 dans la RAM de l'émulateur lorsque le même
objet entre en phase 1. Il ne modifie ni la ROM ni le comportement de
production. Il vérifie ensuite l'union des phases :

```sh
python3 tools/test_franglais_transition_boot_phases.py \
  fomt.gba --cover-all --require-all
```

Résultat : phases `0..6` toutes atteintes ; phase 4 vue quatre fois au premier
frame `855`, phase 5 vue quatre fois au premier frame `855`.

## Usage pour le futur trampoline

Ce test donne deux niveaux complémentaires :

1. le scénario naturel protège le chemin réellement suivi au boot ;
2. la couverture synthétique protège les sept sorties du dispatcher avant de
   déplacer la propriété du renderer côté source.

Le prochain test du trampoline doit exécuter exactement ces deux niveaux sur
une ROM témoin et une ROM trampolinée, comparer les séquences
`(frame, phase, selector)` et garder le premier dialogue comme test visuel
séparé. Aucun besoin de reprendre `func_0805E99C` pour installer cette garde.
