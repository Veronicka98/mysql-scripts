use greenconstruction;

set autocommit = off;

##check if rollback works
-- 

select * from tbl_country;

insert into tbl_country values(111, 'Veronika', 'idk');

rollback;

-- 

