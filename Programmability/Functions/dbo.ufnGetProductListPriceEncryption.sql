SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ufnGetProductListPriceEncryption](@ProductID [int], @OrderDate [datetime])
RETURNS [MONEY] 
with encryption
as 

BEGIN
    DECLARE @ListPrice money;

    SELECT @ListPrice = plph.[ListPrice] 
    FROM [Production].[Product] p 
        INNER JOIN [Production].[ProductListPriceHistory] plph 
        ON p.[ProductID] = plph.[ProductID] 
            AND p.[ProductID] = @ProductID 
            AND @OrderDate BETWEEN plph.[StartDate] AND COALESCE(plph.[EndDate], CONVERT(datetime, '99991231', 112)); -- Make sure we get all the prices!

    RETURN @ListPrice;
END;
GO