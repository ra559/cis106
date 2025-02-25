---
title: Arrays in Bash
layout:  page
---

# {{page.title}}

## What is an array?

An array in Bash is a data structure that can store multiple values in a single variable. There are two types of arrays in bash:
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

The formula to access the an element of an array is as follows:

* `$`+`{`+`name_of_array`+`[`+`index`+`]`+`}`

### Examples

```bash
#!/bin/bash
users=("john" "peter" "mario")
echo ${users[0]} # outputs john
echo ${users[*]} # outputs all elements
echo ${users[@]} # outputs all elements
echo ${#users[@]} # Array length
echo ${users[-1]} # Last element
```

<p>
<img src="/assets/bash/arrays/accessing_elements.png">
</p>


## Modifying an array

* To **add** an element to the end of an array:  
  * `array_name+=(element)`
  * Example: `users+=("fred")`
* To **update** a given element:
  * `array_name[index_here]="element"`
  * Example: `users[0]="root"`
* To **remove** an element:
  * `unset array_name[index_to_delete]`
  * Example: `unset users[-1]` 
* To **clear** an entire array:
  * `unset array_name`
  * Example: `unset users`


```bash
#!/bin/bash
users=("john" "peter" "mario")
echo -e "Current size:\t${#users[*]}"
echo -e "Adding a new element: fred"
users+=("fred") #adding element
echo -e "New size:\t${#users[*]}"
echo -e "All elements\t${users[*]}"
echo -e "Updating first element to root"
users[0]="root" # updating first element
echo "All element: ${users[*]}"
echo "Removing last element"
unset users[-1] # removing last element
echo "All elements: ${users[*]}"
echo "Clearing array"
unset users
echo "All elements: ${users[*]}"
```

<p>
<img src="/assets/bash/arrays/modify_array.png">

## Looping through an array

### Using for

Example:

```bash
#!/bin/bash
users=("john" "peter" "mario")
for user in "${users[*]}"
do
    echo "Current user: $user"
done

# Example using indexes:

for i in "${!users[@]}"
do  
    echo "User $i => ${users[$i]}"
done
```

### Interesting example:

Create a script that will get an array of all the users in a system then display each user name

```bash
#!/bin/bash
users=($(awk -F":" '{print $1}' /etc/passwd | tr '\n' " "))
for user in "${users[@]}"
do
	echo "User: $user"
done
```

<p>
<img src="/assets/bash/arrays/interesting_example.png">
</p>


### Using while

Example:

```bash
#!/bin/bash
users=("john" "peter" "mario")
index=0
while [[ $index -lt ${#users[@]} ]]
do  
    echo "User $index => ${users[$index]}"
    ((index++))
done
```

* This loop runs until the index is less than the length of the array


### Using until

```bash
#!/bin/bash
users=("john" "peter" "mario")
index=0

until [[ $index -ge ${#users[@]} ]]
do  
    echo "User $index => ${users[$index]}"
    ((index++))
done

```

* The until loop continues until the condition becomes true. The opposite of a while loop.

<p>
<img src="/assets/bash/arrays/while_until_loops.png">
</p>

### Interesting Example

* You can use until and arrays to validate user input when the input is predictable. 
* For example, you need the user to answer in one of the following forms: y Y Yes YES No NO n 

```bash
#!/bin/bash
valid=("y" "Y" "YES" "Yes" "yes" "n" "N" "no" "No" "NO")
input=""

until [[ "${valid[@]}" =~ "$input" ]]
do
    read -p "Continue? (y/n) " input
done
echo "The answer is correct: $input"
```

<p>
<img src="/assets/bash/arrays/interesting_until_loops.png">
</p>

## Working with associative arrays

### Create an associative array: 

```bash
declare -A users
players=([bob]="192.168.1.16" [mary]="192.168.1.17" [joe]="192.168.1.18")
```

### Accessing values

```bash
declare -A users
users=([bob]="192.168.1.16" [mary]="192.168.1.17" [joe]="192.168.1.18")

echo "${users[bob]}"

## Looping through keys
for key in "${!users[@]}"
do
    echo "$key's ip is: ${users[$key]}"
done 
```

## Array operations

```bash
#!/bin/bash

users=($(awk -F":" '{print $1}' /etc/passwd | tr '\n' " "))
# Slicing
echo "${users[@]:1:2}"  # Start at index 1, take 2 elements
# Sorting
sortedUsers=($(printf "%s\n" "${users[@]}" | sort))
echo "${sortedUsers[@]}"
# Searching for a given element
search_string=$(echo $USER)
for item in "${sortedUsers[@]}"
do
    if [ "$item" == "$search_string" ]
    then
        echo "array contains $search_string"
    if
done

## passing an array to a function

print_users(){
    local array=("$@")
    for item in "${array[@]}"
    do  
        echo "$item"
    done
}
print_users "${sorted_users[@]}"

## Reading an array from a file
mapfile -t my_array < file.txt
echo "${my_array[@]}"
```