#import "../dependencies.typ": *
#import "../Colors/m3.typ": *

#let checklist-mode(it) = {
  set list(marker: none, indent: 0pt)
  it
}

#let checkbox-done() = {
  fa-icon("square-check", solid: true, fill: material3.green.light.primary)
  h(0.5em)
}

#let checkbox-todo() = {
  fa-icon("square", solid: true, fill: material3.red.light.primary)
  h(0.5em)
}

#let checkbox-semi() = {
  fa-icon("square-minus", solid: true, fill: material3.blue.light.primary)
  h(0.5em)
}
