FROM docker.io/debian:testing-20260803-slim

RUN \
    echo 'APT::Install-Recommends "false";' >>/etc/apt/apt.conf &&\
    echo 'APT::Install-Suggests "false";' >>/etc/apt/apt.conf &&\
    export DEBIAN_FRONTEND=noninteractive &&\
    apt-get -q -y update &&\
    apt-get -q -y dist-upgrade --auto-remove &&\
    apt-get -q -y install \
        ca-certificates \
        git

RUN \
    git clone https://github.com/mihaiush/ldd_jail.git &&\
    cp ldd_jail/ldd_jail /usr/local/bin/ldd_jail &&\
    chmod +x /usr/local/bin/ldd_jail

