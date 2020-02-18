-- schema {{{
-- 外部スキーマ(外部モデル view)
-- 概念スキーマ(論理データモデル table)
-- 内部スキーマ(物理データモデル file)
-- }}}

-- ACID {{{
-- トランザクションを守る4つの標準規格。

-- Atomicity(原子性)
-- all or nothing.
-- トランザクションが終わったとき、すべての処理が実行された場合は true
-- 一つだけでも実行していない場合は false。

-- Consistency(一貫性、整合性)
-- トランザクション内の処理は規格違反しない。

-- Isolation(独立性)
-- トランザクションの入れ子はできないため、お互いに干渉しない。

-- Durability(永続性)
-- トランザクションが終了した時点でのデータ状態が保存されること。
-- }}}

-- Naming rules {{{
-- 1. 半角英数字、アンダーバー
-- 3. 大文字小文字は区別しない
-- 4. 数字からはじめる名前はできない
-- 5. テーブル名は基本的に複数形
-- 6. db 名は単数形
-- 7. カラム名は単数形
-- 8. 文字列はシングルクォーテーションで囲む
-- }}}

-- SQL の機能カテゴリ {{{
-- DDL (Data Definition Language) データ定義言語
-- CREATE
-- DROP
-- ALTER

-- DML (Data Manipulation Language) データ操作言語
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

-- DCL (Data Control Language) データ制御言語
-- COMMIT
-- ROLLBACK
-- GRANT
-- REVOKE
-- }}}

-- テーブルの構成 {{{
-- ROW | COLUMN 列(縦)
-- RECORD 行(横)
-- }}}

-- SQLにおける3値論理 {{{
-- TRUE 真
-- FALSE 偽
-- UNKNOWN 不明 undefined のようなもの。
-- }}}