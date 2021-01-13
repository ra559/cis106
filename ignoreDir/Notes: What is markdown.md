[_metadata_:author]:- "Robert Alberto"
[_metadata:tags]:- "my notes on Markdown"

# Markdown
---
![md logo](https://cdn.svgporn.com/logos/markdown.svg)

An introduction and cheat sheet to Markdown


# Table of Content
- [Table of Content](#table-of-content)
- [What is Markdown?](#what-is-markdown)
  - [Why should you learn Markdown?](#why-should-you-learn-markdown)
  - [But What can you do with Markdown](#but-what-can-you-do-with-markdown)
  - [What markdown isn't](#what-markdown-isnt)
  - [Formatting in Markdown](#formatting-in-markdown)
    - [Working with lists](#working-with-lists)
    - [Blockquotes](#blockquotes)
    - [Code blocks](#code-blocks)
    - [Links](#links)
    - [Images](#images)
    - [Github Specific Markdown](#github-specific-markdown)



# What is Markdown?
* Is a markup language to write plain text documents.
* Created by John Gruber in 2004.
* Easy to read and write
* Content focus which means that the user does not need to worry about tags like in HTML.
* Easy to learn and portable
* Markdown is future proof since it works with plain text instead of proprietary document formats.
* Multiple implementations of Markdown exists, these are examples:
  * CommonMark
  * Github Flavored - This is what we are using
  * MultiMarkdown

## Why should you learn Markdown?
* Widely use in the industry for:
  * Adding formatting elements to plain text documents
  * Convert plain text documents to HTML Pages
  * Writing projects documentation
  * Used by many notes taking apps, social media pages and even chatting apps like Slack.
  * Used by Github
  * Used by Jekyll and HUGO for static Websites

## But What can you do with Markdown
  * Write presentations fast
  * Generate simple HTML websites fast
  * Generate static websites
  * Have your notes in Github for all your courses
  * Write better documentation

## What markdown isn't
* Markdown is not a replacement for HTML, In the word of its author:
> Markdown is not a replacement for HTML, or even close to it. Its syntax is very small, corresponding only to a very small subset of HTML tags. The idea is not to create a syntax that makes it easier to insert HTML tags. In my opinion, HTML tags are already easy to insert. The idea for Markdown is to make it easy to read, write, and edit prose. HTML is a publishing format; Markdown is a writing format. Thus, Markdown’s formatting syntax only addresses issues that can be conveyed in plain text.
[by By John Gruber](https://daringfireball.net/projects/markdown/syntax#html)


## Formatting in Markdown

* **Headings**
To write heading start with the `#` sign. For example:
This is heading 1: `# Potatoes`
This is heading 2: `## Potatoes 2`
This is heading 3: `### Potatoes 3`
Noticed that the number of `#` indicates the type of heading.
This is the equivalent of the `<h#></h#>` HTML tag.
* **Bold**
To bold any word soround the word with double `*` or double  `_`.
For example:
  * `The cat **eats** the food`
  * `The dog __plays__ with the food`
This will render:
  * The cat **eats** the food
  * The dog __plays__ with the food

> ***IMPORTANT!***
> Github Flavored Markdown (GFM) does not use _ for bold.  

* Italics
For italics use a single `*` or `_`
For example:
  * `The cat *eats* the food`
  * `The dog _plays_ with the food`
This will render:
  * The cat *eats* the food
  * The dog _plays_ with the food

* Strike through
For strike through use double tilde `~~` character:
For example:
  * `The cat ~~eats~~ plays the food`
This will render:
  * The cat ~~eats~~ plays the food

### Working with lists

* **Ordered List**
For order list, start with the number and a period. For example:
This:
```
1. Pets
    1. Dog
    2. Cat
    3. Parrot
2. Food
    1. Hamburger
    2. Pizza
    3. Pasta
3. Jobs
    1. Programmer
    2. Engineer
    3. Administrator
```
Will render like this:
1. Pets
    1. Dog
    2. Cat
    3. Parrot
2. Food
    1. Hamburger
    2. Pizza
    3. Pasta
3. Jobs
    1. Programmer
    2. Engineer
    3. Administrator

* **Unordered List**
To create unordered lists, use a single `*`, `+`, or `-` characters followed by a space. For example:
This
```
* List of Pets
    + Dog
      + Pitbull
    + Cat
      + Persian
    + Parrot
      + Cockatiel
```
Will render like this:
* List of Pets
    + Dog
      + Pitbull
    + Cat
      + Persian
    + Parrot
      + Cockatiel

Notice that the regardless of the symbol used, the rendering was the same.

### Blockquotes
To create a blockquote start with a `>` sign. For example:
This text:
```
> Intelligence is the ability to avoid doing work, 
yet getting the work done. 
Linus Torvalds
```
will render as:
> Intelligence is the ability to avoid doing work, yet getting the work done. 
Linus Torvalds


### Code blocks 
To write a code block you can surround the text with the back tick character or start the text with a tab.
For example, lets write hello world in python:

Using a back tick
```
#!/usr/bin/python3
print('Hello world')
```
Using a tab

    #!/usr/bin/python3
    print('hello world')

If you want to place inline code in your text, use a single back tick. This is is useful when you are writing about a command. for example:
This paragraph:
```
>**How to Update Ubuntu 20.04** 
>>To Update Ubuntu use the command: **`sudo apt update; sudo apt upgrade -y`** where **`sudo`** gives us super user
 privileges, **`apt`** is the program that will update our system, **`update`** is going to refresh the database of
  software locations so that we download upgrades from the right place, and **`upgrade`** will install the new software
   upgrade.
```
> ***IMPORTANT***
> The tab codeblocks formatting is a GFM feature therefore some other renderers may not understand it correctly. Advise: stick to the triple back tics



>**How to Update Ubuntu 20.04** 
>>To Update Ubuntu use the command: **`sudo apt update; sudo apt upgrade -y`** where **`sudo`** gives us super user privileges, **`apt`** is the program that will update our system, **`update`** is going to refresh the database of software locations so that we download upgrades from the right place, and **`upgrade`** will install the new software upgrade. The **`-y`** option allows us to auto answer yes to any Yes|No question that may be asked by the **`upgrade`** command.

Notice that the words surrounded by back tics are rendered in a different font. Also, noticed that I have mixed the bold and code formatting.

### Links
To use links, use this formula:
`[Text here](url here)`
For example:
`[Google](https://google.com) is a search engine`
will render like this
[Google](https://google.com) is a search engine.

Notice that in the rendering, the word `google` appears formatted as a hyperlink.

### Images
Images work similarly to links but with a `!` at the begining. For example:
This text:
```
![Github Logo](https://cdn.svgporn.com/logos/github.svg)
```
![Github Logo](https://cdn.svgporn.com/logos/github.svg)

If you hover over the image,  you can see that the text displayed is the one you entered in the brackets.

### Github Specific Markdown
* Support for checkboxes:
  * Example:
    * `[x] This is checked`
    * [x] This is checked
    * `[ ] This is not checked`
    * [ ] This is not checked
* Auto-Hotlinking
  * When you insert a link into your document, it will make it clickable by default
    * Example: https://google.com
* Code syntax highlight
  * Examples:

Python
```python  
print("hello world")
```
Bash
```bash
echo "hello world"
```
C++
```c++
#include <iostream>
int main() {
    std::cout << "Hello World!";
    return 0;
}
```