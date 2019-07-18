CREATE PROCEDURE Employee_Job_List
AS
BEGIN

	SELECT concat(e.lastname, ',', e.Firstname) as 'Name', j.Description as 'Job', FORMAT(j.Salary, 'C')
	From Employee e
	Join Job j
		on j.id = e.JobId
		ORDER BY Name;

END