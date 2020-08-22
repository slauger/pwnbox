FROM docker.io/alpine@sha256:39eda93d15866957feaee28f8fc5adb545276a64147445c64992ef69804dbf01

RUN apk update --no-cache && \
    apk add --no-cache build-base python3 python3-dev openssl openssl-dev libffi-dev gdb \
            curl pwgen m4 htop mtr ipcalc nload jq nmap whois socat screen tcpdump bind-tools lsof \
            dmidecode capstone bash git vim unzip ca-certificates openssh-client rsync make strace \
            libc6-compat
RUN pip3 install pwntools
