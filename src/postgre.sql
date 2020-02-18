-- show user
\du

-- list schemas
\dn

-- show activity process
SLECT * FROM pg_stat_activity;

-- kill process
pg_cancel_backend(PID);

-- connect db
\c DB_NAME

-- table 定義の確認
\d TB_NAME

-- show tables
\d
\dt

-- table permission
\z TB_NAME

-- show views
\dv

-- connect
psql -U USER_NAME -d DB_NAME

-- show dbs
psql -l
\l

-- dump schema
pg_dump DB_NAME -t TB_NAME -U USER_NAME -s

-- init
initdb -E utf8 -d path/to/db
