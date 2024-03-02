#!/bin/bash
# Colors:
Black="\u001b[30m"
Red="\u001b[31m"
Green="\u001b[32m"
Yellow="\u001b[33m"
Blue="\u001b[34m"
Magenta="\u001b[35m"
Cyan="\u001b[36m"
White="\u001b[37m"
Reset="\u001b[0m"
BrightBlack="\u001b[30;1m"
BrightRed="\u001b[31;1m"
BrightGreen="\u001b[32;1m"
BrightYellow="\u001b[33;1m"
BrightBlue="\u001b[34;1m"
BrightMagenta="\u001b[35;1m"
BrightCyan="\u001b[36;1m"
BrightWhite="\u001b[37;1m"
# Background Colors
BackgroundBlack="\u001b[40m"
BackgroundRed="\u001b[41m"
BackgroundGreen="\u001b[42m"
BackgroundYellow="\u001b[43m"
BackgroundBlue="\u001b[44m"
BackgroundMagenta="\u001b[45m"
BackgroundCyan="\u001b[46m"
BackgroundWhite="\u001b[47m"
BackgroundBrightBlack="\u001b[40;1m"
BackgroundBrightRed="\u001b[41;1m"
BackgroundBrightGreen="\u001b[42;1m"
BackgroundBrightYellow="\u001b[43;1m"
BackgroundBrightBlue="\u001b[44;1m"
BackgroundBrightMagenta="\u001b[45;1m"
BackgroundBrightCyan="\u001b[46;1m"
BackgroundBrightWhite="\u001b[47;1m"
# Decorations
Bold="\u001b[1m"
Underline="\u001b[4m"
Reversed="\u001b[7m"
# Other
Reset="\u001b[0m"
Blink="\033[5m"


echo -e "$Bold$Red""Baron Manor$Reset is a basic game designed to help you master the commands \n"\
$Bold$Green"CD PWD and LS."$Reset" This is an early version written in bash to also help \n\
you practice shell scripting. Read the source code and have some fun. \n\
-----------------------------------------------------------------------\n
"$Bold$Red"Rules:$Reset
 1. You can only use relative path\n\
 2. Your PWD must remain within the baronManor directory\n\
 3. You can only use tree, ls, pwd, and cd - unless in specific levels.\n\
\n"$Bold$Blue"Tips:$Reset\n\
 1. To view a map of the manor, split your terminal in 2 or open another tab\n\
    and use the tree command to display a tree of the baronManor directory.
 2. You can always remove the directory and start the game over. Use the command\n\
    "$Bold$Green"rm -r $HOME/Documents/fs_game/$Reset. Be careful and doublecheck your spelling! 
"
echo -e "This games has "$Bold$Red"10 levels$Reset to help you practice. Here are each of the levels.\n\
You can always read the description of a specific level by typing/running this \n\
script with the option "$Magenta"level#"$Reset" for example "$Bold$Green"bash baronManorHelp.sh level1$Reset \n"
echo -e "$Bold$BrightYellow""Level 1"$Reset" A visitor arrives\n \
To beat level 1 simply roam around the manor. Visit as many rooms as you can and pay attention\n\
whenever you find a file or key. They will help you with other levels. $Blink Some rooms are locked!$Reset
"
echo -e "$Bold$BrightYellow""Level 2"$Reset" Unlocking the rooms\n\
To beat level 2 you will need to find all the keys laying around the manor. There are 7 keys but not \n\
all the keys open doors. Some keys unlock hidden rooms or do nothing at all. To use the keys, run them \n\
as scripts as soon as you find them.$Blink Each key will give you a message that may or may not contain a clue.$Reset"

echo -e "$Bold$BrightYellow""Level 3"$Reset" The master has many secrets\n\



