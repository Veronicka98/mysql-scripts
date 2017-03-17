#create database prison;
use prison;
#drop table tbl_cell;
#drop table tbl_prisoner;
 
 
create table tbl_prisoner (
prisno int(3) not null,
prisname varchar(50) ,
prisDOB date ,
prisgender char(1) check (prisgender in ('F', 'M')),
Constraint prisoner_ck_prisDOB check (prisDOB > '1993-08-05'),
Constraint prisoner_pk_prisno primary key (prisno)
) engine innodb;
 
create table tbl_cell (
cellid int(5) ,
blockname varchar(30) ,
C_prisno int(3) ,
cellsize int(5) ,
Constraint cell_pk_cellid primary key (cellid) ,
Constraint cell_fk_C_prisno foreign key (C_prisno) references tbl_prisoner(prisno)) engine innodb;
 
commit;
 
 
insert into tbl_prisoner values(111, 'John Doe', '1973-05-10', 'M');
insert into tbl_prisoner values(222, 'Jane Doe', '1985-10-03', 'F');
insert into tbl_prisoner values(333, 'Pat Luck', '1950-05-12', 'M');
insert into tbl_prisoner values(444, 'Tom Black', '1992-06-04', 'M');
insert into tbl_prisoner values(566, 'Tom Black', '1992-06-04', 'T');
 
insert into tbl_cell values(5, 'Bad Guys', 111, 3);
insert into tbl_cell values(2, 'idk', 222, 1);
insert into tbl_cell values(1, 'Block 3', 333, 2);
insert into tbl_cell values(3, 'Block 3', 444, 2);
 
select * from tbl_prisoner;
select * from tbl_cell;
 
#rollback;
 
alter table tbl_cell drop foreign key cell_fk_C_prisno;
alter table tbl_cell add constraint cell_fk_C_prisno foreign key (C_prisno) references tbl_prisoner(prisno);
 
alter table tbl_cell drop primary key;
alter table tbl_cell add constraint cell_pk_cellid primary key (cellid);
 
#commit;

#to delete primary key from table make sure all foreign keys from other tables are deleted that are using that primary key
alter table tbl_cell drop foreign key cell_fk_C_prisno;
alter table tbl_prisoner drop primary key; 