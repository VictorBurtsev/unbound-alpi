FROM alpine:3.16

RUN apk add --no-cache \
                unbound=1.15.0-r0 \
                    && rm -rf /var/cache/apk/*
EXPOSE 53

ENTRYPOINT ["unbound", "-d"]

