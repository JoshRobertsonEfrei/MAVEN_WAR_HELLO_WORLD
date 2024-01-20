# You Should start from the tomcat version 8 image using the FROM command
# Take the war from the target and copy to webapps directory of the tomcat using the COPY command COPY SRC DEST

# Using tomcat 9. I also installed this on ACN, so may help
FROM tomcat:9.0-alpine

# My Efrei email
LABEL maintainer="josh.robertson@efrei.net"

# Puts the file from Docker into the webapps directory
ADD target/spring-boot-deployment.war /usr/local/tomcat/webapps

#Selecting the host
Expose 8080

#
CMD ["catalina.sh","run"]
