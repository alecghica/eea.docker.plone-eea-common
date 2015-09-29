# Plone w/ EEA Add-ons ready to run Docker image

Docker image for Plone with EEA Common Add-ons available based on
[EEA Common Plone Buildout](https://github.com/eea/eea.plonebuildout.core)

This image is generic, thus you can obviously re-use it within
your non-related EEA projects.

### Supported tags and respective Dockerfile links

  - `:latest` (default)

### Base docker image

 - [hub.docker.com](https://registry.hub.docker.com/r/eeacms/plone-eea-common)

### Source code

  - [github.com](http://github.com/eea/eea.docker.plone-eea-common)

### Installation

1. Install [Docker](https://www.docker.com/)

2. Install [Docker Compose](https://docs.docker.com/compose/) (optional)

## Usage

See more at [eeacms/plone](https://github.com/eea/eea.docker.plone)


### Run w/ basic configuration

    $ docker run -p 8080:80 eeacms/plone-eea-common


### Run w/ ZEO

[Plone w/ EEA Add-ons Docker image used as a ZEO client](https://github.com/eea/eea.docker.plone-eea-common/tree/master/zeo/README.md)


### Run w/ RelStorage

[Plone w/ EEA Add-ons Docker image used as a RelStorage client](https://github.com/eea/eea.docker.plone-eea-common/tree/master/relstorage/README.md)


## Upgrade

    $ docker pull eeacms/plone-eea-common

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.

## Funding

[European Environment Agency (EU)](http://eea.europa.eu)
