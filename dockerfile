# A basic aenoss server

FROM mdwhitis/zenoss_6.2.0_68_1

MAINTAINER Michael Whitis version: 0.1

RUN hostname zenoss; unalias cp; head -n -1 /etc/hosts > /etc/hosts.1; cp -f /etc/hosts.1 /etc/hosts ; echo 172.17.0.2 zenoss >> /etc/hosts; yum -y update

# CMD ["/opt/zenoss/bin/zenoss", "-D", "FOREGROUND"]
