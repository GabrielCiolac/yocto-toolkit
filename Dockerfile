FROM ubuntu:jammy

USER root

ENV DEBIAN_FRONTEND=noninteractive

# Big Step Install All Required Packages and does cleanup afterwards
RUN apt-get -y update &&\
    apt-get -y gawk wget git-core diffstat unzip texinfo gcc-multilib && \
    apt-get -y build-essential chrpath socat cpio python python3 python3-pip python3-pexpect &&\
    apt-get -y xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev xterm &&\
    apt autoremove &&\
    apt-get -y clean
