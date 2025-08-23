# Stage 1: Build với Ant
FROM ant:1.10.14 AS builder
WORKDIR /app
COPY . .
RUN ant clean dist

# Stage 2: Deploy trên Tomcat
FROM tomcat:9.0
COPY --from=builder /app/dist/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
