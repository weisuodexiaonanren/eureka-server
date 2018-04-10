FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD sc-eureka.jar aap.jar
#RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/ ./urandom","-jar","/app.jar"]
EXPOSE 1111