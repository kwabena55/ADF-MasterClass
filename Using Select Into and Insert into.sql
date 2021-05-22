select * from information_schema.tables

where table_type like '%base%'
go

--#################  Using Select into ###################################

select table_schema, table_name into metadata2
from
information_schema.tables
where table_type like '%base%'
and table_type not like '%meta%'

--#############   Using Insert Into ###################


create table testinsertinto
(table_schema2 varchar(225) not null,
table_name2 varchar(225) not null)


insert into testinsertinto ( table_schema2,table_name2)
select  table_schema, table_name
from
information_schema.tables
where table_type like '%base%'
and table_type not like '%meta%'


