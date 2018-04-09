FROM frolvlad/alpine-oraclejdk8:slim
VOLUM /tmp
ADD sc-eureka-0.0.1-SHAPSHOT.JAR aap.jar
#RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/ ./urandom","-jar","/app.jar"]
EXPOSE 8761