SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lodestar].[TRANSACTIONID](
	[TRANSACTIONID] [varchar](64) NULL,
	[CANCELTRANSID] [varchar](64) NULL,
	[TRANSTYPECODE] [varchar](64) NULL,
	[DESCRIPTION] [varchar](254) NULL,
	[ISDEFAULT] [char](1) NULL,
	[WEIGHT] [numeric](10, 0) NULL,
	[DURATIONDAYS] [numeric](10, 0) NULL,
	[LSUSER] [varchar](64) NULL,
	[LSTIME] [date] NULL
) ON [PRIMARY]
GO
