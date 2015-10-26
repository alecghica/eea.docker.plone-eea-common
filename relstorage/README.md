# Plone w/ EEA Add-ons Docker image used as a RelStorage client

See
[docker-compose.yml](https://github.com/eea/eea.docker.plone-eea-common/blob/master/relstorage/docker-compose.yml)
file for an example on how you should use
[eeacms/plone-eea-common](https://hub.docker.com/r/eeacms/plone-eea-common/)
Docker image as a RelStorage client.

## Usage

    $ git clone https://github.com/eea/eea.docker.plone-eea-common.git my-plone-deployment
    $ cd  my-plone-deployment/relstorage
    $ docker-compose up -d
    $ docker-compose logs

## Upgrade

    $ cd my-plone-deployment/relstorage
    $ docker-compose pull
    $ docker-compose stop
    $ docker-compose rm -v plone async postgres memcached postfix
    $ docker-compose up -d --no-recreate
    $ docker-compose logs
