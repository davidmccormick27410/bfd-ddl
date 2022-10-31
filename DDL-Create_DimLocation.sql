SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLocation](
	[ID] [int] NOT NULL,
	[SPOTSID] [int] NULL,
	[FormalName] [nchar](10) NULL,
	[GrossAreaSQFT] [int] NULL,
	[Status] [char](1) NULL,
	[MMID] [nvarchar](30) NULL,
	[MMDescription] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimLocation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Contains locations on campus, including those not listed in SPOTS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimLocation'
GO
