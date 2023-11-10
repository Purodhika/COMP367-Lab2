# Use the official Tomcat image with Java 11
FROM tomcat:9.0.45-jdk11-openjdk

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file from the target directory to the Tomcat webapps directory
COPY target/DevopsLab2Project.war .
