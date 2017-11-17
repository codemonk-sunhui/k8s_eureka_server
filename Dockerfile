FROM daocloud.io/library/java:openjdk-8u40
ADD target/spring-cloud-eureka-cluster-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev./urandon","-jar","app.jar","--spring.profiles.active=${profile}"]
