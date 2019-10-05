#Base image
FROM devopsedu/webapp:latest

#Maintainer 
MAINTAINER Pranav_Devops

#Update repository
RUN apt-get update

#Install Apache2
RUN apt-get -y install apache2 && apt-get clean

#EntryPoint
CMD ["apache2ctl", "-D", "FOREGROUND"]

#Copy Context
#COPY config.php /var/www/html/
#ADD  content /var/www/html/
#COPY functions.php /var/www/html/
#COPY index.php /var/www/html/
#COPY readme.md /var/www/html/
#ADD  template /var/www/html/

#Expose Port
EXPOSE 80
