FROM eeacms/plone:4.3.7
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

# ZEO_CLIENT
# - false (default)
# - true

ENV ZEO_CLIENT false


# PLONE_APP_ASYNC
# - single_db_instance (default)
# - single_db_worker
# - multi_db_instance
# - single_db_worker

ENV PLONE_APP_ASYNC single_db_worker

#
# Setup
#
ADD https://raw.githubusercontent.com/eea/eea.plonebuildout.core/master/updates.sh $ZOPE_HOME/update.sh
ADD https://raw.githubusercontent.com/eea/eea.plonebuildout.core/master/buildout-configs/sources.cfg $ZOPE_HOME/
ADD https://raw.githubusercontent.com/eea/eea.plonebuildout.core/master/buildout-configs/base-zope.cfg $ZOPE_HOME/plone.cfg
COPY src/versions.cfg           $ZOPE_HOME/
COPY src/eea.cfg                $ZOPE_HOME/
COPY src/base.cfg               $ZOPE_HOME/

USER root

#
# Install
#
RUN ./install.sh

VOLUME $ZOPE_HOME/var/downloads/pdf
VOLUME $ZOPE_HOME/var/downloads/tmp

#
# Update
#
RUN chmod +x update.sh
RUN update.sh

USER zope-www
