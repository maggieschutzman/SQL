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
*/
Select * from students;