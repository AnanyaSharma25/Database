
#MYSQL 5.6



create table A (
  SID int(5), 
  ClassName varchar(7), 
  Grade char(1)
);
  
insert into A values ( 123, 'ART123' , 'A');
insert into A values ( 123, 'BUS456' , 'B');  
insert into A values ( 666, 'REL100' , 'D');
insert into A values ( 666, 'ECO966' , 'A');
insert into A values ( 666, 'BUS456' , 'B');
insert into A values ( 345, 'BUS456' , 'A');
insert into A values ( 345, 'ECO966' , 'F');
  

select ClassName, count(ClassName) as Total from A
group by ClassName
order by Total;
