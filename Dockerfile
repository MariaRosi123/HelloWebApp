FROM tomcat:8
COPY target/HelloWebApp.war /usr/local/tomcat/webapps/hello-webappnew
EXPOSE 8085
CMD ["catalina.sh","run"]
