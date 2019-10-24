FROM tomcat:8.0
COPY target/HelloWebApp.war /usr/local/tomcat/hello-webapp
EXPOSE 8082
CMD ["catalina.sh","run"]
