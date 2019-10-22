FROM tomcat:8
ADD target/HelloWebApp.war C/Windows/System32/tomcat/HelloWebApp
EXPOSE 8090
CMD ["catalina.bat","run"]
