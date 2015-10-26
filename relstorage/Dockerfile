FROM eeacms/plone-eea-common:5.1
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

ENV PLONE_APP_ASYNC single_db_instance

COPY src/base.cfg  $ZOPE_HOME/
RUN ./install.sh
