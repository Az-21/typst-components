#import "dependencies.typ": *

#let style(doc) = [
  #set page(
    paper: "a4",
    margin: auto,
    numbering: "1",
    number-align: center,
  )

  // Font
  #set text(12pt, lang: "en")
  #show math.equation: set text(font: "New Computer Modern Math")
  #show raw: text.with(font: "JetBrains Mono")

  // Spacing
  #set par(justify: true, leading: 1.5em)
  #show raw.where(block: true): set par(leading: 0.8em)
  #show heading.where(level: 1): set block(above: 2em)
  #show heading.where(level: 2): set block(above: 3em)
  #show heading.where(level: 3): set block(above: 2em)
  #show heading.where(level: 4): set block(above: 2em)
  #show heading.where(level: 5): set block(above: 1em)

  // Better defaults
  #set list(indent: 1em)
  #set math.mat(delim: "[")
  #set pagebreak(weak: true)
  #set heading(numbering: "1.1.1.1")
  #set outline(indent: true, depth: 4)
  #set math.equation(numbering: "(1)")
  #set enum(numbering: "1a.", indent: 1em)
  #set table(align: center + horizon, inset: 8pt)

  // ```Code block``` style
  #show raw.where(block: true): set par(justify: false)
  #show raw.where(block: true): block.with(
    fill: tailwind.neutral-200,
    inset: 10pt,
    radius: 2pt,
    width: 100%,
  )

  // `Inline code` style
  #show raw.where(block: false): box.with(
    fill: tailwind.blue-300,
    inset: (x: 0.5em, y: 0em),
    outset: (y: 0.5em),
    radius: 2pt,
  )

  // Heading 1
  #show heading.where(level: 1): it => block(width: 100%)[
    #counter(heading).display()
    #h(1em)
    #text(smallcaps(it.body))
  ]

  // Heading 2
  #show heading.where(level: 2): it => block[
    #set block(spacing: 0.4em)
    #counter(heading).display()
    #h(1em)
    #text(it.body)
    #line(length: 100%, stroke: 1pt + luma(180))
  ]

  // Heading 3
  #show heading.where(level: 3): it => block[
    #counter(heading).display()
    #h(1em)
    #text(it.body)
  ]

  // Heading 4
  #show heading.where(level: 4): it => block[
    #counter(heading).display()
    #h(1em)
    #text(it.body)
  ]

  // Heading 5
  #show heading.where(level: 5): it => block[
    \u{25B6}
    #h(1em)
    #text(it.body, size: 11pt)
  ]

  #doc
]
