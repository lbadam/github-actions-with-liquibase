--liquibase formatted sql
				
--changeset your.name:1 labels:v0 context:all
create table person (
	id int primary key,
	name varchar(50) not null,
	address1 varchar(50),
	address2 varchar(50),
	city varchar(30)
)
				
--changeset your.name:2 labels:v0 context:all
create table company (
	id int primary key,
	name varchar(50) not null,
	address1 varchar(50),
	address2 varchar(50),
	city varchar(30)
)
				
--changeset other.dev:3 labels:v0 context:all
alter table person add column country varchar(2)

--changeset other.dev:4 labels:v0 context:all
drop table person;