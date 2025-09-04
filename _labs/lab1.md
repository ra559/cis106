---
layout: post
title: Lab 1 - Learning Markdown
---

# {{page.title}}

- [{{page.title}}](#pagetitle)
  - [Resources](#resources)
  - [Learning Outcomes](#learning-outcomes)
  - [Question 1 What is Markdown? (10 pts)](#question-1-what-is-markdown-10-pts)
    - [1. Learn about Markdown:](#1-learn-about-markdown)
    - [2. Install and Explore VS Code:](#2-install-and-explore-vs-code)
    - [3. Complete Practice 1:](#3-complete-practice-1)
    - [Practice 1 (Slides 7–8)](#practice-1-slides-78)
  - [Question 2 Working with Headings and Paragraphs (10 pts)](#question-2-working-with-headings-and-paragraphs-10-pts)
    - [Instructions:](#instructions)
    - [Practice 2 - Slide 12](#practice-2---slide-12)
  - [Question 3 Working with Lists (10 pts)](#question-3-working-with-lists-10-pts)
    - [Instructions](#instructions-1)
    - [Practice 3](#practice-3)
  - [Question 4 Working with Code Formatting (10 pts)](#question-4-working-with-code-formatting-10-pts)
    - [Instructions](#instructions-2)
    - [Practice 4 - Slide 20](#practice-4---slide-20)
  - [Question 5 Working with Links and Images (10 pts)](#question-5-working-with-links-and-images-10-pts)
    - [Instructions](#instructions-3)
    - [Practice 5 - Slide 30](#practice-5---slide-30)
  - [Question 6 Working with Tables (10 pts)](#question-6-working-with-tables-10-pts)
    - [Instructions](#instructions-4)
    - [Practice 6](#practice-6)
  - [Question 7 Challenge Question – Create a Markdown Resume (40 pts)](#question-7-challenge-question--create-a-markdown-resume-40-pts)
    - [Scenario](#scenario)
    - [What to Do](#what-to-do)
  - [Time to submit](#time-to-submit)
    - [Create a GITHUB account](#create-a-github-account)
    - [What will you upload to Github:](#what-will-you-upload-to-github)
    - [Blackboard submission](#blackboard-submission)
    - [Here is how I will grade you:](#here-is-how-i-will-grade-you)
    - [Regarding Late submissions](#regarding-late-submissions)
    - [Special Note Regarding the final exam:](#special-note-regarding-the-final-exam)

## Resources

* [Presentation](https://docs.google.com/presentation/d/e/2PACX-1vReVyJ7kjFkJzSoz4cAgHo4Xa5dm35NlbCMS7Hfy5u_yhCJ2QqFb58nQS2tGqox4K9YLIU8u6FHiGet/pub?start=false&loop=false&delayms=3000)
* [Lab 1 Files](https://cis106.com/assets/lab1/lab1.zip)
* [Markdown Cheat Sheet](https://docs.google.com/drawings/d/e/2PACX-1vSZHQ6hVZ9wTWTk9_ulnNF4unMIFcw9Db7q1PHkAwbeoqGg9qPo7ObDvLM4NnZYBTIMGcdUV4TubtWk/pub?w=2132&h=1054)
* [Markdown Official documentation](https://www.markdownguide.org/)
* [VS Code](https://code.visualstudio.com/)
* [Lab video](https://youtu.be/L-7l82_2VnY)

## Learning Outcomes
* How to use VS Code
* How to use Markdown
* How to create a GitHub Repository
* How to add files to a GitHub Repository via the Web 

## Question 1 What is Markdown? (10 pts)
### 1. Learn about Markdown:
* **Read Slides 1–6**
  * These slides will help you understand what Markdown is and the formatting options it supports.

* **Complete Practice 1** (More Detailed Instructions Below)
  * The slides have a summary of the steps. The instructions here are more detailed.

### 2. Install and Explore VS Code:
1. Download and install [Visual Studio Code (VS Code)](https://code.visualstudio.com/).
2. Familiarize yourself with the following features:
    * How to install an extension
    * How to open a folder
    * How to create files and folders using the file manager
    * How to save files
    * ⚠️ **Note:** We will cover all of this during Practice 1, but reviewing it in advance will help you follow along more easily.
    * [Here is a nice introduction to VS Code](https://www.youtube.com/watch?v=B-s71n0dHUk). Watch the video if you want to learn more than what its covered in this lab. 

### 3. Complete Practice 1:
1. Follow the detailed instructions provided here to complete Practice 1.
2. The slides contain a shorter version of these steps, but this version includes more explanation to help guide you.

### Practice 1 (Slides 7–8)
📁 **Step 1: Enable File Extensions (Windows Only)**

1. If you're using Windows 10 or 11, make sure file extensions (like .md or .pdf) are visible. Some VS Code extensions will not work correctly if file extensions are hidden.
   1. [Windows 10: Enable file extensions](https://support.microsoft.com/en-us/windows/common-file-name-extensions-in-windows-da4a4430-8e76-89c5-59f7-1cdbbc75cb01)
   2. [Windows 11: Enable file extensions](https://lazyadmin.nl/win-11/show-file-extension-windows-11/)
   3. macOS: No action needed - file extensions are shown by default.

📦 **Step 2: Set Up Your Practice Folder**

1. Download the file [lab1.zip.](https://cis106.com/assets/lab1/lab1.zip)
2. Unzip or decompress the file into your Documents folder.
3. You should now have a folder called lab1 in Documents.

> ⚠️ Important: Do not just open the zip file. You must extract it first. If you're unsure how, watch this [video](https://www.youtube.com/watch?v=2zl-Vl9iQo0).

💻 **Step 3: Open the Folder in VS Code**

1. Open VS Code.
2. Go to File → Open Folder... and open the lab1 folder.

> ⚠️ Always open a folder in VS Code when working - never just a single file.

🧩 **Step 4: Install These VS Code Extensions**

1. Install the following extensions (search for them in the Extensions panel):
   1. [Markdown All in One – by Yu Zhang](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
   2. [Markdown PDF – by yzane](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf)
   3. [Markdown Preview Enhanced – by Yiyi Wang](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
   4. [PDF Preview – by Analytic Signal Limited](https://marketplace.visualstudio.com/items?itemName=analytic-signal.preview-pdf)
   5. [Code Spell Checker – by Street Side Software](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) (optional but recommended)

🔍 **Step 5: Try the Extensions**

**1) Markdown PDF:**
   1. Open the file `Ubuntu.md` inside the `question1` folder.
   2. Right-click on an empty area and choose: **Markdown PDF: Export (PDF)**
   3. A file named `Ubuntu.pdf` should appear in the same folder.

**2) Markdown Preview Enhanced:**
1. Right-click on an empty area of `Ubuntu.md` and select: **Markdown Preview Enhanced: Open Preview**
2. This lets you check for formatting issues before exporting.

**4) PDF Preview:**
1. Open the newly created `Ubuntu.pdf` file in VS Code.
2. It should open like a regular PDF viewer.

**3. Code Spell Checker:**
1. This extension highlights spelling mistakes in Markdown or code.
2. Optional: You can skip this if you prefer.

> ⚠️ Note: Make sure to save your markdown file. 



<hr>

## Question 2 Working with Headings and Paragraphs (10 pts)

### Instructions:

* **Read Slides 9–10**
  * These slides explain how to use headings, bold, and italic formatting in Markdown. 
* **Complete Practice 2** (More Detailed Instructions Below)
  * The slides have a summary of the steps. The instructions here are more detailed.

### Practice 2 - Slide 12

**Step 1) Rename the File**
1. Inside the question2 folder, find the file named `homework.txt`.
2. Rename it to `homework.md`.

**Step 2) Apply Heading Formatting**
1. Format line 1 as a Heading 1: Add `#` at the beginning of the line.
2. Format line 2 as a Heading 2: Add `##` at the beginning.
3. Format line 10 as a Heading 3: Add `###` at the beginning.

> ⚠️ You must add a space after the `#`

✅ Preview the file to see the difference between Heading 1, 2, and 3.

**Step 3) Bold Formatting**
1. Make every instance of the word `markdown` bold, except when it appears in a heading.
2. To do this, wrap the word with double asterisks like so: `**markdown**` *(No spaces between the asterisks and the word.)*

**Step 4) Italic Formatting**
1. Format the following phrases in italics using single asterisks (`*`):
   1. lightweight markup language
   2. by John Gruber in 2004
   3. Websites like Reddit and GitHub support Markdown

**Step 5) Bold + Italic Formatting**
1. Format the following in bold and italics using triple asterisks (***):
   1. websites, documents, notes, books, presentations, email messages, and technical documentation.
   2. opened using virtually any application.
   3. any device running any operating system.

**Step 6) Preview the Markdown File**
1. Right-click in the editor and use Markdown Preview Enhanced to view the formatted document.
2. Do you see how each level of formatting looks different?


<hr>

## Question 3 Working with Lists (10 pts)

### Instructions 
* **Read Slides 14–15**
  * These slides explain how to create unordered (bulleted) and ordered (numbered) lists in Markdown.

* **Complete Practice 3**
  * The presentation has a shorter version of the instructions. Follow the more detailed steps below:

### Practice 3

**Step 1) Copy Your Previous Work**
1. Navigate to the `question2` folder.
2. Copy the file `homework.md` into the `question3` folder.

**Step 2) Create a Bulleted List**
1. In the `homework.md` file (inside question3), format lines 12 to 20 as a bulleted list:
   1. Start each line with a dash - or an asterisk * followed by a space.
   2. Remove any empty lines between items.
   3. Preview the file to check that it displays as a clean bulleted list.

**Step 3) Add a Heading and a Numbered List**
1. Below the bulleted list, add a Heading 2: `## Recommended Markdown Applications`
2. Then add the following numbered list:

```
Mac: MacDown, iA Writer, or Marked 2  
Windows: ghostwriter or Markdown Monster  
Linux: ReText or ghostwriter  
```

> ⚠️ You can also indent list items by pressing Enter, then Tab, similar to Word.

**Step 4) Add a Second Heading and a Nested Bulleted List**
1. Add another Heading 2: `## Notes Taking Apps`
2. Then add this bulleted list with indented sub-items (press Tab after hitting Enter to indent):

```
Linux  
   Joplin  
   Obsidian  
Windows  
   Typora  
   Notion  
macOS  
   Ulysses  
   Craft  
```
**Step 5) Preview Your Markdown**
1. Use Markdown Preview Enhanced to review your final output.
2. Confirm that your headings, bulleted list, numbered list, and indents all appear correctly.

<hr>

## Question 4 Working with Code Formatting (10 pts)

### Instructions
* **Read Slides 18–19**
  * These slides explain how to format inline code and code blocks in Markdown.
* **Complete Practice 4**
  * The slides contain a shorter version of these steps. Follow the detailed instructions below.
### Practice 4 - Slide 20

**Step 1) Open the file**
1. In the question4 folder, open the file `codeNotes.md`.
2. This file contains notes about Python, but the code is not yet properly formatted.
3. Preview the file to see how it looks before you apply formatting.

**Step 2) Format a Code Block (Lines 12 -15)**
1. Add triple backticks <code>```</code> before line 12 and after line 15.
2. Leave one empty line before the opening backticks and one empty line after the closing backticks.

**Step 3) Inline Code Formatting (Lines 19–23)**
1. Format the following words using inline code by wrapping them in single backticks:
   1. `int`, `float`, `str`, `bool`, `list`, `tuple`, `dict`, `set`

**Step 4) Format Another Code Block (Lines 30–43)**
1. Wrap lines 30–43 with triple backticks to create a code block.
2. Again, leave an empty line before and after the code block.

**Step 5) Save and Preview**
1. Save your file.
2. Use Markdown Preview Enhanced in VS Code to make sure:
3. Inline code appears correctly
4. Code blocks are formatted with the correct spacing
5. Python code is syntax highlighted (bonus)


<hr>

## Question 5 Working with Links and Images (10 pts)

### Instructions
* **Read Slides 22–25 and 29**
  * These slides explain how to insert hyperlinks and images in Markdown.
* **Complete Practice 5**
  * The presentation includes a shorter version of the steps. Follow these detailed instructions below.
### Practice 5 - Slide 30

**Step 1) Open the Provided Files**
1. Navigate to the `question5` folder. You’ll find:
   1. `linux.md` - the Markdown file you’ll be editing.
   2. `Debian_logo.png` - an image file.
2. Open `linux.md` in VS Code.

**Step 2) Add Hyperlinks**
1. In the `linux.md` file, locate the words:
   1. Linux
   2. Linux Kernel
   3. Linux Distribution
   4. Linus Torvalds
2. Format each of these words as a hyperlink using the appropriate URL listed in the file.

**Step 3) Insert Images**
1. Insert the Linux mascot (Tux) using the URL provided in the `linux.md` file.
2. Insert the Debian logo (`Debian_logo.png`) from the same folder.

**Step 4) Save and Preview**
1. Save your `linux.md` file.
2. Use Markdown Preview Enhanced to view the formatted document.
3. Check that:
   1. All hyperlinks work correctly
   2. Images display properly with spacing
   3. Alt text shows if the image fails to load

<hr>

## Question 6 Working with Tables (10 pts)
### Instructions
* **Read Slides 32–34**
  * These slides explain how to create and format tables in Markdown.
* **Complete Practice 6**
  * The slides contain a summary version of the steps. Follow these detailed instructions below.

### Practice 6

**Step 1) Open the File**
1. Navigate to the question6 folder.
2. Open the file `pets.md`.


**Step 2) Format the Text as a Table**
1. The file contains unstructured or plain text data about pets.
2. Convert that text into a Markdown-formatted table using this syntax:

```
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Value A  | Value B  | Value C  |
```

> Make sure: Column headers are clearly labeled. The number of separators (`|`) matches the number of columns. Each row aligns properly under the correct column

**Step 3) Align Your Table for Readability**
1. While spacing between columns doesn't affect the preview, aligning them in the code improves readability.
2. You can use the VS Code extension "Markdown All in One" for automatic table formatting if installed.

**Step 4) Save and Preview**
1. Save your file.
2. Use Markdown Preview Enhanced to check that your table renders correctly.


<hr>

## Question 7 Challenge Question – Create a Markdown Resume (40 pts)

### Scenario
Your friend, John Doe, has asked you to create a 1-page resume for him. He has provided all of his information in a text file and included a profile picture.

Since you’ve just learned Markdown, you decide to format the resume using Markdown and then export it as a PDF for John.

### What to Do

1. **Navigate to the question7 folder**. You will find:
   1. `info.txt` - John's resume content
   2. `resume.png` - a preview of the finished PDF
   3. `johndoe.jpeg` - john's profile picture

2. **Rename info.txt → resume.md**
3. **Format the resume using Markdown**
   1. Use the Markdown skills you’ve learned to format:
      1. Headings for sections (e.g., `## Education`)
      2. Bullet points for lists (e.g., skills, experiences)
      3. Bold and italic text where needed
      4. An image for John’s profile photo
   2. Use this reference image to guide your formatting:
      1. [VS Code Preview of resume.md](https://docs.google.com/drawings/d/e/2PACX-1vRwXyXHaGDfXdZCAOKDecw733yT3hBNw5lguKA1yNzN0uCHvKByF1irB0iYVSqhHog54qO9KLP7Il93/pub?w=1440&h=1080)
4. **Preview your Markdown**
   1. Use Markdown Preview Enhanced to check how the resume looks in VS Code.
   2. Make sure everything fits on one page and is clearly organized.
5. **Convert to PDF**
   1. Right-click anywhere inside resume.md and select:
   2. Markdown PDF: Export (PDF)
   3. This will generate a resume.pdf file in the same folder.
6. **Compare with the Example**
   1. Open `resume.png` in the question7 folder.
   2. Your exported PDF should look similar to that example.
7. **Save Your Work. Double-check that:**
   1. `resume.md` is saved with all formatting
   2. `resume.pdf` is properly generated
   3. You didn't remove any content from the original `info.txt`
   4. John's profile photo renders in the markdown and the pdf

## Time to submit 

### Create a GITHUB account
1. Create a [github](https://github.com/) account using your PCCC email address. Make sure to save your github username, email, and password somewhere safe (like a password manager). You will need it a lot! If you already have a GitHub account, you are allowed to use it.
2. Create a public repository called cis106 LOWERCASE PLEASE!
3. Here is a [video](https://youtu.be/uraJCa5V-Ao) on how to create a github account and repository.
4. Do not close the [GitHub](https://github.com/) page, you will need it later.

### What will you upload to Github:
The `lab1` folder. Every single file must be in your GitHub repository!

### Blackboard submission

In blackboard, submit the following:

* The PDF file `resume.pdf`. 
* The URL of your GitHub Repository. For example, here is mine:
[https://github.com/linuxworkshop67/cis106](https://github.com/linuxworkshop67/cis106)


### Here is how I will grade you:
* I will go to your github repository, I will check that you complete all the practice from the video that is 60 points.
* I will check that you completed the challenge question that is 40 points. Having the `resume.md` file properly formatted and the pdf file is proof of this.
* If I cannot find the files in Github, you will not be awarded a passing grade for this lab.

<p align="center" style="display:block"><img src="/assets/warning-icon.png" width="50" /></p>

### Regarding Late submissions
Late submissions will be penalized 20 points. See blackboard for due date


### Special Note Regarding the final exam:
* You will be required to use markdown during your final exam.
* The final exam is in person.
* The exam is performance based and will require access to a Linux Virtual Machine.
* If you do not have a laptop/computer you can bring to school, a Linux Computer will be made available to you.
