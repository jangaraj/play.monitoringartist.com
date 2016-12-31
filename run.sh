#!/bin/sh

PAR=${2:-start}

if [ "$PAR" == "start" ]; then
  docker-compose pull && docker-compose -p play-monitoringartist-com up -d --force-recreate --remove-orphans -t 1
elif [ "$PAR" == "stop" ]; then
  docker-compose kill
else
  echo "Unknown parameter: ${PAR}"
fi
