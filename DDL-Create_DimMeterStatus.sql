SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMeterStatus](
	[ID] [int] NOT NULL,
	[Value] [char](1) NOT NULL,
	[Description] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_DimMeterStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Indicates meter status: active, inactive, retired' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimMeterStatus'
GO
