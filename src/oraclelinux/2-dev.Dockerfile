
FROM --platform=$TARGETPLATFORM xcmd/base-oraclelinux-1-curl

RUN yum update -y && yum install -y bash zsh mksh git openssh-clients && yum clean all