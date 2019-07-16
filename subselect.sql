-- Subselect
Select firstname, lastname, description, salary
from Employee
join job
	on job.Id = JobId
where salary > (

	Select AVG(salary) as 'Salary'
	from Employee
	join job
		on job.Id = JobId
		);