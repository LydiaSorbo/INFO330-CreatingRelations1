CREATE TABLE IF NOT EXISTS timeslots(id INTEGER PRIMARY KEY, start DATE, end DATE);
INSERT INTO timeslots VALUES(1, '2023-04-01', '2023-06-01');
INSERT INTO timeslots VALUES(2,'2023-09-25','2023-12-19');

drop table rooms;
CREATE TABLE IF NOT EXISTS rooms(id INTEGER PRIMARY KEY NOT NULL, number INTEGER, buildingid INTEGER, seating INTEGER, FOREIGN KEY (buildingid) REFERENCES buildings(id));
INSERT INTO rooms (number, buildingid, seating) VALUES(120, (SELECT id FROM buildings WHERE name='Raitt Hall'), 40);
INSERT INTO rooms (number, buildingid, seating) VALUES(220, (SELECT id FROM buildings WHERE name='Guggenheim Hall'), 200);
INSERT INTO rooms (number, buildingid, seating) VALUES(260, (SELECT id FROM buildings WHERE name='Savery Hall'), 200);
INSERT INTO rooms (number, buildingid, seating) VALUES(430, (SELECT id FROM buildings WHERE name='Mary Gates Hall'), 40);

CREATE TABLE IF NOT EXISTS schedule(coursecode VARCHAR(40), roomid INTEGER, timeslotid INTEGER, FOREIGN KEY (roomid) REFERENCES rooms(id), FOREIGN KEY (timeslotid) REFERENCES timeslots(id));
CREATE unique index time_room_conflicts on schedule(roomid, timeslotid);
INSERT INTO schedule VALUES('INFO330A', 1, 1);
INSERT INTO schedule VALUES('INFO314', 2, 1);


