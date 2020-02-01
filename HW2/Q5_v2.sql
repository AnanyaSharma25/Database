/* SQLite 3.23.1 */


create table A (
  Chef char(1),
  Dish varchar(30) );
  
insert into A values ('A','Mint Chocolate brownie');
insert into A values ('B','Upside Down Pineapple Cake');
insert into A values ('B', 'Creme brulee');
insert into A values ('B', 'Mint Chocolate brownie');
insert into A values ('C','Upside Down Pineapple Cake');
insert into A values ('C', 'Creme brulee');
insert into A values ('D', 'Apple pie');
insert into A values ('D','Upside Down Pineapple Cake');
insert into A values ('D', 'Creme brulee');
insert into A values ('E', 'Apple pie');
insert into A values ('E','Upside Down Pineapple Cake');
insert into A values ('E', 'Creme brulee');
insert into A values ('E', 'Bananas Foster');



create table B(
  Dish varchar(30));
  
insert into B values ( 'Apple pie');
insert into B values ('Upside Down Pineapple Cake');
insert into B values ( 'Creme brulee');



select chef from A 
where dish = (select dish from B);


/* returns sets of rows which have dishes in table B */