#!/bin/bash
mkdir -p $HOME/AlphaProject/folder{1..4}
touch $HOME/AlphaProject/{{index,about,catalog,faqs}.html,{main,helper}.js,{reseter,style,media}.css,{logo,bg,banner}.png}
