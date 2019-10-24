FROM tomcat:8
ADD target/HelloWebApp.war /usr/local/tomcat/hello-webapp
EXPOSE 8085
CMD ["catalina.sh","run"]
