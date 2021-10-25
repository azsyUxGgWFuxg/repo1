FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install screen -y && \
    chmod 777 /run/scree && \
    pip3 install tmate && \
    tmate