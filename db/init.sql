DO
$$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'todo') THEN
      CREATE DATABASE todo;
   END IF;
END
$$;

DO
$$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'kmjak') THEN
      CREATE USER kmjak WITH ENCRYPTED PASSWORD 'kmjak';
   END IF;
END
$$;

GRANT ALL PRIVILEGES ON DATABASE todo TO kmjak;

\connect todo;

CREATE TABLE IF NOT EXISTS test (
  id SERIAL PRIMARY KEY,
);

insert into test values (1);