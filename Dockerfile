FROM java:8-jre
MAINTAINER David Li <legendarilylwq@gmail.com>

ADD ./target/registry.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/registry.jar"]

EXPOSE 28821