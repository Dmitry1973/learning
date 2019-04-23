drop database if exists media;
create database media;
use media;

create table catalogs (
	id serial primary key,
	name varchar(255) comment '�������� �������',
	unique unique_name(name(10))
) comment = '������� ���� �����';

drop table if exists foto;
create table foto (
	id serial primary key,
	name varchar(255) comment '��������',
	description text comment '��������, �����',
	catalog_id int unsigned,
	created_at datetime default current_timestamp,	
	updated_at datetime default current_timestamp on update current_timestamp,
	key index_of_catalog_id(catalog_id)
) comment = '����';


drop table if exists videos;
create table videos (
	id serial primary key,
	name varchar(255) comment '��������',
	description text comment '��������',
	author text comment '�����',
	actors text comment '������',
	language_video text comment '����',
	duration float comment '������������',
	format_video text comment '������ �����',
	catalog_id int unsigned,
	created_at datetime default current_timestamp,	
	updated_at datetime default current_timestamp on update current_timestamp,
	key index_of_catalog_id(catalog_id)
) comment = '�����';

drop table if exists audio;
create table audio (
	id serial primary key,
	name varchar(255) comment '��������',
	description text comment '��������',
	author text comment '�����',
	album text comment '������',
	language_audio text comment '����',
	duration float comment '������������',
	format_audio text comment '������ �����',
	catalog_id int unsigned,
	created_at datetime default current_timestamp,	
	updated_at datetime default current_timestamp on update current_timestamp,
	key index_of_catalog_id(catalog_id)
) comment = '�����';

insert into audio (name, language_audio, author) values ('deutchland', 'deutch', 'rammstein' );
select*from audio;

