DECLARE @id int;
DECLARE @salary decimal (9,2);

--Select id from job where description = 'director';
--SET @id = 3;
--INSTEAD, shorter way

select @id = id, @salary = salary from job where description = 'Director';

SELECT @id as 'ID', @salary as 'Salary';

