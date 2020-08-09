#!/bin/sh

REGION=$1

if [ -z "$REGION" ]
then
	echo "No region provided!"
	exit 1
fi

docker run \
    -e UPDATES=enabled \
    -e DOWNLOAD_PBF=https://download.geofabrik.de/${REGION}-latest.osm.pbf \
    -e DOWNLOAD_POLY=https://download.geofabrik.de/${REGION}.poly \
    -v openstreetmap-data:/var/lib/postgresql/12/main \
    overv/openstreetmap-tile-server \
    import

