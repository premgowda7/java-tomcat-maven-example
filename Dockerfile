# Use an official Tomcat image as the base image
FROM tomcat:9-jdk11-openjdk


# Remove the default web apps that come with Tomcat (optional, to avoid clutter)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat's webapps directory
COPY target/javaapp_241047037.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat default HTTP port
EXPOSE 8000
