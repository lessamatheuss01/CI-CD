FROM maven:3openjdk-17 as builder
LABEL authors="Matheus"

WORKDIR /builder
COPY . .

RUN mvn clean package -DskipTests - Dcheckstyle.skip=true

FROM openjdk:17-slim

WORKDIR /app

COPY --from=builder /builder/target/*.jar /app/app.jar

CMD [ "java", "-jar", "app.jar" ]