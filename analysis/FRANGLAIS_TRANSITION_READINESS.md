# Readiness source-port de `franglais_transition_impl_tick`

Cette passe ne tente pas de décompiler `func_0804F7A4`. Elle borne la plus
petite couture permettant de déplacer progressivement la responsabilité du
renderer vers le code source, tout en conservant l'assembleur comme fallback.
La carte détaillée est dans `franglais_transition_readiness.json` et se vérifie
avec :

```sh
python3 tools/check_franglais_transition_map.py
```

## Résultat principal

La bonne couture est le wrapper conventionnel `func_08050D3C`
(`0x08050D3C..0x08050D5C`), pas le corps géant `func_0804F7A4` et pas ses deux
appels E99C pris isolément.

`func_08050D3C` reçoit les sept arguments de la méthode publique, déréférence
le handle `r0`, recopie les trois arguments pile, puis appelle le tick legacy.
Ses 32 octets peuvent être remplacés en bloc par un trampoline lointain sans
devoir rejouer une continuation interne. Un wrapper source pourra donc :

1. appeler `func_0804F7A4` avec les sept arguments inchangés ;
2. conserver ce chemin comme comportement par défaut ;
3. observer ou post-traiter la sortie sprites passée en troisième argument ;
4. prendre ensuite la main phase par phase, lorsque des tests runtime existent.

Les appels E99C à `0x0804FF0E` et `0x0805003C` constituent une couture plus
fine sur le plan sémantique : ABI quatre registres, descripteurs complets sur
la pile, sortie et span d'entrée déjà préparés. Ils ne sont cependant pas une
cible de patch sûre aujourd'hui. Chaque site n'offre que le `bl` de quatre
octets, sa continuation est immédiatement vivante, et le payload à
`0x08800000` est hors de portée d'un `bl` Thumb-1. Il faudrait d'abord valider
un veneer local ou un trampoline avec rejeu d'instructions.

## Corrections et preuves nouvelles

- La portée réelle du tick va de `0x0804F7A4` à la prochaine fonction ABI
  conventionnelle `0x0805039C`, soit `0xBF8`/3064 octets. L'ancienne borne
  `0x08050342` était trop courte.
- `sub_08050342` n'est pas un callee autonome : il réutilise `r7` et la frame
  de 184 octets du parent, puis sort par l'épilogue du parent. C'est une
  continuation d'early-exit. Il ne faut jamais en faire un wrapper source.
- L'objet propriétaire fait exactement `0x554` octets, preuve fournie par le
  `__builtin_new` de `func_08050CC0`.
- Les deux appels E99C utilisent le même span local : pointeur à `sp+0x0c`,
  compte `u16` à `sp+0x10`, sortie égale à l'argument d'entrée `r2`.
- Leurs `CompositeDescriptor` sont construits à `sp+0x3c` (`x=52`, `y=92`)
  et `sp+0x2c` (`x=40`, `y=104`). Les offsets écrits correspondent au layout
  E99C documenté dans la carte JSON.
- Le sélecteur de phase est le `u32` à `state+0x08`; la valeur est aussi le
  retour final. La carte conserve seulement les champs dont l'offset et la
  largeur ont une preuve assembleur directe.

## Frontières sûres

| Frontière | Statut | Usage |
|---|---|---|
| `func_08050D3C` | recommandée | wrapper source + fallback legacy + post-traitement |
| E99C `0x0804FF0E` | prête sémantiquement, pas prête au patch | composition du bloc `(52,92)` |
| E99C `0x0805003C` | prête sémantiquement, pas prête au patch | composition du bloc `(40,104)` |
| `sub_08050342` | interdite | continuation dépendante de la frame parent |
| DMA `func_08008F0C` | à laisser legacy | upload tuiles/palette, pas placement variable |

## Étape d'implémentation minimale

Ne modifier le wrapper qu'une fois disponibles : un symbole payload stable,
un test octet du trampoline à `0x08050D3C`, un boot couvrant les phases 0–6,
et un test du premier dialogue avec post-traitement désactivé puis activé.
Jusque-là, cette passe reste volontairement une carte vérifiable et ne touche
ni au renderer ni aux appels E99C.
