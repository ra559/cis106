#!/bin/bash
Bold="\u001b[1m"
Reset="\u001b[0m"
delimiter=","
filename="users.csv"
rows=5

industries=(
  "Education"
  "Healthcare"
  "Information Technology"
  "Finance"
  "Construction"
  "Electrical Engineering"
  "Manufacturing"
  "Hospitality"
  "Transportation"
  "Marketing"
)
positions=(
  "Software Engineer"
  "Data Analyst"
  "Project Manager"
  "Sales Associate"
  "Marketing Coordinator"
  "Customer Support Specialist"
  "IT Technician"
  "Product Designer"
  "HR Generalist"
  "Operations Manager"
  "Business Analyst"
  "Content Writer"
  "Financial Advisor"
  "Network Administrator"
  "UX Researcher"
)

while read -r word; do
  if [[ "$word" =~ ^[a-z]+$ ]]; then
    clean_words+=("$word")
  fi
done < /usr/share/dict/words

row_gen(){
    local domains=(com net edu xyz org)
    local company="${clean_words[RANDOM % ${#clean_words[@]}]}"
    local position="${positions[RANDOM % ${#positions[@]}]}"
    local u_id="$(uuidgen)"
    local name="$(rig | head -1)"
    local email="${name// /.}@$company.${domains[RANDOM % ${#domains[@]}]}"
    local industry=${industries[RANDOM % ${#industries[@]}]}
    local area=$((RANDOM % 800 + 200))        # Area code: 200–999 (avoid 0xx/1xx)
    local prefix=$((RANDOM % 743 + 200))      # Prefix: 200–942 (common safe range)
    local line=$((RANDOM % 10000))            # Line number: 0000–9999
    # Format line number to 4 digits with leading zeros
    local line=$(printf "%04d" "$line")
    local phone="(${area})-${prefix}-${line}"
    echo $u_id,$name,${email,,},$phone,$company,$industry,$position
}

help(){
    echo -e "users_gen script \n"
    echo -e "$Bold"NAME"$Reset"
    echo -e "\tusers_gen.sh - a simple script to generate a csv file with fake information."
    echo -e "\n"$Bold"SYNOPSIS"$Reset
    echo -e "\tusers_gen.sh [OPTION] [FILENAME]"
    echo -e "\n""$Bold"DESCRIPTION"$Reset"
    echo -e "\tcreates a simple csv file with fake information. Requires the rig command. \
\n\tWhen run without an option, it will create a file named users.csv with 5 rows.\n"
    echo -e "\t"$Bold"-d 'character delimiter'\n"$Reset"\t\tspecifies a delimiter ',' is the default"
    echo -e "\t"$Bold"-f 'file name'\n"$Reset"\t\tspecifies a file name (users.csv is the default)"
    echo -e "\t"$Bold"-n '#'\n"$Reset"\t\tspecified the number of rows to create. Ex. -n '10'. 5 is the default."
    echo -e "\t"$Bold"-h\n"$Reset"\t\tdisplays this help/makeshift man page"
    echo -e "$Bold"EXAMPLES"$Reset"
    echo -e "\t""$Bold"users_gen.sh -f sample_users.csv -n 20"$Reset"
    echo -e "\t\tcreate a csv file called: sample_users.csv with 20 rows"
    echo -e "\n\t""$Bold"users_gen.sh -d : -f sample_users.csv -n 20 "$Reset"
    echo -e "\t\tcreate a csv file with a different delimiter"
    
}

# Parse options
while getopts ":d:f:n:h" opt; do
  case "$opt" in
    d) delimiter="$OPTARG" ;;
    f) filename="$OPTARG" ;;
    n) rows="$OPTARG" ;;
    h) help; exit 0 ;;
    :) echo "Option -$OPTARG requires an argument."; exit 1 ;;
    \?) echo "Invalid option: -$OPTARG"; exit 1 ;;
  esac
done

echo "user_id${delimiter}name${delimiter}email${delimiter}phone${delimiter}company${delimiter}industry${delimiter}position" > "$filename"
for ((i = 0; i < rows; i++)); do
  row_gen | sed "s/,/$delimiter/g" >> "$filename"
done

echo "Generated $rows users in $filename using delimiter '$delimiter'."
