#import "../dependencies.typ": *

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
