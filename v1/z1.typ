#import "util.typ": *

#problem-statement(
  "Proizvodnja",
)[
Poduzeće proizvodi artikle A i B na dvije grupe strojeva S1 i S2. U promatranom vremenu prva grupa strojeva raspolaže kapacitetom od 12000 radnih sati, a druga grupa kapacitetom od 6000 radnih sati. Vrijeme obrade jedinice artikla A iznosi 3 radna sata na grupi strojeva S1, a dva radna sata na grupi S2. Vrijeme obrade jedinice artikla B iznosi 3 radna sata na S1 a jedan sat na S2. Za realizaciju proizvodnje poduzeće raspolaže sa dovoljno sirovina i radne snage, ali na tržište može plasirati najviše 2500 jedinica artikala A i najviše 3000 jedinica artikala B.

Prodajom poduzeće ostvaruje dobit i to 400€ po jedinici artikla A i 200€ po jedinici artikla B. Potrebno je odrediti optimalni broj artikala A i B za proizvodnu u cilju ostvarenja maksimalne dobiti poduzeća.
]

*Vrsta problema:* problem maksimizacije

$ "Max" Z = 400x_1 + 200x_2 $

#columns(2)[
*Ograničenja:*

$ 3x_1 + 2x_2 <= 12000 $
$ 3x_1 + x_2 <= 6000 $
$ x_1 <= 2500, x_2 <= 3000 $
$ x_1,x_2 >= 0 $

#colbreak()

*Varijable odlučivanja:*

$x_1$ - broj artikla tipa $A$

$x_2$ - broj artikla tipa $B$
]

#lp-table(
  "max",
  (
    "A": [400 €],
    "B": [200 €],
  ),(
    "S1": (
      [3h],
      [2h]
    ),
    "S2": (
      [3h],
      [1h]
    ),
  ),(
    "S1": [12000h],
    "S2": [6000h],
  ),
  activity: [Artikl],
  resource: [Grupa strojeva],
  unit: [radnih sati]
)
