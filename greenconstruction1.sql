drop database GreenConstruction;

create database GreenConstruction;

Use GreenConstruction;
/*comments*/
/*Drop table tbl_Site;
Drop table tbl_Client;
Drop table tbl_Roof;
Drop table tbl_Building;
Drop table tbl_Branch;
Drop table tbl_Country;*/



Create table tbl_country (
CountryID smallint not null ,
CountryCapital varchar(50),
CountryName Varchar(50) not null,
Constraint crty_pk_crtyID primary key (CountryID)) engine innodb;

Create table tbl_Branch(
BranchID int not null ,
BranchName varchar(50) not null,
BranchAddress varchar(50) not null,
BranchEmail varchar(50),
BranchPhone char(10) not null,
B_CountryID  smallint not null,
Constraint brch_pk_brchID primary key (BranchID),
Constraint brch_fk_crtyID  foreign key (B_countryID) references tbl_Country(CountryID) )engine innodb  ;

Create table tbl_Building(
BuildingID int not null ,
BuildingName varchar(50) not null,
BuildingType Varchar(30) default 'Two Storey' not null,
BuildingHeight int not null,
BuildingHSurface varchar(5) not null,
constraint building_ck_bldingheight check (BuildingHeight >0),
Constraint bld_pk_bldID primary key (BuildingID))engine innodb ;


Create table tbl_Roof(
RoofID smallint not null ,
RoofType Varchar(30) default 'pitched' not null,
RoofAngle int not null,
RoofHSurface varchar(5) not null,
RoofSoilDepth int not null,
RoofWeight int not null,
RoofWaterRet varchar(5) not null,
constraint roof_ck_rfweight check ( RoofWeight >0),
Constraint  roof_pk_roofID primary key (RoofID))engine innodb ;

Create table tbl_Client(
ClientID int not null,
ClientName varchar(50) not null,
ClientAddress varchar (50) not null,
ClientEmail varchar (30) not null,
ClientPhone char(10) not null,
ClientVatNum int,
CompanyName varchar (50),
CompanyContactName varchar (50),
CompanyDesc  varchar (50),
PPSNum int,
ClientTitle char(5),
ClientFName varchar(50),
ClientLName varchar(50),
ClientType varchar(15) not null,
Constraint  client_pk_ClientID primary key (ClientID))engine innodb;

Create table tbl_Site(
StartDate date not null,
SiteAddress varchar(50) not null,
EndDate date not null,
S_BranchID int not null,
S_RoofID smallint,
S_BuildingID int,
C_ClientID int,
Constraint  site_pk_StartDate primary key (StartDate),
Constraint site_fk_BrchID  foreign key (S_BranchID) references tbl_Branch(BranchID),
Constraint site_fk_RoofID  foreign key (S_RoofID) references tbl_Roof(RoofID),
Constraint site_fk_BldgID  foreign key (S_BuildingID) references tbl_Building(BuildingID),
Constraint site_fk_ClID  foreign key (C_ClientID) references tbl_Client(ClientID)
)engine innodb ;


