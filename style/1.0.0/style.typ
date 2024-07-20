// External packages
#import "@preview/physica:0.9.3": *
#import "@preview/note-me:0.2.1": *
#import "@preview/splash:0.4.0": tailwind
#import "@preview/showybox:2.0.1": showybox
#import "@preview/name-it:0.1.0": name-it as name
#import "@preview/nth:1.0.1": nths as nth

// ------------------------------------------------------------------------- //

// Page style preset
#let style(doc) = [
  // Page layout
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
  #show heading.where(level: 1): set block(above: 5em)
  #show heading.where(level: 2): set block(above: 4em)
  #show heading.where(level: 3): set block(above: 4em)
  #show heading.where(level: 4): set block(above: 3em)
  #show heading.where(level: 5): set block(above: 2em)

  // Add equation numbers
  #set math.equation(numbering: "(1)")

  // @override #heading style
  #set heading(numbering: "1.1.1.1")

  // @override +enumeration list and -bullet list styles
  #set list(indent: 1em)
  #set enum(numbering: "1a.", indent: 1em)

  // @override outline (ToC) style
  #set outline(indent: true, depth: 4)

  // @override ```Code block``` style
  #show raw.where(block: true): block.with(
    fill: tailwind.neutral-200,
    inset: 10pt,
    radius: 2pt,
    width: 100%,
  )

  // @override `Inline code` style
  #show raw.where(block: false): box.with(
    fill: tailwind.emerald-100,
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  /// @override heading styles
  // = Heading 1
  #show heading.where(level: 1): it => block(width: 100%)[
    #counter(heading).display()
    #h(1em)
    #text(smallcaps(it.body))
  ]

  // == Heading 2
  #show heading.where(level: 2): it => block[
    #set block(spacing: 0.4em)
    #counter(heading).display()
    #h(1em)
    #text(it.body)
    #line(length: 100%, stroke: 1pt + luma(180))
  ]

  /// === Heading 3
  #show heading.where(level: 3): it => block[
    #counter(heading).display()
    #h(1em)
    #text(it.body)
  ]

  /// ==== Heading 4
  #show heading.where(level: 4): it => block[
    #counter(heading).display()
    #h(1em)
    #text(it.body)
  ]

  /// ==== Heading 5
  #show heading.where(level: 5): it => block[
    \u{25B6}
    #h(1em)
    #text(it.body, size: 11pt)
  ]

  // Default pagebreaks to `weak`
  #set pagebreak(weak: true)

  // @override default matrix brace style
  #set math.mat(delim: "[")

  // Append rest of document from the file importing styling config
  #doc
]

// ------------------------------------------------------------------------- //

// Create custom `showybox` styles
#let kshowybox(color) = showybox.with(
  title-style: (
    boxed-style: (
      anchor: (x: left, y: horizon),
      radius: 2pt,
    ),
  ),
  frame: (
    title-color: color.darken(40%),
    body-color: color.lighten(90%),
    footer-color: color.lighten(70%),
    border-color: color.darken(40%),
    radius: 2pt,
  ),
)

#let bluebox = kshowybox(tailwind.blue-600)
#let greenbox = kshowybox(tailwind.green-600)
#let purplebox = kshowybox(tailwind.purple-600)

// ------------------------------------------------------------------------- //
