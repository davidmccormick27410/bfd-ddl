SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMeasurementType](
	[ID] [int] NOT NULL,
	[NaturalKey] [smallint] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_DimMeasurementType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Contains measurement types for each utility. Examples include demand and consumption' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimMeasurementType'
GO
