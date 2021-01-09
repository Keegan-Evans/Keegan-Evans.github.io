---
layout: page
title: Using Powershell to Replace the Same Word in Multiple Files
date: 2020-11-29
tags: [powershell, scripting, files]
draft: true
---

This post was inspired by wanting to go through and rename a function in
all places that I used it a set of Scheme files. While it is easy enough
to replace all instances of a word in a single file while using Vim, in
this instance I created a script for Powershell that would allow me to
change all instances in a list of files. While I am not at a point where
I am doing a bunch of refactoring to any code, I may be some day and I
think that a script like this could potentially be very helpful.  