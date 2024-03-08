#let code(content, background: rgb("d2f0d4"), foreground: rgb("#000000")) = box(
  fill: background,
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)[#text(fill: foreground)[#raw(content)]]

/*
// @override default #raw style
#show raw.where(block: false): box.with(
  fill: #rgb(#d2f0d4),
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)
*/
