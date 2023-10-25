FROM ubuntu:jammy

USER root

ENV DEBIAN_FRONTEND=noninteractive

# Big Step Install All Required Packages and does cleanup afterwards
RUN apt-get -y update &&\
    apt-get -y install gawk &&\
    apt-get -y install wget &&\
    apt-get -y install git-core &&\
    apt-get -y install diffstat &&\
    apt-get -y install unzip &&\
    apt-get -y install texinfo&&\
    apt-get -y install gcc-multilib && \
    apt-get -y install build-essential &&\
    apt-get -y install chrpath &&\
    apt-get -y install socat &&\
    apt-get -y install cpio &&\
    apt-get -y install python &&\
    apt-get -y install python3 &&\
    apt-get -y install python3-pip &&\
    apt-get -y install python3-pexpect &&\
    apt-get -y install xz-utils &&\
    apt-get -y install debianutils &&\
    apt-get -y install iputils-ping &&\
    apt-get -y install python3-git &&\
    apt-get -y install python3-jinja2 &&\
    apt-get -y install libegl1-mesa &&\
    apt-get -y install libsdl1.2-dev &&\
    apt-get -y install xterm &&\
    apt autoremove &&\
    apt-get -y clean
