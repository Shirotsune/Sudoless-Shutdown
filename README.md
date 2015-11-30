# Sudoless-Shutdown
A project to deliver a sudoless shutdown script to use, I wanted to make a continum to the bash script that logged you out, but I really have come to realize that the shutdown is not as trivial. As a learning experience it looks like a great project.

(Clarification :: I don't want to give any bash shell the privilege to run as a sudo without password prompt - this is trivial and easily done. Rather I want to explore the alternatives to create a heavy-weight hack around the issue as a learning experience.)

@PROJECT:
About doability of the said issue: A potential hack should exist due to the fact that many GUI's call these out and the baseline. A basic grep with ps aux proved that for example unity runs as user but has the access for the shutdown functions.

@TODO:

--- in C ---

check: (1) sysv.h library

check: (2) nih/*.h library

check: (3) nih-dbus/*.h library

(2, 3 ) libnih (external)
(1) upstart (internal, in compiled kernel)

!!!

Sysvinit.h  -? Might be an easy solution. @Sysvinit package.

@TODO:

System Daemon PolicyKit - if a basic hack around the issue fails, a possible hack around PolicyKit might be necessary. 
It would at least become very interesting, if this is the case in here. However there exists a workaround by creating a Daemon that would deliver the hack.


------------------------------------------

For the purpose for project the c file in upstart internal kernel; the shutdown function in shutdown.c is the only interesting part out there. A delayed shutdown is not as intriguing to be made as a sudoless script as it is possible to make hacks around the variations that give the results immediadetely. 

-------------------------------------------

It seems that adapting around PolKit is the way to go. After going through the source code of PolicyKit and seeing what it does over the manpage.

-------------------------------------------

As for some good news as I've been running GNOME in my ubuntu I've noticed that the gnome-session-quit is effective in terms of providing the shutdown functionality. Once again checking the ownership of the processes it is running on a non-sudo env. Logout seemed to be trivially implimented and might and probably is a lot nicer for the system than killall -u @USER. 

I'm currently analysing gnome source to see how the dbus is utilized, if it's the most promising one, I'll only hunt for the functions that GNOME use to shutdown the system and just replicate that process.

The thing that I'm mostly curious about is to see what PolKit has to say about it.
