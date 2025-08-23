# Sử dụng Tomcat 9 với JDK 11
FROM tomcat:9.0-jdk11

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR vào ROOT.war (để chạy ở /)
FROM tomcat:9.0.108-jdk11

COPY dist/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080
