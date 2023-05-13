CREATE TABLE users
    ( id number(10) NOT NULL,
      name varchar2(40) NOT NULL,
     department varchar2(10),
     PRIMARY KEY(id)
    );

DROP TABLE users;