## Ghost Dockerfile


This repository contains **Dockerfile** of [Ghost](https://www.ghost.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/ghost/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [pupboss/nodejs-lts-docker](https://hub.docker.com/r/pupboss/nodejs-lts-docker/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/pupboss/ghost/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull pupboss/ghost`

   (alternatively, you can build an image from Dockerfile: `git clone git@github.com:pupboss/Dockerfiles.git && cd Dockerfiles/ghost && docker build -t pupboss/ghost .`)


### Usage

    docker run -d -p 80:2368 dockerfile/ghost

#### Customizing Ghost

    docker run -d -p 80:2368 -v <override-dir>:/ghost-override dockerfile/ghost

where `<override-dir>` is an absolute path of a directory that could contain:

  - `config.js`: custom config file copied from [here](https://github.com/TryGhost/Ghost/blob/master/config.example.js) (you must replace `127.0.0.1` with `0.0.0.0`)
  - `content/data/`: persistent/shared data
  - `content/images/`: persistent/shared images
  - `content/themes/`: more themes

After few seconds, open `http://<host>` for blog or `http://<host>/ghost` for admin page.
