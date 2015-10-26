FROM eeacms/plone-eea-common
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

ENV ZEO_CLIENT true

COPY src/base.cfg  $ZOPE_HOME/
RUN ./install.sh
