create procedure Ten_Percent_Increasess
@employee nvarchar(10)
As
Begin
	
	UPDATE Job Set
	Salary = Salary * 1.1
	where description = @employee
End
