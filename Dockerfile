FROM parrotstream/centos-openjdk:8

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

USER root

ADD cloudera-cdh6.repo /etc/yum.repos.d/
RUN rpm --import https://archive.cloudera.com/cdh6/6.0.0/redhat7/yum/RPM-GPG-KEY-cloudera
RUN yum install -y initscripts kudu kudu-master kudu-tserver kudu-client0 kudu-client-devel kudu-debuginfo
RUN yum clean all

ADD etc/supervisord.conf /etc/
ADD etc/kudu/conf/tserver.gflagfile /etc/kudu/conf/

WORKDIR /

# Various helper scripts
ADD bin/start-kudu.sh /
ADD bin/supervisord-bootstrap.sh /
ADD bin/wait-for-it.sh /
RUN chmod +x ./*.sh

EXPOSE 8050 7050 8051 7051

#RUN chkconfig ntpd on

ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf", "-n"]
