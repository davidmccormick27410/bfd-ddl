SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimElectricMeter](
	[ID] [int] NOT NULL IDENTITY(1,1) ,
	[MMNaturalKey] [nvarchar](50) NOT NULL,
	[MMMeterID] [nvarchar](30) NOT NULL,
	[Location] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[ReadingType] [int] NOT NULL,
	[MMSN] [nvarchar](200) NULL,
	[BillingNaturalKey] [bigint] NOT NULL,
	[BillingLSMeterID] [nvarchar](30) NOT NULL,
	[StartTime] [int] NOT NULL,
	[StopTime] [int] NULL,
	[PMENaturalKey] [bigint] NULL,
	[PMEMeterID] [nvarchar](50) NULL,
	[PMEMeterSN] [nvarchar](200) NULL,
	[RowStartDate] [date] NOT NULL,
	[RowEndDate] [date] NULL,
	[RowChangeReasonID] [int] NULL,
	[RowCurrentIndicator] [bit] NULL,
 CONSTRAINT [PK_DimElectricMeter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimElectricMeter]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeter_DateStart] FOREIGN KEY([StartTime])
REFERENCES [dbo].[DimDate] ([DateKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DimElectricMeter] CHECK CONSTRAINT [FK_ElectricMeter_DateStart]
GO
ALTER TABLE [dbo].[DimElectricMeter]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeter_DateStop] FOREIGN KEY([StopTime])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[DimElectricMeter] CHECK CONSTRAINT [FK_ElectricMeter_DateStop]
GO
ALTER TABLE [dbo].[DimElectricMeter]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeter_Location] FOREIGN KEY([Location])
REFERENCES [dbo].[DimLocation] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DimElectricMeter] CHECK CONSTRAINT [FK_ElectricMeter_Location]
GO
ALTER TABLE [dbo].[DimElectricMeter]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeter_ReadingType] FOREIGN KEY([ReadingType])
REFERENCES [dbo].[DimReadingType] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DimElectricMeter] CHECK CONSTRAINT [FK_ElectricMeter_ReadingType]
GO
ALTER TABLE [dbo].[DimElectricMeter]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeter_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[DimMeterStatus] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DimElectricMeter] CHECK CONSTRAINT [FK_ElectricMeter_Status]
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From Meterman, the METER_SN column in the METER_INFO table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'MMNaturalKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From Meterman, the METER_SN column in the METER_INFO table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'MMMeterID'
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From Meterman, the MREAD_PROP_VALUE column in the METER_READING_PROPERTIES table. The value is by using the query SELECT MREAD_PROP_VALUE FROM METER_READING_PROPERTIES WHERE MREAD_PROP_NAME = ''MANUFACSERIALNUM'' AND METER_ID = 
[the value found in MMMeterID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'MMSN'
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From Lodestar, the UIDMETER column in the METER table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'BillingNaturalKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From Lodestar, the METERID column in the METER table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'BillingLSMeterID'
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From PME, the ID column in the SOURCE table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'PMENaturalKey'
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From PME, the NAME column in the SOURCE table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'PMEMeterID'
GO
EXEC sys.sp_addextendedproperty @name=N'Column Description', @value=N'From PME, the Signature column in the SOURCE table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter', @level2type=N'COLUMN',@level2name=N'PMEMeterSN'
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Dimension for electric meters. Contains columns indicating references to Meterman (MM), Lodestar (LS), and PME. Since not all meters are in PME, those columns related to PME can be null' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimElectricMeter'
GO
