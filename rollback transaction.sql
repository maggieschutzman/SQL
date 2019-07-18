begin transaction;

insert into job (Description, Salary) values ('TEST', 1000000);
insert into job (Description, Salary) values ('TEST', 1000000);
insert into job (Description, Salary) values ('TEST', 1000000);
insert into job (Description, Salary) values ('TEST', 1000000);

rollback;

select * from job order by id desc;