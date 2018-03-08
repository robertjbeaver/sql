SELECT OrderNumber, CustomerName, OrderDate, a.InvoiceID, sum(b.Quantity * c.ListPrice) as 'Invoice Total'
	from invoice a, lineitem b, product c
	where a.InvoiceID = 1
    and a.InvoiceID = b.InvoiceID
    and b.ProductID = c.ProductID
    group by a.InvoiceID;
		