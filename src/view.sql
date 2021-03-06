-- View
-- テーブルに似たものだが、仮想テーブルなのでデータは SELECT 文に保存され実態がない。
-- 複数のテーブルに跨ることができ、よく使う SELECT 文を VIEW に保存しておくと便利。
-- ORDER BY, UPDATE することができない。
-- view の上に view を重ねることはパフォーマンスの低下に繋がるため、多重生成を避けるべき。

-- CREATE VIEW
CREATE VIEW {VIEW_NAME}
  ({VIEW_COL1}, ...) AS
  SELECT ...;

-- DROP VIEW
DROP VIEW {VIEW_NAME} CASCADE;