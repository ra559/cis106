#!/bin/bash
# in class activity for wildcards
dir="$HOME/inClassActivity"
mkdir -pv $dir/{star,qmark,set}
cd "$dir/star"
touch homework.{txt,md,docx}
touch {math,english,linux}_notes.pdf
touch {game,list,instructions}.txt
touch .{secrets,api_keys,data}
cd "$HOME/inClassActivity/qmark"
touch .file{1..3}.{rtf,raw}
cd "$dir/set"
touch Screenshot_From_2025-11-{01..03}.png
touch Image-$USER-$(date -u +%y-%m-%d)_{1..3}.png
touch screenshot_From_2025-11-{A..D}.png
