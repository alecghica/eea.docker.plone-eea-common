FROM eeacms/plone-eea-common:5.1
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

ENV ZEO_CLIENT true

COPY src/base.cfg  $ZOPE_HOME/
RUN ./install.sh
