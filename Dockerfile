#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Bruks
#---------------------------------------------------------------------------

FROM ubuntu:21.04


RUN apt-get clean


RUN add-apt-repository --remove ppa:vikoadi/ppa
RUN apt update


RUN apt-get -y install apache2
RUN apt-get install –y apache2-utils 

RUN echo 'Docker Image on CloudRun of Bruks!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.1</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80

