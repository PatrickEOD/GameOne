FROM openjdk:8u181-slim
COPY universe-code*.jar /app/universe-code.jar
CMD ["java", "-Xms1000m", "-Xmx1000m", "-jar", "/app/universe-code.jar"]
ENV TZ=Europe/Stockholm
EXPOSE 9002