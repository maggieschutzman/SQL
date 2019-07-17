SELECT firstname, lastname, description, salary, 'Yes' as 'SR. EXEC'
From job
join Employee
	on Employee.JobId = job.Id
where description = 'President' or description = 'VP'
union
SELECT firstname, lastname, description, salary, 'NO' as 'SR. EXEC'
From job
join Employee
	on Employee.JobId = job.Id
where NOT (description = 'President' or description = 'VP')