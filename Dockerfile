# Sử dụng Tomcat 9 với JDK 11
FROM tomcat:9.0-jdk11

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR vào ROOT.war (để chạy ở /)
COPY webemail.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
