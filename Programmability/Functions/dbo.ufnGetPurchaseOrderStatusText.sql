SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ufnGetPurchaseOrderStatusText](@Status [tinyint])
RETURNS [nvarchar](15) 
AS 
-- Returns the sales order status text representation for the status value.
BEGIN
    DECLARE @ret [nvarchar](15);

    SET @ret = 
        CASE @Status
           
            WHEN 2 THEN 'Not Approved'
            WHEN 3 THEN 'Rejected'
            WHEN 5 THEN 'Complete'
            ELSE '** Invalid **'
        END;
    
    RETURN @ret
END;
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Scalar function returning the text representation of the Status column in the PurchaseOrderHeader table.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetPurchaseOrderStatusText'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Input parameter for the scalar function ufnGetPurchaseOrdertStatusText. Enter a valid integer.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetPurchaseOrderStatusText', 'PARAMETER', N'@Status'
GO