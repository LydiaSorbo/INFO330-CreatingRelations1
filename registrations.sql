CREATE TABLE IF NOT EXISTS student_courses(studentid INTEGER, course VARCHAR, grade FLOAT DEFAULT NULL, FOREIGN KEY (studentid) REFERENCES students(id), FOREIGN KEY (course) REFERENCES courses(code));
INSERT INTO student_courses values((SELECT id FROM students WHERE firstname='Fred'), 'INFO330A');
INSERT INTO student_courses(studentid, course) values((SELECT id FROM students WHERE firstname='Fred'), 'INFO448A');
INSERT INTO student_courses(studentid, course) values((SELECT id FROM students WHERE firstname='Fred'), 'INFO314');
INSERT INTO student_courses(studentid, course) values((SELECT id FROM students WHERE firstname='Barney'), 'INFO449A');
INSERT INTO student_courses(studentid, course) values((SELECT id FROM students WHERE firstname='Barney'), 'INFO330A');
INSERT INTO student_courses(studentid, course) values((SELECT id FROM students WHERE firstname='Wilma'), 'BAW0100');
INSERT INTO student_courses(studentid, course) values((SELECT id FROM students WHERE firstname='Wilma'), 'BAW100A');
INSERT INTO student_courses(studentid, course) values((SELECT id FROM students WHERE firstname='Betty'), 'BAW0100');

