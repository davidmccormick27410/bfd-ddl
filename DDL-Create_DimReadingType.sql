SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimReadingType](
	[ID] [int] NOT NULL,
	[Value] [char](1) NOT NULL,
	[Description] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_DimReadingType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Indicates whether reading was manual or automated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimReadingType'
GO
