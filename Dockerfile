FROM tomcat:8
ADD target/hello-webapp.war /usr/local/tomcat/hello-webapp
EXPOSE 8080
CMD ["catalina.sh","run"]
