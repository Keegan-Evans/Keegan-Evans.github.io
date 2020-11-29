---
layout: post
title: Daily Progress
date: 2020-09-10
tags: [it, infosec, learning, certification, cars, repair]
---

- *Finding the Right Module* in Heath Adam's [*Practical Ethical
Hacking*](https://www.udemy.com/course/practical-ethical-hacking/) course
on Udemy.

	- A few issues came up when trying to download the `mona.py`
	  script. I had issues with cURL when trying to download it in my
Windows 10 environment. When I come up with a solution to this I will post
it. My second attempt was to simply use `vim` to create the file directly
in the directory. However, on my new install of Windows 10, I couldn't
paste the text into vim. Look below for the fix to this.

- In the afternoon I helped flush the coolant system on a friend's new
  ***24 Hours of Lemons*** racecar. While flushing, we discovered that the
coolant system has several leaks and also does not seem to be running
coolant completely through the system very well. A "new" waterpump may be
in order. In this race series, that cost of the vehicle less the cost of
safety systems must be less than $500, which doesn't leave much room for
anything approaching actually new parts.

### Enable Pasting into vim in Windows 10

Open Powershell as an Adminstrator, then use the vim command:

```

:edit $MYVIMRC

```

which will edit your .vimrc whereever it is then added this to it:

```

source $VIMRUNTIME/mswin.vim

behave mswin

```

and then save via the usual route.
