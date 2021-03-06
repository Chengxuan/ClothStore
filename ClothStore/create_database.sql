IF DB_ID('Whiskey') IS NOT NULL
	DROP DATABASE Whiskey
	
CREATE DATABASE Whiskey
GO

USE [Whiskey]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 01/11/2011 17:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [varchar](10) NOT NULL,
	[ShortName] [varchar](15) NOT NULL,
	[LongName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Categories] ([CategoryID], [ShortName], [LongName]) VALUES (N'hd', N'HD', N'Hoody')
INSERT [dbo].[Categories] ([CategoryID], [ShortName], [LongName]) VALUES (N'ts', N'TS', N'Tshirt')
INSERT [dbo].[Categories] ([CategoryID], [ShortName], [LongName]) VALUES (N'tr', N'TR', N'Trousers')
INSERT [dbo].[Categories] ([CategoryID], [ShortName], [LongName]) VALUES (N'sh', N'SH', N'Shoes')
INSERT [dbo].[Categories] ([CategoryID], [ShortName], [LongName]) VALUES (N'uw', N'UW', N'Underwear')
print '5 Categories Created!'
/****** Object:  Table [dbo].[Customers]    Script Date: 01/11/2011 17:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[Email] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[PassWord] [varchar](100) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[CardNo] [varchar](30) NOT NULL,
	[CardName] [varchar](100) NOT NULL,
	[Spent] [varchar](30)  NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[ExpireDate] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'A8@webemaxmjKd.com', N'Sisi Ying', N'1234567', N'1108 Johanna Bay Drive', N'600333233353321', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'AAntosca@netYduo.com', N'Antosca Andrew', N'1234567', N'485 Duane Terrace', N'600333233353321', N'Mr. Sisi Ying', N'13.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'Abdul70@matminvV.edu', N'Antony Abdul', N'1234567', N'1109 Powderhorn Drive', N'600333233353321', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'Ajith@xgMaster.edu', N'Johnson Ajith', N'1234567', N'2200 Old Germantown Road', N'600333233353321', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'Alan@NsiYYGE.net', N'Rose Alan', N'1234567', N'P.O. Box 8553', N'600333233353321', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'Albert@masterxmlrad.com', N'Browning Albert', N'1234567', N'1  E. Telecom Parkway', N'600333233353321', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'ALitterson@mastermaster.c', N'Litterson Anthony', N'1234567', N'901 S. National Ave.', N'600333233353321.', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'Andra91@webtechdotca.edu', N'Lee Andra', N'1234567', N'8831 Park Central Drive', N'600333233353321', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
INSERT [dbo].[Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [Spent], [PhoneNumber],[ExpireDate]) VALUES (N'Zheng@bamonetmaste.net', N'Tonner Zheng', N'1234567', N'57 N Plaza Blvd', N'600333233353321', N'Mr. Sisi Ying', N'12.00', N'003530877076548',N'09/17')
print '5 Registered Customers Created!'
/****** Object:  Table [dbo].[Products]    Script Date: 01/11/2011 17:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [char](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](2000) NOT NULL,
	[Colour] [varchar](200) NOT NULL,
	[CategoryID] [varchar](10) NOT NULL,
	[ImageFile] [varchar](30) NULL,
	[UnitPrice] [varchar](30)  NOT NULL,
	[Instock] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT001', N'Plain Hoodie', N'A Plain hoodie with the colour and size of your choice', N'Red, Pink, Blue, Orange, Black, White, Green', N'hd', N'plainhoodie.jpg', 30, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT002', N'J&J Hoodie', N'Jack & Jones Mens Evens Hoody. Large print & logo to front, drawstring ties to hood, ribbed cuffs & hem. 55% Cotton, 45% Polyester. Machine Washable.', N'Black', N'hd', N'JJhoodie.jpg', 45, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT003', N'J&J Grey Hoodie', N'Jack & Jones New Elona Button Hoody. Branded button fastening, drawstring ties to hood, pockets to front, printed logo to chest & pocket, ribbed cuffs & hem. 100% Cotton. Machine Washable', N'Grey', N'hd', N'JJgreyHoodie.jpg', 45, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT004', N'Plain Polo Shirt', N'Plain Polo Shirt with the colour and size of your choice', N'Red, Pink, Blue, Orange, Black, White, Green', N'ts', N'PlainPoloShirt.jpg', 12, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT005', N'Striped Polo Shirt', N'Jack & Jones Men’s Cold Polo Shirt. Striped polo, printed Jack & Jones logo to chest, ribbed collar & cuffs with colour tipped detail, 3 branded button placket. 100% Cotton. Machine Washable.', N'Striped Grey & White.', N'ts', N'StripedPoloShirt.jpg', 23, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT006', N'Double Collar Pique Polo', N'Lyle & Scott Mens Double Collar Polo Shirt. Built in polo shirt with button placket, Lyle & Scott embroidered badge logo to chest. 96% Cotton, 4% Elastane. Machine Washable.', N'White', N'ts', N'DoubleCollarPiquePolo.jpg', 25, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT007', N'Jarvis Jog Pant', N'UCLA JArvis Jog Pant. 2 pockets, drawstring ties to waist, elasticated cuffs, embroidered logo to front, small pocket to back,. 80% Cotton, 20% Polyester. Machine Washable.', N'Grey', N'tr', N'JarvisJogPant.jpg', 30, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT008', N'Straight Denim Jean', N'G Star Mens 3301 Slim Jean in Denim. 5 pocket jean, embroidered logo to coin pocket & back pocket, contrasted stitching, distressed look & detail, straight leg fit. 100% Cotton. Machine Washable.', N'Denim', N'tr', N'StraightDenimJean.jpg', 55, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT009', N'Slim 3uw Jean', N'G Star Mens 3301 Slim Jean in Denim. 5 pocket jean, embroidered logo to coin pocket & back pocket, contrasted stitching, distressed look & detail, slim fit. 100% Cotton. Machine Washable.', N'Denim', N'tr', N'Slim3uwJean.jpg', 55, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT010', N'Bronson Tapered Chino', N'G Star Mens Bronson Tapered Chino in Sand. Pockets to front & back, button fly, G Star metal logo to coin pocket, tab logo to rear, tapered fit. 100% Cotton. Machine Washable.', N'Brown', N'tr', N'BronsonTaperedChino.jpg', 30, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT011', N'Fleece Pant', N'Adidas Originals Mens SPO Track Pant in Black. Open pockets to side, embroidered Adidas Originals logo, trademark 3 stripe logo to legs, drawstring ties to waist, elasticated cuffs. 85% Cotton, 15% Polyester. Machine Washable.', N'Black, Grey, White', N'tr', N'FleecePant.jpg', 35, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT012', N'Mexico 66', N'Onitsuka Tiger Mens Mexico 66. Lace up, trademark branding to side, logo to tongue & heel, textured sole, reinforced toe piece. Textile Upper & Inner, Synthetic Sole', N'Black, Brown, White', N'sh', N'Mexico66.jpg', 49, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT013', N'Paradigm Hi Top', N'Voi Jeans Mens Paradigm Hi Top Boot. Lace up, quilted side panel, Voi Jeans logo to tongue, heel, & side, padded ankle, soft touch toe. Upper Nubuck Leather & Textile, Inner Textile Sole Synthetic.', N'Brown, grey', N'sh', N'ParadigmHiTop.jpg', 30, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT014', N'Shockk Leather', N'Boxfresh Mens Shockk Leather in Grey. Lace up, metal tab logo to side, embroidered logo to heel & tongue, textured sole. Leather Upper, Textile Inner, Synthetic Sole.', N'Grey', N'sh', N'ShockkLeather.jpg', 49, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT015', N'Liga Suede', N'Puma Mens Liga Suede. Lace up trainer, Puma logo to side heel & tongue, gum textured sole, padded ankle. Leather Upper, Textile Inner, Synthetic Sole.', N'Black', N'sh', N'LigaSuede.jpg', 43, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT016', N'LA Trainer', N'Adidas Originals Mens LA Trainer in Grey. Lace up, trademark 3 stripe branding to side, Adidas logo to tongue & heel, nylon mesh & suede panels, textured sole. Nylon & Leather Upper, Textile Inner, Synthetic Sole.', N'Grey', N'sh', N'LATrainer.jpg', 55, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT017', N'All Over Print Boxer Shorts', N'Penguin Mens All Over Print Boxer Shorts in black. Branded waistband, printed penguin logo design 95% Cotton, 5% Elastane. Machine Washable. We regret that underwear is non-returnable due to hygiene reasons.', N'Black', N'uw', N'AllOverPrintBoxerShorts.jpg', 9, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT018', N'2 Pack Basic Boxer', N'Puma 2 Pack Basic Boxer Shorts in black. Sporty cut for training and leisure. Branded waistband. 95% Cotton, 5% Elastane. Machine washable. We regret that boxer shorts are non-returnable due to hygiene reasons.', N'Black', N'uw', N'2PackBasicBoxer.jpg', 12, 10)
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Colour], [CategoryID], [ImageFile], [UnitPrice], [Instock]) VALUES (N'PDT019', N'3 Pack Low Rise Trunks', N'Calvin Klein Mens 3 Pack Boxers. Low rise trunks with contrasted colour branded waistband, cool breathable cotton, with added stretch, body defining fit. 95% Cotton 5% Elastane. Machine Washable. Calvin Klein Mens 3 Pack Boxers. Low rise trunks with contrasted colour branded waistband, cool breathable cotton, with added stretch, body defining fit. 95% Cotton 5% Elastane. Machine Washable.', N'White', N'uw', N'3PackLowRiseTrunks.jpg', 30, 10)
print '19 Products Created!'
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 01/11/2011 17:06:16 ******/
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
