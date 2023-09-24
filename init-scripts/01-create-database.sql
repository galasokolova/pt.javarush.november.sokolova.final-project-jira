DO $$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM pg_catalog.pg_database WHERE datname = 'jira') THEN
            EXECUTE 'CREATE DATABASE jira';
        END IF;
    END
$$;
