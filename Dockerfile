FROM alpine:latest

RUN apk add --no-cache dhcp
USER dhcp

ENTRYPOINT ["/usr/sbin/dhcpd", "-user", "dhcp"]
