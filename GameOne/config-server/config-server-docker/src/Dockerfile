FROM openjdk:8u181-slim
COPY config-server-code*.jar /app/config-server-code.jar
CMD ["java", "-Xms1000m", "-Xmx1000m", "-jar", "/app/config-server-code.jar"]
ENV TZ=Europe/Stockholm
EXPOSE 9001
