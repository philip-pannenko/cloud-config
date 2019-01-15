FROM openjdk:11-jdk-oracle
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","net.pannenko.cicd.ConfigServiceApplication"]
ENV SPRING_APPLICATION_JSON='{"spring": {"cloud": {"config": {"server": {"git": {"uri": "/var/lib/spring-cloud/config-repo", "clone-on-start": true}}}}}}'
VOLUME /var/lib/spring-cloud/config-repo
EXPOSE 8888