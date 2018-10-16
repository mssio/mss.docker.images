FROM nginx:1.15.5-alpine
MAINTAINER Mario Suharja <mario@mss.io>

# Fix configuration
ADD nginx.conf /etc/nginx/conf.d/default.conf

# Set volume
VOLUME /usr/share/nginx/html
VOLUME /logs/nginx

# Run Override
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
