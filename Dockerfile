FROM docker.io/alpine@sha256:b276d875eeed9c7d3f1cfa7edb06b22ed22b14219a7d67c52c56612330348239

RUN apk update --no-cache && \
    apk add --no-cache build-base python3 python3-dev openssl openssl-dev libffi-dev gdb \
            curl pwgen m4 htop mtr ipcalc nload jq nmap whois socat screen tcpdump bind-tools lsof \
            dmidecode capstone bash git vim unzip ca-certificates openssh-client rsync make
RUN pip3 install pwntools
