#import "util.typ": *

#problem-statement(
  "Prijevoz hladnjačama",
)[
Lancu supermarketa su na raspolaganju dvije hladnjače za prijevoz namirnica. Prva hladnjača ima 20 kubičnih jedinica hlađenog prostora i 40 kubičnih jedinica običnog prostora, dok druga hladnjača ima 30 kubičnih jedinica hlađenog i 30 kubičnih jedinica običnog prostora. Otpremnik treba organizirati, s određenim brojem vožnji jedne i druge hladnjače, prijevoz 90 kubičnih jedinica lako pokvarljive robe koja se mora prevoziti u hladnjaku i 120 kubičnih jedinica robe koja se ne prevozi u hladnjaku. Cilj je minimizirati troškove ako je poznato da jedinični troškovi prijevoza za prvu hladnjaču iznose 30 € po jednoj vožnji, a za drugu hladnjaču 20 € po jednoj vožnji.
]

*Vrsta problema:* problem minimizacije

$ "Min" Z = 30x_1 + 20x_2 $


#columns(2)[
*Ograničenja:*

$ 20x_1 + 30x_2 >= 90 $

$ 40x_1 + 30x_2 >= 120 $

$ x_1, x_2 >= 0 $

#colbreak()

*Varijable odlučivanja:*

$x_1$ - broj vožnji robe u prvoj hladnjači

$x_2$ - broj vožnji robe u drugoj hladnjači
]

#lp-table(
  "min",
  (
    "Prva": [30 €],
    "Duga": [20 €],
  ),(
    "Hlađeni": (
      $20 j^3$,
      $30 j^3$
    ),
    "Obični": (
      $40 j^3$,
      $30 j^3$
    ),
  ),(
    "Hlađeni": $90 j^3$,
    "Obični": $120 j^3$,
  ),
  activity: [Hladnjača],
  resource: [Vrsta prostora],
  unit: [kubičnih jedinica]
)
