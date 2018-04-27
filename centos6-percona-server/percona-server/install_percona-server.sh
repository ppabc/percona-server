#!/bin/bash
yum install -y http://www.percona.com/downloads/percona-release/redhat/0.1-4/percona-release-0.1-4.noarch.rpm
yum install -y epel-release
yum install -y libev
yum install -y Percona-Server-shared-56  Percona-Server-client-56 Percona-Server-devel-56 Percona-Server-server-56 percona-xtrabackup-24 percona-toolkit

ln -s /usr/lib64/libperconaserverclient_r.so.18 /usr/lib64/libperconaserverclient_r.so
chown -R mysql:mysql /var/lib/mysql
/bin/cp /percona-server/my.cnf /etc/my.cnf
