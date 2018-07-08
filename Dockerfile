# CentOS 7集成开发环境

FROM centos:7

RUN yum install wget -y && cd /root && wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
