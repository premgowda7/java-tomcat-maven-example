
FROM tomcat:9-jdk11-openjdk

RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/ROOT.war
RUN sed -i 's/8080/8000/g' /usr/local/tomcat/conf/server.xml
EXPOSE 8000
