FROM alpine:latest

RUN apk update \
        && apk upgrade \
        && apk add --no-cache \
        ca-certificates \
        curl \
        tzdata \
        && update-ca-certificates 2>/dev/null || true
