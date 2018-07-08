# CentOS 7集成开发环境

FROM centos:7

RUN yum install wget -y && cd /root && wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz

# install go
RUN cd /root &&  mkdir gopath && tar -xzf go1.10.3.linux-amd64.tar.gz && mv go goroot
RUN mkdir /root/gopath/src /root/gopath/bin /root/gopath/pkg
RUN ./root/goroot/bin/go get -u golang.org/x/crypto/...
RUN ./root/goroot/bin/go get -u golang.org/x/tools/...
ENV GOROOT="/root/goroot"
ENV GOPATH="/root/gopath"
ENV PATH="${PATH}:/root/goroot/bin:/root/gopath/bin"
