use greenconstruction;

select countryid, countryname, branchid, branchname, branchaddress
from tbl_country, tbl_branch
where countryid = B_CountryID
and countryid = 222;

select countryid, countryname, branchid, branchname, branchaddress
from tbl_country, tbl_branch
where countryid = 222;

select countryid, countryname, countrycapital, branchid, branchname, branchemail
from tbl_country, tbl_branch
where countryid = 222;

select * from tbl_country;

select countryid, countryname, countrycapital, branchid, branchname, branchemail
from tbl_country, tbl_branch
where countryid = 333;

select countryid, countryname, countrycapital, branchid, branchname, branchemail
from tbl_country, tbl_branch
order by CountryName;

select siteaddress, startdate, enddate, branchid, branchname, branchaddress
from tbl_branch, tbl_site
where branchid = 222
and branchid = S_branchID;

select * from tbl_site, tbl_client
where ClientID = C_clientid
and clientName = 'Ann Power';

select * from tbl_site, tbl_building
where buildingID = S_BuildingID
and buildingID = 888;

select * from tbl_roof, tbl_site
where roofid = S_RoofID
and roofID = 454;

select * from tbl_site, tbl_building
where buildingid = S_BuildingID
and BuildingHeight > 60;

select * from tbl_country, tbl_branch
where countryid = B_CountryID
and BranchEmail is null;

select countryid, countryname, branchid, branchname, siteaddress
from tbl_country, tbl_branch, tbl_site
where countryid = B_countryid
and branchid = S_BranchID;

select countryid, countryname, branchid, branchname, siteaddress, roofid, rooftype
from tbl_country, tbl_branch, tbl_site, tbl_roof
where countryid = B_countryid
and branchid = s_branchid
and S_roofid = roofid;

select * from tbl_roof, tbl_site
where roofid = S_roofid
and startdate < curDate();

select * from tbl_country, tbl_client, tbl_site, tbl_branch
where clientid = C_clientid
and countryid = B_countryid
and branchid = S_branchid
and countryname = 'Ireland';

select * from tbl_country, tbl_client, tbl_site, tbl_branch
where clientid = C_clientid
and countryid = B_countryid
and branchid = S_branchid
and countryname != 'Ireland'
order by clientname;

select * from tbl_country;

select branchid, branchname, countryid,  countryname
from tbl_country, tbl_branch
where countryid = B_countryid;

select branchid, countryid, countryname
from tbl_country
left outer join tbl_branch
on countryid = b_countryid;

select clientid, clientname, siteaddress, startdate from tbl_client, tbl_site
where clientid = C_clientid;

select clientid, clientname, siteaddress, startdate from tbl_client
left outer join tbl_site
on clientid = C_clientid;

select branchid, branchname, siteaddress, startdate
from tbl_site, tbl_branch
where branchid = S_BranchID;

select branchid, branchname, siteaddress, startdate from tbl_branch
left outer join tbl_site
on branchid = S_branchid;







