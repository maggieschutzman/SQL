use Master;
go
DROP DATABASE IF EXISTS NEWSqlPrs;
go
CREATE DATABASE NEWSqlPrs;
go
Use NEWSqlPrs;
go

CREATE TABLE Users (
	Id int primary key identity(1,1),
	Username nvarchar(30) not null unique,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12),
	Email nvarchar(255),
	IsReviewer bit not null default 1,
	IsAdmin bit not null default 1
)

INSERT INTO Users(Username,Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	VALUES('Potatokitty','Sigma', 'Maggie', 'Schutzman', '859-479-7837', 'Maggieschutzman2@gmail.com',1,1);
INSERT INTO Users(Username,Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	VALUES('ZachAttack','Sigma', 'Zach', 'Zumwalde', '859-470-5622', 'zach0861@gmail.com',1,0);
INSERT INTO Users(Username,Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	VALUES('Yuna','Sigma', 'Julie', 'Mardis', '859-469-6721', 'Jschutzman@gmail.com',1,0);

CREATE TABLE Vendor
(
	Id int primary key identity(1,1),
	Code nvarchar(30) not null unique,
	Name nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(2) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12),
	Email nvarchar(255)
)

INSERT INTO Vendor(Code,Name,City,State,Zip)
	VALUES('Raz01', 'Razr', 'Santa Cruz', 'CA', '41010')
INSERT INTO Vendor(Code,Name,City,State,Zip)
	VALUES('HP22', 'HP', 'San Francisco', 'CA', '41023')
INSERT INTO Vendor(Code,Name,City,State,Zip)
	VALUES('MSI03', 'MSI', 'Santa Cruz', 'CA', '41010')

CREATE TABLE Product
(
	Id int primary key identity(1,1),
	PartNbr nvarchar(30) not null unique,
	Name nvarchar(30) not null,
	Price dec(11,2) not null,
	Unit nvarchar(30) not null,
	Photopath nvarchar(30),
	VendorId int foreign key references Vendor(Id) not null
)

INSERT INTO Product(PartNbr,Name,Price,Unit,VendorId)
	VALUES ('Keyb11','Keyboard',64.00, '1', 1)
INSERT INTO Product(PartNbr,Name,Price,Unit,VendorId)
	VALUES('Mon22','Monitor',166.00,1,2)
INSERT INTO Product(PartNbr,Name,Price,Unit,VendorId)
	VALUES('Mou33','Mouse',43.00,'1',3)

CREATE TABLE Request
(
	Id int primary key identity(1,1),
	Description nvarchar(80) not null,
	Justification nvarchar(80) not null,
	RejectionReason nvarchar(80) null, --fix this to occur if rejected
	DeliveryMode nvarchar(20) not null default 'Pickup',
	Status nvarchar(10) not null default 'New',
	Total dec(11,2) default 0, SUM dec,
	UserId int foreign key references Users(Id)
)
CREATE TABLE RequestLine
(
	Id int primary key identity(1,1),
	RequestId int foreign key references Request(Id) not null,
	ProductId int foreign key references Product(Id) not null,
	Quantity int not null default 1 CHECK(quantity >=1),
)
INSERT INTO Requestline(RequestId,ProductId,Quantity)

INSERT INTO Request(Description,Justification,Total,Userid)
	VALUES ('Mouse, keyboard','Broken mouse', 43.00,1)
INSERT INTO Request(Description,Justification,Total,Userid)
	VALUES ('Keyboard','Missing key', 64.00,1)
INSERT INTO Request(Description,Justification,Total,Userid)
	VALUES ('Monitor','Not big enough', 166.00,2)
INSERT INTO Request(Description,Justification,Total,Userid)
	VALUES ('Monitor','Broken screen',166.00,1)
SELECT * FROM RequestLine

SELECT Description,Justification,Total,Userid FROM Request r
join Product on product.Id = r.Description
join Users on Users.Id = r.UserId
join Requestline on R.Id = requestline.RequestId



--Gives us Id of request, Description, Status of Request, Name of user,
--Product Name, Quantity, Price, and Subtotal
--Cast to strings so they could use null to display last row