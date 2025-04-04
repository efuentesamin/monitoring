#!/bin/bash

docker run --rm --volumes-from influxdb -v $(pwd)/backups/influxdb:/backup ubuntu tar cvf /backup/backup.tar /var/lib/influxdb2
docker run --rm --volumes-from influxdb -v $(pwd)/backups/influxdb-config:/backup ubuntu tar cvf /backup/backup-config.tar /etc/influxdb2
docker run --rm --volumes-from grafana -v $(pwd)/backups/grafana:/backup ubuntu tar cvf /backup/backup.tar /var/lib/grafana
docker run --rm --volumes-from node-red -v $(pwd)/backups/node-red:/backup ubuntu tar cvf /backup/backup.tar /data
docker run --rm --volumes-from mosquitto -v $(pwd)/backups/mosquitto/:/backup ubuntu tar cvf /backup/backup.tar /mosquitto