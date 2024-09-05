# Typst Components
🐦 Reusable, pre-styled components for typst

## Inline Code
### [View source code ↗️](https://github.com/Az-21/typst-components/blob/main/components/code.typ)
```typst
#code(
  "if(success) { return [>=, <=, ===, !=, ***]; }",
  background: tailwind.violet-300,  // Default: #rgb("#d2f0d4")
  foreground: tailwind.neutral-900, // Default: #rgb("#000000")
)
```
![Inline Code](https://ucarecdn.com/629e6b96-125f-4362-9465-cb9fd03e76b5/typstcomponentscode.jpeg)

## Boxed Link
### [View source code ↗️](https://github.com/Az-21/typst-components/blob/main/components/boxed_link.typ)
```typst
#boxed_link(
  "https://github.com/Az-21/",
  background: tailwind.emerald-900, // Default: #rgb("#d2e7f0")
  foreground: tailwind.emerald-100, // Default: #rgb("#000000")
  size: 12pt,                       // Default: 10pt
  width: 50%,                       // Default: 100%
)
```
![Boxed Link](https://ucarecdn.com/08fdcdca-8097-403b-a94e-e685e6e2a226/typstcomponentsboxedlink.jpeg)

## Sync
Move changes from `git` repo to `@local` Typst folder, and vice versa.
```sh
# git -> @local
python ./sync.py --from-git-to-local

# @local -> git
python ./sync.py --from-local-to-git
```

## Other Typst Repos
### Typst Material You
Utility to parse material you theme for Typst
![](https://ucarecdn.com/32edf9f5-c053-4c16-8040-217f408712d7/typstm3green.jpg)
Get it on https://github.com/Az-21/material-you-adapter
