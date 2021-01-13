---
title:
- Markdown
author:
- Robert Alberto
theme:
- Copenhagen
---

![md logo](https://cdn.svgporn.com/logos/markdown.svg)

An introduction to Markdown

# What is Markdown?

* Markdown is a markup language that let's you write plain text documents 
with a few lightweight annotations that specify how you want the document formatted. 
* Created by John Gruber in 2004.
* Markdown is easy to read and write and it is content focus which means that the user does not need to worry about tags like in HTML.
* Markdown is future proof since it works with plain text instead of proprietary document formats.
* Multiple implementations of Markdown exists, these are examples:
  * CommonMark
  * Github Flavored - This is what we are using
  * MultiMarkdown

# What can you do with Markdown?

* Add formatting to plain text
* Convert plain text documents to HTML, PDF, Docx, and Ppx
* Used by other technologies like:
  * Github a Gitlab
  * HUGO and Jekyll static site generators
  * Notes taking apps, social media pages and communication platforms like Slack.
* Write industry standard documentation 

# Headings

* Headings are used to guide readers through a document. In general, headings indicate what the following paragraph or section is about.
* To format any text as a heading in Markdown, start the line with a `#` symbol.
* Markdown support different levels of headings just like HTML or your typical document editor. 
* Multiple `#` indicate a smaller heading. For example:
```
# This is a heading 1
## This is a heading 2
### This is a heading 3
#### This is a heading 4
```
# Working with paragraphs

* To write paragraphs you do not need to add nothing to the beginning of the line, simply, start typing.
* Bold Text
  * If you want to bold any word or sentence in a paragraph, start the word with two `**` without any space between the `*` and the word and end the word in the same fashion. For example:
  * `I **love** Linux.`
  * `Markdown is a **lightweight markup language** for creating formatted text using a **plain-text editor.**` 

 
# Working with paragraphs (cont)

* Italics Text
  * If you want to italicize a word or sentence, use a single `*` and end in the same fashion. For example:
  * `I *love* Linux.`
  * `Markdown is a *lightweight markup language* for creating formatted text using a **plain-text editor.*` 
* Strike through
  * For strike through use double tilde `~~` character. For example:
    * `I ~~love~~ Linux.`
    * `Markdown is a ~~lightweight markup language~~ for creating formatted text using a ~~plain-text editor.~~`
  

> ***IMPORTANT:*** Markdown does not support underline because by default underline signifies a link (URL).