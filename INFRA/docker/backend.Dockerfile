# BE/ 를 빌드 컨텍스트로 사용하고, MODULE 인자로 빌드할 서버를 고른다.
FROM eclipse-temurin:21-jdk AS build
ARG MODULE
WORKDIR /workspace
COPY . .
RUN ./gradlew :${MODULE}:bootJar --no-daemon \
    && cp ${MODULE}/build/libs/${MODULE}-*.jar /workspace/app.jar

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /workspace/app.jar app.jar
ENV TZ=Asia/Seoul
ENTRYPOINT ["java", "-jar", "app.jar"]
