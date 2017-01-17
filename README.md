# play.monitoringartist.com

http://play.monitoringartist.com

Start:
```
# download latest Docker image
docker pull monitoringartist/play.monitoringartist.com
# start monitoring play-ground
docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock monitoringartist/play.monitoringartist.com start
```

Stop:
```
# stop monitoring play-ground
docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock monitoringartist/play.monitoringartist.com stop
```
