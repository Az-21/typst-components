#import "../dependencies.typ": *

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
