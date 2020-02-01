#PostgreSQL 9.6



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
  

select distinct A.Chef from A 
join 
B 
on A.Dish = B.Dish
group by A.Chef
having count(distinct A.Dish) = (select count( distinct B.Dish) from B);


/* Returns the chefs who can  make any of the 3 dishes by taking a join of the tables. The join of the table is compared against a chef who can cook all 3 dishes given in table B. */
