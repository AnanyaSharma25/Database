# MYSQL 5.6

create table A (
  ProjectID varchar(5), 
  Step int(1), 
  Stat_us char(1)
);
  
insert into A values ( 'P100',0,'C');
insert into A values ( 'P100',1,'W');  
insert into A values ( 'P100',2,'W');
insert into A values ( 'P201',0,'C');
insert into A values ( 'P201',1,'C');
insert into A values ( 'P333',0,'W');
insert into A values ( 'P333',1,'W');
insert into A values ( 'P333',2,'W');
insert into A values ( 'P333',3,'W');


select ProjectID from A 
where ProjectID in(select ProjectID from A where Stat_us = 'C' and Step = 0 ) and 
Stat_us = 'W' and Step = 1;

