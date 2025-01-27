-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GourmetShopUpdateSupplier
(
    @Id int,
	@CompanyName nvarchar(40),
	@ContactName nvarchar(50),
	@ContactTitle nvarchar(40),
	@City nvarchar(40),
	@Country nvarchar(40),
	@Phone nvarchar(30),
	@Fax nvarchar(30)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	update GourmetShop.dbo.Supplier
	set CompanyName = @CompanyName, 
	    ContactName = @ContactName, 
		ContactTitle = @ContactTitle,
		City = @City, 
		Country = @Country, 
		Phone = @Phone,
		Fax = @Fax
	where Id = @Id
END
GO
