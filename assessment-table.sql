/*
CREATE TABLE Assessments
(
	Id int not null primary key identity(1,1),
	Technology nvarchar(50) not null,
	NbrQuestions int not null default 10
);
GO
INSERT INTO Assessments(Technology,NbrQuestions)
	Values('Git',5)
INSERT INTO Assessments(Technology,NbrQuestions)
	Values('SQL')
INSERT INTO Assessments(Technology,NbrQuestions)
	VALUES('C#')
INSERT INTO Assessments(Technology,NbrQuestions)
	VALUES('JavaScript')
INSERT INTO Assessments(Technology,NbrQuestions)
	Values('Angular');
GO
*/

SELECT * From students;
SELECT * From bootcamps;
SELECT * From assessments;