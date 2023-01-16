#!/bin/bash
echo "This script will install the following packages:"
PACK=('ruby-full' 'sqlite3' 'sqlitebrowser' 'yarn' 'nodejs' 'npm' 'rails')
for pack in ${PACK[@]}
do
	echo -e "\t 📦 $pack"
done
read -p "continue? " ans
[[ $ans == "y" ]] && sudo apt install ${PACK[@]} -y || echo "Installation canceled"


