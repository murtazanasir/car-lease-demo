#!/bin/bash

rm -r /tmp/keyValStore;
docker-compose kill;
docker-compose down;
docker-compose build;
docker rm $(docker ps -aq);
docker-compose up -d;
