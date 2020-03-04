-- 地方テーブル
CREATE TABLE IF NOT EXISTS Regions(
  id         INTEGER NOT NULL PRIMARY KEY,
  name       TEXT NOT NULL,
  name_kana  TEXT NOT NULL,
  name_roma  TEXT NOT NULL,
  created_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtime')),
  updated_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtime'))
);

INSERT INTO Regions(
  id,
  name,
  name_kana,
  name_roma
)
VALUES
  (1, '北海道',  'ホッカイドウ',         'hokaido'),
  (2, '東北',    'トウホク',             'touhoku'),
  (3, '関東',    'カントウ',             'kantou'),
  (4, '中部',    'チュウブ',             'chubu'),
  (5, '近畿',    'キンキ',               'kinki'),
  (6, '中国',    'チュウゴク',           'chugoku'),
  (7, '四国',    'シコク',               'shikoku'),
  (8, '九州沖縄','キュウシュウオキナワ', 'kyushuokinawa')
;

-- 都道府県テーブル
CREATE TABLE IF NOT EXISTS Prefectures(
  id         INTEGER NOT NULL,
  region_id  INTEGER NOT NULL,
  name       TEXT NOT NULL,
  name_kana  TEXT NOT NULL,
  name_roma  TEXT NOT NULL,
  created_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtime')),
  updated_at TEXT NOT NULL DEFAULT (DATETIME('now', 'localtime')),
  PRIMARY KEY(id)
);

INSERT INTO Prefectures(
  id,
  region_id,
  name,
  name_kana,
  name_roma)
VALUES
  (1,  1, '北海道',   'ホッカイドウ', 'hokaido'),

  (2,  2, '青森県',   'アオモリケン', 'aomori'),
  (3,  2, '岩手県',   'イワテケン',   'iwate'),
  (4,  2, '秋田県',   'アキタケン',   'akita'),
  (5,  2, '宮城県',   'ミヤギケン',   'miyagi'),
  (6,  2, '山形県',   'ヤマガタケン', 'yamagata'),
  (7,  2, '福島県',   'フクシマケン', 'fukushima'),

  (8,  3, '茨城県',   'イバラキケン', 'ibaraki'),
  (9,  3, '栃木県',   'トチギケン',   'tochigi'),
  (10, 3, '群馬県',   'グンマケン',   'gunma'),
  (11, 3, '埼玉県',   'サイタマケン', 'saitama'),
  (12, 3, '千葉県',   'チバケン',     'chiba'),
  (13, 3, '東京都',   'トウキョウト', 'tokyo'),
  (14, 3, '神奈川県', 'カナガワケン', 'kanagawa'),

  (15, 4, '新潟県',   'ニイガタケン', 'nigata'),
  (16, 4, '富山県',   'トヤマケン',   'toyama'),
  (17, 4, '石川県',   'イシカワケン', 'ishikawa'),
  (18, 4, '福井県',   'フクイケン',   'fukui'),
  (19, 4, '山梨県',   'ヤマナシケン', 'yamanashi'),
  (20, 4, '長野県',   'ナガノケン',   'nagano'),
  (21, 4, '岐阜県',   'ギフケン',     'gifu'),
  (22, 4, '静岡県',   'シズオカケン', 'shizuoka'),
  (23, 4, '愛知県',   'アイチケン',   'aichi'),

  (24, 5, '三重県',   'ミエケン',     'mie'),
  (25, 5, '滋賀県',   'シガケン',     'shiga'),
  (26, 5, '京都府',   'キョウトフ',   'kyoto'),
  (27, 5, '大阪府',   'オオサカフ',   'osaka'),
  (28, 5, '兵庫県',   'ヒョウゴケン', 'hyougo'),
  (29, 5, '奈良県',   'ナラケン',     'nara'),
  (30, 5, '和歌山県', 'ワカヤマケン', 'wakayama'),

  (31, 6, '鳥取県',   'トットリケン', 'tottori'),
  (32, 6, '島根県',   'シマネケン',   'shimane'),
  (33, 6, '岡山県',   'オカヤマケン', 'okayama'),
  (34, 6, '広島県',   'ヒロシマケン', 'hiroshima'),
  (35, 6, '山口県',   'ヤマグチケン', 'yamaguchi'),

  (36, 7, '徳島県',   'トクシマケン', 'tokushima'),
  (37, 7, '香川県',   'カガワケン',   'kawaga'),
  (38, 7, '愛媛県',   'エヒメケン',   'ehime'),
  (39, 7, '高知県',   'コウチケン',   'kouchi'),

  (40, 8, '福岡県',   'フクオカケン', 'fukuoka'),
  (41, 8, '佐賀県',   'サガケン',     'saga'),
  (42, 8, '長崎県',   'ナガサキケン', 'sagasaki'),
  (43, 8, '熊本県',   'クマモトケン', 'kumamoto'),
  (44, 8, '大分県',   'オオイタケン', 'ooita'),
  (45, 8, '宮崎県',   'ミヤザキケン', 'miyazaki'),
  (46, 8, '鹿児島県', 'カゴシマケン', 'kagojima'),
  (47, 8, '沖縄県',   'オキナワケン', 'okunawa')
;
