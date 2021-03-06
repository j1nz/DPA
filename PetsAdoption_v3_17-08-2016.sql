USE [PetsAdoption]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (2, N'user')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (3, N'sale')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](100) NULL,
	[quantity] [int] NULL,
	[productType] [varchar](50) NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PetType]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PetType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PetType](
	[petTypeID] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PetType] PRIMARY KEY CLUSTERED 
(
	[petTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[PetType] ON
INSERT [dbo].[PetType] ([petTypeID], [typeName]) VALUES (1, N'Trong nha')
INSERT [dbo].[PetType] ([petTypeID], [typeName]) VALUES (2, N'Ngoai san')
SET IDENTITY_INSERT [dbo].[PetType] OFF
/****** Object:  Table [dbo].[Member]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Member](
	[memberID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[age] [int] NULL,
	[address] [nvarchar](200) NULL,
	[position] [nvarchar](50) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[memberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Member] ON
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (1, N'Le The Thang', 20, N'Da Nang', N'admin')
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (2, N'Tran Linh Quan', 20, N'Kon Tum', N'PM')
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (3, N'Nguyen Thi Ban', 22, N'Nghe An', N'PM')
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (4, N'Le Tran Vu', 21, N'Quang Ngai', N'PM')
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[Health]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Health]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Health](
	[healthID] [int] IDENTITY(1,1) NOT NULL,
	[healthName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Health] PRIMARY KEY CLUSTERED 
(
	[healthID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Health] ON
INSERT [dbo].[Health] ([healthID], [healthName]) VALUES (1, N'Sick')
INSERT [dbo].[Health] ([healthID], [healthName]) VALUES (2, N'Good')
INSERT [dbo].[Health] ([healthID], [healthName]) VALUES (3, N'H5N1')
SET IDENTITY_INSERT [dbo].[Health] OFF
/****** Object:  Table [dbo].[Bill]    Script Date: 08/17/2016 17:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bill]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bill](
	[billID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NULL,
	[quantity] [int] NULL,
	[dateBuy] [datetime] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[billID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Account]    Script Date: 08/17/2016 17:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](250) NULL,
	[email] [varchar](250) NULL,
	[memberID] [int] NULL,
	[roleID] [int] NULL,
	[dateCreate] [datetime] NULL,
	[dateExpires] [datetime] NULL,
	[avatar] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([username], [password], [email], [memberID], [roleID], [dateCreate], [dateExpires], [avatar]) VALUES (N'admin', N'12345', N'admin@gmail.com', 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Account] ([username], [password], [email], [memberID], [roleID], [dateCreate], [dateExpires], [avatar]) VALUES (N'user', N'21232f297a57a5a743894a0e4a801fc3', N'user@gmail.com', 1, 2, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Donate]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Donate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Donate](
	[donateID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](150) NULL,
	[dateDonate] [datetime2](7) NULL,
	[quantity] [int] NULL,
	[note] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Donate] PRIMARY KEY CLUSTERED 
(
	[donateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Donate] ON
INSERT [dbo].[Donate] ([donateID], [username], [dateDonate], [quantity], [note]) VALUES (1, N'admin', CAST(0x070000000000C03B0B AS DateTime2), 2, N'')
INSERT [dbo].[Donate] ([donateID], [username], [dateDonate], [quantity], [note]) VALUES (2, N'admin', CAST(0x070000000000C03B0B AS DateTime2), 3, N'')
INSERT [dbo].[Donate] ([donateID], [username], [dateDonate], [quantity], [note]) VALUES (3, N'admin', CAST(0x070000000000C03B0B AS DateTime2), 1, N'')
SET IDENTITY_INSERT [dbo].[Donate] OFF
/****** Object:  Table [dbo].[Sale]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sale]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sale](
	[username] [varchar](150) NOT NULL,
	[billID] [int] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[billID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pet]    Script Date: 08/17/2016 17:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pet](
	[petID] [int] IDENTITY(1,1) NOT NULL,
	[petName] [varchar](50) NULL,
	[age] [int] NULL,
	[petTypeID] [int] NULL,
	[nickname] [nvarchar](50) NULL,
	[healthID] [int] NULL,
	[status] [int] NULL,
	[donateID] [int] NULL,
	[username] [varchar](150) NULL,
	[dateReceived] [datetime] NULL,
	[avatar] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Pet] PRIMARY KEY CLUSTERED 
(
	[petID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pet] ON
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (1, N'Chó', 5, NULL, N'KiO', NULL, 1, NULL, N'admin', CAST(0x0000000800000000 AS DateTime), N'', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (2, N'Meo', 2, 1, N'Miu', NULL, 1, NULL, N'admin', CAST(0x0000A65F00B8EB74 AS DateTime), N'', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (3, N'Alaska', 2, 1, N'Lu', NULL, 1, NULL, N'admin', CAST(0x0000A65F00B8EB74 AS DateTime), N'', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (4, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (5, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (6, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (7, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (8, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (9, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (10, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (11, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (12, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F011E8B14 AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (13, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (14, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (15, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (16, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (17, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (18, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (19, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (20, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (21, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (22, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (23, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (24, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (25, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (26, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (27, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (28, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (29, N'Husky', 3, 1, N'Min', NULL, 1, NULL, N'admin', CAST(0x0000A65F0127271F AS DateTime), N'images/pet/meo.jpg', NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (31, N'King', 2, 1, N'', 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (32, N'Chim', 2, 2, N'', 2, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dateReceived], [avatar], [description]) VALUES (33, N'sd', 11, 1, N'', 1, 1, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Pet] OFF
/****** Object:  ForeignKey [FK_Account_Member]    Script Date: 08/17/2016 17:15:14 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Account_Member]') AND parent_object_id = OBJECT_ID(N'[dbo].[Account]'))
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Member] FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Account_Member]') AND parent_object_id = OBJECT_ID(N'[dbo].[Account]'))
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Member]
GO
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 08/17/2016 17:15:14 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Account_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[Account]'))
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Account_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[Account]'))
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Bill_Product]    Script Date: 08/17/2016 17:15:14 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bill_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bill]'))
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bill_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bill]'))
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Product]
GO
/****** Object:  ForeignKey [FK_Donate_Account]    Script Date: 08/17/2016 17:15:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Donate_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Donate]'))
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD  CONSTRAINT [FK_Donate_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Donate_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Donate]'))
ALTER TABLE [dbo].[Donate] CHECK CONSTRAINT [FK_Donate_Account]
GO
/****** Object:  ForeignKey [FK_Pet_Account]    Script Date: 08/17/2016 17:15:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_Account]
GO
/****** Object:  ForeignKey [FK_Pet_Donate]    Script Date: 08/17/2016 17:15:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_Donate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_Donate] FOREIGN KEY([donateID])
REFERENCES [dbo].[Donate] ([donateID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_Donate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_Donate]
GO
/****** Object:  ForeignKey [FK_Pet_Health]    Script Date: 08/17/2016 17:15:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_Health]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_Health] FOREIGN KEY([healthID])
REFERENCES [dbo].[Health] ([healthID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_Health]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_Health]
GO
/****** Object:  ForeignKey [FK_Pet_PetType]    Script Date: 08/17/2016 17:15:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_PetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_PetType] FOREIGN KEY([petTypeID])
REFERENCES [dbo].[PetType] ([petTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pet_PetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pet]'))
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_PetType]
GO
/****** Object:  ForeignKey [FK_Sale_Account]    Script Date: 08/17/2016 17:15:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Account]
GO
/****** Object:  ForeignKey [FK_Sale_Bill]    Script Date: 08/17/2016 17:15:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Bill]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Bill] FOREIGN KEY([billID])
REFERENCES [dbo].[Bill] ([billID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sale_Bill]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sale]'))
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Bill]
GO
