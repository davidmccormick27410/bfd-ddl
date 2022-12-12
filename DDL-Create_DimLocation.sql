USE [BFD]
GO

/****** Object:  Table [dbo].[DimLocation]    Script Date: 12/12/2022 10:31:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimLocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SPOTSID] [nvarchar](20) NULL,
	[FormalName] [nchar](75) NULL,
	[GrossAreaSQFT] [int] NULL,
	[Status] [char](1) NULL,
	[MMID] [nvarchar](30) NULL,
	[MMDescription] [nvarchar](50) NULL,
	[LSServicePointID] [nvarchar](64) NULL,
	[LSServicePointName] [nvarchar](64) NULL,
 CONSTRAINT [PK_DimLocation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Contains locations on campus, including those not listed in SPOTS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimLocation'
GO


