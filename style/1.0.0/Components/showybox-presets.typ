#import "../dependencies.typ": *

// Showybox presets
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
