create database if not exists customers;
use customers;

drop table if exists actions;
drop table if exists user_actions;
drop table if exists users;

create table users (
	id int(11) not null auto_increment,
 	email varchar(40) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	password varchar(15) not null,
	primary key (id)
);

create table actions (
	id int(11) not null auto_increment,
	post text,
	like_post int(11),
	friend_request int(11),
comment tinytext,
	upload_image blob,
primary key(id),
	foreign key (user_id) references users(id)  
);

create table user_actions (
	action_id int(11) not null,
	user_id int(11) not null,
	id int(11),
	primary key (action_id, user_id),
	foreign key (action_id) references actions(id),
	foreign key (user_id) references users(id)
);
