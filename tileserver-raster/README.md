# tileserver-raster

Quickly set up your own OSM tileserver with automatic updates.

For example:
```
./prepare-docker.sh
./import.sh europe/finland
./run.sh
```
Tiles of your specified region are now available at `http://localhost:8090/tile/{z}/{x}/{y}.png
