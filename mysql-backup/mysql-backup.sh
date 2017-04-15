#!/bin/bash

# NHRD
CONTAINER_NAME="nhrd.mautic.db"
MYSQL_ROOT_PASSWORD="XiNCSiuVqK34"

mkdir -p $CONTAINER_NAME
docker exec $CONTAINER_NAME /usr/bin/mysqldump -u root --password=$MYSQL_ROOT_PASSWORD mautic > ./$CONTAINER_NAME/backup.sql # Backup
# cat ./$CONTAINER_NAME/backup.sql | docker exec -i $CONTAINER_NAME /usr/bin/mysql -u root --password=$MYSQL_ROOT_PASSWORD mautic # Restore


#ILE DE PIPA
CONTAINER_NAME="iledepipa.mautic.db"
MYSQL_ROOT_PASSWORD="NB54Cp6Vb92d"

mkdir -p $CONTAINER_NAME
docker exec $CONTAINER_NAME /usr/bin/mysqldump -u root --password=$MYSQL_ROOT_PASSWORD mautic > ./$CONTAINER_NAME/backup.sql # Backup
# cat ./$CONTAINER_NAME/backup.sql | docker exec -i $CONTAINER_NAME /usr/bin/mysql -u root --password=$MYSQL_ROOT_PASSWORD mautic # Restore