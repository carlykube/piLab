drop database pilab;
create database pilab;
use pilab;

create table users (
	ID int not null AUTO_INCREMENT, 
	Name varchar(255) not null, 
	Gender char not null, 
	Birthday date, 
	Hometown varchar(255), 
	Avatar tinyint, 
	Password varchar(32) not null, 
	Salt varchar(10) not null, 
	Suspend BOOL not null default 0, 
	primary key ( ID )
);

create table letters (
	ID int not null AUTO_INCREMENT, 
	UserFrom int not null, 
	UserTo int not null, 
	Text blob not null,  
	Flagged BOOL not null default 0, 
	primary key ( ID ), 
	foreign key ( UserFrom )
		references users (ID), 
	foreign key ( UserTo )
		references users (ID)
);

create table contacts (
	ID int not null AUTO_INCREMENT, 	
	UserOne int not null,
	UserTwo int not null,
	foreign key ( UserOne )
		references users (ID),
	foreign key ( UserTwo )
		references users (ID),
	primary key ( ID )
);

create table authcodes (
	code VARCHAR(20) not null
);

create table roles (
	ID int not null AUTO_INCREMENT,
	Name VARCHAR(25) not null,
	primary key ( ID )
);

create table permissions (
	ID int not null AUTO_INCREMENT,
	Name VARCHAR(50) not null,
	primary key ( ID )
);

create table role_perm (
	Role int not null,
	Perm int not null,
	foreign key ( Role )
		references roles (ID),
	foreign key ( Perm )
		references permissions (ID)
);

create table user_role (
	Usr int not null,
	Role int not null,
	foreign key ( Usr )
		references users (ID),
	foreign key ( Role )
		references roles (ID)
);