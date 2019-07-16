-- Join view Employee/Job showing salary
-- Sorting by salary and last name
SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
FORMAT(Salary, 'C') as 'Salary'
FROM Employee
Join Job
	on JobId = Job.Id
order by salary desc, name desc;
