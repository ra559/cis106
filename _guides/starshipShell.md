---
layout: page
title: How to install Starship Shell
---

# {{page.title}}

## What is starship shell?

Is a customizable shell prompt. Learn more in the projects website: [starship.rs](https://starship.rs/)

<p>
<img src="/assets/extras/starship/0-100.png">
</p>

## How to install

1. Run this command:

```bash
curl -sS https://starship.rs/install.sh | sh
```

2. Open the file `~/.bashrc` and add this line at the end:

```bash
eval "$(starship init bash)"
```
> `.bashrc` is a hidden file. You will need to enable hidden files view (CTRL + H) to see this file if you are doing this graphically

3. Restart the terminal or run the command: `source ~/bashrc`


4. How to customize the shell prompt

Read the manual: [Starship Config](https://starship.rs/config/). If you want the same config I use, then run this command:

```bash
curl https://cis106.com/assets/starship.toml -o $HOME/.config/starship.toml
```


### Screenshots

<p>
<img src="/assets/extras/starship/installation1.png"> <br>
<img src="/assets/extras/starship/installation2.png"> <br>
<img src="/assets/extras/starship/text_editor1.png"> <br>
<img src="/assets/extras/starship/text_editor2.png"> <br>
<img src="/assets/extras/starship/installation3.png"> <br>
<img src="/assets/extras/starship/installation4.png"> <br>
</p>

