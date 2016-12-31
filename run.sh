#!/bin/sh

PAR=${1:-start}
if [ "$PAR" == "/bin/sh" ]; then
  PAR=start
fi

if [ "$PAR" == "start" ]; then
  docker-compose pull && docker-compose -p play-monitoringartist-com up -d --force-recreate --remove-orphans -t 1
elif [ "$PAR" == "qstart" ]; then
  docker-compose -p play-monitoringartist-com up -d --force-recreate --remove-orphans -t 1
elif [ "$PAR" == "stop" ]; then
  #docker-compose kill
  CNTRS=$(docker ps -a | grep ' playmonitoringartistcom_play-' | awk '{print $1}' | grep -v ^CONTAINER | grep -v '^[[:space:]]*$')
  if ! [[ -z "${CNTRS// }" ]]; then
    docker rm -f $CNTRS
  fi
  CNTRS=$(docker ps -a -f status=dead | awk '{print $1}' | grep -v ^CONTAINER | grep -v '^[[:space:]]*$')
  if ! [[ -z "${CNTRS// }" ]]; then
    docker rm -f $CNTRS
  fi
else
  echo "Unknown parameter: ${PAR}"
fi
