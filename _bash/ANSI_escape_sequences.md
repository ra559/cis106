---
title: ANSI Escape Sequences
layout: page
---

# {{page.title}}

# ANSI Escape Characters (Merged Table)

| **Escape Sequence**  | **Effect**                                             |
|----------------------|--------------------------------------------------------|
| `\033[0m`            | Reset / Normal                                         |
| `\033[1m`            | Bold / Increased intensity                             |
| **`\033[2m`**        | **Faint / Decreased intensity (may not display)**      |
| **`\033[3m`**        | **Italicized (not supported in some terminals)**       |
| `\033[4m`            | Underlined                                             |
| **`\033[5m`**        | **Blink (often disabled or not supported)**            |
| `\033[7m`            | Inverted / Reverse video                               |
| **`\033[8m`**        | **Hidden (conceal text)**                              |
| **`\033[9m`**        | **Strikethrough text (not widely supported)**          |
| **`\033[10m`**       | **Primary font (not widely used)**                     |
| **`\033[11m-19m`**   | **Alternate fonts 1-9 (rarely supported)**             |
| `\033[21m`           | Bold off (reset bold)                                  |
| **`\033[22m`**       | **Normal color (no bold, no underlined)**              |
| **`\033[23m`**       | **Not italicized (reset italic)**                      |
| **`\033[24m`**       | **Not underlined (remove underline)**                  |
| **`\033[25m`**       | **Blink off (remove blink)**                           |
| `\033[27m`           | Reverse off (reset reverse video)                      |
| **`\033[28m`**       | **Reveal (unhide text)**                               |
| **`\033[29m`**       | **Reset strikethrough (remove strikethrough effect)**  |
| `\033[30m`           | Set text color to black                                |
| `\033[31m`           | Set text color to red                                  |
| `\033[32m`           | Set text color to green                                |
| `\033[33m`           | Set text color to yellow                               |
| `\033[34m`           | Set text color to blue                                 |
| `\033[35m`           | Set text color to magenta                              |
| `\033[36m`           | Set text color to cyan                                 |
| `\033[37m`           | Set text color to white                                |
| `\033[38m`           | Set custom text color (ANSI 256 colors or RGB values)  |
| `\033[39m`           | Reset text color to default                            |
| `\033[40m`           | Set background color to black                          |
| `\033[41m`           | Set background color to red                            |
| `\033[42m`           | Set background color to green                          |
| `\033[43m`           | Set background color to yellow                         |
| `\033[44m`           | Set background color to blue                           |
| `\033[45m`           | Set background color to magenta                        |
| `\033[46m`           | Set background color to cyan                           |
| `\033[47m`           | Set background color to white                          |
| `\033[48m`           | Set custom background color (ANSI 256 colors or RGB)   |
| `\033[49m`           | Reset background color to default                      |
| **`\033[50m`**       | **Fraktur (not widely supported)**                     |
| **`\033[51m`**       | **Framed (rarely supported)**                          |
| **`\033[52m`**       | **Encircled (rarely supported)**                       |

> All unsafe sequences are bold. Unsafe means that the particular sequence is not universally supported across terminal emulators.

## What are ANSI Escape Sequences/Characters?
ANSI escape characters are sequences of characters used to control text formatting, color, and cursor movement in your terminal. They are used for text styling, color formatting, cursor control and screen movements. They are common in shell scripts.

## Structure of ANSI Escape Sequences

Take the following Escape Sequence: `\033[31m` This is used to set the text color to RED. ANSI Escape codes follow the following formula/patter:

```bash
ESC[<parameters><command>
```

* `ESC` (`\033` or `\x1B`): Starts the sequence
* `[ ... ]`: The Control Sequence Introducer (CSI)
* `<parameters>`: (optional) Numeric values separated by semicolons (;) to define styles or actions
* `<command>`: A letter that specifies the action.

![ansi](https://docs.google.com/drawings/d/e/2PACX-1vSNeC86dPuabDHlVcqKM6rhvbSmwij5fjPlzH68iN_pixYOYwOLDBm7cluMnSnEJmMXh7bbLwP3AFeF/pub?w=740&h=115)

### ANSI Commands:

Notice that each of text formatting ends in a lowercase `m`. That is because m is the command for applying the color formatting. There are formats you should be aware exist too.  

* `H`: move the cursor to a specified position. Ex. `\033[10;10H` moves the cursor to row 10 column 10
* `J`: Clears part of the screen. Ex: `\033[2J` Will clear the screen
* `K`: Clears part of a line. Ex. `\033[3D\033[K` clears from Cursor to End of Line.

> Be aware that H,J,K, may not be supported by your terminal emulator, bash version, or operating system all together. M is more widely supported but still there are many codes that are not. 


### How can I use these codes in my scripts?

The easiest way is to assign them to variables and then use them as you would any other value. For example,

```bash
#!/bin/bash
RESET="\033[0m"
BOLD="\033[1m"
RED="\033[31m"

echo -e $BOLD$RED"This text is red"$RESET
```

Keep in mind that you must use the reset sequence when you are done formatting otherwise it will keep the formatting for the rest of the script. The example above will set the text color to RED and the font style to bold. 

You can also download and import some of the sequences in the table above and use the colors as variables. Here is the source file: [ansi_sequences.sh](/assets/scripts/ansi_escape_codes.sh). And here is how you can add it to your scripts

> Note: Your must have curl instaled

I recommend this example for times when you will the script once.

```bash
#!/bin/bash
curl https://cis106.com/assets/scripts/ansi_escape_codes.sh -o ansi_codes
source ansi_codes
# Place the rest of your script here

echo -e $BackgroundYellow
echo -e "┌───────────────────────────────────────┐"
echo -e "│   Random Text Goes in this banner     │"
echo -e "└───────────────────────────────────────┘"
echo $Reset


# End of script
rm ansi_codes # This will remove the ansi_codes file.

```


If you plan on using these codes frequently, here is a better snippet that checks if the file ansi_codes is in your current directory or not. If it is, it skips the curl command.

```bash
#!/bin/bash
[ ! -e ansi_codes ] && [ ! -s ansi_codes ] && curl -s https://cis106.com/assets/scripts/ansi_escape_codes.sh -o ansi_codes
source ansi_codes

```

#### Example:

```bash
#!/bin/bash
[ ! -e ansi_codes ] && [ ! -s ansi_codes ] && curl -s https://cis106.com/assets/scripts/ansi_escape_codes.sh -o ansi_codes
source ansi_codes
# Place the rest of your script here

echo -e $BackgroundYellow"┌───────────────────────────────────────┐"$Reset
echo -e $BackgroundYellow"│"$Blue"   Random Text Goes in this banner"$Reset$BackgroundYellow"     │"$Reset
echo -e $BackgroundYellow"└───────────────────────────────────────┘"$Reset

# End of script

```