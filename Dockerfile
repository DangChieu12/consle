# Stage 1: Build WAR với Ant
FROM openjdk:11 AS builder
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y ant
RUN ant clean dist

# Stage 2: Deploy WAR vào Tomcat
FROM tomcat:9.0-jdk11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=builder /app/dist/webmail.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
