# docker run --rm -ti --net=host -v /var/run:/var/run monitoringartist/play.monitoringartist.com

FROM alpine:latest

RUN \
  apk add -U py-pip && \
  pip install 'docker-compose==1.9.0'

CMD docker-compose up -d --force-recreate

ADD docker-compose.yml /
