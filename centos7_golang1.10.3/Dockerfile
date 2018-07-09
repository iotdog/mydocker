# CentOS 7 with Golang 1.10.3

FROM centos:7

RUN yum install wget git java-1.8.0-openjdk-devel -y && cd /root && wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz

# install go
RUN cd /root &&  mkdir gopath && tar -xzf go1.10.3.linux-amd64.tar.gz
RUN mkdir /root/gopath/src /root/gopath/bin /root/gopath/pkg
ENV GOROOT="/root/go"
ENV GOPATH="/root/gopath"
ENV PATH="${PATH}:/root/go/bin:/root/gopath/bin"
