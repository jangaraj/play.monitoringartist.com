# docker run --rm -ti -v /var/run/:/var/run/:rw monitoringartist/play.monitoringartist.com

FROM alpine:latest

RUN \
  apk add -U py-pip && \
  pip install 'docker-compose==1.9.0'

CMD docker-compose pull && docker-compose -p play-monitoringartist-com up -d --force-recreate --remove-orphans -t 1 --no-color

ADD docker-compose.yml /
