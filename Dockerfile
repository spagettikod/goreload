FROM golang:1.22.1
RUN apt update && \
    apt install -y inotify-tools
WORKDIR /app
ENTRYPOINT [ "/app/goreload.sh" ]
