#import "../dependencies.typ": *
#import "../Colors/m3.typ": *
#let m3 = material3.blue.light

#let boxed-link(
  url,
  display: "",
  background: m3.primaryContainer,
  foreground: m3.onPrimaryContainer,
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
  set text(fill: m3.primaryContainerHighContrast)
  if display == "" {
    underline[#link(url)]
  } else {
    underline[#link(url)[#display]]
  }
}
