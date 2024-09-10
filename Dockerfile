FROM openjdk:17-jdk
ARG JAR_FILE=target/guestbook-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} guestbook.jar
EXPOSE 8080
ENTRYPOINT ["java"]
CMD ["-jar", "guestbook.jar"]