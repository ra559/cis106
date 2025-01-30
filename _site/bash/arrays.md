# {{page.title}}

There are two types of arrays in bash:
* **Indexed arrays**: this type uses numeric indenes starting at 0
* **Associative Arrays**: this type uses keys (like a dictionary)

## Declaring an array
### Method 1: Using Parenthesis
The formula is simple: `array name`+`=`+`(`+`elements separated by a space`+`)`. Example:

```bash
#!/bin/bash
# Array declaration example
users=("john" "Mary" "Peter" "Ivan")
```

This method is used for creating indexed arrays. It cannot be used to create associative arrays.

### Method 2: Using declare command

The declare command is used to create and modify variables. It allows to control the scope of the variables as well. In the case of arrays, we can use to create indexed arrays or associative arrays. The syntax is:
<br>`declare`+`options`+`array_name`+`=`+`value`

**Example:**

```bash
#!/bin/bash
# Indexed array
declare -a users=("john" "peter" "joe")
# Accessing values
echo ${users[0]}1
```

```bash
#!/bin/bash
declare -A user
# Assign values
user["name"]="Alice"
user["age"]=35
user["eyes"]="brown"
user["city"]="New York"
user["email"]="alice_88@email.com"
user["username"]="a_wa339"

# accessing values:
echo -e ${user["name"]} lives in ${user["city"]}. She is ${user["age"]} years old \
her eyes color is ${user["eyes"]}. Her email address is ${user["email"]}.
```

## Accessing elements of an array



## Adding elements to an array

## Getting the length of an array

## Looping through an array

## Working with associative arrays

