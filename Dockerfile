FROM ubuntu:jammy

USER root

ENV DEBIAN_FRONTEND=noninteractive

# Big Step Install All Required Packages and does cleanup afterwards
RUN apt-get -y update &&\
    apt-get -y install software-properties-common &&\
    apt-get -y install gawk &&\
    apt-get -y install wget &&\
    apt-get -y install git-core &&\
    apt-get -y install diffstat &&\
    apt-get -y install unzip &&\
    apt-get -y install texinfo &&\
    apt-get install -y --no-install-recommends gcc-multilib &&\
    apt-get -y install build-essential &&\
    apt-get -y install chrpath &&\
    apt-get -y install socat &&\
    apt-get -y install libsdl1.2-dev &&\
    apt-get -y install xterm &&\
    apt autoremove &&\
    apt-get -y clean
