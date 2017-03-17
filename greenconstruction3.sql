
-- 1
Select  tbl_branch.branchaddress as Address, tbl_country.CountryName as Country
from tbl_branch, tbl_country
where tbl_branch.b_countryID = tbl_country.CountryID;

-- 2
Select  tbl_branch.branchaddress as Address, tbl_country.CountryName as Country
from tbl_branch, tbl_country
where tbl_branch.b_countryID = tbl_country.CountryID 
and tbl_country.CountryName like 'I%';

-- 3
Select clientid, clienttype
from tbl_client
order by ClientType;

-- 4
select max(buildingheight)as 'Highest Building'
from tbl_building;

-- 5
select min(buildingheight) as 'Shortest Building'
from tbl_building;

-- 6
Select CompanyName, CompanyContactName 
from tbl_Client 
where ClientType = 'Legal Entity';

-- 7
select buildingtype, avg(buildingheight) 
from tbl_building group by buildingtype;

-- 8
Select concat_ws(' ',ClientFName,ClientLName) as 'Client Name'
from tbl_Client 
where ClientType = 'Individual';

-- 9
Select * 
from tbl_branch 
where branchid = 222;


Select * from tbl_site;
-- 10
update tbl_site
set enddate ='2012-02-10' 
where S_BranchID = 111;

Select * from tbl_site;

-- 11
Select * from tbl_roof where roofsoildepth <60;

-- 12
Select * from tbl_roof
where roofweight between 40 and 80;

-- 13
Select CountryName, CountryCapital from tbl_country;