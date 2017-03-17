use greenconstruction;
/*Delete from tbl_site;
Delete from tbl_client;
Delete from tbl_roof;
Delete from tbl_building;
Delete from tbl_branch;
Delete from tbl_country;*/



insert into tbl_Country values (222, 'Dublin', 'Ireland');
insert into tbl_Country values (333, 'London', 'England');
insert into tbl_Country values (444, null, 'Scotland');
insert into tbl_Country values (555, null, 'Wales');
insert into tbl_Country values (666, 'Paris', 'France');
insert into tbl_Country values (777, 'Rome', 'Italy');
insert into tbl_country values (888, 'tbc', 'Sweden');
insert into tbl_Country values (122, 'Berlin', 'Germany');
insert into tbl_Country values (133, 'Madrid', 'Spain');
insert into tbl_Country values (144, 'Lisbon', 'Portugal');
insert into tbl_Country values (155, 'Brussels', 'Belgium');
insert into tbl_Country values (166, 'Oslo', 'Norway');
insert into tbl_Country values (177, 'Cambra', 'Australia');
insert into tbl_country values (188, null, 'USA');


insert into tbl_Branch values (111, 'Irish Branch' ,'Number 1,Irish Road','ireland@branch.ie',8833662299, 222);

insert into tbl_Branch values (222, 'English Branch','Number 1,English Road','england@branch.ie',2587413691, 333);

insert into tbl_Branch values (333, 'Scottish Branch', 'Number 1,Scottish Road', null ,8564567891, 444);

insert into tbl_Branch values (444, 'Welsh Branch', 'Number 1,Welsh Road','wales@branch.ie',1597533579, 555);

insert into tbl_Branch values (555, 'French Branch',  'Number 1,French Road','france@branch.ie',258749613, 666);

insert into tbl_Branch values (666, 'Italian Branch',  'Number 1,Italian Road','italy@branch.ie',4578128956, 777);

insert into tbl_Branch values (676, 'Swedish Branch', 'Number 11, Swedish Road','sweden@branch.ie',8564567891, 888);

insert into tbl_Building values (999, 'Rose Building','Apartment',54,'50%');
insert into tbl_Building values (888, 'Lily Building','Two Storey Detached',108,'75%');
insert into tbl_Building values (777, 'Orchid Building','One Storey Terrace',54,'100%');
insert into tbl_Building values (666, 'Daisy Building','Two Storey Terrace',54,'100%');
insert into tbl_Building values (555, 'Fushcia Building','Two Storey Terrace',54,'100%');

insert into tbl_Roof values (121,'flat',5, '50%',155,43,'70%');
insert into tbl_Roof values (454,'pitched',45, '50%',55,63,'72%');
insert into tbl_Roof values (787,'vaulted',55, '50%',65,82,'73%');

insert into tbl_Client values (12345, 'Mr. Jones', 'West Industrial  Estate, Westown',
'client@first.ie','789-157896',25815, 'Manufacturing Company','John Stokes','SME',
null, null, null, null,'Legal Entity');

insert into tbl_Client values (12346, 'Mrs. Phelan', 'The Grange, Park Road','client@second.ie',
'789-444896',null, null,null,null,456456, 'Mr', 'Stephen', 'Morrissey', 'Individual');

insert into tbl_Client values (12347, 'Ann Power', 'North Ind. Estate, Northtown','client@third.ie',
'789-177796',65465, 'Marketing Company','Tim Minchin','Multinational',null, null, null, null,'Legal Entity');



insert into tbl_Site values ('2011-09-10','The Long Road, Middlewell','2011-01-10',111,121,null,12345);

insert into tbl_Site values ('2011-10-11','The Short Road, Longwell','2012-02-11',222,454,null, 12346);

insert into tbl_Site values ('2011-11-11','The Ring Road, Emptywell','2012-03-20',333,787,null,12345);

insert into tbl_Site values ('2011-12-11','The Circular Road, Fulwell','2012-04-10',444,null,999,12347);

insert into tbl_Site values ('2012-01-12','The Narrow Road, Fenwell','2012-05-10',555,null,888,12347);












