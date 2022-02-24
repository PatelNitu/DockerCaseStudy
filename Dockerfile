FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt -y install apache2
RUN rm -f /var/www/html/index.html
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
