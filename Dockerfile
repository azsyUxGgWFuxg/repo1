FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install screen python3 python3-pip -y && \
    pip3 install --upgrade pip && \
    chmod 777 /run/screen && \
    pip3 install tmate && \
    tmate