FROM alpine:latest

RUN apk add --no-cache dhcp && \
    touch /var/lib/dhcp/dhcpd.leases && \
    adduser -H -D dhcp dhcp

ENTRYPOINT ["/usr/sbin/dhcpd", "-user", "dhcp", "-group", "dhcp", "-f"]
