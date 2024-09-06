#import "../Colors/m3.typ": *
#let m3 = material3.blue.dark

#let code(
  content,
  background: m3.primaryContainer,
  foreground: m3.onPrimaryContainer,
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
