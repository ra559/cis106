---
layout: page
title: Control Statements
---

> Note: Work in progress

# {{page.title}}

Control statements are used to control the flow of a script. In bash, we can use the following control statements:
* `test` command
* `if/else/elif` 
* `[]`
* `[[]]`
* `case`
* For/while/until loops

In this guide, we will explore examples of each.


## test command
The `test` command in used to evaluate expressions if a expression is `true` or `false`. Examples of when this command is used includes:

* Checking file attributes (e.g., existence, permissions, size).
* Comparing strings (e.g., equality, non-emptiness).
* Performing numeric comparisons

There are two ways of using test: <br> `test`+ `condition` and `[ condition ]`

To use test we need to rely on the command exit status. In bash every command has an exit status. Zero (0) means that the command executed successfully where anything else other than 0 means that the command did not execute successfully. Look at the table [here](https://cis106.com/bash/checks/) for a list of all bash checks

### Example:

A shell script that checks if a file exist. 

```bash
#!/bin/bash
test -e "$1" && echo "file $1 exist" || echo "file $1 does not exist"
```



## if/else/elif

## [] VS [[]]

## case 


## Loops

### For

### While

### Until

