FROM eeacms/plone
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

ENV ZEO_CLIENT false
ENV PLONE_APP_ASYNC single_db_instance

COPY src/versions.cfg           $ZOPE_HOME/
COPY src/sources.cfg            $ZOPE_HOME/
COPY src/base.cfg               $ZOPE_HOME/

RUN ./install.sh
