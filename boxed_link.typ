#let boxed_link(url, background: rgb("#d2e7f0"), foreground: rgb("#000000"), size: 10pt, width: 100%) = block(
  width: width,
  fill: background,
  inset: (x: 3pt, y: 0pt),
  outset: (y: 12pt),
  radius: 2pt,
)[
  #align(center,
    text(fill: foreground, size: size, link(url))
  )
]
