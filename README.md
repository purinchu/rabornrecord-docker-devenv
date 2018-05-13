# Overview

This repository is intended to host the files/configuration necessary to build
the Docker container image that can be used as a development environment for a
simple scalable record viewer.

That way the person(s) coming after me have a fighting shot at being able to
reproduce my work.

# Installing

## Dependencies

First install dependencies:

- Docker

## Building development environment

- For now, just run `docker pull google/cloud-sdk:alpine` (which is about a ~40 MB download).
  - This installs the Google Cloud SDK, which is the only extra add-on at this point.
  - See also: https://github.com/GoogleCloudPlatform/cloud-sdk-docker, which includes steps necessary
    to setup authentication to Google Cloud Platform.
  - This misses out on optional portions of the Google Cloud SDK that I'm not using to save on
    disk space and download time.  But if you want the closest "guaranteed-deployable" capability
    you might try using `google/cloud-sdk:latest` instead, which is much larger but includes all
    optional components and a more commercially-supported version of Linux.
- In the future this will change so that we have a Dockerfile here to build a more specific image
  but hey, Agile, right?

# Launching development environment

- Use `./start-dev-env` to start the right Docker container with the
  authentication information that you added earlier (based on the
  cloud-sdk-docker instructions linked above) already embedded.

# Author

 - Michael Pyne
