#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Bruks
#---------------------------------------------------------------------------

FROM ubuntu:21.04

RUN apt update 
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN apt clean 

RUN echo 'Docker Image on CloudRun of Bruks!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.1</font></b>' >> /var/www/html/index.html

EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]




