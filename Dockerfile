FROM ubuntu:jammy

USER root

ENV DEBIAN_FRONTEND=noninteractive

# Big Step Install All Required Packages and does cleanup afterwards
RUN apt-get -y update &&\
    apt-get -y gawk &&\
    apt-get -y wget &&\
    apt-get -y git-core &&\
    apt-get -y diffstat &&\
    apt-get -y unzip &&\
    apt-get -y texinfo&&\
    apt-get -y gcc-multilib && \
    apt-get -y build-essential &&\
    apt-get -y chrpath &&\
    apt-get -y socat &&\
    apt-get -y cpio &&\
    apt-get -y python &&\
    apt-get -y python3 &&\
    apt-get -y python3-pip &&\
    apt-get -y python3-pexpect &&\
    apt-get -y xz-utils &&\
    apt-get -y debianutils &&\
    apt-get -y iputils-ping &&\
    apt-get -y python3-git &&\
    apt-get -y python3-jinja2 &&\
    apt-get -y libegl1-mesa &&\
    apt-get -y libsdl1.2-dev &&\
    apt-get -y xterm &&\
    apt autoremove &&\
    apt-get -y clean
