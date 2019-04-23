drop database if exists media;
create database media;
use media;

create table catalogs (
	id serial primary key,
	name varchar(255) comment 'название раздела',
	unique unique_name(name(10))
) comment = 'разделы базы медиа';

insert ignore into catalogs values
	(default, 'audio'),
	(default, 'foto'),
	(default,'' ),
	(default, 'video'),
	(default,'' );

drop table if exists foto;
create table foto (
	id serial primary key,
	name varchar(255) comment 'название',
	description text comment 'описание, место',
	catalog_id int unsigned,
	created_at datetime default current_timestamp,	
	updated_at datetime default current_timestamp on update current_timestamp,
	key index_of_catalog_id(catalog_id)
) comment = 'фото';


drop table if exists video;
create table video (
	id serial primary key,
	name varchar(255) comment 'название',
	description text comment 'описание',
	author text comment 'автор',
	actors text comment 'актеры',
	language_video text comment 'язык',
	duration float comment 'длительность',
	format_video text comment 'формат видео',
	catalog_id int unsigned,
	created_at datetime default current_timestamp,	
	updated_at datetime default current_timestamp on update current_timestamp,
	key index_of_catalog_id(catalog_id)
) comment = 'видео';

drop table if exists audio;
create table audio (
	id serial primary key,
	name varchar(255) comment 'название',
	description text comment 'описание',
	author text comment 'автор',
	album text comment 'название альбома',
	year_record year comment 'год записи',
	language_audio text comment 'язык',
	duration float comment 'длительность',
	format_audio text comment 'формат аудио',
	catalog_id int unsigned,
	created_at datetime default current_timestamp,	
	updated_at datetime default current_timestamp on update current_timestamp,
	key index_of_catalog_id(catalog_id)
) comment = 'аудио';

insert into audio (name, language_audio, author, year_record) values ('deutchland', 'deutch', 'rammstein', '2019' );
select*from audio;

update catalogs set name = 'empty' where name is null or name = '';
select*from catalogs;
