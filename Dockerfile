FROM nginx:alpine

RUN mkdir -p /usr/backoffice/www
WORKDIR /usr/backoffice

# Copy custom configuration file from the current directory
COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./public/ /usr/backoffice/www/

EXPOSE 80
