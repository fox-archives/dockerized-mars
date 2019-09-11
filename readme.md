# Dockerized MARS

## Introduction

The MIPS Assembler and Runtime Simulator (MARS) is a good program for running (simulated) MIPS assemby code. If you want to get it up and running quickly (without installing Java on your host system), this is the tool for you. It contains configuration used to spin up MARS in a Docker container, whether you are running on GNU/Linux, macOS, or Windows.

If you have not used Docker, you can still use this setup easily because all the necessary commands are encapsulated in a shell script.

## Notes

Rather than specificing mount points and the similar in a `docker-compose.yml` (requiring installation of `docker-compose`), I opted for using a shell script to build and run containers from the Docker image.

Also, if you are on GNU/Linux, this will only work if you are running an Xorg display server on your host machine. (Wayland and Mir are not supported)

## Setup

Docker [must be installed](https://docs.docker.com/install).

```sh
git clone https://github.com/eankeen/dockerized-mars
cd dockerized-mars
chmod +x ./start.sh
sudo ./start.sh
```

Running `start.sh` as sudo is required because connecting to the Docker daemon socket requires superuser privileges.

