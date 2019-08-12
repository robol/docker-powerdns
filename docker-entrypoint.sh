#!/bin/bash

GMYSQL_CONF_IN="/etc/powerdns/pdns.d/pdns.local.gmysql.conf.in"
GMYSQL_CONF="/etc/powerdns/pdns.d/pdns.local.gmysql.conf"

cp ${GMYSQL_CONF_IN} ${GMYSQL_CONF}

sed -i "s/@MYSQL_HOST@/${MYSQL_HOST}/" ${GMYSQL_CONF}
sed -i "s/@MYSQL_DATABASE@/${MYSQL_DATABASE}/" ${GMYSQL_CONF}
sed -i "s/@MYSQL_USER@/${MYSQL_USER}/" ${GMYSQL_CONF}
sed -i "s/@MYSQL_PASSWORD@/${MYSQL_PASSWORD}/" ${GMYSQL_CONF}

pdns_server
