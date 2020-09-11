---
layout: post
title: Daily Progress
date: 2020-09-11
catergories: [it, infosec, learning, certification]
---

- *Generating Shellcode and Getting Root* in Heath Adam's [*Practical Ethical
Hacking*](https://www.udemy.com/course/practical-ethical-hacking/) course
on Udemy.

- 1.5 hours of work on the *Scoring Poker Hands* project in **Simply
  Scheme**. Produced functions to deal with hands produced by matching
ranks. Next session I plan to develop a function to sort the ranks into
appropriate order and then score flush hands. Finally I can produce
a master function that will be able to determine the value of any given
hand. 

- Reread Chapter 2 of *Simply Scheme* for review.

- I was being driven crazy by the system beep tone whenever I accidently
  entered an invalid keysequence or tried to tab to a file that didn't
exist. I am running Kali Linux with the XFCE desktop. To turn it off, you
can open a terminal and enter: `xset -b`. To permanently turn off the tone
I created a startup program by going to Settings Manager -> Session and
Startup -> Application Autostart -> `+ Add` With the settings:

	- Name PC Speaker Off

	- Command: `xset -b`

	- Trigger: on login

- `vim` command of the day: `%` is used to jump to a matching parenthesis,
  square bracket, or curly brace, the start or end of a C-style comment,
as well as other matching keywords/conditionals if they are specified in
ftplugin files.
