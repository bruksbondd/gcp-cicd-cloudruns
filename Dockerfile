#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Bruks
#---------------------------------------------------------------------------

FROM ubuntu:21.04

RUN sudo sed -i -r 's/([a-z]{2}.)?archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list 
RUN sudo sed -i -r 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Docker Image on CloudRun of Bruks!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.1</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
