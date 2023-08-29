FROM openjdk:17

WORKDIR /app

COPY scripts/entrypoint.sh /scripts/entrypoint.sh
RUN chmod +x /scripts/entrypoint.sh

COPY scripts/wait-for-it.sh /scripts/wait-for-it.sh
RUN chmod +x /scripts/wait-for-it.sh

COPY config/_application-prod.yaml /app/config/_application-prod.yaml

COPY ./resources /app/resources
COPY ./src/main/resources /app/src/main/resources

COPY target/jira-1.0.jar /app/jira-app.jar

ENTRYPOINT ["/scripts/entrypoint.sh"]

EXPOSE 8080