CREATE TABLE IF NOT EXISTS courses(code VARCHAR(7, 40) NOT NULL PRIMARY KEY, description VARCHAR(400), start DATE NOT NULL, end DATE NOT NULL);
insert into courses VALUES('INFO330A', 'Data and databases', '2023-04-01', '2023-06-01');
insert into courses VALUES('INFO314', 'Networking and distributed systems', '2023-04-01', '2023-06-01');
insert into courses VALUES('INFO448A', 'Introduction to iOS', '2023-09-25', '2023-12-19');
insert into courses VALUES('INFO449A', 'Introduction to Android', '2023-09-25', '2023-12-19');
insert into courses VALUES('BAW0100', 'Introduction to Basket-Weaving', '2023-04-01', '2023-06-01');
insert into courses VALUES('BAW100A', 'Underwater Basket-Weaving', '2023-04-01', '2023-06-01');
