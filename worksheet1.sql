use greenconstruction;

select * from tbl_country;
describe tbl_country;

select branchaddress, branchemail
from tbl_branch;

select branchaddress as address, branchemail as email
from tbl_branch;

select branchphone as 'Phone Number' , branchaddress as Address
from tbl_branch;

select branchname as Name, branchemail as Email, branchphone as 'Phone Number'
from tbl_branch;

select countrycapital as 'Capital City', countryName as Country
from tbl_country;

select clientname as Name , companyName as 'Company'
from tbl_client;

select DISTINCT buildingtype as 'Type of Building'
from tbl_building;

select 12 + 14 from dual;

select siteaddress as 'Site Address', startdate as 'Start Date', enddate as 'End Date'
from tbl_site;

select rooftype as 'Roof Type', roofangle as 'Roof Angle', roofsoildepth as 'Soil Depth'
from tbl_roof;

select clientName as 'Client Name', clientEmail as 'Client Email', clientphone as 'Phone Number' 
from tbl_client;

select companyName as 'Company Name'
from tbl_client;

select sysdate() from dual;






