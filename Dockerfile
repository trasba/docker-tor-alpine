FROM alpine:3.9

RUN apk --update add tor runit tini nginx && \
    mkdir -p /lib/tor

COPY root /

ENTRYPOINT ["tini", "--"]
#CMD ["runsvdir", "/etc/service"]
CMD ["sh","-c","/opt/init.sh && runsvdir /etc/service"]
