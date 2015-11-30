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

