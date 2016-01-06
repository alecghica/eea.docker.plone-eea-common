# Plone w/ EEA Add-ons Docker image (development mode)

Below is an example of
[docker-compose.yml](https://github.com/eea/eea.docker.plone-eea-common/blob/master/develop/docker-compose.yml)
file that will allow you to run Plone within a Docker container and still
be able to test and develop your Plone add-ons using your favorite editor/IDE:

    plone:
      image: eeacms/plone-eea-common
      ports:
      - "8080:8080"
      volumes:
      - ./src:/opt/zope/src
      environment:
      - AUTO_CHECKOUT=my.package my.theme
      - SOURCE_MY_PACKAGE=git git@github.com:me/my.package.git
      - SOURCE_MY_THEME=git git@github.com:me/my.theme.git


Now:

    $ mkdir -p src
    $ docker-compose up -d

This will git pull `my.package` and `my.theme` source code within `src` directory located on host
relatively to `docker-compose.yml` file, re-run buildout within container
to include your add-ons (in this case `my.package` and `my.theme`) and start Plone instance.

Now you can start developing your add-ons within `src/my.package` and `src/my.theme`
using your favorite editor/ide (no need to break-in docker container for this).

To reload add-on changes just restart Plone container using
docker stop/start/restart commands:

    $ docker-compose stop
    $ docker-compose start
    $ docker-compose logs

or

    $ docker-compose restart
    $ docker-compose logs

If you need to re-run buildout before Plone start,
then use the `docker-compose up` command:

    $ docker-compose up -d
    $ docker-compose logs
