#!/bin/sh

/opt/arkime/db/db.pl --insecure http://admin:${OPENSEARCH_INITIAL_ADMIN_PASSWORD}@elasticsearch:9200 init --ifneeded
/opt/arkime/bin/arkime_add_user.sh ${VIEWER_ADMIN_USERNAME} "Administrator" ${VIEWER_ADMIN_PASSWORD} --admin


echo 'DB Info'
echo '-------'
/opt/arkime/db/db.pl --insecure http://admin:${OPENSEARCH_INITIAL_ADMIN_PASSWORD}@elasticsearch:9200 info
echo '-------'
