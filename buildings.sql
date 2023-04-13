CREATE TABLE IF NOT EXISTS buildings(id INTEGER PRIMARY KEY NOT NULL, name VARCHAR(80) NOT NULL, shortname VARCHAR(10) UNIQUE);
insert into buildings(name, shortname) values('Savery Hall', 'SAV');
insert into buildings(name, shortname) values('Raitt Hall', 'RAI');
insert into buildings(name, shortname) values('Guggenheim Hall', 'GUG');
insert into buildings(name, shortname) values('Mary Gates Hall', 'MGH');

CREATE TABLE IF NOT EXISTS rooms(number INTEGER, buildingid INTEGER, seating INTEGER, FOREIGN KEY (buildingid) REFERENCES buildings(id));
INSERT INTO rooms VALUES(120, (SELECT id FROM buildings WHERE name='Raitt Hall'), 40);
INSERT INTO rooms VALUES(220, (SELECT id FROM buildings WHERE name='Guggenheim Hall'), 200); 
INSERT INTO rooms VALUES(260, (SELECT id FROM buildings WHERE name='Savery Hall'), 200);
INSERT INTO rooms VALUES(430, (SELECT id FROM buildings WHERE name='Mary Gates Hall'), 40);

