FROM tomcat:10.1-jdk17-openjdk
EXPOSE 8080
ARG ARTIFACTORY_USERNAME
ARG ARTIFACTORY_PASSWORD
RUN curl -fL -u $ARTIFACTORY_USERNAME:$ARTIFACTORY_PASSWORD -o /usr/local/tomcat/webapps/home.war "http://192.168.56.107:8082/artifactory/com.DevOps.pipeline/binaries/CalculatorMvcProject.war"

