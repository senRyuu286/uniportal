-- 01_extensions.sql
-- Runs once on first container start, inside the POSTGRES_DB database.
-- Enables the uuid-ossp extension so TypeORM can use uuid_generate_v4()
-- as a default value for UUID primary keys.

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";