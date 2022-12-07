SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactElectricMeterReadings](
	[ID] [int] NOT NULL IDENTITY(1,1),
	[MMNaturalKey] [bigint] NULL,
	[PMENaturalKey] [bigint] NULL,
	[MeterID] [int] NOT NULL,
	[Value] [float] NOT NULL,
	[MeasurementTypeID] [int] NOT NULL,
	[MeasurementDateID] [int] NOT NULL,
	[MeasurementTimeID] [int] NOT NULL,
	[ReadingTypeID] [int] NOT NULL,
 CONSTRAINT [PK_FactElectricMeterReadings] PRIMARY KEY CLUSTERED 
(
	[MeterID] ASC,
	[MeasurementTypeID] ASC,
	[MeasurementDateID] ASC,
	[MeasurementTimeID] ASC,
	[ReadingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-MeasurementDate] ON [dbo].[FactElectricMeterReadings]
(
	[MeasurementDateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-MeasurementTime] ON [dbo].[FactElectricMeterReadings]
(
	[MeasurementTimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-MeasurementTypeID] ON [dbo].[FactElectricMeterReadings]
(
	[MeasurementTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-MeterID] ON [dbo].[FactElectricMeterReadings]
(
	[MeterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-ReadingType] ON [dbo].[FactElectricMeterReadings]
(
	[ReadingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactElectricMeterReadings]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeterReadings_MeasurementDate] FOREIGN KEY([MeasurementDateID])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactElectricMeterReadings] CHECK CONSTRAINT [FK_ElectricMeterReadings_MeasurementDate]
GO
ALTER TABLE [dbo].[FactElectricMeterReadings]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeterReadings_MeasurementTime] FOREIGN KEY([MeasurementTimeID])
REFERENCES [dbo].[Dim15minuteInterval] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FactElectricMeterReadings] CHECK CONSTRAINT [FK_ElectricMeterReadings_MeasurementTime]
GO
ALTER TABLE [dbo].[FactElectricMeterReadings]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeterReadings_MeasurementType] FOREIGN KEY([MeasurementTypeID])
REFERENCES [dbo].[DimMeasurementType] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FactElectricMeterReadings] CHECK CONSTRAINT [FK_ElectricMeterReadings_MeasurementType]
GO
ALTER TABLE [dbo].[FactElectricMeterReadings]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeterReadings_Meter] FOREIGN KEY([MeterID])
REFERENCES [dbo].[DimElectricMeter] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FactElectricMeterReadings] CHECK CONSTRAINT [FK_ElectricMeterReadings_Meter]
GO
ALTER TABLE [dbo].[FactElectricMeterReadings]  WITH CHECK ADD  CONSTRAINT [FK_ElectricMeterReadings_ReadingType] FOREIGN KEY([ReadingTypeID])
REFERENCES [dbo].[DimReadingType] ([ID])
GO
ALTER TABLE [dbo].[FactElectricMeterReadings] CHECK CONSTRAINT [FK_ElectricMeterReadings_ReadingType]
GO
EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Contains electric meter readings' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactElectricMeterReadings'
GO
