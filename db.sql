CREATE TABLE application (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  names varchar(128) NOT NULL DEFAULT '',
  phones varchar(20) NOT NULL DEFAULT '',
  email varchar(128) NOT NULL DEFAULT '',
  dates DATE,
  gender varchar(2) NOT NULL DEFAULT '',
  biography varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);

CREATE TABLE languages (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  title varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);

CREATE TABLE application_languages (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  id_lang int(10) unsigned NOT NULL,
  id_app int(10) unsigned NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_lang) REFERENCES languages(id),
  FOREIGN KEY (id_app) REFERENCES application(id)
);

INSERT INTO languages (title) VALUES ('Pascal');
INSERT INTO languages (title) VALUES ('C');
INSERT INTO languages (title) VALUES ('C_plus_plus');
INSERT INTO languages (title) VALUES ('JavaScript');
INSERT INTO languages (title) VALUES ('PHP');
INSERT INTO languages (title) VALUES ('Python');
INSERT INTO languages (title) VALUES ('Java');
INSERT INTO languages (title) VALUES ('Haskel');
INSERT INTO languages (title) VALUES ('Clojure');
INSERT INTO languages (title) VALUES ('Prolog');
INSERT INTO languages (title) VALUES ('Scala');