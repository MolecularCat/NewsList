USE [News]
GO
/****** Object:  Table [dbo].[News_table]    Script Date: 04.03.2023 11:54:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_News_table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News_table] ON 
GO
INSERT [dbo].[News_table] ([Id], [Title], [Text], [Date]) VALUES (1, N'Время ожидания поездов на станциях БКЛ в метро Москвы сократилось почти вдвое', N'Основа парка БКЛ - новейшие российские поезда «Москва-2020», одни из самых удобных в мире: с широкими дверьми, со сквозным проходом между вагонами, с USB-разъемами для зарядки гаджетов, тише предыдущих моделей.', CAST(N'2023-03-03T14:29:43.373' AS DateTime))
GO
INSERT [dbo].[News_table] ([Id], [Title], [Text], [Date]) VALUES (2, N'2 новых участка «Парка Яуза» начали обустраивать в Москве', N'Сотрудники комплекса городского хозяйства Москвы начали обустройство двух новых участков будущего «Парка Яуза» на северо-востоке города, заявил заммэра столицы по вопросам ЖКХ и благоустройства Петр Бирюков', CAST(N'2023-03-03T14:29:57.460' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[News_table] OFF
GO
ALTER TABLE [dbo].[News_table] ADD  CONSTRAINT [DF_News_table_Date]  DEFAULT (getdate()) FOR [Date]
GO
