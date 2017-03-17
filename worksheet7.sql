
#create database music;
use music;
 
#drop table tbl_song;
#drop table tbl_artist;
 
 
create table tbl_artist(
artistno int(3),
artistname varchar(50) not null,
artistdob date,
artistgender char(1) check (artistgender in ('F', 'M')),
Constraint artist_pk_artistno primary key (artistno)
)engine innodb;
 
create table tbl_song(
songid int(5),
songname varchar(100) not null, 
songduration int(3) check (songduration>1), 
songgenre char(30), 
S_artistno int(3),
Constraint song_pk_songid primary key (songid),
Constraint song_fk_S_artistno foreign key (S_artistno) references tbl_artist(artistno)
)engine innodb;
 
 
alter table tbl_song modify songgenre varchar(30);
alter table tbl_artist add artistnationality varchar(50);
alter table tbl_artist drop column artistnationality;
 
alter table tbl_song modify songgenre varchar(50);
alter table tbl_artist add column country varchar(30);
alter table tbl_artist add column reclabel varchar(30);
 
alter table tbl_artist drop country;
alter table tbl_artist drop reclabel;
 
alter table tbl_song modify column songduration int(2);
 
alter table tbl_song drop foreign key song_fk_S_artistno;
alter table tbl_song add constraint song_fk_S_artistno foreign key (S_artistno) references tbl_artist(artistno);
 
alter table tbl_song drop primary key;
alter table tbl_song add constraint song_pk primary key (songid);