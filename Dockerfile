FROM ubuntu:jammy

USER root
ADD toolkit toolkit

ENV DEBIAN_FRONTEND=noninteractive

# Big Step Install All Required Packages and does cleanup afterwards
RUN apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib &&\
    build-essential chrpath socat libsdl1.2-dev xterm -y

ADD requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt