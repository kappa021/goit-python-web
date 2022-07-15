CREATE DATABASE university;

USE university;

CREATE TABLE groupss (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(10) NOT NULL
);

CREATE TABLE students (
    id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    group_id SMALLINT,
    FOREIGN KEY (group_id) REFERENCES groupss(id)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);

CREATE TABLE teachers (
    id SMALLINT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
);

CREATE TABLE subjects (
    id TINYINT PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    teachers_id SMALLINT,
    FOREIGN KEY (teachers_id) REFERENCES teachers(id)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);

CREATE TABLE marks (
    students_id INT,
    subjects_id TINYINT,
    mark TINYINT CHECK (0 <= mark <= 100),
    date DATE,
    FOREIGN KEY (students_id) REFERENCES students(id)
	    ON DELETE CASCADE
	    ON UPDATE CASCADE,
    FOREIGN KEY (subjects_id) REFERENCES subjects(id)
	    ON DELETE CASCADE
	    ON UPDATE CASCADE        
);