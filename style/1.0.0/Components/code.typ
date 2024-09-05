#import "../dependencies.typ": *

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
