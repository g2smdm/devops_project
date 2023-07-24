FROM ubuntu

LABEL owner  gsmdm

RUN apt-get update

RUN apt-get -y install apache2

ADD index.html /var/www/html

COPY . /tmp

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

ENV name devops gsmdm

