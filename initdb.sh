#!/bin/sh

# 初始化 Arkime 数据库（如果未初始化）
/opt/arkime/db/db.pl --insecure http://admin:${OPENSEARCH_INITIAL_ADMIN_PASSWORD}@elasticsearch:9200 init --ifneeded

# 创建管理员账户
/opt/arkime/bin/arkime_add_user.sh ${VIEWER_ADMIN_USERNAME} "Administrator" ${VIEWER_ADMIN_PASSWORD} --admin         

# 创建你的自定义用户
/opt/arkime/bin/arkime_add_user.sh test "Test User" test12345 --admin

echo 'DB Info'
echo '-------'
/opt/arkime/db/db.pl --insecure http://admin:${OPENSEARCH_INITIAL_ADMIN_PASSWORD}@elasticsearch:9200 info
echo '-------'
