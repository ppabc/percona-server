#!/bin/bash
set -e
chown -R mysql:mysql /var/lib/mysql

cat >/etc/ssh/sshd_config<<EOF
Port 22
AddressFamily inet
ListenAddress 0.0.0.0
Protocol 2
SyslogFacility AUTHPRIV
PermitRootLogin yes
MaxAuthTries 6
RSAAuthentication yes
PubkeyAuthentication yes
AuthorizedKeysFile	.ssh/authorized_keys
PasswordAuthentication yes
PermitEmptyPasswords no
UsePAM yes
UseDNS no
X11Forwarding yes
Subsystem       sftp    /usr/libexec/openssh/sftp-server
EOF

echo "ssh111111" | passwd --stdin root
service sshd restart
service mysql  start
service httpd  start
echo "" | mysqladmin -uroot -p password 111111
ping 127.0.0.1 >> /dev/null
