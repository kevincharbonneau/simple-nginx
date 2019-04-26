FROM nginx:alpine

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.default /etc/nginx/conf.d/default.conf

EXPOSE 8080

ENTRYPOINT nginx
