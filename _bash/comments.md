---
title: Bash Comments
layout: page
---

# Using Comments in Bash

In Bash scripting, comments are used to annotate code, making it easier to understand and maintain. Bash supports single-line comments natively and provides workarounds for multi-line comments.

---

# {{page.title}}

## Single line

```bash
# This is a comment
echo "hello world"
```

## Single in line comment

```bash
echo "hello world" # prints hello world
ls -lh "$dir"/* # long list all files inside $dir
```

## Multi line comment style 1

```bash
# This is a multiline comment
# and here is line 2
# Line 3
echo "hello world"
```

## Multi line comment - Here document

```bash
: << 'COMMENT'
This is a multi-line comment. We can add as much text as we want 
between the comment tags and it will be ignored by the shell.
COMMENT
echo "hello world"
```

The key word does not need to be COMMENT. It can be any string. The static part is the `:`, `<<` and `'` around the keyword. Here is another example:

```bash
: << 'HERE'
this is another multiline comment
See?! another line
and another line
HERE
echo "hello world"
```
