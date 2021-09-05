
 /** Soldat Dedicated Server README **\
          - Updated 2013-05-23 -
 <------------------------------------>

 Before starting your server, you need to configure your settings!
 Please manually edit your soldat.ini and mapslist.txt files
 before starting your server. There are many 3rd party tools
 available to make this an easy task for you.

 The Soldat Dedicated Server is maintained and developed for free
 by the Soldat Dev Team.

 ---> Linux: Folder permissions... make the following folders writable with:
  a) chmod -R u+w ./logs/
  b) chmod -R u+w ./anti-cheat/

 IMPORTANT: You must have an Admin password in order to control your
  server! To set an Admin password, open soldat.ini [NETWORK] and
  edit the line that says "Admin_Password=" to "Admin_Password=MYPASS"
  (Replace MYPASS with what you want your Admin password to be!)

 Linux Note:
  If you run a Soldat Server under linux, you must run soldatserver
  under a user account that has read access to /etc/resolv.conf
  otherwise the SoldatServer lobby will not function correctly.

 Script Core Notes:
  The Scripting Engine coded into the SoldatServer uses the "Pascal"
  language syntax. You may find full documentation regarding the
  functions and variables/events at the following URL:
  >>>>  http://devs.soldat.pl/wiki/index.php?title=Server_Scripting <<<<

  NOTE: Some basic functions will not be documented, such as:
  inttostr, trim, strtoint, etc.

 To control the server while running:
  Use the Soldat Admin program from http://soldat.pl. You can connect
  to your Dedicated Server from the local machine or from a Remote
  location. Soldat Admin is the only way to perform server commands
  while running the server.

 Compatability:
  The Soldat Dedicated Server is designed to run on 32-Bit Linux and Windows.
  There is no FreeBSD or 64-Bit versions of the Soldat Dedicated Server.

 How to run the server in the background (Daemonize):
  Linux -
   ./soldatserver -d
   -or-
   screen -dmS SoldatServer /usr/local/soldat/soldatserver
   -or-
   nohup ./soldatserver >/dev/null &
  Windows -
   Use a program like TrayIT! or Srvany (get them from http://google.com)

 Startup parameters: (Advanced users!)
 NOTE: Startup parameters will over-rule any values set in soldat.ini or server.ini!
 ./soldatserver
   -d
   Usage: ./soldatserver -d
    (LINUX ONLY) Starts your server as a Daemon (Runs in the background, even when you log off)
   -pid
    Usage: ./soldatserver -pid soldatserver.pid
           Sets the Process ID file name. Located in the /logs/ folder. (soldatserver.pid by default)
   -m
    Usage: ./soldatserver -m xx.txt
           Sets the default mapslist file to xx.txt (mapslist.txt by default)
   -c
    Usage: ./soldatserver -c xx.ini
           Sets the default configuration file to xx.ini (soldat.ini by default)
   -p
    Usage: ./soldatserver -p 23073
           Start the Soldat Server on a specific port.
   -l
    Usage: ./soldatserver -l 12
           Limit the number of players that can join the server.
   -k
    Usage: ./soldatserver -k "my clan only"
           Sets a password that will be required by anyone who tries to join.
   -b
    Usage: ./soldatserver -b "72.232.225.66"
           Bind the server to a specific IP Address. USE WITH CAUTION!
           NOTE: You cannot bind to an IP that isnt assigned to your network card!
   -a
    Usage: ./soldatserver -a #
           Enable/Disable All-Seeing Eye registration. # -> 1 = enabled, 0 = disabled.
   -s
    Usage: ./soldatserver -s #
           Enable/Disable the SoldatServer Scripting Engine. # -> 1 = enabled, 0 = disabled.
   -safe
    Usage: ./soldatserver -safe #
           Enable/Disable Safe Mode for Scripts (On by default). # -> 1 = enabled, 0 = disabled.
   -lock
    Usage: ./soldatserver -lock #
           Enable/Disable Locked Mode (Off by default). When Locked Mode is enabled, admins will
           not be able to type /loadcon, /password or /maxplayers.  # -> 1 = enabled, 0 = disabled.
   -disallow
    Usage: ./soldatserver -disallow "GetURL,ReadFile"
           Disable certain script functions from being used by scripts. Note that this will cause
           any scripts that use these functions to crash with an "unknown identifier GetURL" error.
   -debug
    Usage: ./soldatserver -debug #
           Enable/Disable Debug Mode (See Debug_Mode in soldat.ini).
           # -> 0 = No Debug, 1 = Lobby Debug, 2 = Advanced Debug, 3 = Script Core Debug
           If you find a bug and report it, please use Debug Mode 2. It helps us alot.
   -ns
    Usage: ./soldatserver -ns 192.168.2.1
           Set the Nameserver your Soldat Server will use to resolve the Lobby DNS.
           Only use this if you know what you are doing! The server should automatically
           detect what Nameserver your computer uses!
   -ls
    Usage: ./soldatserver -ls #
           Set the maximum number of scripts which can be loaded by this server.

 <------------------------------------>
 Still having issues with your Soldat Server?
 You may contact us via IRC on the Quakenet IRC Network.
 #soldat.devs @ irc.quakenet.org

 Dedicated Server Hosts:
  GameServerNetwork USA   http://www.gameservernetwork.com/
  U13 USA                 http://rentals.u13.net/
