FROM openjdk:8-jdk-alpine

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

ARG JAR_FILE

COPY ${JAR_FILE} app.jar

CMD ["java", "-jar", "/app.jar", "$APP_ARGS"]

