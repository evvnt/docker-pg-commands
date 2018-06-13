FROM alpine
RUN apk --update add bash postgresql postgresql-client && rm -rf /var/cache/apk/*
COPY commands .


