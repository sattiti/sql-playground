-- JOIN
https://www.w3schools.com/sql/sql_join.asp

-- INNER JOIN (内部結合) {{{
-- Returns records that have matching values in both tables.
SELECT *
  FROM
    LEFT_TABLE_A AS a
  INNER JOIN
    RIGHT_TABLE_B AS b
  ON
    a.key = b.key
;
-- }}}
-- LEFT OUTER JOIN (左外部結合) {{{
-- Returns all records from the left table, and the matched records from the right table.
SELECT *
  FROM
    LEFT_TABLE_A AS a
  LEFT OUTER JOIN
    RIGHT_TABLE_B AS b
  ON
    a.key = b.key
;
-- }}}
-- RIGHT OUTER JOIN (右外部結合) {{{
-- Returns all records from the right table, and the matched records from the left table.
SELECT *
  FROM
    LEFT_TABLE_A AS a
  RIGHT OUTER JOIN
    RIGHT_TABLE_B AS b
  ON
    a.key = b.key
;
-- }}}
-- FULL OUTER JOIN (完全外部結合) {{{
-- Returns all records when there is a match in either left or right table. 
SELECT *
  FROM
    LEFT_TABLE_A AS a
  FULL OUTER JOIN
    RIGHT_TABLE_B AS b
  ON
    a.key = b.key
;
-- }}}
-- LEFT EXCLUDING OUTER JOIN (左外部結合除外条件付き) {{{
-- Return all of the records in the left table that do not match any records in the right table.
SELECT *
  FROM
    LEFT_TABLE_A AS a
  LEFT OUTER JOIN
    RIGHT_TABLE_B AS b
  ON
    a.key = b.key
  WHERE
    b.key IS NULL
;
-- }}}
-- RIGHT EXCLUDING OUTER JOIN (右外部結合除外条件付き) {{{
-- Return all of the records in the right table that do not match any records in the left table.
SELECT *
  FROM
    LEFT_TABLE_A AS a
  LEFT OUTER JOIN
    RIGHT_TABLE_B AS b
  ON
    a.key = b.key
  WHERE
    a.key IS NULL
;
-- }}}
-- FULL OUTER EXCLUDING JOIN (完全外部結合除外条件付き) {{{
-- Returns records that is not match values in both tables.
SELECT *
  FROM
    LEFT_TABLE_A AS a
  FULL OUTER JOIN
    RIGHT_TABLE_B AS b
  ON
    a.key = b.key
  WHERE
    a.key IS NULL OR b.key IS NULL
;
-- }}}
