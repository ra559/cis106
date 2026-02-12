#!/bin/bash
# marstenHouse.sh
# Generates a randomized directory structure resembling rooms in a haunted house.
# Hidden "key" files are scattered randomly throughout the house.
# Students must use ls, pwd, cd, and tree to locate them.

# --- Configuration ---
HOUSE="marstenHouse"
ROOMS=(
  "foyer"
  "kitchen"
  "living_room"
  "library"
  "basement"
  "attic"
  "dining_room"
  "master_bedroom"
  "guest_room"
  "hallway"
)
SUBROOMS=(
  "closet"
  "pantry"
  "cellar"
  "study"
  "bathroom"
  "storage"
)
KEYS=("key1" "key2" "key3" "key4" "key5")

PUZZLE_PARTS=(
  "THE FIRST PART IS: 19"
  "THE SECOND PART IS: 07"
  "THE THIRD PART IS: 05"
  "THE FOURTH PART IS: 17"
  "THE FIFTH PART IS: 75"
)


BOLD="\033[1m"
UNDERLINE="\033[4m"
RESET="\033[0m"
msg="\tYou have been kidnapped by Barlow’s minions and brought to Marsten House.\
\n\tYou wake up disoriented and surrounded by darkness.\
\n\tYour only light comes from your smartphone - the pwd and ls commands.\
\n\tSomewhere within this house are ${#KEYS[@]} hidden keys.\
\n\tEach one contains a piece of the code you need to escape.\
\n\tOnce you find a key, reveal its true location using realpath.\
\n\tOnly then will you know where you truly are."

msg2="\t1. Explore Marsten House and locate all 5 hidden keys.\n\
\t2. You may only use relative paths when navigating with cd. \n\
\t3. You must use absolute paths only when revealing each key’s location with realpath.\n\
\t4. Commands allowed: ls, pwd, cd, tree, and realpath."

msg3="\tSubmit screenshots of the following:\n\
\t\t1. A full map of Marsten House generated using the tree command.\n\
\t\t2. The absolute path to each hidden key, shown using the realpath command."

# --- Draws the box around ----
box() {
  local input lines line max=0 len horiz pad
  if [ $# -gt 0 ]; then
    input="$*"
  else
    input="$(cat)" || return
  fi
  IFS=$'\n' read -r -d '' -a lines <<< "$input"$'\0'
  for line in "${lines[@]}"; do
    len=${#line}
    if (( len > max )); then max=$len; fi
  done
  printf -v horiz '%*s' "$max" ''
  horiz=${horiz// /─}
  printf '┌%s┐\n' "$horiz"
  for line in "${lines[@]}"; do
    pad=$((max - ${#line}))
    printf '│%s%*s│\n' "$line" "$pad" ''
  done
  printf '└%s┘\n' "$horiz"
}


# --- Cleanup ---
rm -rf "$HOUSE"

# --- Create main structure ---
mkdir -p "$HOUSE"

# --- Function to create nested structure ---
create_rooms() {
  local parent="$1"
  local depth="$2" # tracks recursion depth (how deep directories will be nested)
  local count=$((RANDOM % 3 + 2)) 

  for ((i=0; i<count; i++)); do
    local room="${ROOMS[RANDOM % ${#ROOMS[@]}]}"
    local subdir="$parent/$room"
    mkdir -p "$subdir"
    if (( depth < 3 )) && (( RANDOM % 2 == 0 )); then
      create_rooms "$subdir" $((depth + 1))
    fi
  done
}

create_rooms "$HOUSE" 1

# --- Place hidden key files randomly ---
all_dirs=($(find "$HOUSE" -type d))
for i in "${!KEYS[@]}"; do
  rand_dir="${all_dirs[RANDOM % ${#all_dirs[@]}]}"
  key_path="$rand_dir/.${KEYS[$i]}"
  echo "${PUZZLE_PARTS[$i]}" > "$key_path"
done

# --- Final message ---
echo -e "Everything in Salem's Lot is connected to that house.\nYou can see it from every part of the town.\nIt's like a beacon throwing off an energy force." | box


echo -e "\n"$BOLD"Scenario:"$RESET"\n"
echo -e $msg
echo -e "\n"$BOLD"Challenge:"$RESET"\n"
echo -e $msg2
echo -e "\n"$BOLD"Deliverables:"$RESET"\n"
echo -e $msg3
