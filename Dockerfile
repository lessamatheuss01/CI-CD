FROM maven:3-openjdk-17 as builder
LABEL authors="lessa"

WORKDIR /build
COPY . .

RUN mvn clean package -DskipTests -Dcheckstyle.skip=true

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=builder /builder/target/*.jar /app/app.jar

CMD [ "java", "-jar", "app.jar" ]