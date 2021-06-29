# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "dockerbhanu" 
COPY ./webapp.war /usr/local/tomcat/webapps
EXPOSE 8080

