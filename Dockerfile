FROM ubuntu:latest
LABEL Devopslearn="karan"
RUN apt install apache2 unzip -y 
RUN rm -rf /var/www/html/
WORKDIR /var/www/html/
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip .
COPY oxer.zip .
RUN unzip oxer.zip
RUN mv oxer-html/* .
EXPOSE 80
CMD ["apache2ctl" , "-DFOREGROUND"]