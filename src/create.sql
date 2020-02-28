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

CREATE TABLE Products(
  id INTEGER NOT NULL,
  name TEXT,
  price REAL,
  manufacturer_id INTEGER NOT NULL,
  created_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtume')),
  updated_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtume')),
  PRIMARY KEY(id) AUTOINCREMENT,
  FOREIGN KEY(manufacturer_id) REFERENCES manufacturer(id)
);

CREATE TABLE Manufacturers(
  id INTEGER NOT NULL,
  name TEXT NOT NULL,
  created_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtume')),
  updated_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtume')),
  PRIMARY KEY(id) AUTOINCREMENT
);