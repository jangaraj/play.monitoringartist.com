# play.monitoringartist.com

http://play.monitoringartist.com

Start:
```
# download latest Docker image
docker pull monitoringartist/play.monitoringartist.com
# start monitoring play-ground
docker run --rm -ti -v /var/run/:/var/run/ monitoringartist/play.monitoringartist.com start
```

Stop:
```
# stop monitoring play-ground
docker run --rm -ti -v /var/run/:/var/run/ monitoringartist/play.monitoringartist.com stop
```
