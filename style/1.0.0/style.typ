/// Packages
#import "@preview/physica:0.9.3": *
#import "@preview/note-me:0.2.1": *
#import "@preview/splash:0.4.0": tailwind
#import "@preview/showybox:2.0.1": showybox
#import "@preview/name-it:0.1.1": name-it as name
#import "@preview/nth:1.0.1": nths as nth
#import "@preview/fontawesome:0.4.0": *

/// Document style
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
  #show heading.where(level: 4): set block(above: 1em)
  #show heading.where(level: 5): set block(above: 0.5em)

  // @override default styles
  #set list(indent: 1em)
  #set math.mat(delim: "[")
  #set pagebreak(weak: true)
  #set heading(numbering: "1.1.1.1")
  #set outline(indent: true, depth: 4)
  #set math.equation(numbering: "(1)")
  #set enum(numbering: "1a.", indent: 1em)
  #set table(align: center + horizon, inset: 8pt)

  // @override ```Code block``` style
  #show raw.where(block: true): set par(justify: false)
  #show raw.where(block: true): block.with(
    fill: tailwind.neutral-200,
    inset: 10pt,
    radius: 2pt,
    width: 100%,
  )

  // @override `Inline code` style
  #show raw.where(block: false): box.with(
    fill: tailwind.purple-300,
    inset: (x: 0.5em, y: 0em),
    outset: (y: 0.5em),
    radius: 2pt,
  )

  // @override heading styles
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

/// Custom objects
#let boxed-link(
  url,
  display: "",
  background: tailwind.blue-200,
  foreground: tailwind.neutral-950,
  width: 100%,
) = {
  set text(fill: foreground)
  set align(center)
  box(fill: background, width: width, inset: 1em, radius: 2pt)[
    #if (display == "") {
      link(url)
    } else {
      link(url)[#display]
    }
    #super[#fa-icon("arrow-up-right-from-square")]
  ]
}

#let k-link(url, display: "") = {
  set text(fill: tailwind.blue-700)
  if display == "" {
    underline[#link(url)]
  } else {
    underline[#link(url)[#display]]
  }
}

#let code(
  content,
  background: tailwind.violet-300,
  foreground: tailwind.neutral-950,
  font: "JetBrains Mono",
) = {
  set text(fill: foreground, font: font)
  box(
    fill: background,
    inset: (x: 0.5em, y: 0em),
    outset: (y: 0.5em),
    radius: 2pt,
    content,
  )
}

// `showybox` preset
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
#let blue-box = kshowybox(tailwind.blue-600)
#let green-box = kshowybox(tailwind.green-600)
#let purple-box = kshowybox(tailwind.purple-600)

// Checklist
#let checklist-mode(it) = {
  set list(marker: none, indent: 0pt)
  it
}
#let checkbox-done() = {
  fa-icon("square-check", fill: tailwind.green-500)
  h(0.5em)
}
#let checkbox-todo() = {
  fa-icon("square", fill: tailwind.red-500)
  h(0.5em)
}
#let checkbox-semi() = {
  fa-icon("square-minus", fill: tailwind.blue-500)
  h(0.5em)
}
