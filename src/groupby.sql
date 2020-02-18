-- GROUP BY
-- Grouping rows that have the same value in the column specified.

SELECT COUNT(COL1) AS NEW_COL1
  FROM
    TB
  WHERE
    CONSTRAINT_EXPRESSION
  GROUP BY
    COL
;
