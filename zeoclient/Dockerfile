FROM eeacms/plone-eea-common
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

ENV ZEO_CLIENT true
ENV PLONE_APP_ASYNC single_db_instance

COPY src/base.cfg  $ZOPE_HOME/

USER root
RUN ./install.sh
USER zope-www
