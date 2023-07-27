CREATE PROCEDURE summary_order_status
	@StatusID INT
AS
BEGIN
	SELECT
		fo.OrderID,
		dc.FirstName + ' '+ dc.LastName AS CustomerName,
		dp.ProductName,
		fo.Quantity,
		dso.StatusOrder
	FROM
		FactSalesOrder fo
	INNER JOIN
		DimCustomer dc ON fo.CustomerID = dc.CustomerID
	INNER JOIN
		DimProduct dp ON fo.ProductID = dp.ProductID
	INNER JOIN
		DimStatusOrder dso ON fo.StatusID =dso.StatusID
	WHERE
		dso.StatusID = @StatusID;
END
