--Heart of capstone project

CREATE VIEW Basic_PRS_VIEW as 
Select  r.id, r.Description, p.name, rl.quantity, p.price, 
		(rl.Quantity * P.Price) as 'Subtotal'
	from request r
	join RequestLines rl
		on rl.RequestId = r.Id
	Join Products p
		on p.Id = rl.ProductId;

