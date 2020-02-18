-- DELETE

DELETE FROM
  TB
WHERE
  CONDITION
;

-- DROP
DROP TABLE TB_NAME;

-- TRUNCATE
-- 切捨て。必ずテーブル内データ全てを削除する。
-- DELETE より高速。
-- WHERE 句での条件付き削除は出来ない。
TRUNCATE TB_NAME;