--CREATE DATABASE BootcampDb;
/*
CREATE TABLE Students
(
	Id int not null primary key identity(1, 1),
	Firstname nvarchar(30) not null,
	Lastname nvarchar(50) not null,
	Email nvarchar(255),
	Phone nvarchar(10),
	DateEnrolled DateTime not null default getdate()
);

Insert into Students (Firstname, Lastname)
	Values ('Jane', 'Doe');

Select * from students;

INSERT into Students (Firstname, Lastname, Email, Phone)
	Values ('Alex', 'Chan', 'frozenchanana@gmail.com', '5135605531'),
INSERT into Students (Firstname, Lastname, Email, Phone)
	Values	('Brailee', 'Begley', 'brail33na11@gmail.com', '5134351173'),
INSERT into Students (Firstname, Lastname, Email, Phone)
	Values	('Briana', 'Presley', 'presley.briana@gmail.com', '5132549808'),
INSERT into Students (Firstname, Lastname, Email, Phone)
	Values	('Glenn', 'Lindmark', 'lindmark421@gmail.com', '5134849323'),
INSERT into Students (Firstname, Lastname, Email, Phone)
	Values	('Jesse', 'Kyle', 'jkylecarpentry@gmail.com', '5136551990'),
INSERT into Students (Firstname, Lastname, Email, Phone)
	Values	('Maggie', 'Schutzman', 'maggieschutzman2@gmail.com', '8594797837'),
INSERT into Students (Firstname, Lastname, Email, Phone)
	Values	('Marianne', 'Lindardos', 'mlinardos.edu@gmail.com', '5137858178'),
INSERT into Students (Firstname, Lastname, Email, Phone)
	Values	('Titus', 'Moore', 'tmoore@edgewebware.com', '9374741083');
	

CREATE TABLE Bootcamps
(
	Id int not null primary key identity(1,1),
	Description nvarchar(80) not null
);
	
INSERT into Bootcamps (Description) VALUES ('.Net');
INSERT into Bootcamps (Description) VALUES ('Java');

Select * from Bootcamps;


ALTER TABLE Students
	Add BootcampId int null
		foreign key references Bootcamps(Id);

Select * from Students;
*/


Update Students 
Set	bootcampid = (Select id from bootcamps where description like '%Java%')
Where Lastname = 'Doe';

Update Students
Set	bootcampid = (Select id from bootcamps where description like '%.net%')
Where Lastname <> 'Doe';

select * from students;
select * from bootcamps;
