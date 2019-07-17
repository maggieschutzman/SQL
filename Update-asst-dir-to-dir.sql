update employee set
jobid = (select id from job where description = 'director')
where JobId = (select id from job where description = 'Asst Director')



Select id, firstname, lastname, jobid
from employee
where JobId = (select id from job where description = 'Director')
