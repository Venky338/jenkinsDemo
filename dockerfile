# Use an official Tomcat base image
FROM tomcat:9.0
# Set the working directory
WORKDIR /usr/local/tomcat
# Copy your application files into the container
COPY /var/lib/jenkins/workspace/Demo_jenkins/webapp/target/webapp.war usr/local/tomcat/webapps/
# Expose the port on which Tomcat will listen
EXPOSE 8080
# Start Tomcat9
CMD ["catalina.sh", "run"]
