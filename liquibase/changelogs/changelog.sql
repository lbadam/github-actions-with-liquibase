--liquibase formatted sql

--changeset your.name:1 labels:person context:production
--comment: add person table
create table person (
    id serial not null primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset your.name:2 labels:school context:production
--comment: add school table
create table school (
    id serial not null primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE school;

--changeset other.dev:3 labels:school context:production
--comment: add state to school table
alter table school add column state varchar(2)
--rollback ALTER TABLE school DROP COLUMN state;

