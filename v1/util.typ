
#import "@preview/tablex:0.0.9": *

#let problem-counter = counter(figure.where(kind: "problem"))

#let problem-statement(
  name,
  content
) = {
  show figure.where(kind: "problem"): it => {
    it.body
  }

  figure(
    kind: "problem",
    caption: name,
    supplement: "Zadatak",
    align(left,box(
      fill: blue.lighten(70%),
      inset: (
        top: 10pt,
        left: 5pt,
        right: 5pt,
        bottom: 10pt,
      ),
      radius: 5pt,
      context [
        #heading(level: 2)[Zadatak #{problem-counter.display()}: #name]
        #v(10pt)
        #content
      ]
    ))
  )
}

#let lp-table(
  problem-kind,
  processes,
  resource-use,
  availability,
  activity: [Aktivnost],
  resource: [Resurs],
  unit: [resursa _i_],
  value: [Z],
) = {
  if ("max", "min").find(it => it == problem-kind) == none {
    panic("invalid problem-kind argument; must be \"max\" or \"min\"")
  }

  let contents = ()
  
  for (name, use) in resource-use.pairs() {
    let a = availability.at(name, default: none)
    contents.push(cellx(align: right, name))
    contents = contents + use.map(it => cellx(align: center, if it == none {
      $0$
    } else {
      it
    }))
    for i in range(0, processes.len() - use.len()) {
      contents.push(cellx(align: center, $0$))
    }
    if a != none {
      contents.push(cellx(align: center, a))
    } else {
      contents.push(cellx(align: center, $0$))
    }
  }

  tablex(
    columns: (
      auto,
      ..((1fr,) * processes.len()),
      auto
    ),
    auto-hlines: false,
    hlinex(),
    cellx(
      rowspan: 3,
      align: center+bottom,
      resource
    ),
    hlinex(),
    cellx(
      colspan: processes.len(),
      align: center,
      if problem-kind == "max" [
        *Količina #unit korištena#linebreak()za jedinicu aktivnosti*
      ] else [
        *Količina #unit dostupna#linebreak()za jedinicu aktivnosti*
      ]
    ),
    cellx(
      rowspan: 3,
      align: bottom,
      align(center, if(problem-kind == "max") [
        *Količina#linebreak()dostupnih#linebreak()#unit*
      ] else [
        *Minimalna#linebreak()potreba#linebreak()#unit*
      ])
    ),
    cellx(
      colspan: processes.len(),
      align: center,
      activity
    ),
    hlinex(),
    ..processes.keys().map(it => cellx(align: center, it)),
    hlinex(),
    ..contents,
    hlinex(),
    cellx(align: right)[
      *Prinos #value po jedinici aktivnosti*
    ],
    ..processes.values().map(it => cellx(align: center, it)),
    hlinex(end: 1 + processes.len()),
    [],
    vlinex(end: 3 + resource-use.len())
  )
}