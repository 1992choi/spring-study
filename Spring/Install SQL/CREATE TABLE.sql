CREATE TABLE member 
( 
    member_id       VARCHAR2(6)	NOT NULL,
    member_name     VARCHAR2(100),
    phone_number    VARCHAR2(20),
    email           VARCHAR2(100)
);

CREATE TABLE guestbook (
    id number(10,0) NOT NULL,
    message varchar2(255) NOT NULL,
    name varchar2(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE SEQUENCE id_seq START WITH 1 INCREMENT BY 50;

CREATE TABLE board (
    id number(10,0) NOT NULL,
    title varchar2(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE SEQUENCE board_seq START WITH 1 INCREMENT BY 50;