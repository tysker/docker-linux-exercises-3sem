FROM ubuntu:22.04

RUN set -x && apt-get update && \
    (echo y; echo y; echo y; echo y) | unminimize && \
    #
    # install *.UTF-8 locales otherwise some apps get trouble
    apt-get -y install locales && locale-gen en_US.UTF-8 ja_JP.UTF-8 zh_CN.UTF-8 && update-locale LANG=en_US.UTF-8 && \
    #
    # install other utilities
    apt-get -y install \
        apt-transport-https ncal\
        bash-completion vim less man jq bc \
        lsof tree psmisc htop lshw sysstat dstat \
        iproute2 iputils-ping iptables dnsutils traceroute \
        netcat curl wget nmap socat netcat-openbsd rsync \
        p7zip-full \
        git tig \
        binutils acl pv \
        strace tcpdump \
    && \
    #
    # enable bash-completeion for root user (other users works by default)
    (echo && echo '[ -f /etc/bash_completion ] && ! shopt -oq posix && . /etc/bash_completion') >> ~/.bashrc

# set LANG=*.UTF-8 so that default file encoding will be UTF-8, otherwise any non-ASCII files may have trouble.
ENV LANG=C.UTF-8

COPY ./hugefile /exercises/hugefil
COPY ./myfile.zip /exercises/myfile.zip
COPY ./grep.txt /exercises/grep.txt
COPY ./firstbashscript.sh /exercises/firstbashscript.sh




