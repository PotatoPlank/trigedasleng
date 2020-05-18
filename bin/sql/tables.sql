DROP TABLE IF EXISTS dict_translations;
DROP TABLE IF EXISTS dict_words;
DROP TABLE IF EXISTS dict_sources;

CREATE TABLE dict_translations (
  id           INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
  trigedasleng TEXT NOT NULL,
  translation  TEXT NOT NULL,
  etymology    TEXT,
  leipzig      TEXT,
  episode      TEXT NOT NULL,
  audio        TEXT,
  speaker      TEXT NOT NULL,
  source       TEXT NOT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE utf8mb4_unicode_ci;

CREATE TABLE dict_words (
  id          INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
  word        TEXT NOT NULL,
  translation TEXT NOT NULL,
  etymology   TEXT NOT NULL,
  link        TEXT NOT NULL,
  citations   TEXT,
  example     TEXT,
  note        TEXT,
  filter      TEXT
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE utf8mb4_unicode_ci;
  
CREATE TABLE `dict_sources` (
  id           INT      NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title        TEXT     NOT NULL,
  author       TEXT     NOT NULL,
  date         DATE     NOT NULL,
  url          TEXT     NOT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE utf8mb4_unicode_ci;

CREATE TABLE dict_users (
  id           INT      NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username     TEXT     NOT NULL,
  password     TEXT     NOT NULL,
  email        TEXT     NOT NULL,
  signup_date  DATETIME NOT NULL,
  admin		     INT
) 
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE utf8mb4_unicode_ci;