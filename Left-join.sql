SELECT firstname, lastname, description, salary
From job
left join Employee
	on Employee.JobId = job.Id
where Description = 'Assistant Supervisor'
order by Description




