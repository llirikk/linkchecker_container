#!/bin/sh
docker build -t linkchecker --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) .