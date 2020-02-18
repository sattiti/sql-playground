-- CREATE
-- Create db {{{
CREATE DATABASE {DATABASE_NAME};
-- }}}

-- TABLE_CONSTRAINT {{{
-- PRIMARY KEY
-- FOREIGN KEY
-- AUTOINCREMENT
-- UNIQUE
-- NOT NULL
-- CHECK (expression)
-- }}}
CREATE TABLE movies (
  id INTEGER PRIMARY KEY,
  title TEXT,
  director TEXT,
  year INTEGER, 
  length_minutes INTEGER
);
