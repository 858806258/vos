#2.0升级4.0 
#vos 2009 2.1.2.0升级vos 2009 2.1.4.0
#先卸载原来的包
yum remove vos3000-g3server-2.1.3-2 vos3000-thirdparty-2.1.3-2 vos3000-pbx-2.1.3-2
yum remove jdk


[root@localhost ~]# rpm -Uvh vos2009-2.1.4-0.i586.rpm 
Preparing...                ########################################### [100%]
        Checking 127.0.0.1:3306 vosdb ... [ passed ]
        Stoping old vos2009 2.1.2.0
Shutting down kunshi vos2009webserver service:[  OK  ]
Shutting down kunshi vos2009 service:[  OK  ]
   1:vos2009                ########################################### [100%]
        Start vos2009 on boot [Y/n]: y
Upgrading...
        UUID: 3d19ffe3-b83a-4f2b-972c-070eac6a458a
        Upgrade database tables [Y/n]: y
        Upgrading database tables .../home/kunshi/vos2009/server/etc/servermysqlupgrade.sh: line 19: /home/kunshi/vos2009/server/etc/servermysqlupgrade2120a.sql: No such file or directory
 [ failed ]
                 Error file:/home/kunshi/upgrade_log_err.vos2009
        Starting new vos2009 [Y/n]: y
Starting kunshi vos2009 web server service:                [  OK  ]
Starting kunshi vos2009 service:                           [  OK  ]




#vos 2009 2.1.4.0 升级 vos 3000 2.1.4.0


[224050][root@localhost ~]# rpm -Uvh vos2009
[224050]vos2009_2.1.2.0_64.tar.gz  vos2009-2.1.2-4.i586.rpm   vos2009-2.1.4-0.i586.rpm   
[224058][root@localhost ~]# rpm -Uvh vos2009-2.1.4-0.i586.rpm 
[224058]Preparing...                ########################################### [100%]
[224058]        Checking 127.0.0.1:3306 vosdb ... [ passed ]
[224058]        Stoping old vos2009 2.1.2.4
[224058]Shutting down kunshi vos2009webserver service:[FAILED]
[224058]Shutting down kunshi vos2009 service:[FAILED]
[224058]   1:vos2009                ########################################### [100%]
[224102]        Start vos2009 on boot [Y/n]: y
[224102]Upgrading...
[224102]        UUID: 37469f5f-cbc8-4a66-a726-160935606996
[224103]        Upgrade database tables [Y/n]: y
[224109]        Upgrading database tables ... [ finished ]
[224111]        Starting new vos2009 [Y/n]: y
[224111]Starting kunshi vos2009 web server service:                [  OK  ]
[224111]Starting kunshi vos2009 service:                           [  OK  ]