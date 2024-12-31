---
title: Frequently Asked Questions
layout: page
---

# {{page.title}}

## If this class is about Linux, why are we learning about Git, VS Code, and VirtualBox? 
* To learn an operating system, you need to use it. To use an operating system, you need a computer to install and run it. VirtualBox allows you to create a virtual machine where you can install an operating system, so learning about virtualization is essential. To receive grades for completing assignments, you need a way to create, save, and submit documents. VS Code is our text/code editor of choice because it manages Markdown easily and offers a lot of versatility through extensions. Markdown is a plaintext formatting language, which is simple to learn and runs well in a virtual machine. Git is version control software that tracks changes in files and directories, while GitHub is a cloud hosting solution for Git. Together, they serve as a backup for your files. If your virtual machine breaks, all your work can be retrieved from GitHub. VS Code, VirtualBox, and Git are essential tools that every Linux user should have experience with.

## Why is this class only 1 credit? 
* Due to the limitations of associate degree programs.

## Why is this class so much work?
* It is not. For every lecture, you will be assigned the equivalent of 2 hours of work. This is the required amount of time that a 1-credit class is designed to be studied each week. This course ensures that you study for 2 hours every week per lecture. The 2 hours of work are designed with the following assumptions:
  * You understand basic computer terminology.
  * You are efficient at using your computer.
  * You can follow instructions.
  * Your computer is functioning optimally for the class.

## Why is the final in person?
* This guarantees fairness to everyone. It is impossible to prevent cheating if a performance-based exam is given over Zoom to some students and in person to others. Conducting the exam in person also ensures that AI is not used to answer the questions. If you have any issues, DM your professor in Slack or email them as soon as possible. To ensure that everyone has enough time to prepare, all details are provided on the first day of class and repeated throughout the semester.

## What is the format of the final exam?
* The final exam is performance-based. You will be given 4 problems to solve using your Ubuntu machine. Just like in the labs, you will take screenshots of your terminal to show the solutions. One of the questions will involve writing a script. You can find examples [here](https://cis106.com/final_exam/final_exam/#how-to-practice-shell-scripting-for-your-final-exam). All the commands and topics to study are available [here](https://cis106.com/final_exam/final_exam/).

## What happens if I do not have a computer to bring to school?
* I have 4 computers with Ubuntu already installed. You can use them during class and for the exam. If needed, a dedicated user account can be created for you. All you need to do is reserve one as soon as possible, and the PC will be yours for the semester. These PCs cannot be taken out of the school, but I will bring them every Wednesday and Thursday.

## Are there any PCs you recommend I buy?
* If you want to have your own PC for Linux and don’t mind spending some money, I recommend buying a MiniPC. They are inexpensive, and Ubuntu runs well on them. Here are the ones I have tested and use for the class:
  * [ACEMAGICIAN Win11 Mini PC, 12th Alder Lake N100](https://www.amazon.com/dp/B0DDK8XKZG?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1) – Price: around $150.
  * [Beelink Mini PC, SER5 Pro 5850U AMD Ryzen 7](https://www.amazon.com/dp/B0D6RG3YQW?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1) – Price: around $280.
  * [HP Prodesk 600 G3 Micro Computer Mini PC (Intel Quad Core i5-7500T 2.7GHz)](https://www.amazon.com/dp/B07S24VMLZ?ref=ppx_yo2ov_dt_b_fed_asin_title) – Price: about $110.
  * [Dell OptiPlex 3050 Micro Business Desktop (Intel Core i5-6500T)](https://www.amazon.com/dp/B0793JL2V8/?coliid=I2L2QKNH08CQZY&colid=1T7KW76FZVNLO&psc=1&ref_=list_c_wl_lv_ov_lig_dp_it) – Price: about $100.
* **Note:**
  * Regardless of which computer you get, keep the following in mind:
    * **Memory:** DDR4 with a minimum of 8GB, upgradeable.
    * **CPU:** Quad-core or higher. The newer, the better.
    * **Storage:** M.2 or SSD. If it comes with an HDD, replace it with an SSD as soon as possible.
    * Research to ensure compatibility with Ubuntu. Most desktop PCs, especially older ones, are likely to be compatible.

## How do I take a snapshot of my virtual machine?
* If you are using UTM on macOS, unfortunately, this option is not available as UTM does not have snapshot capability. For VirtualBox:

![Insert gif here](/assets/faq/creating_snapshot.gif)

You can learn more about snapshots [here](https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/snapshots.html#:~:text=Take%20a%20snapshot.&text=If%20your%20VM%20is%20running,machine%20name%20and%20select%20Snapshots.).

## How do I clone a GitHub repository?
* In the terminal, run: `git clone url-of-repository-here`

## My computer died. How do I recover my virtual machine?
* You will need to create a new virtual machine unless you had a backup of your virtual machine (export). However, once you clone your GitHub repository, all your work that you pushed to GitHub will be restored in your new virtual machine.

## I need help. Where do I get tutoring for this class?
* Tutoring for all CIS courses is offered in room H311 in the Hamilton building. However, I cannot guarantee that there will always be a tutor for you. Therefore, I offer my time. If you are struggling with the course material, you can schedule time with me over Zoom or in person. You can also request extra lectures and materials, and I can create a video for you. All you need to do is ask. Remember, **you paid for this class!**

## Do you recommend that I install Linux/Ubuntu on my main PC/laptop?
* No. This is likely not the only class you are taking. Not all necessary applications for other classes will be available for Linux. However, if you have a spare PC, I recommend installing Linux on it, provided it is a PC you are comfortable experimenting with.

## Do you recommend dual-booting?
* No, unless you know what you are doing. Windows is notorious for breaking GRUB (the boot manager). However, if you are confident in your technical skills, you can handle any issues that arise from dual-booting. I never dual-boot on the same drive. If your laptop/PC has more than one drive, you can install Windows on one drive and Ubuntu on another.
