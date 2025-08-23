# Sử dụng Tomcat 9 làm base image
FROM tomcat:9.0

# Xóa ứng dụng mặc định ROOT
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy file WAR đã build sẵn trong dist/ vào Tomcat và đặt tên ROOT.war
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 để truy cập web
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
