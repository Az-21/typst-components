# Typst Components
🐦 Reusable, pre-styled components for typst

## Note

[View source code](https://github.com/Az-21/typst-components/blob/main/note.typ)

```md
#note[Simple note.]
#note(title: "Important")[Note with custom header.]
#note(outline_color: rgb("#3c8862"))[Note with custom outline color.]
#note(outline_color: luma(220))[Note with custom luma.]
#note(leading: "🐦")[🥚 Note 🐣 with 🐤 custom 🐥 leading 🦢 icon.]
#note(leading: "Note")[Note with custom leading text.]
#note(leading: "  󰨞 ")[Note with custom leading NerdFont glyph.]
```

![Notes](https://ucarecdn.com/55878717-67ba-4f79-9aee-7301e9ed3b70/typstcomponentsnote.png)

## Inline Code

[View source code](https://github.com/Az-21/typst-components/blob/main/code.typ)

```md
Inline code with default light green background #code("y =>> x")
Inline code with custom background #code(background: rgb("#d2f0f1"), "x != y")
Inline code with luma background #code(background: luma(230), "y = (m * x) + c")
Inline code with custom foreground #code(foreground: rgb("#42aa21"), "for(;;)")
Too much work? Just `@override` the default `#raw` style.
```

![Inline Code](https://ucarecdn.com/5c148e96-8c85-4e99-9930-40a067a48e5e/typstcomponentscode.png)

## Code Block

[View source code](https://github.com/Az-21/typst-components/blob/main/codeblock.typ)

````md
#codeblock(lang: "cs", // background: luma(240),
"// Calculate slope using two discrete points on the line
public static double CalculateSlope(Point p1, Point p2)
{
  throw new NotImplementedException;
}
"
)

Or simply `@override` the default `#raw(block: true)` style.
```cs
// Calculate slope using equation of the line
public static double CalculateSlope(Line y)
{
  throw new NotImplementedException;
}
```
````

![Codeblock](https://ucarecdn.com/9a340f4d-9697-4bec-b8bf-5087a5a01316/typstcomponentscodeblock.png)
