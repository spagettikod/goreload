FROM golang:1.22.1
LABEL org.opencontainers.image.source=https://github.com/spagettikod/goreload
RUN apt update && \
    apt install -y inotify-tools
COPY goreload.sh /goreload.sh
COPY doer.sh /doer.sh
WORKDIR /app
ENTRYPOINT [ "/goreload.sh" ]
