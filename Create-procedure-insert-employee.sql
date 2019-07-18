CREATE PROCEDURE Insert_Employee

	@firstname nvarchar (30),
	@lastname nvarchar (30),
	@jobid int

as 
begin
	INSERT into Employee (Firstname, Lastname, JobId)
		VALUES (@firstname, @lastname, @jobid)

end
