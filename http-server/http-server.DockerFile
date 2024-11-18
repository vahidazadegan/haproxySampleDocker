FROM ubuntu 
RUN apt update 
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt clean 
RUN echo "hello,word" > /var/www/html/index.html
EXPOSE 80
CMD apachectl -D FOREGROUND
