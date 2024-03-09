# Typst Components
🐦 Reusable, pre-styled components for typst

## Inline Code
### [View source code](https://github.com/Az-21/typst-components/blob/main/components/code.typ)

```md
Inline code with default light green background #code("y =>> x")
Inline code with custom background #code(background: rgb("#d2f0f1"), "x != y")
Inline code with luma background #code(background: luma(230), "y = (m * x) + c")
Inline code with custom foreground #code(foreground: rgb("#42aa21"), "for(;;)")
Too much work? Just `@override` the default `#raw` style.
```

![Inline Code](https://ucarecdn.com/5c148e96-8c85-4e99-9930-40a067a48e5e/typstcomponentscode.png)

## Boxed Link
### [View source code](https://github.com/Az-21/typst-components/blob/main/components/boxed_link.typ)

```md
#boxed_link("https://github.com/default-style/")
#boxed_link("https://github.com/custom-colors/", background: rgb("#2222aa"), foreground: luma(255))
#align(center, boxed_link("https://github.com/custom-width/", width: 50%))
#boxed_link("https://github.com/custom-font-size/", size: 12pt)
```

![Boxed Link](https://ucarecdn.com/173c955e-4b2c-4f25-998c-84fa7460dcf3/typstcomponentsboxedlink.png)

# Favourite Packages
- https://github.com/platformer/typst-algorithms
- https://github.com/Midbin/cades
- https://github.com/FlandiaYingman/note-me
- https://github.com/Leedehai/typst-physics
- https://github.com/Pablo-Gonzalez-Calderon/showybox-package
- https://github.com/jneug/typst-codelst
- https://github.com/kaarmu/typst-palettes
