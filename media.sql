drop database if exists media;
create database media;
use media;

create table catalogs (
	id serial primary key,
	name varchar(255) comment '�������� �������',
	unique unique_name(name(10))
) comment = '������� ���� �����';

insert ignore into catalogs values
	(default, 'audio'),
	(default, 'foto'),
	(default,'' ),
	(default, 'video'),
	(default,'' );

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


drop table if exists video;
create table video (
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
	album text comment '�������� �������',
	year_record year comment '��� ������',
	language_audio text comment '����',
	duration float comment '������������',
	format_audio text comment '������ �����',
	catalog_id int unsigned,
	created_at datetime default current_timestamp,	
	updated_at datetime default current_timestamp on update current_timestamp,
	key index_of_catalog_id(catalog_id)
) comment = '�����';

insert into audio (name, language_audio, author, year_record) values ('deutchland', 'deutch', 'rammstein', '2019' );
select*from audio;

update catalogs set name = 'empty' where name is null or name = '';
select*from catalogs;
