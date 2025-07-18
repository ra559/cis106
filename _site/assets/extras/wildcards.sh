#!/bin/bash

# Define the main directory
dir="$HOME/wildcard_extra_practice"

# Create the main directory
mkdir -p "$dir"

# Define arrays
document_extensions=("txt" "docx" "pdf")
image_extensions=("png" "jpg" "webp")
shell_script_extension="sh"

# Define file extensions for the total files
file_extensions=("${document_extensions[@]}" "${image_extensions[@]}" "$shell_script_extension")

# Select random words for directory names (4 directories)
dictionary_words=($(shuf -n 4 /usr/share/dict/american-english | tr -d "'\""))

# Create random directories without files
for word in "${dictionary_words[@]}"; do
    mkdir -p "$dir/$word"  # Create the directory
done

# Create 4 hidden files
for i in {1..4}; do
    # Generate a random name from the dictionary for the files
    random_word=$(shuf -n 1 /usr/share/dict/american-english | tr -d "'\"")
    
    # Generate a random extension from the file_extensions array
    extension="${file_extensions[RANDOM % ${#file_extensions[@]}]}"

    # Create a hidden file (prefix with a dot)
    touch "$dir/.$random_word.$extension"
done

# Create 4 shell script files
for i in {1..4}; do
    random_word=$(shuf -n 1 /usr/share/dict/american-english | tr -d "'\"")
    touch "$dir/${random_word}.${shell_script_extension}"  # Shell script file
done

# Create 8 additional regular files
for i in {1..8}; do
    random_word=$(shuf -n 1 /usr/share/dict/american-english | tr -d "'\"")
    extension="${file_extensions[RANDOM % ${#file_extensions[@]}]}"
    touch "$dir/${random_word}.${extension}"  # Regular file
done

mkdir "$dir/scripts/"

touch $dir/{program,backup,short,downloader}.sh 
touch $dir/img-{1..3}.{png,jpg}
touch $dir/{index_page,insert_page,instructions_page}.html
touch $dir/{response,request}.json 
touch $dir/Document.{odt,pdf} UsersExport.{tsv,csv}
touch $dir/New.{docx,xlsx,pptx,vsdx}
touch $dir/File{01..03}.py
# Completion message
echo "Directories and files created successfully in $dir."
