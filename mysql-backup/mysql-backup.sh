#!/bin/bash

# NHRD
CONTAINER_NAME="nhrd.mautic.db"
MYSQL_ROOT_PASSWORD="XiNCSiuVqK34"

docker exec $CONTAINER_NAME /usr/bin/mysqldump -u root --password=$MYSQL_ROOT_PASSWORD mautic > backup.sql # Backup
mkdir -p $CONTAINER_NAME
cat ./$CONTAINER_NAME/backup.sql | docker exec -i $CONTAINER_NAME /usr/bin/mysql -u root --password=$MYSQL_ROOT_PASSWORD mautic # Restore


#ILE DE PIPA
CONTAINER_NAME="iledepipa.mautic.db"
MYSQL_ROOT_PASSWORD="NB54Cp6Vb92d"

docker exec $CONTAINER_NAME /usr/bin/mysqldump -u root --password=$MYSQL_ROOT_PASSWORD mautic > backup.sql # Backup
mkdir -p $CONTAINER_NAME
cat ./$CONTAINER_NAME/backup.sql | docker exec -i $CONTAINER_NAME /usr/bin/mysql -u root --password=$MYSQL_ROOT_PASSWORD mautic # Restore