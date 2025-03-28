#import "util.typ": *

#problem-statement(
  "Žitarice",
)[
Preprodavač žitarica nabavlja te preprodaje rižu i pšenicu. Za nabavu ima 1500 novčanih jedinica i želi napraviti plan prodaje kojim će ostvariti najveći mogući profit. Vreća riže košta 150, a pšenice 120 novčanih jedinica. Poznato je da preprodavač na raspolaganju ima mjesta za skladištenje 10 vreća te da na prodaji vreće riže profitira 11, a na prodaji vreće pšenice 8 novčanih jedinica. Uz navedeno, mora platiti i fiksni trošak najma skladišta koji iznosi 30 novčanih jedinica.

*Napomena:* Fiksni trošak je uvijek prisutan i ne ovisi o vrijednostima varijabli odlučivanja.
]

*Vrsta problema:* problem maksimizacije

$ "Max" Z = 11x_1N + 8x_2N - 30N $

#columns(2)[
*Ograničenja:*

$ x_1 + x_2 <= 10 $
$ 150x_1N + 120x_2N <= 1500N $
$ x_1,x_2 >= 0 $

#colbreak()

*Varijable odlučivanja:*

$x_1$ - broj preprodanih vreča _riže_

$x_2$ - broj preprodanih vreča _pšenice_
]


#lp-table(
  "max",
  (
    "Riža": $ 11N $,
    "Pšenica": $ 8N $,
  ),(
    "Kupnja": (
      $150N$,
      $120N$
    ),
    "Prodaja": (
      [1],
      [1]
    ),
  ),(
    "Kupnja": $ 1500N $,
    "Prodaja": $ 10 $,
  ),
  activity: [Žitarica],
  resource: [Aktivnost]
)
