create database teamecommercedb;
use teamecommercedb;

create table user (
	uid int auto_increment,
	name varchar(255),
	email varchar(255),
	phone varchar(255),
	username varchar(255),
	password varchar(255),
	role varchar(255),
	street_name varchar(255),
	apt varchar(255),
	city varchar(255),
	state varchar(255),
	zip varchar(255),
	primary key(uid)
);