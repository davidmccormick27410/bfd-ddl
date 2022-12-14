SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lodestar].[METERHISTORY](
	[UIDMETERHISTORY] [numeric](19, 0) NULL,
	[UIDMETER] [numeric](19, 0) NULL,
	[STARTTIME] [date] NULL,
	[SERVICETYPECODE] [varchar](64) NULL,
	[UIDACCOUNT] [numeric](19, 0) NULL,
	[UIDSERVICEPLAN] [numeric](19, 0) NULL,
	[UIDPREMISE] [numeric](19, 0) NULL,
	[STOPTIME] [date] NULL,
	[NUMDIALS] [numeric](10, 0) NULL,
	[METERMULTIPLIER] [float] NULL,
	[METEROFFSET] [float] NULL,
	[ENDUSECODE] [varchar](64) NULL,
	[UIDSERVICEPOINT] [numeric](19, 0) NULL,
	[LSUSER] [varchar](64) NULL,
	[LSTIME] [date] NULL,
	[UIDSVCPROVIDER] [numeric](19, 0) NULL,
	[UIDOWASAPIPESZ] [numeric](19, 0) NULL,
	[PASSTHROUGHFLG] [char](1) NULL,
	[ALLOCPCT] [float] NULL,
	[RATEDETFLG] [char](1) NULL,
	[DEMANDFLG] [char](1) NULL
) ON [PRIMARY]
GO
