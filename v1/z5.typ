#import "util.typ": *

#problem-statement(
  "Majstor",
)[
Majstor izrađuje dvije vrste proizvoda P1 i P2 u serijama od 100 komada.

Za proizvodnju jedne serije proizvoda P1 majstor troši 2 sata, s tim da je za pripremu sirovine potrebno također 2 sata na stroju S.

Za proizvodnju jedne serije proizvoda P2 majstor troši 3 sata, a za pripremu na stroju S je potrebno 2 sata.

Stroj S se može koristiti najviše 8 sati dnevno, dok majstor može raditi do 9 sati dnevno.

Potrebno je odrediti koliko proizvoda P1 i P2 majstor treba proizvesti uz navedene uvjete tako da dobit bude najveća moguća.

Poznato je da je dobit proizvođača po seriji proizvoda P1 420 €, a po seriji proizvoda P2 500 €.
]

*Vrsta problema:* problem maksimizacije

$ "Max" Z = 420x_1 + 500x_2 $

#columns(2)[
*Ograničenja:*

$ 2x_1 + 3x_2 <= 9 $
$ 2x_1 + 2x_2 <= 8 $
$ x_1,x_2 >= 0 $

#colbreak()

*Varijable odlučivanja:*

$x_1$ - broj proizvodenih P1

$x_2$ - broj proizvedenih P2
]

#lp-table(
  "max",
  (
    "P1": [420 €],
    "P2": [500 €],
  ),(
    "na proizvodnju": (
      [2h],
      [3h]
    ),
    "na stroju S": (
      [2h],
      [2h]
    ),
  ),(
    "na proizvodnju": [9h],
    "na stroju S": [8h],
  ),
  activity: [Vrsta proizvoda],
  resource: [Utrošeno vrijeme],
  unit: [vremena]
)
