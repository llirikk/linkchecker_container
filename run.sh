#!/bin/sh
docker run --user $(id -u):$(id -g) -v $(pwd)/out:/out -v $(pwd)/in:/in -v $(pwd)/conf:/conf linkchecker:latest $1