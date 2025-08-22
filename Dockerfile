# ----------------
# Stage 1: Build project bằng Maven
# ----------------
FROM maven:3.8.5-openjdk-17 AS builder

WORKDIR /app
COPY pom.xml .
COPY src ./src

# Build Maven, bỏ test cho nhanh
RUN mvn clean package -DskipTests

# ----------------
# Stage 2: Deploy vào Tomcat
# ----------------
FROM tomcat:9.0

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR từ builder vào Tomcat
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
