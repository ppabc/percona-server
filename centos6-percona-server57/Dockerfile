FROM centos:centos6.9
MAINTAINER ppabc@qq.com "ppabc"

COPY percona-server /percona-server

RUN chmod +x /percona-server/install_percona-server.sh  && chmod +x /percona-server/run.sh && bash /percona-server/install_percona-server.sh

CMD ["/percona-server/run.sh"]
