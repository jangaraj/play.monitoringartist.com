# docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock:rw monitoringartist/play.monitoringartist.com

FROM alpine:latest

RUN \
  apk add -U py-pip && \
  pip install 'docker-compose==1.9.0'

CMD docker-compose pull && docker-compose up -d --force-recreate --remove-orphans

ADD docker-compose.yml /
