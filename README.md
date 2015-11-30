# Sudoless-Shutdown
A project to deliver a sudoless shutdown script to use, I wanted to make a continum to the bash script that logged you out, but I really have come to realize that the shutdown is not as trivial. As a learning experience it looks like a great project.


@TODO:

--- in C ---

check: (1) sysv.h library

check: (2) nih/*.h library

check: (3) nih-dbus/*.h library

(2, 3 ) libnih (external)
(1) upstart (internal, in compiled kernel)

!!!

Sysvinit.h  -? Might be an easy solution. @Sysvinit package.


------------------------------------------

For the purpose for project the c file in upstart internal kernel; the shutdown function in shutdown.c is the only interesting part out there. A delayed shutdown is not as intriguing to be made as a sudoless script as it is possible to make hacks around the variations that give the results immediadetely. 

