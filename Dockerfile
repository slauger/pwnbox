FROM docker.io/alpine@sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65

RUN apk update --no-cache && \
    apk add --no-cache build-base python3 python3-dev openssl openssl-dev libffi-dev gdb \
            curl pwgen m4 htop mtr ipcalc nload jq nmap whois socat screen tcpdump bind-tools lsof \
            dmidecode capstone bash git vim unzip ca-certificates openssh-client rsync make
RUN pip3 install pwntools
