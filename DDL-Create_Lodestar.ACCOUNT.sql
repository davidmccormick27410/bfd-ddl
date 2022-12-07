SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lodestar].[ACCOUNT](
	[UIDACCOUNT] [numeric](19, 0) NULL,
	[UIDCUSTOMER] [numeric](19, 0) NULL,
	[ACCOUNTID] [varchar](64) NULL,
	[STARTTIME] [date] NULL,
	[STOPTIME] [date] NULL,
	[OPCOCODE] [varchar](64) NULL,
	[JURISCODE] [varchar](64) NULL,
	[NAME] [varchar](64) NULL,
	[SIC] [varchar](64) NULL,
	[ACCOUNTSTATUSCODE] [varchar](64) NULL,
	[REVENUECODE] [varchar](64) NULL,
	[BILLINGMODEFLAG] [char](1) NULL,
	[PRINTDETAIL] [char](1) NULL,
	[FULLDAYBILL] [char](1) NULL,
	[PREWINDOW] [numeric](5, 0) NULL,
	[POSTWINDOW] [numeric](5, 0) NULL,
	[EDI] [char](1) NULL,
	[REGIONCODE] [varchar](64) NULL,
	[CURRENCYCODE] [varchar](64) NULL,
	[OWNER] [varchar](64) NULL,
	[ACCOUNTTYPECODE] [varchar](64) NULL,
	[UIDMARKETPARTICIPANT] [numeric](19, 0) NULL,
	[LSUSER] [varchar](64) NULL,
	[LSTIME] [date] NULL,
	[SPCLHANDLECODE] [varchar](64) NULL,
	[UIDGASACCTTYPE] [numeric](19, 0) NULL,
	[FRSNUM] [varchar](32) NULL,
	[PRINTACCTINVOICE] [char](1) NULL,
	[PRINTSUMMARYINVOICE] [char](1) NULL,
	[UIDFRSDEPT] [numeric](19, 0) NULL,
	[UIDFUNDINGTYPE] [numeric](19, 0) NULL,
	[SQFOOTAGE] [float] NULL,
	[UIDACCOUNTCLASS] [numeric](19, 0) NULL,
	[UIDORGANIZATION] [numeric](19, 0) NULL,
	[INDCLASSIFICATIONCODE] [varchar](64) NULL
) ON [PRIMARY]
GO