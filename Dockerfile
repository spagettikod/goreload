FROM golang:1.22.1
RUN apt update && \
    apt install -y inotify-tools
COPY goreload.sh /goreload.sh
COPY doer.sh /doer.sh
WORKDIR /app
ENTRYPOINT [ "/goreload.sh" ]
