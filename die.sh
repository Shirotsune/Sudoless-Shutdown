#!/bin/bash                                                                                                                                     

#dbus-send --system --print-reply --dest=org.freedesktop.ConsoleKit /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop\
;                                                                                                                                               
#Was deprecated and the reason why it took so bloody long to find a solution.                                                                   

echo "q kills"
echo "r reboots"
echo "h hibernates"
echo "s sleeps"
echo

read -p "Choose mode:" -n 1 -r
                                                                                                                                
case $REPLY in

#Shutdown                                                                                                                                       
q) 
dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.PowerOff" boolean:tru\
e
;;

#Restart
r)
dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Reboot" boolean:true
;;

#Suspend                                                                                                                                        
s)
dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Suspend" boolean:true
;;

#Hibernate                                                                                                                                      
h)
dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Hibernate" boolean:true
;;
esac


