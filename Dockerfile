FROM eeacms/plone
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

ENV PLONE_APP_ASYNC single_db_instance

#
# Setup
#
COPY src/versions.cfg           $ZOPE_HOME/
COPY src/sources.cfg            $ZOPE_HOME/
COPY src/base.cfg               $ZOPE_HOME/

#
# Install
#
RUN ./install.sh
