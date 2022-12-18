FROM --platform=$TARGETPLATFORM centos

ADD xbin /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

# need to change source
# RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*; \
#     sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*;
