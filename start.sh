#!/bin/sh
set -e

# build a Docker image as per the configuration files
sudo docker image build --rm \
                        -tmars_ek:default \
                        .

# create the Docker container from the image and start it
sudo docker run --rm \
                --mount type=bind,src="$(cd "$(dirname "$0")" ; pwd -P)",dst=/home/developer,ro=false \
                --mount type=bind,src=/tmp/.X11-unix,dst=/tmp/.X11-unix,ro=false \
                --mount type=bind,src=/etc/localtime,dst=/etc/localtime,ro=true \
                --name mars-container \
                -de DISPLAY="$DISPLAY" \
                mars_ek:default
