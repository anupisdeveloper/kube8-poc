FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS JAVA_OPTS=""

#RUN adduser -D -s /bin/sh app
#WORKDIR /home/app

ADD target/kube8-poc-1.0.jar app.jar
#ADD entrypoint.sh entrypoint.sh
#RUN chmod 755 entrypoint.sh && chown app:app entrypoint.sh
#USER app

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=default", "/app.jar"]
#ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8080
