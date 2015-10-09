# Plone w/ EEA Add-ons ready to run Docker image

Docker image for Plone with EEA Common Add-ons available based on
[EEA Common Plone Buildout](https://github.com/eea/eea.plonebuildout.core)

This image is generic, thus you can obviously re-use it within
your non-related EEA projects.

### Supported tags and respective Dockerfile links

  - [Tags](https://hub.docker.com/r/eeacms/plone-eea-common/tags/)

### Base docker image

 - [hub.docker.com](https://hub.docker.com/r/eeacms/plone-eea-common/)

### Source code

  - [github.com](http://github.com/eea/eea.docker.plone-eea-common)

### Installation

1. Install [Docker](https://www.docker.com/)
2. Install [Docker Compose](https://docs.docker.com/compose/) (optional)

## Usage

    $ docker run -p 8080:80 eeacms/plone-eea-common

See more at [eeacms/plone](https://github.com/eea/eea.docker.plone)

Also you can also run this image as:

* [ZEO client](https://github.com/eea/eea.docker.plone-eea-common/tree/master/zeoclient/README.md)
* [RelStorage/PostgreSQL client](https://github.com/eea/eea.docker.plone-eea-common/tree/master/relstorage/README.md)
* [Development mode](https://github.com/eea/eea.docker.plone-eea-common/tree/master/develop/README.md)

### Extend the image with custom buildout configuration files

For this you have the possibility to override:

* `versions.cfg` - provide your custom Plone and Add-ons versions
* `sources.cfg`  - provide un-released Plone Add-ons
* `base.cfg`     - customize everything

Below is an example of `base.cfg` and `Dockerfile` to build a custom version
of Plone with your custom versions of packages based on this image:

**base.cfg**:

    [buildout]
    extends = eea.cfg

    [instance]
    eggs +=
      land.copernicus.theme
      land.copernicus.content

**Dockerfile**:

    FROM eeacms/plone-eea-common:5.2

    COPY base.cfg /opt/zope/base.cfg
    RUN ./install.sh

and then run

    $ docker build -t plone-eea-copernicus:5.2 .

In the same way you can provide custom `sources.cfg` and `versions.cfg` or all of
them together.


## Persist/Migrate data

* [Plone: Persistent data as you wish](https://github.com/eea/eea.docker.plone#persistent-data-as-you-wish)
* [ZEO: Persistent data as you wish](https://github.com/eea/eea.docker.zeoserver#persistent-data-as-you-wish)
* [RelStorage: Persistent data as you wish](https://github.com/eea/eea.docker.postgres#persistent-data-as-you-wish)

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
