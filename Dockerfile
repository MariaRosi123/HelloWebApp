FROM tomcat:8
ADD target/HelloWebApp.war /usr/local/tomcat/HelloWebApp
EPOSE 8090
CMD ["catalina.bat","run"]