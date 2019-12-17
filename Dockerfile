FROM ubuntu

ENV GIT_REPO=git://github.com/WindRiver-Labs/wrlinux-x.git
ENV GIT_BRANCH=WRLINUX_10_19_BASE

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt dist-upgrade -y && \
    apt install gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
     xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
     pylint3 xterm -y

RUN useradd -m -s /bin/bash yocto
VOLUME ["/home/yocto"]
WORKDIR /home/yocto/
USER yocto
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
