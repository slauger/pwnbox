FROM docker.io/alpine@sha256:185518070891758909c9f839cf4ca393ee977ac378609f700f60a771a2dfe321

RUN apk update --no-cache && \
    apk add --no-cache build-base python3 python3-dev py3-pip openssl openssl-dev libffi-dev gdb \
            curl pwgen m4 htop mtr ipcalc nload jq nmap whois socat screen tcpdump bind-tools lsof \
            dmidecode capstone bash git vim unzip ca-certificates openssh-client rsync make strace \
            libc6-compat
RUN pip3 install pwntools
