FROM --platform=$TARGETPLATFORM fedora

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*; \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*;

RUN dnf update -y && dnf install -y curl && dnf clean all
