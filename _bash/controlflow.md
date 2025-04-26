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

If/else/elif statements are used to execute commands if a particular condition is true. We use if statements all the time for making decisions. For example:

```
if (it is raining outside)
then
    bring an umbrella
elif (it is sunny outside)
    bring a hat
elif (it is snowing outside)
    wear a heavy  clothes
end if statement
```

```
if (hungry?)
then
    eat
else
    continue working
end of if statement
```

In shell scripting, we say that something is true when it returns 0 as an exit status. False is any status code that is not 0.

For example, run this command: `ls downloads1`. This will result in an error because we currently do not have a directory called `downloads1`. Now type: `echo $?` to display the status code of the last command that was run. Then run the command `ls` and repeat the echo command: `echo $?`. **Do you see the difference?**


<p align="center" id='ifblock1'><img src="/assets/bash/controlFlow/ifblock1.png" alt="parent vs child directory"/></p>


### IF statement basic fomula:

```bash
# if
if (condition_command); then
    command1
    command2
    ...
    last_command
fi

# if/else
if (condition_command); then
    command1
    command2
    ...
    last_command
else
    command1
    command2
    ...
    last_command
fi

# if/elif
if (condition_command); then
    command1
    command2
    ...
    last_command
elif (condition_command); then
    command1
    command2
    ...
    last_command
else
    command1
    command2
    ...
    last_command
fi
```

The condition command can be:
* A command such as ls
* Numerical comparison
* String comparison
* Bash checks 

If statements end with the `fi` keyword. **This keyword is required!**

### Example of if statements

#### Basic if


```bash
#!/bin/bash
if (ls); then
    echo "ls command ran successfully"
fi
```

<p align="center"><img src="/assets/bash/controlFlow/basicif.png" /></p>

Notice that the output of ls is displayed in the screen and since the command executed successfully, it executed the echo command.

if you do not want to see the output of the command in the condition block, the you can pipe the output ot `/dev/null`. Here is an example:

```bash
#!/bin/bash
if (ls &> /dev/null); then
    echo -e "\nls command ran successfully"
fi
```

<p align="center"><img src="/assets/bash/controlFlow/basicif2.png" /></p>

### If with else

```bash
#!/bin/bash
games="$HOME/games1"
if (ls "$games" 2> /dev/null); then
	touch "$games/gamelist.txt"
else
	mkdir "$games"
	touch "$games/gamelist.txt"
	ls $games
fi
```

<p align="center"><img src="/assets/bash/controlFlow/ifelse.png" /></p>


This is a basic script that lists the directory "games1" to see if the directory exits. If the directory exist, it will return 0 (true) and the touch command will be executed. If the ls command returns anything else other than 0 (false), then the else block will be executed, creating the directory and then the  file `gamelist.txt`

There is a more efficient way of doing this. However, this example serves as a good illustration on how the if/else statements can be used. 

### Using elif

For this example, refer to the doc: [bash checks](https://cis106.com/bash/checks/). 

```bash
#!/bin/bash
# Check if a file, directory, or something else exists
read -p "Enter a path: " path
if [ -f "$path" ]; then
    echo "It is a regular file."
elif [ -d "$path" ]; then
    echo "It is a directory."
elif ls "$path" &> /dev/null; then
    echo "It exists but is neither a file nor a directory."
else
    echo "The path does not exist."
fi
```
<p align="center"><img src="/assets/bash/controlFlow/elif.png" /></p>


Notice that here I am not using `()` but instead `[]`. In the next session, we will discuss why.

Basically, this script will simply check if the path given by the user is a regular file or a directory. If it is neither of those, then it will let the user know that the path exists but it is neither. If those 3 conditions fail, then it will default to tell the user that the given path does not exist.

## [] VS [[]] VS ()


Whats the deal with the brackets and the parenthesis? and then there is also the double brackets! 

### ()
We use the `()` to start a subshell. So when you write this:

```bash
if (ls &> /dev/null); then 
#command
fi
```

You are executing ls in a subshell and then the exit status code of said subshell is what is evaluated to true/false. THIS IS NOT REQUIRED! in fact, this approach creates unnecessary overhead by starting a new shell inside our script. It is common for programmers that do not write bash often to prefer the parenthesis approach. However, unless you really want to open a subshell, you should instead write your if statements like this:


```bash
if ls &> /dev/null; then
#command
fi
```

### [] 

we use the single brackets when we want to do bash tests. Just like the `test` command. See [bash checks doc](https://cis106.com/bash/checks/) for a list of all tests with examples. 

Here is the same example we saw earlier:

```bash
#!/bin/bash
# Check if a file, directory, or something else exists
read -p "Enter a path: " path
if [ -f "$path" ]; then
    echo "It is a regular file."
elif [ -d "$path" ]; then
    echo "It is a directory."
elif ls "$path" &> /dev/null; then
    echo "It exists but is neither a file nor a directory."
else
    echo "The path does not exist."
fi
```

<p align="center"><img src="/assets/bash/controlFlow/elif.png" /></p>

This can also be used for string and number comparisons as well. 


### [[ ]]

If the single brackets do comparison and tests, what do we need the double brackets for?
The single brackets are a command ( just like test is). However, the double brackets are not. Instead, they are a bash builtin keyword. The double brackets can do the following:

* Supports pattern matching (`==` with `*` wildcard)
* Supports regular expressions (`=~`)
* Allows logical operators (`&&`, `||`) without escaping
* Prevents word-splitting and unintended globbing.


### Table with key difference:


| Feature                         | `[ ]` (Single Brackets)      | `[[ ]]` (Double Brackets)     |
|---------------------------------|-----------------------------|-----------------------------|
| **POSIX Standard**              | ✅ Yes (works in all shells) | ❌ No (Bash/Ksh/Zsh only)  |
| **String Comparisons**          | Requires quoting variables  | No need to quote variables |
| **Wildcards (`*`)**             | ❌ No                        | ✅ Yes (`==` supports patterns) |
| **Regex Matching (`=~`)**       | ❌ No                        | ✅ Yes |
| **Logical Operators (`&&`, `||`)** | ❌ No (requires separate `[ ]` calls) | ✅ Yes (directly usable) |
| **Safer with Empty Variables**  | ❌ No                        | ✅ Yes |


> if you are planning to write portable scripts, avoid [[ ]] as much as possible because it is not POSIX compliant. 
> <br/> **What Does It Mean for a Shell to Be POSIX-Compliant?**
> It means that it follows the standards of the Portable Operating System Interface (POSIX) specified by IEEE for maintaining compatibility between operating systems. For shells it means tht that it supports a defined set of features, commands, and behaviors that allow scripts to be portable. Bash is not exactly fully POSIX compliant but it can be. Bash has some unique syntax called Bashisms. The `[[]]` is an example of of those bash specific syntax.


## case 

The `case` statement allows you to execute different blocks of code bassed on the value of a variable or expression. It is akin to a switch statement in other programming languages. 

### Basic Syntax of case

```bash
case variable in
    pattern1)
        code here
        ;;
    pattern2)
        code here
        ;;
    *)
        code here
        ;;
esac
```

Form the snippet above:
* The `;;` are required
* the `esac` keyword ends the case statement
* the `*` is akin to the else condition in an if/else block and it is required. This is the default case when the rest fails.

Case statements are a good choice over if/else when the value of the variable is predictable. 

### Example of case:

A script that displays a menu and runs the block depending on the users selection

```bash
#!/bin/bash

echo -e " Choose one of the following options: \n \
\t1) List $HOME \n \
\t2) List directories only in $HOME \n \
\t3) List all config files in /etc \n \
\t4) Exit"

read -p "Enter a number from 1 - 3 " num

case "$num" in
    1)
        echo "User picked $num"
        ls -A $HOME
    ;;

    2)
        echo "User picked $num"
        ls -d $HOME/*/
    ;;

    3)
        echo "User picked $num"
        ls /etc/*.conf
    ;;
    *)
        exit
    ;;
esac

```

## Loops

### For
A for loop is control structure used for iterating over a list of items and executes commands for each item in the list.

The basic syntax of a for loop is:

```bash
for variable in item1 item2 item3 ...; do
    command here
done
```

Here is a basic example:

```bash
#!/bin/bash
fruits=("apple" "banana" "papaya")
for fruit in ${fruits[@]}; do
    echo "I love $fruit"
done:
```

Now lets see an example of a loop that iterates through a list of txt files in a given directory

```


### While

### Until

