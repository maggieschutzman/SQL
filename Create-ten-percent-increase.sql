create procedure Ten_Percent_Increases
@employee nvarchar(10)
As
Begin
Select j.Salary * 1.10 from Job j
	where description = @employee
End
