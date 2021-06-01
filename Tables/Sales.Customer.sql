CREATE TABLE [Sales].[Customer] (
  [CustomerId] [int] IDENTITY,
  [LastName] [varchar](255) NOT NULL,
  [Phone] [varchar](25) NULL,
  [Email] [varchar](255) NOT NULL,
  [Address] [varchar](255) NULL,
  [City] [char](50) NULL,
  [State] [varchar](30) NULL,
  [Zip] [varchar](5) NOT NULL,
  PRIMARY KEY CLUSTERED ([CustomerId])
)
ON [PRIMARY]
GO