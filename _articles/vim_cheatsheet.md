# Vim Cheatsheet
I know that there are lots of other pages/sheets around, but I often find that
keeping my own is super helpful for actually remembering. Alternatively if I
do end up forgetting, if I make the sheet myself, it is much more likely to be
directly applicable to the things that I want to do. As an illustrative
annecdote, I had a friend from high school who had an older vehicle and had a
repair that he needed to make to it for which he was unable to find a good
tutorial or instruction set for. So he made a video about the process and
uploaded it to youtube. Several years later he had the same failure in another
used vehicle of the same type. Forgetting that he had already performed the
repair, he looked up information on doing the same repair and ended up using
his own video, saying that it was much clearer and specific than other
information he had found!

Upon starting this page, my inuition is that it will mostly be filled with
"intermeadiate" level information. I find that for most software related
stuff, this is the stage that is the hardest to grow into(but important as
most 'Advanced' topics are reliant on having the basics and intermeadiate
level things down. I also find that there is a lot less good information on
these topics[for a variety of reasons I
believe]("keeganevans.com/_articles/breaking_beyond_the_basics.html"). If the
link is dead, sorry, it will be a future article.

## Registers

Beyond the speed of small editing movements available in VIM, another large
jump in speed can come with the use of registers to move chunks of text
around. All of the same movements as used for basic functionality are
applicable here. Just as you can delete 13 rows with `13dd`, you can yank
multiple lines into a register by specifying the line number and then the yank
to register command. What is a register and how do I yank to it? Let's start
with a command and then later we can dive into what a register is and how it
works!

They also can be used to store/utilize macros, though I have not explored this
use much, though I plan to make doing so a priority soon.

First off registers are places built into vim to hold chunks of text in a
convenient to access manner. They also can be used to store/utilize macros,
though I have not explored this use much, though I plan to make doing so a
priority soon. There are a variety of types of registers that There are a
variety of types of registers that can be broken down into two main
categories:
- unnamed registers: You have probably worked with these if you have learned
  anything beyond how to open and close a file with vim.

  - delete and yank functionality in vim are implemented using their own
    'unnamed' set of registers. I also include implicitly named registers in
    this category such as the 'numbered' yank registers and the expression and
    search registers.

- named registers. Manually assignable registers that will store arbitrary
  bits of text for you, so that you can easily insert these bits of text
  elsewhere(including in entirely different file locations (as long as you are
  using the same session?).

### Named Registers
A common introduction to registers is through the named registers that let you
put some text in and insert it elsewhere with a few keystrokes!

One of my favorite ways to add some content to a register is to just yank it
into the register, all of the same commands that you can use for selecting the
yanked text are the same, just now instead of the text being pulled into the
unnamed 'yank' register, you store it safely in a new named location that you
choose the label of and is preserved(well, more like not automatically
overwritten) for the rest of your editing session. Persisting registers
between sections is a topic for later.

What can we call our registers? You can use any single alpha character, upper
or lower case (that is ASCII 0x41-0x5A & 0x61-0x7A). Upper and lowercase
designations actually point to the same register with the same alphabetical
value, but if you use the lowercase symbol, you will overwrite the current
contents of the register, while with the uppercase symbol, you _append the
target to the end of the register_. When working with a new blank register,
hte effect is the same. While you are limitted to a single character, you will
be using these registers to _quickly_ insert text, so you will not be wanting
to have to type out a long name anyways, especially if you are just moving
some bit of text from one location to another. For the simplest example, lets
yank the line where our cursor currently lies into a buffer called `a`:

```
"ayy
```

The `"{register_name}` portion of the command tells vim, perform the following
command using the register of `register_name`. So you can use any other
commands you know, but simply with the that particular register ase either the
input or destination.


## Search and replace

### Specifiying Range
#### Location Chart
| Character | Location |
|:-:|:-:|
| . | Current Line |
| $ | Last Line |
| % | Entire File |
| +X | From starting location to the next `X` lines |
| '<, '> | beginnning and end of visual selection |
| 'x | mark x (`'x`)[^1] |

[^1]: You can use different marks to designate the beginning and ending of the
  search.
<!-- Drafts: future/inprogress topics
## Linewise vs Characterwise Registers
## Displaying Whitespace Characters
-->
