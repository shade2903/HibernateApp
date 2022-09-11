CREATE TABLE Person(
id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY ,
name varchar(100) not NULL,
age int check (age < 100));

CREATE TABLE Item (
id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
person_id int REFERENCES Person(id) ON DELETE SET NULL,
item_name varchar(100) NOT NULL );


INSERT INTO person(name,age) values ('Tom', 35);
INSERT INTO person(name,age) values ('Bob', 52);
INSERT INTO person(name,age) values ('Katy', 14);

INSERT INTO Item(person_id, item_name) VALUES (1, 'Book');
INSERT INTO Item(person_id, item_name) VALUES (1, 'AirPods');
INSERT INTO Item(person_id, item_name) VALUES (2, 'Iphone');
INSERT INTO Item(person_id, item_name) VALUES (3, 'Kindle');
INSERT INTO Item(person_id, item_name) VALUES (3, 'TV');
INSERT INTO Item(person_id, item_name) VALUES (3, 'PlayStation');