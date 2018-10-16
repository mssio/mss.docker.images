#!/usr/bin/env sh

sed -i "s/MSSVAR_APP_FPM/${APP_FPM_HOST}/" /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
