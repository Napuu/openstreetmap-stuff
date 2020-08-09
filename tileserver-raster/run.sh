#!/bin/sh
docker run \
    -p 8090:80 \
    -e UPDATES=enabled \
    -v openstreetmap-data:/var/lib/postgresql/12/main \
    -v openstreetmap-rendered-tiles:/var/lib/mod_tile \
    -d overv/openstreetmap-tile-server \
    run
