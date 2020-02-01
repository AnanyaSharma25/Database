create table A (
	SID integer NOT NULL, 
	ClassName varchar(25) NOT NULL, 
	Grade char(1) NOT NULL );
  
insert into A values (123,'ART123','A');
insert into A values (123,'BUS456','B');
insert into A values (666,'REL100','D');
insert into A values (666,'ECO966','A');
insert into A values (666,'BUS456','B');
insert into A values (345,'BUS456','A');
insert into A values (345,'ECO966','F');

select ClassName,count(distinct SID) as Total from A group by ClassName order by Total,ClassName;
