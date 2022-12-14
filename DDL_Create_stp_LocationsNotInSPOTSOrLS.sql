USE [BFD]
GO

/****** Object:  StoredProcedure [dbo].[stp_LocationsNotInSPOTSOrLS]    Script Date: 12/14/2022 2:07:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[stp_LocationsNotInSPOTSOrLS]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SPOTSID, FormalName, GrossAreaSQFT, Status, MMID, MMDescription, LSServicePointID, LSServicePointName
	FROM DimLocation where SPOTSID is null and LSServicePointID is null order by MMID
END
GO


