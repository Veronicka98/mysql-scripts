use greenconstruction;

select * from tbl_country;

update tbl_country
set countrycapital = 'Stockholm'
where countryid = 888;

insert into tbl_country values(999, 'Scotland', 'Edinburgh');

insert into tbl_country values(1010, 'Wales', 'Cardiff');

update tbl_branch
set branchemail = 'None'
where branchid = 333;

select * from tbl_branch;

update tbl_branch
set branchaddress = 'somewhere in italy'
where branchid = 666;

##where is germany and spain?

select * from tbl_country;

delete from tbl_country
where countryid = 622;

select * from tbl_site;

delete from tbl_site
where left(startdate, 4) = 2012;

