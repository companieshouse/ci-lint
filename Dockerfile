FROM almalinux:latest

RUN yum update -y \
    && yum install -y nodejs npm yamllint \
    && yum clean all

RUN npm install jsonlint -g

RUN rpm --import http://yum-repository.platform.aws.chdev.org/RPM-GPG-KEY-platform-noarch && \
    yum install -y yum-utils && \
    yum-config-manager --add-repo http://yum-repository.platform.aws.chdev.org/platform-noarch.repo && \
    yum install -y platform-tools-common-1.0.6 && \
    yum clean all
