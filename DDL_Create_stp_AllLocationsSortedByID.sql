USE [BFD]
GO

/****** Object:  StoredProcedure [dbo].[stp_AllLocationsSortedByID]    Script Date: 12/14/2022 1:54:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[stp_AllLocationsSortedByID] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SPOTSID, FormalName, GrossAreaSQFT, Status, MMID, MMDescription, LSServicePointID, LSServicePointName
	FROM DimLocation where SPOTSID IS NOT NULL AND MMID IS NOT NULL AND LSServicePointID IS NOT NULL ORDER BY SPOTSID, MMID, LSServicePointID 
END
GO


