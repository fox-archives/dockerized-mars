#!/bin/sh

sudo docker image prune -f
sudo docker container prune -f

sudo docker image build --rm \
                        -fdockerfile \
                        -tmars_ek:default \
                        .
sudo docker run --rm \
                --mount type=bind,src="$(cd "$(dirname "$0")" ; pwd -P)",dst=/home/developer,ro=false \
                --mount type=bind,src=/tmp/.X11-unix,dst=/tmp/.X11-unix,ro=false \
                --mount type=bind,src=/etc/localtime,dst=/etc/localtime,ro=true \
                -e DISPLAY="$DISPLAY" \
                -d \
                mars_ek:default

