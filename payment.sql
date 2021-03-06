USE [paymentsdb]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 03-Feb-21 5:35:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[Id] [varchar](64) NOT NULL,
	[Amount] [numeric](10, 2) NOT NULL,
	[Currency] [varchar](3) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[payments] ADD  CONSTRAINT [DF_payments_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[payments] ADD  CONSTRAINT [DF_payments_UpdatedAt]  DEFAULT (getdate()) FOR [UpdatedAt]
GO
