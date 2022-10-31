SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Staging].[PME_Source](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Signature] [nvarchar](200) NULL
) ON [PRIMARY]
GO
