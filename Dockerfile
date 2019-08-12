FROM ubuntu:18.04

RUN apt-get -qq update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y install pdns-recursor pdns-backend-mysql && \
	rm -rf /var/lib/apt/lists/*

COPY pdns.local.conf /etc/powerdns/pdns.d/pdns.local.conf
COPY pdns.local.gmysql.conf /etc/powerdns/pdns.d/pdns.local.gmysql.conf.in

COPY docker-entrypoint.sh /usr/local/bin

CMD [ "docker-entrypoint.sh" ]

