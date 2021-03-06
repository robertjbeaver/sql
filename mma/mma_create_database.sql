-- create and select the database
DROP DATABASE IF EXISTS mma;
CREATE DATABASE mma;
USE mma;

-- create the Product table
CREATE TABLE Product (
  ProductID     INT            PRIMARY KEY  AUTO_INCREMENT,
  Code          VARCHAR(10)    NOT NULL     UNIQUE,
  Description	VARCHAR(255)   NOT NULL,
  ListPrice     DECIMAL(10,2)  NOT NULL
);

CREATE TABLE Invoice (
  InvoiceID		INT 		   PRIMARY KEY  AUTO_INCREMENT,
  OrderNumber	VARCHAR(25)	   NOT	NULL	UNIQUE,
  CustomerName	VARCHAR(25)	   NOT NULL,
  OrderDate	 	DATE 		   NOT NULL,
  Total	  		DECIMAL(10,2)  NOT NULL
);

CREATE TABLE LineItem (
   LineItemID	INT 		   PRIMARY KEY  AUTO_INCREMENT,
   InvoiceID	INT,
   ProductID 	INT,
   Quantity		INT 			NOT NULL,
   FOREIGN KEY (InvoiceID)  REFERENCES Invoice (InvoiceID),
   FOREIGN KEY (ProductID)  REFERENCES Product (ProductID)
);

-- insert some rows into the Product table
INSERT INTO Product VALUES
(1, 'java', 'Murach''s Java Programming', '57.50'),
(2, 'jsp', 'Murach''s Java Servlets and JSP', '57.50'),
(3, 'mysql', 'Murach''s MySQL', '54.50'),
(4, 'android', 'Murach''s Android Programming', '57.50'),
(5, 'html5', 'Murach''s HTML5 and CSS3', '54.50'),
(6, 'oracle', 'Murach''s Oracle and PL/SQL', '54.50'),
(7, 'javascript', 'Murach''s JavaScript and jQuery', '54.50'),
(8,'python','Murach\'s Python Programming',57.50),
(10,'dummy1','dummy1',99.11),
(11,'dummy2','dummy2',99.12),
(12,'dummy3','dummy3',99.13);
-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON mma.*
TO mma_user@localhost
IDENTIFIED BY 'sesame';