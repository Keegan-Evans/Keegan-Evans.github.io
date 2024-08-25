---
title: Using text from Markdown File in Jekyll
---

I find it handy to be able to write text in it's own seperate file that includes nothing but the content I am trying to generate. While there may be multiple ways of then including this text in a page, the following is the method that I have found that is fairly straightforward. I may even eventually write it into its own Liquid operator.

It is easy enough to include a bare text file in Jekyll(which I use for my site authoring), but I really enjoy using Markdown to author and format text and so I would like Jekyll to be able to process any Markdown annotations.

```liquid
{% capture raw_text_variable %}
  {% include target_markdown_file.md %}
{% endcapture %}

{{ raw_text_variable | markdownify }}
```

Use the `capture` Liquid tag to assign the raw contents of the Markdown file to a variable. We get the raw contents by using the `include` tag between the opening and closinng `capture` tags. Then once this variable has been assigned, use the `markdownify` filter to render it as Markdown and display it.