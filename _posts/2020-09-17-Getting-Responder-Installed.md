---
layout: post
title: Getting Responder Installed
catergories: [infosec, oscp, responder, "practical ethical hacking",
troubleshooting]
---

In going through [Heath Adam's Practical Ethical
Hacking](https://www.udemy.com/course/practical-ethical-hacking/learn/lecture/17235986#questions/9609068)
course. In the active directory section, he has you use a tool called
`responder`, which is supposed to be part of the `Impacket` library.
However, in the Impacket package, the included Responder script appears to
be a bit different than the one that Heath demonstrates. The good news is
that the same version that he is using is still avaliable at [this
link](https://github.com/lgandx/Responder). However, the documentation
does not include installation instructions.

Not that you are really going to "install" it as it is a python script,
but the following is how I got it set up on my machine to work as
demonstrated in *Capturing NTLMv2 Hashes with Responder* on my kali
desktop.

```

cd /opt/

sudo git clone https://github.com/lgandx/Responder.git

cd Responder

sudo chmod +x Responder.py

echo 'export PATH="$PATH:/opt/Responder/"' >> ~/.bashrc

source ~/.bashrc

```

Now you should be able to run the `Responder`, though you will need to run
as sudo or change to root. Alternatively, the files could be installed
somewhere in your home directory and run without this step. 
