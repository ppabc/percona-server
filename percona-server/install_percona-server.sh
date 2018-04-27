#!/bin/bash
yum install -y http://www.percona.com/downloads/percona-release/redhat/0.1-4/percona-release-0.1-4.noarch.rpm
yum install -y gcc-c++ make gcc httpd php php-mysql php-devel php-pear libssh2 libssh2-devel unzip cmake libaio-devel libffi-devel glib2 glib2-devel bison libaio-devel ncurses-devel Percona-Server-shared-56  Percona-Server-client-56 Percona-Server-devel-56 Percona-Server-server-56 openssh-server openssh-clients

ln -s /usr/lib64/libperconaserverclient_r.so.18 /usr/lib64/libperconaserverclient_r.so
chown -R mysql:mysql /var/lib/mysql
/bin/cp /percona-server/my.cnf /etc/my.cnf
