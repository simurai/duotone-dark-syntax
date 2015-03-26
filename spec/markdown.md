# hello world
## hello world
### hello world
#### hello world
##### hello world
###### hello world

you can write text [with links](http://example.com) inline or [link references][1].

* one _thing_ has *em* phasis
* two __things__ are **bold**

[1]: http://example.com

---

hello world
===========

```html
<div class="main"></div>
```

> markdown is so cool

    so are code segments

1. one thing (yeah!)
2. two thing `i can write code`, and `more` wipee!


# An exhibit of Markdown

This note demonstrates some of what [Markdown][1] is capable of doing.

*Note: Feel free to play with this page. Unlike regular notes, this doesn't automatically save itself.*

## Basic formatting

Paragraphs can be written like so.
A paragraph is the basic block of Markdown. A paragraph is what text will turn into when there is no reason it should become anything else.

Paragraphs must be separated by a blank line. Basic formatting of *italics* and **bold** is supported. This *can be **nested** like* so.

## Lists

### Ordered list
bla

1. Item 1
2. A second item
3. Number 3
4. Ⅳ

*Note: the fourth item uses the Unicode character for [Roman numeral four][2].*

### Unordered list

* An item
* Another item
* Yet another item
* And there's more...

## Paragraph modifiers

### Code block

    Code blocks are very useful for developers and other people who look at code or other things that are written in plain text. As you can see, it uses a fixed-width font.

You can also make `inline code` to add code into other things.

### Quote

> Here is a **quote**. What this is should be self explanatory. Quotes are automatically indented when they are used.

## Headings

There are six levels of headings. They correspond with the six levels of HTML headings. You've probably noticed them already in the page. Each level down uses one more hash character.

### Headings *can* also contain **formatting**

### They can even contain `inline code`

Of course, demonstrating what headings look like messes up the structure of the page.

I don't recommend using more than three or four levels of headings here, because, when you're smallest heading isn't too small, and you're largest heading isn't too big, and you want each size up to look noticeably larger and more important, there there are only so many sizes that you can use.

## URLs

URLs [can be made](www.google.com) in a handful of ways:

* A named link to [MarkItDown][3]. The easiest way to do these is to select what you want to make a link and hit `Ctrl+L`.
* Another named link to [MarkItDown](http://www.markitdown.net/)
* Sometimes you just want a URL like <http://www.markitdown.net/>.

[![title](image)][link]
[![title](image)](link)
[![title][image]](link)
[![title][image]][link]

## Horizontal rule

A horizontal rule is a line that goes across the middle of the page.

---

It's sometimes handy for breaking things up.

## Images

Markdown can also contain images. I'll need to add something here sometime.

## Finally

There's actually a lot more to Markdown than this. See the official [introduction][4] and [syntax][5] for more information. However, be aware that this is not using the official implementation, and this might work subtly differently in some of the little things.


  [1]: http://daringfireball.net/projects/markdown/
  [2]: http://www.fileformat.info/info/unicode/char/2163/index.htm
  [3]: http://www.markitdown.net/
  [4]: http://daringfireball.net/projects/markdown/basics
  [5]: http://daringfireball.net/projects/markdown/syntax


latex input:		mmd-article-header
Title:				Sample MultiMarkdown Document
Base Header Level:	2
latex mode:			memoir
Keywords:			MultiMarkdown, Markdown, XML, XHTML, XSLT, PDF
CSS:				http://fletcherpenney.net/css/document.css
xhtml header:		<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
copyright:			2011 Fletcher T. Penney.
					This work is licensed under a Creative Commons License.
					http://creativecommons.org/licenses/by-nc-sa/3.0/
latex input:		mmd-natbib-plain
latex input:		mmd-article-begin-doc
latex footer:		mmd-memoir-footer


# Introduction #

As I  add increasing numbers  of features to  MultiMarkdown, I decided  it was
time to create  a sample document to  show them off. Many of  the features are
demonstrated in the [MultiMarkdown User's Guide][], but some are not.

Additionally,  it's easy  for those  features to  get lost  within all  of the
technical  documentation.  This document  is  designed  to *demonstrate*,  not
describe, most of the features of MultiMarkdown.


[MultiMarkdown User's Guide]: http://fletcherpenney.net/mmd/users_guide/
  "MultiMarkdown User's Guide"


# How to Use This Document #

I suggest comparing  the raw text source with the  various final outputs (e.g.
HTML, LaTeX,  PDF, OpenDocument)  in order  to see  what can  be accomplished.
There  will be  many  similarities  between output  formats,  but  also a  few
differences. Tables will end up in different places. Paragraphs won't break in
the same way. But these differences are superficial and are a result of trying
to optimize  each format,  without regard to  identical output  across formats
(which would be virtually impossible).

Remember, the main goal of Markdown\MultiMarkdown  is to allow you to create a
document in  plain text,  with minimal  distraction from  markup, that  can be
transformed into a variety of high quality outputs. Or, to quote John Gruber:

> The overriding design goal for Markdown's formatting syntax is to make it as
readable as possible. The idea is that a Markdown-formatted document should be
publishable as-is,  as plain text,  without looking  like it's been  marked up
with  tags  or  formatting  instructions. While  Markdown's  syntax  has  been
influenced by several existing text-to-HTML filters, the single biggest source
of  inspiration   for  Markdown's   syntax  is  the   format  of   plain  text
email.[#Gruber]


[#Gruber]: John Gruber.  Daring Fireball: Markdown. [Cited January 2006].
  Available from <http://daringfireball.net/projects/markdown/>.


# Where Can I Get a Copy? #

You can download a zipfile containing multiple formats of this document:

* [MultiMarkdown-Gallery](http://fletcher.github.com/MultiMarkdown-Gallery)


This file includes:

*	A plain text file in MultiMarkdown format
*	A Scrivener file
*	An HTML file
*	A PDF
*	An OpenDocument file
*	An OPML
*	A LaTeX file
*	And the included images

All files were generated automatically from the MultiMarkdown source document.


# So, What Can This Document Demonstrate? #


## Metadata ##

First, take  a look  at the  overall structure  of the  document. At  the very
beginning  is  metadata,  including   a  title,  author,  keywords,  copyright
information, etc.  Where possible,  this metadata is  put to  appropriate use,
otherwise it is  stored in a format  designed to be easily  read and minimally
distracting:

* In plain text and XHTML snippets[^snippets], it is located at the top of the
  document.

* In a full XHTML document, is located in the `<head>` section, and the title
  and CSS metadata, if present, are used appropriately.

* In a PDF generated from my XSLT files, metadata is used to generate the
  appropriate fields (title, author, keywords) in the PDF itself. Some PDF
  readers will let you examine this data. Additionally, the title, subtitle,
  author, and copyright are placed at the beginning of the document.

* In a Scrivener document, you can put the metadata in the first File in the
  Binder, but the preferred location is in the "MultiMarkdown Settings..."
  pane (in the File Menu.)

There are a lot of standard metadata keys  that can be used, or you can create
your own and use them as you see fit. Definitely a powerful feature.

[^snippets]: An XHTML  snippet is my terminology for XHTML  code that does not
include the `<html>`, `<head>`, and  `<body>` tags. Most browsers will display
it  properly, but  it is  not a  complete XHTML  document. Without  a `<head>`
section there is nowhere to put metadata(e.g. there is no `<title>`).


## Structure ##

The next thing  to look at is  the overall structure of the  document. You can
visualize  a Markdown  document as  an  outline, with  different sections  and
different levels within those sections. Based on your output format, these can
be used to generate headers, or sections,  or even chapters. It's all based on
what tools you use to process the XHTML output.

Even within the XHTML document, however, you can make use of this structure to
allow  easy navigation  within  the document.  You can  link  directly to  the
[Introduction][] (and to [][Introduction] when using LaTeX), for instance. And
if you are creating  a PDF, it will contain a hierarchy  of section names that
you  can use  to  allow easy  navigation,  if your  PDF  reader supports  this
function.


## Footnotes ##

Footnotes are  very easy to  implement in  MultiMarkdown, as described  in the
MultiMarkdown Syntax Guide.[^somesamplefootnote]

[^somesamplefootnote]: Here is the text of the footnote itself.


## Tables ##

Tables  can be  quite useful  for  showing data  in  a meaningful  way. As  an
example, here is a table comparing [MultiMarkdown vs. Crayons][].


[This is a caption with *italics*][MultiMarkdown vs. Crayons]
| Features                          | MultiMarkdown |  Crayons |
----------------------------------- | :-----------: | :------: |
Melts in warm places                |       No      |    Yes   |
Mistakes can be easily fixed        |      Yes      |    No    |
Easy to copy documents for friends  |      Yes      |    No    |
Fun at parties                      |  No[^parties] | Why not? |

Minimum markup for maximum quality? |      Yes      |    No    |



[^parties]: I guess it depends on what kind of parties you go to...


## Typographical conventions ##

By incorporating John Gruber's [SmartyPants][] program into your workflow, you
can generate more  "correct" typographic punction in your XHTML  pages, and in
your  LaTeX source  if  you are  generating PDF's---this  includes  en and  em
dashes, and ellipses....

Very nice when you want to focus on writing, not grammar.


[!SmartyPants]: http://daringfireball.net/projects/smartypants/


## Image Support ##

If you choose to incorporate images in your documents, this can be easily done
as well. MultiMarkdown  makes it easier to link to  images and include various
attributes.

As   an  example,   here  is   an  image   from  my   website  ---   [Nautilus
Star](#nautilusstar). If you  have a local copy of the  image, you can include
the image in a pdf.

![This is a **bolded** caption][Nautilus Star]

[Nautilus Star]: Nautilus_Star.png "Nautilus Star" width="3in" height="2.4in"


## Bibliography Support ##

MultiMarkdown offers  several mechanisms  for managing bibliographies.  It has
built-in  support   for  basic   citation  and  bibliography   management  and
formatting, or you  can rely on external  tools to handle this  for you. There
aren't  many  citations in  this  document,  but I  think  it  gets the  point
across.[p. 42][#fake]


[#fake]: John Doe. *A Totally Fake Book*.  Vanity Press, 2006.


## Glossary Support ##

MultiMarkdown  has  a  special  format for  footnotes  that  should  represent
glossary terms. This  doesn't make much difference in XHTML  (because there is
no such thing as a glossary in XHTML),  but can be used to generate a glossary
within LaTeX documents.

For example,  let's have  an entry for  `glossary`.[^glossary] And  what about
ampersands?[^amp]

Since we  want the ampersand  entry to  be sorted with  the a's, and  not with
symbols, we put in the optional sort key `ampersand` to control sorting.

	[^glossary]: glossary: Glossary
		A section at the end ...

	[^amp]: glossary: & (ampersand)
		A punctuation mark ...

[^glossary]: glossary: Glossary
	A section at the end ...

[^amp]: glossary: & (ampersand)
	A punctuation mark ...


## Math Support ##

It's pretty easy to include mathematical equations:

\\[ {e}^{i\pi }+1=0 \\]

\\[ {x}_{1,2}=\frac{-b\pm \sqrt{{b}^{2}-4ac}}{2a} \\]


You can also include formulas within a sentence, such as
\\({x}^{2}+{y}^{2}=1\\).


# Now What? #

Get out there and try it. Let me know what you think. Let me know what doesn't
work. Let me know what you think is missing.

In other words, help me make it better!

You can get more information on my web site:

*	<http://fletcherpenney.net/multimarkdown>

You can also:

* Email me:
	<mailto:owner@fletcherpenney.net>

* Join the MultiMarkdown discussion list:
	<http://groups.google.com/group/multimarkdown>

* Join the Markdown discussion list:
	<http://six.pairlist.net/mailman/listinfo/markdown-discuss>


```yaml
invoice: 34843
date   : 2001-01-23
bill-to: &id001
given  : Chris
family : Dumars
address:
  lines: |
    458 Walkman Dr.
    Suite #292
city    : Royal Oak
state   : MI
postal  : 48046
```
