-- Boolean type
BOOLEAN | BOOL

-- Numeric types
-- 2bytes
SMALLINT | int2

-- 4bytes
INTEGER | int | int4

-- 8bytes
BIGINT | INT8

-- variable ユーザ指定精度、正確。
-- 小数点より上は 131,072 桁まで、
-- 小数点より下は 16,383 桁まで
NUMERIC(p, s) | DECIMAL(p, s)

-- 4bytes 可変精度、不正確。6桁精度
REAL | FLOAT4

-- 8bytes 可変精度、不正確。15桁精度
DOUBLE PRECISION | FLOAT8

-- 2bytes 自動整数。1..32767
SMALLSERIAL | SERIAL2

-- 4bytes 自動整数。1..2147483647
SERIAL | SERIAL4

-- 8bytes 自動整数。1..9223372036854775807
BIGSERIAL | SERIAL8

-- Character types
-- 固定長文字列。最大値に満たない場合、最大値まで半角スペースで埋められる。
CHARACTER(n) | CHAR(n)

-- 可変長文字列。
VARCHAR(n)
TEXT

-- Binary data types
bytea 可変長のバイナリ列

-- Date/Time types
-- 日付と時刻タイムゾーンなし。
TIMESTAMP(p) without time zone

-- 日付と時刻タイムゾーンあり。
TIMESTAMP(p) with time zone | TIMESTAMPTZ

-- 時刻タイムゾーンなし
TIME(p) without time zone

-- 時刻タイムゾーンあり。
TIME(p) with time zone | TIMETZ

-- 日付
DATE

--  時間間隔。
INTERVAL {FIELD}(p)