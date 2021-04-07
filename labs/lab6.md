# Lab 6 | Using VIM

> **NOTE:** You do not need to be a pro using VIM if you do not plan to use it a a development environment. However, you do need 
> to know the following things relatively well for your day to day work as a Linux User.
> * Opening a file
> * Saving a file and saving as another name
> * Editing a file (working with vim multiple modes)
> * Replacing text
> * Vim search tools
> Vim does a lot more than that, to a degree that a lot of Developers prefer to write code on VIM because its keyboard centric approach is a productivity enhancer. Once you learn VIM, you will hate every other text editor.~~~~


## Question 
Do all the practices in the [vim presentation](https://rapurl.live/w4n)

## Question 2
1. Start vim.
2. In insert mode, enter the following text:
```
# What is Linux?
(You need to write something here)
# 3 Reasons to use Linux:
* Reason 1 (You need to write something here)
* Reason 2 (You need to write something here)
* Reason 3 (You need to write something here)
```
1. Save the file as **linux.md**
2. Quit vim.
3. Open the the **linux.md** file in vim.
4. Add the following text:
```
# Other operating systems
* **Microsoft Windows** is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. 
* **macOS** is a series of proprietary graphical operating systems developed and marketed by Apple Inc. 
* **FreeBSD** is a free and open-source Unix-like operating system descended from the Berkeley Software Distribution (BSD), which was based on Research Unix.
* **RISC OS** is a computer operating system originally designed by Acorn Computers Ltd in Cambridge, England. 
```
5. Save the file as **linux+other.md**
6. Open the file **linux+other.md** and replace every instance of the word `Linux` with `GNU+Linux`. Save the file as `GNU+Linux.md`. 
7. Open `GNU+Linux.md`, look for the logo of each operating system and insert the image bellow the description of the OS. Use a URL Shortener service like  [Rebrandly](https://www.rebrandly.com/) to make the URL short if it happens to be a very long string. You must use Markdown syntax to add the image.
8. Display the content of all files and take a screenshot per file (you can use any of the commands you have learned so far).
9. Move the 3 files to your github repository.
## What will you submit?
The URL of `lab6.md`. The `lab6.md` file must contain the following:
* The 3 screenshots 
* The URL of each of the files: `linux.md`, `linux+other.md`, `GNU+linux.md`. 