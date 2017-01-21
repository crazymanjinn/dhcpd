FROM alpine:latest

RUN apk add --no-cache dhcp

ENTRYPOINT ["/usr/sbin/dhcpd", "-user", "dhcp", "-f"]
