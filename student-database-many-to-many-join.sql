
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

CREATE TABLE AssessmentScores
(
	Id int not null primary key identity(1,1),
--FK for relationship table to student
	StudentId int not null foreign key references Students(Id),
	AssessmentId int not null foreign key references Assessments(Id),
	NbrCorrect int not null
);

GO
INSERT into AssessmentScores (StudentId,AssessmentId,NbrCorrect) VALUES (1,1,6); --Git
INSERT into AssessmentScores (StudentId,AssessmentId,NbrCorrect) VALUES (1,2,9); --SQL
INSERT into AssessmentScores (StudentId,AssessmentId,NbrCorrect) VALUES (1,3,10); --C#/Java
INSERT into AssessmentScores (StudentId,AssessmentId,NbrCorrect) VALUES (1,4,7); --JS
INSERT into AssessmentScores (StudentId,AssessmentId,NbrCorrect) VALUES (1,5,11); --NG
GO
*/

--cast turning score into decimal into whole number
SELECT Concat(Lastname,', ',Firstname) as 'Name', Description as 'Bootcamp', Technology as 'Assessment', NbrQuestions, NbrCorrect, CAST(((CAST(NbrCorrect as decimal) / CAST(NbrQuestions as decimal)) * 100) as int) as 'Score'
	FROM Students s
	Join AssessmentScores sc
		on s.Id = sc.StudentId
		join Assessments a
		on a.Id = sc.AssessmentId
		join Bootcamps b
		on b.Id = s.bootcampId
	Where s.id = 1;
