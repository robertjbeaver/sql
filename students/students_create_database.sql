DROP DATABASE IF EXISTS students;
CREATE DATABASE students;
USE students;



CREATE TABLE course (
  CourseID		 INT 			PRIMARY KEY  AUTO_INCREMENT,
  Name			 VARCHAR(25)	NOT NULL     UNIQUE
);

CREATE TABLE user (
  UserID		 INT 			PRIMARY KEY  AUTO_INCREMENT,
  Name			 VARCHAR(50)    NOT NULL,
  CourseID	 	 INT,
  FOREIGN KEY (CourseID)  REFERENCES course (CourseID)
);

INSERT course (Name) VALUES ('HTML5');
INSERT course (Name) VALUES ('CSS3');
INSERT course (Name) VALUES ('JavaScript');
INSERT course (Name) VALUES ('PHP');
INSERT course (Name) VALUES ('MySQL');
INSERT user (Name, CourseID) VALUES ('Alice', 1);
INSERT user (Name, CourseID) VALUES ('Bob', 1);
INSERT user (Name, CourseID) VALUES ('Candice', 2);
INSERT user (Name, CourseID) VALUES ('David', 5);
INSERT user (Name, CourseID) VALUES ('Emma', null);
