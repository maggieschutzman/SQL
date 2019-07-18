create procedure Ten_Percent_Increasess
@employee nvarchar(10)
As
Begin
	
	UPDATE Job Set
	Salary = Salary * 1.1
	where description = @employee
End

DECLARE @minsalary decimal(9,2) = 100000;

SELECT * FROM job where Salary >= @minsalary;