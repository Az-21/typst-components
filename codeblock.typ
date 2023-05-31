#let codeblock(content, lang: "", background: luma(240)) = block(
  fill: background,
  inset: 10pt,
  radius: 2pt,
  width: 100%,
)[#text(raw(lang: lang, content))]

/*
// @override default #raw(block: true) style
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 2pt,
  width: 100%
)
*/
