#!/bin/bash

# Waiting for both PostgreSQL services
/scripts/wait-for-it.sh postgres-db:5432 --timeout=60 -- echo "postgres-db is up"
/scripts/wait-for-it.sh postgres-db-test:5432 --timeout=60 -- echo "postgres-db-test is up"

# Starting the app
exec java -jar /app/jira-app.jar


