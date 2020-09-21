---
layout: page
title: Markdown Tips
catergories: [writing, markdown, blogging]
---

This is a collection of tips and information for writing with markdown.  


## Making Key Symbols

Because markdown can also accept html input, you can use the html keyboard
tag to create key symbols:

```
<kbd>ESC</kbd>
```

makes the symbol: <kbd>ESC</kbd>.  


## Using Unicode Characters

You can specify unicode characters to be displayed in your Markdown
document. You must know the numberical HTML code. [This
Page](https://www.utf8-chartable.de/) is my go-to reference for finding
these. Be sure to select `decimal` under `numerical HTML encoding of the
Unicode character` to get the correct code.  

```
&#10230;
```


produces a right facing arrow or &#10230; 

## Creating Multiparagraph List Items

You can create multi-paragraph list items by including a blank line between the first and second paragraphs of the list item and being sure to include at least one space before the start of the second paragraph so that markdown will indent it as part of the list.

```

- First List Item

- First paragraph of the second list item. You might put anything in here,
  it really depends on what you want to write. When you are ready for the
second paragraph of the item just include a blank line and then at least
one blank space at the beginning of the next paragraph.

   This is the first sentence of the second paragraph of the second list
item. You can add even more.

   This is the third paragraph of the second list item.

- This is the Third List Item.

```

Produces:

- First List Item

- First paragraph of the second list item. You might put anything in here,
  it really depends on what you want to write. When you are ready for the
second paragraph of the item just include a blank space and then at leas
one paragraph at the beginning of the next paragraph.

   This is the first sentence of the second paragraph of the second list
item. You can add even more.

   This is the third paragraph of the second list item.

- This is the Third List Item.

