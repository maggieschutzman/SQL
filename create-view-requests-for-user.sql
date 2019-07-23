-- display Request for a user
CREATE VIEW User_Requests
Select u.Id, u.Username, CONCAT(u.firstname, ' ', u.Lastname) as 'Name'
	r.id as 'Request Id', r. Description
from Users u
	Join requests r
		on r.UserId = u.id

Select * from User_Requests

