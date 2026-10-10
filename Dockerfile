# ==============================================================================
# Dockerfile cho ứng dụng Spring Boot Gradle
# Base image: Eclipse Temurin JRE 17 trên nền Alpine Linux siêu nhẹ (~140MB)
# ==============================================================================
FROM eclipse-temurin:17-jre-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép tệp JAR thành phẩm từ thư mục build/libs/ vào container
COPY build/libs/*.jar app.jar

# Khai báo cổng ứng dụng lắng nghe
EXPOSE 8080

# Thiết lập cấu hình bộ nhớ tối ưu cho JVM trong container
ENV JAVA_OPTS="-Xms256m -Xmx512m"

# Lệnh thực thi khởi chạy ứng dụng Spring Boot
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
