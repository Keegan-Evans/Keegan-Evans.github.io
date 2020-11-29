---
layout: post
title: Daily Progress
date: 2020-09-11
tags: [it, infosec, learning, certification]
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

- Reread Chapter 2 of **Simply Scheme** for review.

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

- [freeCodeCamp's Responsive Web Design
  Certification](https://www.freecodecamp.org/learn/) *Adjust the Margin
of an Element* &#8594; *Improve Compatibility with Browser Fallbacks*

- Worked through HTB: Lame without metasploit as OSCP practice. I ended up
  writing my own python script for, though it looks a lot like other
available ones, though I wrote it for python 3.

### HTB: Lame Notes

A few further notes. An important part of the script is assignment of the
shellcode with the call:

```
userID = "/=` nohup " + buf + "`"
```

There are two important things about this. The first does not actually
directly relate to this call itself but rather the msfvenom payload
referenced by `buf`. You need to be sure to delete the `b` at the
beginning of each line that will tell python that it is byte code. By
removing this, python reads the line as a string and can therefore
concatenate it with the other strings you have supplied. The second is the
call to `nohup` which is a linux command for "no hookup". As best I can
tell, this is because we are trying to run our code between entering the
logon userID(which is what contains our code) and the system asking for
a password. To get the required time, we provide this command, which then
lets our other code run in the background. I will also include a few
resources that I read through after running through the box as much on my
own as I could:

- [nohup link](https://linux.101hacks.com/unix/nohup-command/). 

- [Lame Walkthrough 1](https://0xdf.gitlab.io/2020/04/07/htb-lame.html).

- [Lame Walkthrough
  2](https://medium.com/@nmappn/exploiting-smb-samba-without-metasploit-series-1-b34291bbfd63)
  
- [Samba Usermap Script In More
  Detail](https://amriunix.com/post/cve-2007-2447-samba-usermap-script/).
