[![Build Status](https://travis-ci.org/axelspringer/mesos-master.svg?branch=master)](https://travis-ci.org/axelspringer/mesos-master) [![Docker Stars](https://img.shields.io/docker/stars/axelspringer/mesos-master.svg)](https://hub.docker.com/r/axelspringer/mesos-master/) [![Docker Pulls](https://img.shields.io/docker/pulls/axelspringer/mesos-master.svg)](https://hub.docker.com/r/axelspringer/mesos/)

# mesos-master

Mesos

http://mesos.apache.org/

# use

[![](https://badge.imagelayers.io/axelspringer/mesos-master:1.4.0.svg)](https://imagelayers.io/?images=axelspringer/mesos-master:1.4.0)

> all mesos arguments are accessible via `MESOS_*` environment variables 

```
# You can use 
docker run -d \
-e EC2_INSTANCE=true
-e MESOS_QUORUM=2 \
-e MESOS_ZK=zk://node-1:2181,node-2:2181,node-3:2181/mesos \
--name mesos-master --net host --restart always axelspringer/mesos-master:1.4.0
```

Set environment variable `SECRET` to enable framework and slave authentication.

Set environment variable `EC2_INSTANCE=true` to use the EC2 metadata service as to set the `MESOS_ADVERTISE_IP` variable to the local ip of the EC2 instance.

# License
[MIT](/LICENSE)