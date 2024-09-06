#import "../dependencies.typ": *
#import "../Colors/m3.typ": *
#let m3 = material3

#let kshowybox(
  container,
  onContainer,
  containerMediumContrast,
  onContainerMediumContrast,
  containerHighContrast,
  onContainerHightContrast,
) = showybox.with(
  title-style: (
    color: onContainerHightContrast,
    boxed-style: (
      anchor: (x: left, y: horizon),
      radius: 2pt,
    ),
  ),
  body-style: (color: onContainer),
  footer-style: (color: onContainerMediumContrast),
  frame: (
    border-color: containerHighContrast,
    title-color: containerHighContrast,
    body-color: container,
    footer-color: containerMediumContrast,
    radius: 4pt,
  ),
)

#let blue-box = kshowybox(
  m3.blue.light.primaryContainer,
  m3.blue.light.onPrimaryContainer,
  m3.blue.light.primaryContainerMediumContrast,
  m3.blue.light.onPrimaryContainerMediumContrast,
  m3.blue.light.primaryContainerHighContrast,
  m3.blue.light.onPrimaryContainerHighContrast,
)

#let green-box = kshowybox(
  m3.green.light.primaryContainer,
  m3.green.light.onPrimaryContainer,
  m3.green.light.primaryContainerMediumContrast,
  m3.green.light.onPrimaryContainerMediumContrast,
  m3.green.light.primaryContainerHighContrast,
  m3.green.light.onPrimaryContainerHighContrast,
)

#let red-box = kshowybox(
  m3.red.light.primaryContainer,
  m3.red.light.onPrimaryContainer,
  m3.red.light.primaryContainerMediumContrast,
  m3.red.light.onPrimaryContainerMediumContrast,
  m3.red.light.primaryContainerHighContrast,
  m3.red.light.onPrimaryContainerHighContrast,
)

// TODO: purple-box
