FROM alpine:3.18
RUN apk --update add bash postgresql14 postgresql14-client && \
    rm -rf /var/cache/apk/*
COPY commands .


