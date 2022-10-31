SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lodestar].[INVHEADER](
	[UIDINVOICE] [numeric](19, 0) NULL,
	[INVOICEID] [varchar](64) NULL,
	[ACCOUNTID] [varchar](64) NULL,
	[FRSNUM] [varchar](64) NULL,
	[CUSTOMERID] [varchar](64) NULL,
	[BILLDATE] [date] NULL,
	[DUEDATE] [date] NULL,
	[INVOICEAMOUNT] [float] NULL,
	[PASTDUE] [float] NULL,
	[PAYMENT] [float] NULL,
	[PREVINVAMT] [float] NULL,
	[ADDRESS] [varchar](64) NULL,
	[CITY] [varchar](64) NULL,
	[STATE] [varchar](64) NULL,
	[POSTALCODE] [varchar](10) NULL,
	[LSUSER] [varchar](64) NULL,
	[LSTIME] [date] NULL,
	[INVOICETYPE] [varchar](64) NULL
) ON [PRIMARY]
GO
