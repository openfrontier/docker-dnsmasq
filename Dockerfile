FROM alpine:latest
RUN set -x && \
    apk --no-cache --update add dnsmasq
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
