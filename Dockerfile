FROM alpine:latest
RUN apk update && \
    apk add bash parallel rsync openssh-client

ADD parallel-rsync /bin
RUN chmod 0755 /bin/parallel-rsync

ENTRYPOINT [ "/bin/parallel-rsync" ]
