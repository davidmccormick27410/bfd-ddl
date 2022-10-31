SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim15minuteInterval](
	[ID] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[Description] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Dim15minuteInterval] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Contains 96 rows representing every 15 minute interval in the day. Used to identify meter reading timestamps' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim15minuteInterval'
GO
