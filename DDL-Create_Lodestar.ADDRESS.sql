SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lodestar].[ADDRESS](
	[UIDADDRESS] [numeric](19, 0) NULL,
	[ADDRESS1] [varchar](64) NULL,
	[ADDRESS2] [varchar](64) NULL,
	[ADDRESS3] [varchar](64) NULL,
	[CITY] [varchar](64) NULL,
	[STATE] [varchar](64) NULL,
	[ZIP] [varchar](64) NULL,
	[COUNTY] [varchar](64) NULL,
	[COUNTRY] [varchar](64) NULL,
	[LSUSER] [varchar](64) NULL,
	[LSTIME] [date] NULL
) ON [PRIMARY]
GO
