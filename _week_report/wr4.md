---
title: Week Report 4
layout: page
---

# {{page.title}}

<hr>

- [{{page.title}}](#pagetitle)
  - [Video](#video)
  - [Study Material](#study-material)
  - [Tasks to complete](#tasks-to-complete)
  - [What to include in Notes 4](#what-to-include-in-notes-4)
    - [The criteria for grading your notes](#the-criteria-for-grading-your-notes)
  - [What will you submit for Week report 4](#what-will-you-submit-for-week-report-4)
  - [Special Note 1](#special-note-1)
  - [Special Note 2: Git Commands Quick Reference](#special-note-2-git-commands-quick-reference)
  - [Special Note 3: Regarding the Final Exam](#special-note-3-regarding-the-final-exam)


## Video
[Week Report 4 Video Explanation](https://youtu.be/lY96atbH8mI)

## Study Material
* [Managing Software](https://rapurl.live/za8)
* [Shell Scripting Presentation](https://rapurl.live/2ks)

## Tasks to complete
1. Complete [Practice 1](https://rapurl.live/fq0) from the presentation [Managing Software](https://rapurl.live/lf6). Take a screenshot of the terminal and place it in the `wr4/` directory/folder
2. Complete [Practice 1](https://rapurl.live/tcb) from the [Shell Scripting Presentation](https://rapurl.live/2ks).Take a screenshot of the terminal and place it in the `wr4/` directory/folder
3. Complete [Lab 4](https://cis106.com/labs/lab4/)
4. Complete [Notes 4](https://cis106.com/week_report/wr4/#what-to-include-in-notes-4)
   1. Video explanation [here](https://youtu.be/1YE6jLuxoGo)
5. Complete [Week Report 4](https://cis106.com/week_report/wr4/#what-will-you-submit-for-week-report-4)
6. Finish **Discussion Board 2**. (This means that all you have to do is reply to someone's post)


## What to include in Notes 4
Anser the following questions:
1. How to install and remove software using the APT command. Include several well documented examples as you will need to install software later.  
2. How to create a shell script step by step including screenshots and how to run it. Try to be as detailed as possible. You will have to create a script in your final exam. 

### The criteria for grading your notes
1. Use proper markdown syntax
2. Your notes are clean, clear, and complete 
3. The commands use inline code formatting. 
4. For multi-line command examples, use code block
5. Your screenshots are clear, appropriate, and reasonably sized. (If you need to resize an image, there are multiple ways of doing it. [Either use HTML](https://rapurl.live/v40) or a resizing tool) 
6. Here is an example of what I expect from you: [Notes Example](https://github.com/robertalberto0713/cis106/blob/main/notes/notes5/notes5_alternative1.md)
7. Here is another example with a more minimal formatting: [Notes Example 2](https://github.com/robertalberto0713/cis106/blob/main/notes/notes5/notes5_alternative2.md)

## What will you submit for Week report 4
1. Add the screenshots of practice 1 (managing software and shell scripting). Properly label them using headings
2. Add links to your notes 4 and lab 4
3. Convert `wr4.md` to pdf
4. Push everything to github:
5. **In blackboard submit:**
   1. The GitHub URL to the `wr4.md` file
   2. The pdf file `wr4.pdf`	

<hr>

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

## Special Note 1
> Please take a snapshot of your virtual machine after you complete the report. The virtual machine must be off before you take the snapshot. Always keep a snapshot of the last completed week report. 

## Special Note 2: Git Commands Quick Reference
You’ll be using Git frequently this semester. Here’s a quick reminder of the most common commands:

| Command                            | Purpose                                                                  |
| ---------------------------------- | ------------------------------------------------------------------------ |
| `git clone repository/url/here`    | Download a GitHub repository to your computer.                           |
| `git pull`                         | Synchronize your repository with GitHub before starting work in VS Code. |
| `git add .`                        | Track all changes made to your files.                                    |
| `git commit -m "description here"` | Save a snapshot of your tracked changes with a short description.        |
| `git push`                         | Send your committed changes to GitHub.                                   |

**Order of Git Commands:**
```bash
git pull 
git add . 
git commit -m "message" 
git push
```

> ⚠️ Warning: ⚠️  <br> Please do not edit or upload files directly through the GitHub website. Use the VS Code terminal to commit and push changes to your repository.<br> If you make changes through the GitHub website, you must run `git pull` before continuing local work.

## Special Note 3: Regarding the Final Exam
* The final exam will be in person.
* It is performance-based and requires access to a Linux Virtual Machine.
* If you do not have a laptop/computer you can bring to school:
  * A Linux workstation will be available on campus.
  * Request access early because available computers are limited.