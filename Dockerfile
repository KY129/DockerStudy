FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2

RUN echo '<html><head><meta charset="UTF-8"></head><body><h1>123123.</h1></body></html>' > /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]