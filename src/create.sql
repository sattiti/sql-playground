-- CREATE

-- TYPE {{{
-- BOOLEAN
-- INTEGER
-- FLOAT
-- DOUBLE
-- REAL	
-- CHARACTER(NUM_CHARS)
-- VARCHAR(NUM_CHARS)
-- TEXT
-- DATE
-- DATETIME
-- BLOB                  Binary
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
