USE [StoredProcedureEFDemo]
GO

--GetPrductList
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[GetPrductList]
AS
BEGIN
	SELECT * FROM dbo.Product
END
GO

--GetPrductByID
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[GetPrductByID]
@ProductId int
AS
BEGIN
	SELECT
		ProductId,
		ProductName,
		ProductDescription,
		ProductPrice,
		ProductStock
	FROM dbo.Product where ProductId = @ProductId
END
GO

--AddNewProduct
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[AddNewProduct]
@ProductName [nvarchar](max),
@ProductDescription [nvarchar](max),
@ProductPrice int,
@ProductStock int
AS
BEGIN
	INSERT INTO dbo.Product
		(
			ProductName,
			ProductDescription,
			ProductPrice,
			ProductStock
		)
    VALUES
		(
			@ProductName,
			@ProductDescription,
			@ProductPrice,
			@ProductStock
		)
END
GO

--UpdateProduct
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[UpdateProduct]
@ProductId int,
@ProductName [nvarchar](max),
@ProductDescription [nvarchar](max),
@ProductPrice int,
@ProductStock int
AS
BEGIN
	UPDATE dbo.Product
    SET
		ProductName = @ProductName,
		ProductDescription = @ProductDescription,
		ProductPrice = @ProductPrice,
		ProductStock = @ProductStock
	WHERE ProductId = @ProductId
END
GO

--DeletePrductByID

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[DeletePrductByID]
@ProductId int
AS
BEGIN
	DELETE FROM dbo.Product where ProductId = @ProductId
END
GO