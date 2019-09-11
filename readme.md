# dockerized mars

## Introduction

The MIPS Assembler and Runtime Simulator (MIPS) is a good program for simulating running MIPS assemby code. If you want to get it up and running quickly (without installing Java on your host system), this is the tool for you. It contains configuration used to spin up MARS in a Docker container, whether you are running on GNU/Linux, macOS, or Windows.

If you have not used Docker, you can still use this setup easily because all the necessary commands are encapsulated in a shell script.

If you are on GNU/Linux, this will only work if you are running an Xorg display server (sorry Wayland and Mir folks!)

## Setup

Be sure [Docker is installed](https://docs.docker.com/install)

Rather than specificing mount points and the similar in a `docker-compose.yml` (requiring installation of `docker-compose`), I opted for using a shell script to build and run the containers from the Docker image.

```sh
git clone https://github.com/eankeen/dockerized-mars
cd dockerized-mars
chmod +x ./start.sh
sudo ./start.sh
```


