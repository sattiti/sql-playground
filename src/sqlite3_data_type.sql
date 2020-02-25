-- DATA TYPE {{{

-- NULL

-- INTEGER
-- 符号付き整数。1, 2, 3, 4, 6, 8 bytes で格納。

-- REAL
-- 浮動小数点数。8 bytes で格納。

-- TEXT
-- UTF-8 | UTF-16BE | UTF-16LE 

-- BLOB
-- Binary Large OBject。入力データをそのまま格納。

-- Boolean
-- boolean なし、その代わりに 0 | 1 を使う。
-- false 0
-- true  1

-- Date, Time Data type
-- TEXT    as ISO8601 strings ("YYYY-MM-DD HH:MM:SS.SSS")
-- REAL    as Julian day numbers, the number of days since noon in Greenwich on November 24, 4714 B.C. according to the proleptic Gregorian calendar. 
-- INTEGER as Unix Time, the number of seconds since 1970-01-01 00:00:00 UTC.

-- }}}
-- typeof() {{{
-- t  TEXT
-- nu NUMERIC
-- i  INTEGER
-- r  REAL
-- no BLOG

-- typeof(t)
-- }}}
