create table A (
	ProjectID varchar(10), 
	Step integer, 
	Status char(1) );

insert into A values ('P100',0,'C');
insert into A values ('P100',1,'W');
insert into A values ('P100',2,'W');
insert into A values ('P201',0,'C');
insert into A values ('P201',1,'C');
insert into A values ('P333',0,'W');
insert into A values ('P333',1,'W');
insert into A values ('P333',2,'W');
insert into A values ('P333',3,'W');

select ProjectID from A as A1 where Step=0 and Status='C' and 'W'=all(select Status from A as A2 where Step!=0 and A1.ProjectID = A2.ProjectID);
