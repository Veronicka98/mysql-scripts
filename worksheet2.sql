use greenconstruction;

select * from tbl_country
where countryid = 222;

select * from tbl_country
where countryName = 'Belgium';

select * from tbl_client
where clientId = 12349;

select buildingname as Name, buildingtype as Type from tbl_building
where buildingID = 888;

select * from tbl_roof
where rooftype = 'pitched';

select clientid, clientaddress
from tbl_client
where companyname like '%Marketing%';

select * from tbl_building
where buildingtype like '%Storey%';

select * from tbl_building
where buildingtype like '%Storey';

select * from tbl_country
where countryName like '_ales';

select * from tbl_country
where countryName like 'Spa__';

select * from tbl_country
where CountryName like '%and';

select * from tbl_country
where countryName like '%y';

select * from tbl_building 
where buildingtype like '%detached%';

select * from tbl_building 
where buildingtype like '%Detached%';

select * from tbl_building 
where buildingtype like '%DETACHED%';

select * from tbl_building 
where buildingheight > 65;

select * from tbl_building 
where buildingheight < 65;

select * from tbl_building 
where buildingHeight = 75;

select * from tbl_building 
where buildingHeight != 108;

select * from tbl_building 
where buildingHeight <= 65;

select * from tbl_building 
where buildingHeight >= 65;

select * from tbl_building 
where buildingHeight <> 108;

select * from tbl_building
where buildingtype like '%Detached%'
and buildingheight > 100;

select * from tbl_building
where buildingtype like '%Detached%'
or buildingheight > 100;

select roofID , rooftype, roofsoildepth from tbl_roof
where roofsoildepth > 60
and roofsoildepth < 160;

select roofid, rooftype from tbl_roof
where roofangle > 40
and roofangle < 60
and roofsoildepth > 60;

select * from tbl_building
where buildinghsurface in ('100%','75%','80%');

select * from tbl_building
where buildinghsurface not in ('100%','75%','80%');

select * from tbl_country
where countrycapital is null;

select * from tbl_country
where countrycapital is not null;

select * from tbl_country
where countrycapital is not null
order by countryname;

select * from tbl_country
where countrycapital is not null
order by countryname desc;

select * from tbl_building
where buildingtype in ('Apartment','Townhouse');

select * from tbl_site 
where S_BuildingID is null;

select * from tbl_site
where S_BuildingID is not null;

select * from tbl_country
order by countryname;

select countryname, countrycapital from tbl_country
order by countrycapital;


