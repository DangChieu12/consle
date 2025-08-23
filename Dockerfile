# Sử dụng Tomcat 9 với JDK 11
FROM tomcat:9.0.108-jdk11

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps với tên ROOT.war
COPY dist/ROOT.war /usr/local/tomcat/webapps/

# Mở cổng 8080
EXPOSE 8080
