--liquibase formatted sql

--changeset amurray:4 labels:dev context:dev
--comment: add person table
create table person (
    id serial not null primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(50),
    ip_address varchar(30)
)
--rollback DROP TABLE person;
