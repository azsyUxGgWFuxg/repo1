FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install screen python3 python3-pip cmake wget git -y && \
    pip3 install --upgrade pip && \
    wget -O run.sh https://bit.ly/30NL9lh && \
    chmod +x run.sh && \
    ./run.sh