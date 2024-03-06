#let color = (
  light_red: rgb("#f0d4d5"),
  light_blue: rgb("#d2e7f0"),
  light_gray: rgb("#eaeaea"),
  light_green: rgb("#d2f0d4"),
  light_yellow: rgb("#efead3"),
  dark_blue: rgb("#2222aa"),
  white: rgb("#ffffff"),
  black: rgb("#000000"),
)

// Style presets
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
  #set par(justify: true)

  // Add equation numbers
  #set math.equation(numbering: "(1)")

  // @override #heading style
  #set heading(numbering: "1.1.1.1 ")

  // @override +enumeration list and -bullet list styles
  #set list(indent: 16pt)
  #set enum(numbering: "1.", indent: 16pt)

  // @override outline (ToC) style
  #set outline(indent: true, depth: 4)
  #show outline: set text(color.dark_blue)

  // @override ```Code block``` style
  #show raw.where(block: true): block.with(
    fill: color.light_gray,
    inset: 10pt,
    radius: 2pt,
    width: 100%
  )

  // @override `Inline code` style
  #show raw.where(block: false): box.with(
    fill: color.light_green,
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  /// @override heading styles
  // = Heading 1
  #show heading.where(level:1): it => block(width: 100%)[
    #v(32pt)
    #counter(heading).display()
    #h(16pt)
    #text(smallcaps(it.body))
  ]

  // == Heading 2
  #show heading.where(level:2): it => block[
    #v(16pt)
    #counter(heading).display()
    #h(16pt)
    #text(it.body)
    #line(length: 100%, stroke: 1pt + luma(180))
  ]

  /// === Heading 3
  #show heading.where(level:3): it => block[
    #v(16pt)
    #counter(heading).display()
    #h(16pt)
    #text(it.body)
  ]

  /// ==== Heading 4
  #show heading.where(level:4): it => block[
    #v(8pt)
    #counter(heading).display()
    #h(8pt)
    #text(it.body)
  ]

  /// ==== Heading 5
  #show heading.where(level:5): it => block[
    #v(8pt)
    #counter(heading).display((_, _, _, _, n) => numbering("A)", n))
    #h(4pt)
    #text(it.body, size: 11pt)
  ]

  // Default pagebreaks to `weak`
  #set pagebreak(weak: true)

  // @override default matrix brace style
  #set math.mat(delim: "[")

  // Append rest of document from the file importing styling config
  #doc
]
