DECLARE @LowSalary int;
DECLARE @HighSalary int;

SET @LowSalary = 90000;
SET @HighSalary = 115000;

SELECT firstname, lastname, description, salary
From job
join Employee
	on Employee.JobId = job.Id
where salary >= @LowSalary and salary < @HighSalary;