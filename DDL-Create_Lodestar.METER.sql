SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lodestar].[METER](
	[UIDMETER] [numeric](19, 0) NULL,
	[METERID] [varchar](64) NULL,
	[MANUFACTURER] [varchar](64) NULL,
	[SERIALNO] [varchar](64) NULL,
	[UNINUMBER] [varchar](64) NULL,
	[LSUSER] [varchar](64) NULL,
	[LSTIME] [date] NULL
) ON [PRIMARY]
GO
