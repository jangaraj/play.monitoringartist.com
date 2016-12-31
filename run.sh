#!/bin/sh

PAR=${1:-start}

if [ "$PAR" == "start" ]; then
  docker-compose pull && docker-compose -p play-monitoringartist-com up -d --force-recreate --remove-orphans -t 1
elif [ "$PAR" == "qstart" ]; then
  docker-compose -p play-monitoringartist-com up -d --force-recreate --remove-orphans -t 1
elif [ "$PAR" == "stop" ]; then
  #docker-compose kill
  docker rm -f $(docker ps -a | grep ' playmonitoringartistcom_play-' | awk '{print $1}')
else
  echo "Unknown parameter: ${PAR}"
fi
