use greenconstruction;

select max(buildingheight) as tallest from tbl_building;

select min(buildingheight) as smallest from tbl_building;

select avg(buildingheight) as average from tbl_building;

select max(buildingheight) as tallest,
	   avg(buildingheight) as average,
	   min(buildingheight) as smallest
from tbl_building;

select sum(buildingheight) from tbl_building;

select count(*) from tbl_client;

select count(clientid) from tbl_client;

select count(branchid) from tbl_branch;

select count(*) from tbl_client
where CompanyDesc = 'SME';

select max(roofsoildepth) from tbl_roof;

select min(roofsoildepth) from tbl_roof;

select b_countryid,count(branchid)
from tbl_branch
group by B_CountryID
having count(BranchID) > 1;
 
 
select count(*) from tbl_building;

select distinct buildingtype, count(BuildingType) from tbl_building
group by buildingtype;

select avg(buildingheight) from tbl_building;

select distinct buildingtype, avg(buildingheight) from tbl_building
group by buildingtype;

select distinct buildingtype, avg(buildingheight) from tbl_building
group by buildingtype
having avg(buildingheight) > 80;
