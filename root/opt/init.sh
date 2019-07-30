#!/bin/sh
# copy /config/service if /etc/service does not exist
[[ ! -d /etc/service/tor ]] && \
	cp -r /config/service/tor /etc/service

[[ ! -d /etc/service/nginx ]] && \
	cp -r /config/service/nginx /etc/service

[[ ! -f /etc/nginx/conf.d/default.conf ]] && \
	cp /config/nginx/default.conf /etc/nginx/conf.d

chmod 700 -R /lib/tor

exit 0;
