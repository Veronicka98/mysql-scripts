
drop database company;
create database company;
use company;

create table Employee(
PPS character(8) not null,
empname varchar(30),
jobTitle varchar(50),
Constraint pps_pk primary key (PPS)
) engine innodb;

create table Project(
projCode int(5) not null, 
projname varchar(50),
sponsor varchar(50),
startYear year, 
endYear year,
Constraint projco_pk primary key (projCode)
) engine innodb;

create table WorkedOn(
E_PPS character(8) not null, 
P_projCode int(5) not null,
inyear year,
inmonth int(2) check (inmonth >= 0 && inmonth <= 12),
noHours int(5),
Constraint emp_proj_pk primary key (E_PPS, P_projCode, inyear, inmonth),
Constraint pps_fk foreign key (E_PPS) references Employee(PPS),
Constraint projco_fk foreign key (P_projCode) references Project(projCode)
)engine innodb;

alter table Employee
add address varchar(50) not null;

insert into Employee values('P5462g85', 'Veronika Karpenko', 'idk', '36 Belleville');
insert into Project values(34555, 'Databases', 'sponsor', '2012', '2015');
insert into WorkedOn values('P5462g85', 34555, '2013', 02, 25);
insert into WorkedOn values('P5462g85', 34555, '2013', 102, 25);
