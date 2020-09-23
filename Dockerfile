FROM alpine:3

RUN apk add --no-cache curl

ENTRYPOINT [ "/entrypoint.sh" ]
