#import "util.typ": *

#problem-statement(
  "Životinjska prehrana",
)[
Za prehranu životinja se koriste dvije vrte stočne hrane:
- Kilogram stočne hrane H1 sadrži 20 grama masti, 10 grama proteina i 80 grama ugljikohidrata te košta 2,5 €.
- Kilogram stočne hrane H2 sadrži 30 grama masti, 30 grama proteina i 60 grama ugljikohidrata te košta 3 €.

Svaka životinja mora dnevno u hrani dobiti najmanje 18 grama masti, 12 grama proteina i 48 grama ugljikohidrata. Potrebno je odrediti koliko koje hrane treba dnevno davati svakoj pojedinoj životinji a da pritom troškovi njezine prehrane uz navedene uvjete budu minimalni.
]

*Vrsta problema:* problem minimizacije

$ "Min" Z = 2.5x_1 + 3x_2 $


#columns(2)[
*Ograničenja:*

$ 20x_1 + 30x_2 >= 18 $

$ 10x_1 + 30x_2 >= 12 $

$ 80x_1 + 60x_2 >= 48 $

$ x_1, x_2 >= 0 $

#colbreak()

*Varijable odlučivanja:*

$x_1$ - broj dane hrane tipa H1

$x_2$ - broj dane hrane tipa H2
]

#lp-table(
  "min",
  (
    "H1": [2.5 €],
    "H2": [3 €],
  ),(
    "Masti": (
      $20g$,
      $30g$,
    ),
    "Proteini": (
      $10g$,
      $30g$,
    ),
    "Ugljikohidrati": (
      $80g$,
      $60g$,
    )
  ),(
    "Masti": $18g$,
    "Proteini": $12g$,
    "Ugljikohidrati": $48g$,
  ),
  activity: [Stočna hrana],
  resource: [Sastav],
  unit: [dnevnog unosa]
)
