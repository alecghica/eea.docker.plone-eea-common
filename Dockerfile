FROM eeacms/plone
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

COPY src/versions.cfg       $ZOPE_HOME/
COPY src/sources.cfg        $ZOPE_HOME/
COPY src/base.cfg           $ZOPE_HOME/

RUN ./install.sh
