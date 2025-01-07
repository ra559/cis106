----
title: Bash Functions
layout: page
----

<!-- vscode-markdown-toc -->
* 1. [Bash Basic function](#BashBasicfunction)
* 2. [Return an exit status](#Returnanexitstatus)
* 3. [Returning values with variables](#Returningvalueswithvariables)
* 4. [Returning value with command substitution](#Returningvaluewithcommandsubstitution)
* 5. [Can I return a status code and value at the same time?](#CanIreturnastatuscodeandvalueatthesametime)
	* 5.1. [Whats up with the arguments?](#Whatsupwiththearguments)
* 6. [Move advanced examples of functions](#Moveadvancedexamplesoffunctions)
	* 6.1. [Returning the content of an array](#Returningthecontentofanarray)
	* 6.2. [Returning an array with mapfile](#Returninganarraywithmapfile)
	* 6.3. [Using an associative array](#Usinganassociativearray)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

# {{page.title}}

A function is just a small reusable pease of code. It does something and return its result back to the program. It can also return nothing. 

##  1. <a name='BashBasicfunction'></a>Bash Basic function

```bash
# Option 1
function function_name() {
    # body of function here
}

# Option 2
function_name(){
    # body of function here
}

# to call function:
function_name
```
* **Keep in Mind**
  * Bash functions do not return values. They can return:
    * An exit status using `return`
    * A value using a variable (global or local)
    * value via STDOUT - This requests command substitution

##  2. <a name='Returnanexitstatus'></a>Return an exit status

```bash
# Checks if $1 exist. 0 = true, 1 = false
potato(){
    [ -f "$1" ] && return 0 || return 1 
}

potato "$1"
# We can then use the $? to create logic with the exit status code.

[ $? -eq 0 ] && echo "$1 exist" || echo "$1 doesn't exist"
```
##  3. <a name='Returningvalueswithvariables'></a>Returning values with variables

```bash
# Using a global variable:
potato(){
    greeting="Good Morning, $1"
}
potato "Mary"
echo "$greeting"

# Using local variable
potato(){
    local name="$1"
    local age="$2"
    local email="$3"
    echo -e "Hello $name\nAt $age you will need a bigger boat.\n\tSent from $email"
    
}

potato "Mary" "43" "admin@mail.com"

```

##  4. <a name='Returningvaluewithcommandsubstitution'></a>Returning value with command substitution

```bash
potato() {
    local greeting="Hello, $1!"
    echo "$greeting"
}

result=$(potato "Bobby")
echo "$result" 

```


##  5. <a name='CanIreturnastatuscodeandvalueatthesametime'></a>Can I return a status code and value at the same time?

Yes. Here is an example:

```bash
is_even(){
    local numb=$1
    if (( numb % 2 == 0 ))
    then
        echo "even"
        return 0
    else
        echo "not even"
        return 1
    fi
}

result=$(is_even $1)
status_code=$?
echo "the $1 number is $result"
```
> **Side Note:**
> The example script above has a couple of gotchas. If you pass a letter instead of a number it tells you that it is even. How so?? Well, bash does arithmetic evaluation using `((...))` inside these parentheses everything is an integer. This means that every non-integer character is considered a 0 by bash. Notice that I said integer and not number. That is because bash does not support floating point numbers. You need an external utility (like `bc`) to handle floating point numbers.
> The next gotcha is the lack of `$` in the `numb` variable. As you already know, in order to access the value of a variable, you need to preface it with a `$`, however, because the `((...))` are already expecting an integer, the `$` becomes optional. The script below is a complete version that handles non integer input.

```bash
#!/bin/bash
is_even() {
    local numb=$1

    # Ensure the input is a number
    if ! [[ "$numb" =~ ^-?[0-9]+$ ]]; then
        echo "Error: Input is not an integer"
        return 2 # Use a special return code for invalid input
    fi

    # Proceed with even/odd check
    if (( numb % 2 == 0 )); then
        echo "even"
        return 0
    else
        echo "not even"
        return 1
    fi
}

# Call the function with the user's input
result=$(is_even "$1")
status_code=$?

# Check the return code
if [ $status_code -eq 2 ]; then
    echo "Invalid input: $1 is not an integer."
else
    echo "The $1 number is $result."
fi
```

###  5.1. <a name='Whatsupwiththearguments'></a>Whats up with the arguments?
Just like your script, functions take arguments (positional parameters). These work the same way. Say that you run the script `./playground.sh john carla` with the following code:

```bash
#!/bin/bash
echo "parameter/argument 1: $1"
echo "parameter/argument 2: $2"
potato(){
	echo "In the function 1: $1"
	echo "In the function 2: $2"
}
potato "peter" "jane"
echo "Passing the same parameters to the function:"
potato "$1" "$2"
```

The output will be:

```
parameter/argument 1: john
parameter/argument 2: carla
In the function 1: peter
In the function 2: jane
Passing the same parameters to the function:
In the function 1: john
In the function 2: carla
```

Notice that lines 1 and 2 have the arguments we passed to script but lines 3 and 4 have the arguments we passed to the function. You can passed the same arguments you gave to the script to the function too as you can see in lines 7 and 8

##  6. <a name='Moveadvancedexamplesoffunctions'></a>Move advanced examples of functions

###  6.1. <a name='Returningthecontentofanarray'></a>Returning the content of an array

```bash
#!/bin/bash
all_ip_addresses() {
    local ips=("192.168.1.10" "192.168.1.12" "192.168.1.14")
    echo "${ips[@]}"
}
array=($(all_ip_addresses))
for ip in ${array[@]}
do
	ping -c 4 $ip
done

```

###  6.2. <a name='Returninganarraywithmapfile'></a>Returning an array with mapfile

```bash
#!/bin/bash
potato() {
    local dir="$1"
    local fname="$2"
    find "$dir" -iname "*$fname" -type f -print0
}

# Use process substitution to pass the function's output to mapfile
mapfile -d '' search < <(potato "$1" "$2")

# Access array elements
echo "First member: ${search[0]}"
echo "Last member: ${search[-1]}"
echo "Length: ${#search[@]}"
# Process each file
for file in "${search[@]}"; do
    # Display file details in a formatted way
    ls -lhgG --time-style=+%D "$file" | grep -v "total" | column -t
done
```

> **Side note:** The `print0` option of the find command command is used to handle files with special characters in the name (ex. spaces). `print0` tells find to separate filenames with a null character (`\0`) instead of a newline.


###  6.3. <a name='Usinganassociativearray'></a>Using an associative array

```bash
#!/bin/bash

# Function to get disk usage as an associative array
get_disk_usage() {

    declare -A disk_info
    local df_output
    df_output=$(df -h / | tail -1)

    disk_info[total]=$(echo "$df_output" | awk '{print $2}') 
    disk_info[used]=$(echo "$df_output" | awk '{print $3}') 
    disk_info[available]=$(echo "$df_output" | awk '{print $4}')
    disk_info[usage_percent]=$(echo "$df_output" | awk '{print $5}')

    # Return the associative array
    echo "$(declare -p disk_info)"
}

# Call the function and capture the associative array
eval "$(get_disk_usage)"

# Access and display the values from the associative array
echo "Disk Usage Information for '/':"
echo -e "Total Space:\t${disk_info[total]}"
echo -e "Used Space:\t${disk_info[used]}"
echo -e "Avail. Space:\t${disk_info[available]}"
echo -e "Usage %:\t${disk_info[usage_percent]}"
```

> Side Note: `declare -p disk_info` outputs the array definition as a string that can be re-evaluated using `eval`.