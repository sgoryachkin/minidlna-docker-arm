FROM multiarch/alpine:arm64-v3.7


RUN apk --no-cache add bash minidlna
#RUN \
#  apk update && \
#apk add minidlna

ADD ./config/ /config/

EXPOSE 8200 1900/udp

ENTRYPOINT /usr/sbin/minidlnad -R -S -f /config/minidlna.conf 
