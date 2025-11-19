---
layout: page
title: Lab 7 - Handling Text Files part 1
---

# {{page.title}}

## Work in progress

## Video
PENDING

## Question 1
1. Complete the practice exercise in the presentation. Take a screenshot of your terminal after finishing each practice. 
   1. [Practice 1](https://docs.google.com/presentation/d/e/2PACX-1vQinYrDhi0FcbL95aDMDQ7CSMVp_TwwlFxotFyZgr7fzJcs_didbQ8Mm1bQ406gYyrRTLZiWE6BZ5rH/pub?start=false&loop=false&delayms=3000&slide=id.g3a06be84feb_0_0)
   2. [Practice 2](https://docs.google.com/presentation/d/e/2PACX-1vQinYrDhi0FcbL95aDMDQ7CSMVp_TwwlFxotFyZgr7fzJcs_didbQ8Mm1bQ406gYyrRTLZiWE6BZ5rH/pub?start=false&loop=false&delayms=3000&slide=id.g3a06be84feb_0_699)
   3. [Practice 3](https://docs.google.com/presentation/d/e/2PACX-1vQinYrDhi0FcbL95aDMDQ7CSMVp_TwwlFxotFyZgr7fzJcs_didbQ8Mm1bQ406gYyrRTLZiWE6BZ5rH/pub?start=false&loop=false&delayms=3000&slide=id.g3701adf0085_0_11)

<hr>

## Question 2: Challenge 

### Scenario
You are a junior system administrator working for **NET-Gen Wares**, a web development agency, that stores server access logs in plain-text files. Your boss sends you a file named `access.log` that contains some data. Each line is structured like this:

```
2025-01-27  14:32:11  user42  /login  SUCCESS
```

**The fields represent:**
1. Date of event occurrence
2. Time of the given date
3. Username of the user who perform the given action in the application
4. Endpoint accessed to perform the given action
5. Result of the action

To obtain the file, run this command:

```bash
curl -s https://cis106.com/assets/scripts/chal8.sh | bash
```


Your task is to analyze this file using ONLY basic text-handling commands: `cat`, `tac`, `head`, `tail`, `cut`, `sort`, `wc`. ***The use of the following commands/techniques is forbidden:*** `>`,`|`, `grep`, and `awk`.

> (For every question, you must show the command you use to answer the question. You will certainly need more than 1 screenshot.)

1. Before we start working with the log file, figure out How many logs the file contains. 
2. Who was the first user to interact with the application?
3. Who was the last user to interact with the application?
4. What are the first 15 events in the file? *You must include the name of the file in the command output.*
5. What are the last 15 events in the file? *You must include the name of the file in the command output.*
6. Your boss needs a list of every user who logged an event. Generate the list using the file `access.log`. You only need to display the list in the terminal. There is no need to save the output or deleting the duplicates. Simply extract the usernames from the `access.log` file.
7. Your boss needs you to order the logs alphabetically by username and save the output in a file called: `sorted_access_log_by_uname.log`. 
8. Your boss needs you to order the logs alphabetically by endpoint used and save the output in a file called: `sorted_access_log_by_endpoint.log`. 
9. You need to get a more clear idea of what action each user did in the application. Manipulate the `access.log` file so that the output of the command looks like this:

```
Edward accessed: /admin
Kei accessed: /dashboard
Asimov accessed: /download
```



## How I will grade you:
* Question 1: 50 pts 
* Question 2: 50 pts
  * Each task is worth 5 points except task 9 that is worth 10.


<hr>

## Special Note 1 - Regarding your final exam
* Focus on the steps you took to answer the challenge question since your exam will be similar

## Special Note 2 - Git Command Quick Reference
You’ll be using Git frequently this semester. Here’s a quick reminder of the most common commands:

| Command                            | Purpose                                                                                                                         |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `git clone repository/url/here`    | Download a GitHub repository to your computer.                                                                                  |
| `git pull`                         | Synchronize your local repository with the latest changes from GitHub. Always run this **before** starting any work in VS Code. |
| `git add .`                        | Track all changes made to your files.                                                                                           |
| `git commit -m "description here"` | Save a snapshot of your tracked changes with a short description.                                                               |
| `git push`                         | Send your committed changes to GitHub.                                                                                          |

**Command Order:**
```bash
git pull 
git add . 
git commit -m "message" 
git push
```

> ⚠️ Warning: ⚠️  <br> Avoid making changes directly in the GitHub website unless you:
> * Know exactly what you are doing, and
> * Remember to run git pull before working locally.

## Special Note Regarding the Final Exam
* The final exam will be in person.
* It is performance-based and requires access to a Linux Virtual Machine.
* If you do not have a laptop/computer you can bring to school:
  * A Linux workstation will be available on campus.
  * Request it early—available computers are limited.