FROM ubuntu:latest
LABEL author="swapnil"
RUN apt-get-update && \
    apt-get install apache2 unzip -y

ADD https://templatemo.com/download/templatemo_631_kinetic /var/www/html/templatemo_631_kinetic.zip
RUN rm -rf /var/www/html/index.html && \
    unzip /var/www/html/templatemo_631_kinetic.zip -d /var/www/html/ && \
    mv /var/www/html/templatemo_631_kinetic/* /var/www/html/

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]