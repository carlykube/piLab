DROP DATABASE pilab;
CREATE DATABASE pilab;
USE pilab;

CREATE TABLE users (
	ID int NOT NULL AUTO_INCREMENT, 
	Name varchar(255) NOT NULL, 
	Gender char NOT NULL, 
	Birthday date, 
	Hometown varchar(255), 
	Avatar tinyint, 
	Password varchar(32) NOT NULL, 
	Salt varchar(10) NOT NULL, 
	Suspend BOOL NOT NULL default 0, 
	PRIMARY KEY ( ID )
);

CREATE TABLE letters (
	ID int NOT NULL AUTO_INCREMENT, 
	UserFrom int NOT NULL, 
	UserTo int NOT NULL, 
	Text blob NOT NULL,  
	Flagged BOOL NOT NULL default 0, 
	PRIMARY KEY ( ID ), 
	FOREIGN KEY ( UserFrom )
		REFERENCES users (ID), 
	FOREIGN KEY ( UserTo )
		REFERENCES users (ID)
);

CREATE TABLE contacts (
	ID int NOT NULL AUTO_INCREMENT, 	
	UserOne int NOT NULL,
	UserTwo int NOT NULL,
	FOREIGN KEY ( UserOne )
		REFERENCES users (ID),
	FOREIGN KEY ( UserTwo )
		REFERENCES users (ID),
	PRIMARY KEY ( ID )
);

CREATE TABLE authcodes (
	code VARCHAR(20) NOT NULL
);

CREATE TABLE roles (
	ID int NOT NULL AUTO_INCREMENT,
	Name VARCHAR(25) NOT NULL,
	PRIMARY KEY ( ID )
);

CREATE TABLE permissions (
	ID int NOT NULL AUTO_INCREMENT,
	Name VARCHAR(50) NOT NULL,
	PRIMARY KEY ( ID )
);

CREATE TABLE role_perm (
	Role int NOT NULL,
	Perm int NOT NULL,
	FOREIGN KEY ( Role )
		REFERENCES roles (ID),
	FOREIGN KEY ( Perm )
		REFERENCES permissions (ID)
);

CREATE TABLE user_role (
	Usr int NOT NULL,
	Role int NOT NULL,
	FOREIGN KEY ( Usr )
		REFERENCES users (ID),
	FOREIGN KEY ( Role )
		REFERENCES roles (ID)
);