FROM golang:1.9.3-alpine3.7
RUN apk add --no-cache supervisor
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

