/* SQLite 3.23.1 */



create table A (
  Name varchar(7),
  Address char (1),
  ID int(2), 
  SameFam int(2)
);
  
insert into A values ('Alice', 'A',10, NULL);
insert into A values ('Bob','B',15,NULL);  
insert into A values ('Carmen','C',22,NULL);
insert into A values ('Diego','A',9,10);
insert into A values ('Ella','B',3,15);
insert into A values ('Farkhad','D',11,NULL);

delete from A
where ID IN (select SameFam from A);



select * from A;
