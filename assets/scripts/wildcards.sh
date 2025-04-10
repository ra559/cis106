#!/bin/bash
echo "Creating Directory for wildcard practice"
dir1="$HOME/wildcard_practice/star"
dir2="$HOME/wildcard_practice/qmark"
dir3="$HOME/wildcard_practice/brackets"
mkdir -pv "$dir1" "$dir2" "$dir3" 
# To practice *
cd "$dir1"
touch {contact,homework_12,"list of taks"}.txt
touch {report_confidential,sales_report,company_report_access}.pdf
touch {health,help}.docx
# To practice ?
cd "$dir2"
# Example 1
touch .secrets.lst .user_profile.config .run.conf
# Example 2
touch access_log_2025-{02,04}-{00..05}.log
# Example 3
touch data_set.csv 
# Example 4
touch code.js data.bk text.rtf
# Example 5
touch .src.sh .execute.py .program.rb .a.ot

# To practice []
cd "$dir3"
# Example1
touch {Dog,Cat,Parrot}.png
# Example2
touch page{1..3}.html {styles,base}.css
# Example 3
touch code_33.py hello_WORLD.rb script_abc.js 1source.sh
# Example 4
touch config.toml file.asp
# Example 5
touch 202{0..5}-$USER-screenshot.png



