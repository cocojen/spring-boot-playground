DROP TABLE IF EXISTS game;
DROP TABLE IF EXISTS card;
DROP TABLE IF EXISTS read_log;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id int auto_increment primary key,
    email varchar(64) unique,
    github_id varchar(64) unique,
    created_date datetime
);

CREATE TABLE IF NOT EXISTS game (
    id int auto_increment primary key,
    user_id int references  user(id),
    title varchar(64)
);

CREATE TABLE IF NOT EXISTS card (
    id int auto_increment primary key,
    user_id int references user(id),
    contents varchar(512)
);

CREATE TABLE IF NOT EXISTS book (
    id int auto_increment primary key,
    title varchar(64)
);

CREATE TABLE IF NOT EXISTS read_log (
    user int references user(id),
    book int references book(id),
    count int,
    primary key (user, booK)
);


INSERT INTO user (email, created_date) VALUES ('honux@gmail.com', current_time);