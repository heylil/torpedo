FROM easypi/alpine-arm

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' \
    >> /etc/apk/repositories && \
    apk --update add privoxy tor@testing runit@testing

EXPOSE 8118 9050

COPY service /etc/service/
COPY service/tor/config /etc/tor/torrc

CMD ["runsvdir", "/etc/service"]
