---
title: Bash Checks
layout: page
---

# {{page.title}}


## String Checks

| **Check**                      | **Description**       | **Returns True If**            | **Example**                                  |
| ------------------------------ | --------------------- | ------------------------------ | -------------------------------------------- |
| `[ -z "$string" ]`             | String is empty       | The string has zero length     | `[ -z "" ] && echo "Empty"`                  |
| `[ -n "$string" ]`             | String is not empty   | The string has non-zero length | `[ -n "Hello" ] && echo "Not Empty"`         |
| `[ "$string1" = "$string2" ]`  | Strings are equal     | Both strings are identical     | `[ "Hello" = "Hello" ] && echo "Equal"`      |
| `[ "$string1" != "$string2" ]` | Strings are not equal | Both strings are different     | `[ "Hello" != "World" ] && echo "Not Equal"` |

---

## Number Checks

| **Check**                 | **Description**            | **Returns True If**                         | **Example**                             |
| ------------------------- | -------------------------- | ------------------------------------------- | --------------------------------------- |
| `[ "$num1" -eq "$num2" ]` | Numbers are equal          | `$num1` is equal to `$num2`                 | `[ 5 -eq 5 ] && echo "Equal"`           |
| `[ "$num1" -ne "$num2" ]` | Numbers are not equal      | `$num1` is not equal to `$num2`             | `[ 5 -ne 10 ] && echo "Not Equal"`      |
| `[ "$num1" -gt "$num2" ]` | Number is greater than     | `$num1` is greater than `$num2`             | `[ 10 -gt 5 ] && echo "Greater"`        |
| `[ "$num1" -lt "$num2" ]` | Number is less than        | `$num1` is less than `$num2`                | `[ 5 -lt 10 ] && echo "Less"`           |
| `[ "$num1" -ge "$num2" ]` | Number is greater or equal | `$num1` is greater than or equal to `$num2` | `[ 10 -ge 10 ] && echo "Greater/Equal"` |
| `[ "$num1" -le "$num2" ]` | Number is less or equal    | `$num1` is less than or equal to `$num2`    | `[ 5 -le 10 ] && echo "Less/Equal"`     |

---

## File Checks

| **Check**        | **Description**         | **Returns True If**         | **Example**                               |
| ---------------- | ----------------------- | --------------------------- | ----------------------------------------- |
| `[ -e "$file" ]` | File exists             | The file exists             | `[ -e "file.txt" ] && echo "Exists"`      |
| `[ -d "$file" ]` | File is a directory     | The file is a directory     | `[ -d "folder" ] && echo "Directory"`     |
| `[ -r "$file" ]` | File is readable        | The file is readable        | `[ -r "file.txt" ] && echo "Readable"`    |
| `[ -w "$file" ]` | File is writable        | The file is writable        | `[ -w "file.txt" ] && echo "Writable"`    |
| `[ -x "$file" ]` | File is executable      | The file is executable      | `[ -x "script.sh" ] && echo "Executable"` |
| `[ -s "$file" ]` | File is not empty       | The file is not empty       | `[ -s "file.txt" ] && echo "Not Empty"`   |
| `[ -L "$file" ]` | File is a symbolic link | The file is a symbolic link | `[ -L "link" ] && echo "Symbolic Link"`   |
