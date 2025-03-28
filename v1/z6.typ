#import "util.typ": *

#problem-statement(
  "Voćnjak",
)[
Poljoprivrednik ima $640 m^2$ zemlje na koju želi posaditi voćke. U obzir dolaze stabla naranče, kruške, jabuke i limuna.

Cilj je isplanirati sadnju stabala na navedenoj površini kako bi ostvario najveće moguće poticaje. Pritom mora voditi računa o navedenim uvjetima:

- svako stablo naranče treba $16 m^2$ zemlje, kruške $4 m^2$ zemlje, jabuke $8 m^2$ zemlje, limuna $12 m^2$ zemlje
- za svako stablo naranče potrebno je 30h rada, za stablo kruške 5h rada, jabuke 10h rada, limuna 20h rada, a poljoprivrednik ima 900h godišnje na raspolaganju.
- radi suše, navodnjavanje je ograničeno pa poljoprivrednik ima samo $200 m^3$ vode godišnje na raspolaganju. Godišnja potreba vode stabla naranče je $2 m^3$, kruške $1 m^3$, jabuke $1 m^3$, limuna $2 m^3$
- poticaji iznose 50 novčanih jedinica za svako stablo naranče, 25 novčanih jedinica za svako stablo kruške, 20 novčanih jedinica za svako stablo jabuke, 30 novčanih jedinica za svako stablo limuna.
]

*Vrsta problema:* problem maksimizacije

$ "Max" Z = 50x_1N + 25x_2N + 20x_3N + 30x_4N $

#columns(2)[
*Ograničenja:*

$ 16x_1 + 4x_2 + 8x_3 + 12x_4 <= 640 $
$ 30x_1 + 5x_2 + 10x_3 + 20x_4 <= 900 $
$ 2x_1 + 1x_2 + 1x_3 + 2x_4 <= 200 $
$ x_1,x_2 >= 0 $

#colbreak()

*Varijable odlučivanja:*

$x_1$ - broj posađenih stabla _naranče_

$x_2$ - broj posađenih stabla _kruške_

$x_3$ - broj posađenih stabla _jabuke_

$x_4$ - broj posađenih stabla _limuna_
]


#lp-table(
  "max",
  (
    "Naranča": $ 50N $,
    "Kruška": $ 25N $,
    "Jabuka": $ 20N $,
    "Limun": $ 30N $,
  ),(
    "Površina": (
      $16 m^2$,
      $4 m^2$,
      $8 m^2$,
      $12 m^2$,
    ),
    "Rad": (
      [30 h],
      [5 h],
      [10 h],
      [20 h],
    ),
    "Voda": (
      $2 m^3$,
      $1 m^3$,
      $1 m^3$,
      $2 m^3$,
    ),
  ),(
    "Površina": $ 640 m^2 $,
    "Rad": [900 h],
    "Voda": $200 m^3$,
  ),
  activity: [Sorta stabla],
  resource: [Potreba]
)
