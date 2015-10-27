# Plone w/ EEA Add-ons Docker image used as a ZEO client

See
[docker-compose.yml](https://github.com/eea/eea.docker.plone-eea-common/blob/master/zeoclient/docker-compose.yml)
file for an example on how you should use
[eeacms/plone-eea-common](https://hub.docker.com/r/eeacms/plone-eea-common/)
Docker image as a ZEO client.

## Usage

    $ git clone https://github.com/eea/eea.docker.plone-eea-common.git my-plone-deployment
    $ cd  my-plone-deployment/zeoclient
    $ docker-compose up -d
    $ docker-compose logs

## Upgrade

    $ cd my-plone-deployment/zeoclient
    $ docker-compose pull
    $ docker-compose stop
    $ docker-compose rm -v plone async zeoserver memcached postfix
    $ docker-compose up -d --no-recreate
    $ docker-compose logs

See [base image](https://github.com/eea/eea.docker.plone-eea-common#plone-w-eea-add-ons-ready-to-run-docker-image)
for information about this image.
