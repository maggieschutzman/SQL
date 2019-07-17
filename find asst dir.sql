Select e.id, firstname, lastname, description
from employee e
join job j
	on j.id = e.JobId
where Description = 'Asst Director'

Select e.id, firstname, lastname
from employee e
where e.JobId = (select id from job where description = 'Asst Director')