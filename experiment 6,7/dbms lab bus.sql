drop database if exists 19wh1a12b5;
create schema 19wh1a12b5;
use 19wh1a12b5;
create table bus(busno varchar(20),source_station varchar(20),destination_station varchar(20),type varchar(20));
insert into bus values ('TS111','hyderabad','Warangal','AC');
insert into bus values ('TS001','hyderabad','khammam','NON-AC');
insert into bus values ('TS202','tirupati','hyderabad','AC');
insert into bus values ('TS159','hyderabad','karimnagar','AC');
insert into bus values ('TS203','khammam','Warangal','AC');
update bus b set b.type = 'NON-AC' where b.busno='TS202';
delete from bus b where b.busno='TS203';
select * from bus;
create table passenger_ticket(name varchar(20),gender varchar(20),age int,fare int);
alter table passenger_ticket add column ticket_num int;
alter table passenger_ticket add column pnr int;
insert into passenger_ticket values('tejaswini','F',19,1000,27,1236);
insert into passenger_ticket values('ramya','F',32,1000,22,1236);
insert into passenger_ticket values('ramesh','M',37,1000,23,2563);
insert into passenger_ticket values('aarush','M',18,1000,24,5698);
insert into passenger_ticket values('shahid','M',26,1000,26,2568);
select * from  passenger_ticket;
select distinct p.pnr from passenger_ticket p;
select p.name from passenger_ticket p where p.gender = 'M';
select distinct p.ticket_num,p.name from passenger_ticket p;
select p.name from passenger_ticket p where p.name like 'r%h';
select p.name from passenger_ticket p where p.age>=30 and p.age <= 45;
select p.name from passenger_ticket p where p.name like 'a%';
select p.name from passenger_ticket p order by p.name;







