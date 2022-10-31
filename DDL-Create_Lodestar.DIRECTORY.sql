SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Lodestar].[DIRECTORY](
	[UIDDIRECTORY] [numeric](19, 0) NULL,
	[DIRECTORYCODE] [varchar](64) NULL,
	[NAME] [varchar](64) NULL,
	[PHONE1] [varchar](32) NULL,
	[PHONE2] [varchar](32) NULL,
	[FAX] [varchar](32) NULL,
	[PAGER] [varchar](32) NULL,
	[EMAIL] [varchar](64) NULL,
	[TITLE] [varchar](64) NULL,
	[NAMEOFFILE] [varchar](64) NULL,
	[PREFIX] [varchar](64) NULL,
	[FIRSTNAME] [varchar](64) NULL,
	[MIDDLEINITIAL] [varchar](64) NULL,
	[LASTNAME] [varchar](64) NULL,
	[SUFFIX] [varchar](64) NULL,
	[UIDADDRESS] [numeric](19, 0) NULL,
	[LSUSER] [varchar](64) NULL,
	[LSTIME] [date] NULL
) ON [PRIMARY]
GO
