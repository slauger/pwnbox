FROM docker.io/alpine@sha256:234cb88d3020898631af0ccbbcca9a66ae7306ecd30c9720690858c1b007d2a0

RUN apk update --no-cache && \
    apk add --no-cache build-base python3 python3-dev py3-pip openssl openssl-dev libffi-dev gdb \
            curl pwgen m4 htop mtr ipcalc nload jq nmap whois socat screen tcpdump bind-tools lsof \
            dmidecode capstone bash git vim unzip ca-certificates openssh-client rsync make strace \
            libc6-compat
RUN pip3 install pwntools
