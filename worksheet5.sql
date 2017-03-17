use greenconstruction;

insert into tbl_country (countryid, countryname, countrycapital)
values(621, 'Canada', 'Ottowa');

select * from tbl_country;

insert into tbl_country (countryid, countryname, countrycapital)
values(622, 'Afganistan', 'Kabul');

insert into tbl_country (countryid, countryname, countrycapital)
values(478, 'Bulgaria', 'Sophia');

insert into tbl_country (countryid, countryname, countrycapital)
values(719, 'Brazil', 'Brazilia');

insert into tbl_country (countryid, countryname, countrycapital)
values(661, 'Belarus', 'Minsk');

insert into tbl_country values(317, 'Croatia', 'Zagreb');

update tbl_client
set clientemail = 'dscott@gmail.com'
where clientid = 48922;

delete from tbl_client
where clientid = 48923;
