# docker run --rm -ti -v /var/run/:/var/run/:rw monitoringartist/play.monitoringartist.com

FROM alpine:latest

ADD run.sh /
ADD docker-compose.yml /

RUN \
  chmod +x /run.sh && \
  apk add -U py-pip docker && \
  pip install 'docker-compose==1.9.0'

ENTRYPOINT ["/run.sh"]

CMD start
