FROM tomcat:8
COPY target/HelloWebApp.war /usr/local/tomcat/webapps/hello-webapp
EXPOSE 8085
CMD ["catalina.sh","run"]
