# Sử dụng Tomcat 9
FROM tomcat:9.0

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ thư mục dist/ vào thư mục deploy của Tomcat
COPY dist/webemail.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Lệnh chạy Tomcat khi container khởi động
CMD ["catalina.sh", "run"]
