# Sử dụng Tomcat làm base image
FROM tomcat:9.0

# Xóa ứng dụng mặc định của Tomcat (ROOT)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy file WAR đã build vào Tomcat và đặt tên là ROOT.war
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 để Render mapping
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
