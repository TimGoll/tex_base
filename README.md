# TeX Base

TeX Base is my baselayout used and created by me. It follows a constant design line though the complete file and introduces many nice to have commands.

## Images

There are two types of predefined image boxes. Single and double image box. Additionally the single image bo can be used without a description.

```tex
\imgbox[width]{path}{ref}{title}
\imgboxdesc[width]{path}{ref}{title}{desc}
\doubleimgboxdesc{ref_all}{path1}{title1}{ref1}{path2}{title2}{ref2}{desc_all}{title_all}
```

To create an imagebox with multiple images or images without the same dimension, a basebox has to be initialized.

```tex
\baseboxdesc{content}{ref}{title}{desc}
```

## Code

Adding code to your document is very easy thanks to these new boxes. One is with a description, the other without.

```tex
\codeboxdesc[fist_line]{lang}{path}{ref}{title}{desc}
\codebox[fist_line]{lang}{path}{ref}{title}
```

A more minimalistic version for some single line uses like command line prints, this command combination can be used.

```tex
\highlightbox{width}{
    \inlinetext{code}
}
```

A great feature is the in code referencing. Up to 9 markings per listing can be defined with a `\llabel` where the symbols in the front and back are escape characters defined in `inc/syntax_highlight.tex`. They now can be referenced everywhere in code with `\refnum`.

```tex
\refnum{line_ref}
```

```txt
/*@\llabel{line_ref}@*/
```

## Other Commands

A wrapper for the tex `\ref` command has been added. It adds a prefix to the reference in text. This prefix is defined in `inc/styling.tex`

```tex
\refn[type]{ref}
```
Inline code highlight is done with this command:

```tex
\code{code}
```