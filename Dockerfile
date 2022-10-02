FROM tomcat:8
COPY gameoflife-web/target/*.war /usr/local/tomcat/webapps/
