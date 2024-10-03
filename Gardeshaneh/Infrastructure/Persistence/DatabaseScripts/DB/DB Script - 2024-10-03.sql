USE [gardeshaneh]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/3/2024 4:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[ParentId] [bigint] NULL,
	[PersianName] [nvarchar](100) NOT NULL,
	[EnglishName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Categories_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryProperties]    Script Date: 10/3/2024 4:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProperties](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[PropertyId] [bigint] NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CategoryProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 10/3/2024 4:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[ProvinceName] [nvarchar](200) NOT NULL,
	[PersianName] [nvarchar](200) NOT NULL,
	[EnglishName] [nvarchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceGalleries]    Script Date: 10/3/2024 4:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceGalleries](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[PlaceId] [bigint] NOT NULL,
	[ImageName] [nchar](100) NOT NULL,
	[SeoTitle] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PlaceGalleries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceProperties]    Script Date: 10/3/2024 4:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceProperties](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[PropertyId] [bigint] NOT NULL,
	[PlaceId] [bigint] NOT NULL,
	[BooleanValue] [bit] NULL,
	[StringValue] [nvarchar](200) NULL,
	[DecimalValue] [decimal](12, 2) NULL,
 CONSTRAINT [PK_PlaceProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 10/3/2024 4:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[CreatorUserId] [bigint] NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[CityId] [bigint] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ImageName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Description] [nvarchar](350) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Tags] [nvarchar](2000) NOT NULL,
	[Timing] [nvarchar](350) NOT NULL,
	[Phone] [nvarchar](350) NOT NULL,
	[SuggestionDescription] [nvarchar](500) NULL,
	[GoogleMapUrl] [nvarchar](500) NULL,
	[BaladUrl] [nvarchar](500) NULL,
	[InstagramId] [nvarchar](100) NULL,
	[TelegramId] [nvarchar](100) NULL,
	[WhatsAppId] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 10/3/2024 4:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Properties](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[PropertyTypeEnum] [tinyint] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[BootstrapIcon] [nvarchar](200) NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/3/2024 4:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationDate] [smalldatetime] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Code] [nvarchar](9) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[TempPassword] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[EmailActiveCode] [nvarchar](100) NOT NULL,
	[IsEmailActived] [bit] NOT NULL,
	[IsBlocked] [bit] NOT NULL,
	[RoleEnum] [tinyint] NOT NULL,
	[IP] [nvarchar](100) NULL,
	[AvatarName] [nvarchar](200) NULL,
	[TryCount] [tinyint] NOT NULL,
	[IsPasswordForgotten] [bit] NOT NULL,
 CONSTRAINT [PK_Users_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [CreationDate], [ModifyDate], [IsDelete], [ParentId], [PersianName], [EnglishName], [IsActive]) VALUES (1, CAST(N'2022-02-06T21:09:00' AS SmallDateTime), CAST(N'2022-02-06T21:09:00' AS SmallDateTime), 0, NULL, N'کافه و رستوران', N'cafe and restaurant', 1)
GO
INSERT [dbo].[Categories] ([Id], [CreationDate], [ModifyDate], [IsDelete], [ParentId], [PersianName], [EnglishName], [IsActive]) VALUES (2, CAST(N'2022-02-06T21:09:00' AS SmallDateTime), CAST(N'2022-02-06T21:10:00' AS SmallDateTime), 0, 1, N'کافه', N'cafe', 1)
GO
INSERT [dbo].[Categories] ([Id], [CreationDate], [ModifyDate], [IsDelete], [ParentId], [PersianName], [EnglishName], [IsActive]) VALUES (3, CAST(N'2022-02-15T13:23:00' AS SmallDateTime), CAST(N'2022-02-15T13:24:00' AS SmallDateTime), 0, NULL, N'مراکز خرید', N'shopping center', 1)
GO
INSERT [dbo].[Categories] ([Id], [CreationDate], [ModifyDate], [IsDelete], [ParentId], [PersianName], [EnglishName], [IsActive]) VALUES (4, CAST(N'2022-02-15T13:24:00' AS SmallDateTime), CAST(N'2022-02-15T13:24:00' AS SmallDateTime), 0, 3, N'پاساژ', N'mall', 1)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryProperties] ON 
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (1, CAST(N'2022-02-08T15:11:00' AS SmallDateTime), CAST(N'2022-02-08T15:11:00' AS SmallDateTime), 0, 4, 2, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (2, CAST(N'2022-02-08T15:11:00' AS SmallDateTime), CAST(N'2022-02-08T15:11:00' AS SmallDateTime), 0, 6, 2, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (3, CAST(N'2022-02-08T15:11:00' AS SmallDateTime), CAST(N'2022-02-08T15:11:00' AS SmallDateTime), 0, 1, 2, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (4, CAST(N'2022-02-08T15:11:00' AS SmallDateTime), CAST(N'2022-02-08T15:11:00' AS SmallDateTime), 0, 2, 2, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (5, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 5, 2, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (6, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 3, 2, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (7, CAST(N'2022-02-15T13:50:00' AS SmallDateTime), CAST(N'2022-02-15T13:50:00' AS SmallDateTime), 0, 7, 4, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (8, CAST(N'2022-02-15T13:50:00' AS SmallDateTime), CAST(N'2022-02-15T13:50:00' AS SmallDateTime), 0, 1, 4, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (9, CAST(N'2022-02-15T13:52:00' AS SmallDateTime), CAST(N'2022-02-15T13:52:00' AS SmallDateTime), 0, 8, 4, 1)
GO
INSERT [dbo].[CategoryProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive]) VALUES (10, CAST(N'2022-05-06T17:47:00' AS SmallDateTime), CAST(N'2022-05-06T19:10:00' AS SmallDateTime), 0, 9, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[CategoryProperties] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 
GO
INSERT [dbo].[Cities] ([Id], [CreationDate], [ModifyDate], [IsDelete], [ProvinceName], [PersianName], [EnglishName], [IsActive]) VALUES (1, CAST(N'2022-02-06T21:07:00' AS SmallDateTime), CAST(N'2022-02-06T21:07:00' AS SmallDateTime), 0, N'البرز', N'کرج', N'karaj', 1)
GO
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[PlaceGalleries] ON 
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (1, CAST(N'2022-02-07T20:53:00' AS SmallDateTime), CAST(N'2022-02-07T20:53:00' AS SmallDateTime), 0, 1, N'b31e5f9850.jpg                                                                                      ', N'فضای کافه نامبروان')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (2, CAST(N'2022-02-08T15:17:00' AS SmallDateTime), CAST(N'2022-02-08T15:17:00' AS SmallDateTime), 0, 1, N'f85abb3018.jpg                                                                                      ', N'صبحانه کافه نامبروان در کرج')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (3, CAST(N'2022-02-08T15:18:00' AS SmallDateTime), CAST(N'2022-02-08T15:18:00' AS SmallDateTime), 0, 1, N'bfda0b756c.jpg                                                                                      ', N'محیط داخلی کافه رستوران نامبروان')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (4, CAST(N'2022-02-11T21:56:00' AS SmallDateTime), CAST(N'2022-02-11T21:56:00' AS SmallDateTime), 0, 2, N'110e89b1ed.jpg                                                                                      ', N'فضای کافه پلاس عظیمیه')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (5, CAST(N'2022-02-12T21:20:00' AS SmallDateTime), CAST(N'2022-02-12T21:20:00' AS SmallDateTime), 0, 3, N'91f62f6227.jpg                                                                                      ', N'فضای کافه رستوران پدرا کرج')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (6, CAST(N'2022-02-12T21:22:00' AS SmallDateTime), CAST(N'2022-02-12T21:22:00' AS SmallDateTime), 0, 3, N'ed7fa2a071.jpg                                                                                      ', N'محیط داخلی کافه رستوران پدرا در روز')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (9, CAST(N'2022-02-15T13:49:00' AS SmallDateTime), CAST(N'2022-02-15T13:49:00' AS SmallDateTime), 0, 4, N'9e64604c50.jpg                                                                                      ', N'کافه مهراد مال')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (11, CAST(N'2022-02-15T13:53:00' AS SmallDateTime), CAST(N'2022-02-15T13:53:00' AS SmallDateTime), 0, 4, N'eca7629671.jpg                                                                                      ', N'بالکن فودکورت مهراد مال')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (12, CAST(N'2022-02-15T13:53:00' AS SmallDateTime), CAST(N'2022-02-15T13:53:00' AS SmallDateTime), 0, 4, N'e73fc69c26.jpg                                                                                      ', N'فودکورت مهراد مال')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (13, CAST(N'2022-02-15T13:54:00' AS SmallDateTime), CAST(N'2022-02-15T13:54:00' AS SmallDateTime), 0, 4, N'b05c119027.jpg                                                                                      ', N'فودکورت مهراد مال')
GO
INSERT [dbo].[PlaceGalleries] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle]) VALUES (14, CAST(N'2022-02-17T20:03:00' AS SmallDateTime), CAST(N'2022-02-17T20:03:00' AS SmallDateTime), 0, 5, N'250de93068.jpg                                                                                      ', N'کافه خلیفه مهرشهر')
GO
SET IDENTITY_INSERT [dbo].[PlaceGalleries] OFF
GO
SET IDENTITY_INSERT [dbo].[PlaceProperties] ON 
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (1, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 4, 1, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (2, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 6, 1, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (3, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 1, 1, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (4, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 2, 1, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (5, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 5, 1, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (6, CAST(N'2022-02-08T15:12:00' AS SmallDateTime), CAST(N'2022-02-08T15:12:00' AS SmallDateTime), 0, 3, 1, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (7, CAST(N'2022-02-11T21:51:00' AS SmallDateTime), CAST(N'2022-02-11T21:51:00' AS SmallDateTime), 0, 1, 2, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (8, CAST(N'2022-02-11T21:51:00' AS SmallDateTime), CAST(N'2022-02-11T21:51:00' AS SmallDateTime), 0, 6, 2, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (9, CAST(N'2022-02-11T21:52:00' AS SmallDateTime), CAST(N'2022-02-11T21:52:00' AS SmallDateTime), 0, 4, 2, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (10, CAST(N'2022-02-11T21:52:00' AS SmallDateTime), CAST(N'2022-02-11T21:52:00' AS SmallDateTime), 0, 3, 2, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (11, CAST(N'2022-02-11T21:52:00' AS SmallDateTime), CAST(N'2022-02-11T21:52:00' AS SmallDateTime), 0, 5, 2, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (12, CAST(N'2022-02-12T21:19:00' AS SmallDateTime), CAST(N'2022-02-12T21:19:00' AS SmallDateTime), 0, 4, 3, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (13, CAST(N'2022-02-12T21:19:00' AS SmallDateTime), CAST(N'2022-02-12T21:19:00' AS SmallDateTime), 0, 6, 3, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (14, CAST(N'2022-02-12T21:19:00' AS SmallDateTime), CAST(N'2022-02-12T21:19:00' AS SmallDateTime), 0, 1, 3, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (15, CAST(N'2022-02-12T21:19:00' AS SmallDateTime), CAST(N'2022-02-12T21:19:00' AS SmallDateTime), 0, 2, 3, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (16, CAST(N'2022-02-12T21:19:00' AS SmallDateTime), CAST(N'2022-02-12T21:19:00' AS SmallDateTime), 0, 5, 3, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (17, CAST(N'2022-02-12T21:19:00' AS SmallDateTime), CAST(N'2022-02-12T21:19:00' AS SmallDateTime), 0, 3, 3, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (18, CAST(N'2022-02-15T13:52:00' AS SmallDateTime), CAST(N'2022-02-15T13:52:00' AS SmallDateTime), 0, 7, 4, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (19, CAST(N'2022-02-15T13:52:00' AS SmallDateTime), CAST(N'2022-02-15T13:52:00' AS SmallDateTime), 0, 1, 4, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (20, CAST(N'2022-02-15T13:52:00' AS SmallDateTime), CAST(N'2022-02-15T13:52:00' AS SmallDateTime), 0, 8, 4, 0, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (21, CAST(N'2022-02-17T19:58:00' AS SmallDateTime), CAST(N'2022-02-17T19:58:00' AS SmallDateTime), 0, 4, 5, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (22, CAST(N'2022-02-17T19:59:00' AS SmallDateTime), CAST(N'2022-02-17T19:59:00' AS SmallDateTime), 0, 6, 5, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (23, CAST(N'2022-02-17T19:59:00' AS SmallDateTime), CAST(N'2022-02-17T19:59:00' AS SmallDateTime), 0, 1, 5, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (24, CAST(N'2022-02-17T19:59:00' AS SmallDateTime), CAST(N'2022-02-17T19:59:00' AS SmallDateTime), 0, 2, 5, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (25, CAST(N'2022-02-17T19:59:00' AS SmallDateTime), CAST(N'2022-02-17T19:59:00' AS SmallDateTime), 0, 5, 5, 1, NULL, NULL)
GO
INSERT [dbo].[PlaceProperties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyId], [PlaceId], [BooleanValue], [StringValue], [DecimalValue]) VALUES (26, CAST(N'2022-02-17T19:59:00' AS SmallDateTime), CAST(N'2022-02-17T19:59:00' AS SmallDateTime), 0, 3, 5, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PlaceProperties] OFF
GO
SET IDENTITY_INSERT [dbo].[Places] ON 
GO
INSERT [dbo].[Places] ([Id], [ModifyDate], [IsDelete], [CreationDate], [CreatorUserId], [CategoryId], [CityId], [Title], [ImageName], [IsActive], [Description], [Address], [Tags], [Timing], [Phone], [SuggestionDescription], [GoogleMapUrl], [BaladUrl], [InstagramId], [TelegramId], [WhatsAppId], [Website]) VALUES (1, CAST(N'2022-02-07T20:43:00' AS SmallDateTime), 0, CAST(N'2022-02-07T20:38:00' AS SmallDateTime), 4, 2, 1, N'کافه رستوران نامبروان', N'5c403e3abd_489-426.jpg', 1, N'کافه رستوران نامبروان جهانشهر کرج، یکی از بهترین کافه‌های شهر کرج می‌باشد. این کافه دارای دو طبقه مجزا و فضایی سرپوشیده است. فضای کافه و رستوران نامبروان، بیشتر مناسب خانواده‌ها و برگزاری جشن‌ها و مراسم مختلف می‌باشد.', N'کرج،جهانشهر،بلوار ماهان،میدان مدنی،خ. هلال احمر', N'کافه رستوران نامبروان کرج-کافه نامبروان کرج-رستوران نامبروان کرج-کافه رستوران No.1 کرج-کافه نامبر وان', N'همه روزه 8:30 صبح تا 12 شب', N'02634413537', N'خانواده‌ها و کسانی که به دنبال برگزاری جشن تولد هستند.', N'https://goo.gl/maps/aavZg9hp4QJd4eh56', N'https://balad.ir/p/1y4HEcJVz49tcG', N'no.1.cafe', NULL, NULL, NULL)
GO
INSERT [dbo].[Places] ([Id], [ModifyDate], [IsDelete], [CreationDate], [CreatorUserId], [CategoryId], [CityId], [Title], [ImageName], [IsActive], [Description], [Address], [Tags], [Timing], [Phone], [SuggestionDescription], [GoogleMapUrl], [BaladUrl], [InstagramId], [TelegramId], [WhatsAppId], [Website]) VALUES (2, CAST(N'2022-02-11T21:50:00' AS SmallDateTime), 0, CAST(N'2022-02-11T21:46:00' AS SmallDateTime), 4, 2, 1, N'کافه پلاس', N'50591b9349_521-465.jpg', 1, N'کافه پلاس عظیمیه کرج، یکی از قدیمی ترین و لاکچری ترین کافه های عظیمیه می باشد. این کافه دارای دو طبقه مجزا بوده و در جنب میدان گلستان می باشد.', N'کرج، عظیمیه، ضلع جنوب شرقی میدان گلستان', N'کافه پلاس-کافه پلاس عظیمیه-کافه در عظیمیه-کافه پلاس کرج-کافه پلاس عظیمیه کرج', N'9:30 صبح تا 11:30 شب', N'02632527730', N'افرادی که به دنبال کافه لاکچری هستند.', N'https://goo.gl/maps/PBBbrUt3AHEfSjb9A', NULL, N'restaurant_plus_azimieh', NULL, NULL, NULL)
GO
INSERT [dbo].[Places] ([Id], [ModifyDate], [IsDelete], [CreationDate], [CreatorUserId], [CategoryId], [CityId], [Title], [ImageName], [IsActive], [Description], [Address], [Tags], [Timing], [Phone], [SuggestionDescription], [GoogleMapUrl], [BaladUrl], [InstagramId], [TelegramId], [WhatsAppId], [Website]) VALUES (3, CAST(N'2022-02-12T21:19:00' AS SmallDateTime), 0, CAST(N'2022-02-12T21:14:00' AS SmallDateTime), 4, 2, 1, N'کافه رستوران پدرا', N'c6a7d57738_978-656.jpg', 1, N'کافه رستوران پدرا، از کافه های لاکچری و نسبتا جدید عظیمیه کرج می باشد. این کافه دارای فضای باز است و  در روبه روی پارک ایران زمین و بالای میدان اسبی واقع شده است. یکی از ویژگی های خوب  این کافه سرو غذاهای متنوع می باشد.', N'کرج، عظیمیه، بالای میدان اسبی، نبش کوچه ی شهید میرزنده دل(عدلیه)', N'کافه پدرا-کافه رستوران پدرا-Pedra Restaurant-کافه پدرا عظیمیه-کافه رستوران پدرا کرج', N'12 صبح تا 12 شب', N'02632555961', N'کسانی که به دنبال برگزاری جشن های تولد هستند و یا کسانی که فضای باز کافه و رستوران را به فضای بسته ترجیح می دهند.', N'https://goo.gl/maps/KLL1WB1SiR6BzdWg7', NULL, N'pedra.restaurant.cafe', NULL, NULL, NULL)
GO
INSERT [dbo].[Places] ([Id], [ModifyDate], [IsDelete], [CreationDate], [CreatorUserId], [CategoryId], [CityId], [Title], [ImageName], [IsActive], [Description], [Address], [Tags], [Timing], [Phone], [SuggestionDescription], [GoogleMapUrl], [BaladUrl], [InstagramId], [TelegramId], [WhatsAppId], [Website]) VALUES (4, CAST(N'2022-08-01T13:11:00' AS SmallDateTime), 0, CAST(N'2022-02-15T13:36:00' AS SmallDateTime), 4, 4, 1, N'پاساژ مهراد مال', N'd0d0ceaa9c_600-450.jpg', 1, N'مهرادمال، یکی از بهترین و شیک ترین پاساژ های کرج میباشد که در عظیمیه واقع شده است. مهراد مال دارای پارکینگ اختصاصی، نمایندگی برندهای معروف، فودکورت، نمایشگاه و ... میباشد.', N'کرج، عظیمیه، بلوار شریعتی، مهرادمال', N'مهراد مال عظیمیه-پاساژ مهراد مال-مهرادمال کرج-مرکز خرید مهراد مال-mehrad mall', N'همه روزه از ساعت 10 صبح الی 10 شب', N'026335777', NULL, N'https://goo.gl/maps/ue66rB9WzmGiQ4GBA', NULL, N'mehrad.mall', NULL, NULL, N'https://mehradmall.com/')
GO
INSERT [dbo].[Places] ([Id], [ModifyDate], [IsDelete], [CreationDate], [CreatorUserId], [CategoryId], [CityId], [Title], [ImageName], [IsActive], [Description], [Address], [Tags], [Timing], [Phone], [SuggestionDescription], [GoogleMapUrl], [BaladUrl], [InstagramId], [TelegramId], [WhatsAppId], [Website]) VALUES (5, CAST(N'2022-02-17T19:57:00' AS SmallDateTime), 0, CAST(N'2022-02-17T19:52:00' AS SmallDateTime), 4, 2, 1, N'کافه رستوران خلیفه', N'deb59a7194_850-637.jpeg', 1, N'کافه رستوران خلیفه کرج، یکی از کافه های دوست داشتنی محدوده مهرشهر کرج به حساب میرود. کافه رستوران خلیفه دارای هم فضای باز و هم فضای بسته و دارای 2 طبقه میباشد. یکی از ویژگی های مثبت کافه خلیفه، منوی قوی آن میباشد.', N'کرج، مهرشهر، بلوار ارم، خ ۱۱۷، پیچک اول', N'کافه رستوران خلیفه مهرشهر-کافه رستوران خلیفه کرج-کافه رستوران خلیفه مهرشهر کرج-کافه خلیفه مهرشهر-Khalifeh Cafe Restaurant', N'9 صبح تا 11:30 شب', N'02633400607', N'کسانی که به دنبال فضایی لاکچری و در عین حال صمیمی هستند.', N'https://goo.gl/maps/mWMp7bXv384Rdi7g6', NULL, N'khalifa.mehrshahr', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Places] OFF
GO
SET IDENTITY_INSERT [dbo].[Properties] ON 
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (1, CAST(N'2022-02-08T15:07:00' AS SmallDateTime), CAST(N'2022-02-08T15:07:00' AS SmallDateTime), 0, 3, N'پارکینگ', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (2, CAST(N'2022-02-08T15:08:00' AS SmallDateTime), CAST(N'2022-02-08T15:08:00' AS SmallDateTime), 0, 3, N'صبحانه', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (3, CAST(N'2022-02-08T15:09:00' AS SmallDateTime), CAST(N'2022-02-08T15:09:00' AS SmallDateTime), 0, 3, N'قلیان', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (4, CAST(N'2022-02-08T15:09:00' AS SmallDateTime), CAST(N'2022-02-08T15:09:00' AS SmallDateTime), 0, 3, N'استعمال دخانیات', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (5, CAST(N'2022-02-08T15:10:00' AS SmallDateTime), CAST(N'2022-02-08T15:10:00' AS SmallDateTime), 0, 3, N'فضای باز', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (6, CAST(N'2022-02-08T15:11:00' AS SmallDateTime), CAST(N'2022-02-08T15:11:00' AS SmallDateTime), 0, 3, N'امکان رزرو', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (7, CAST(N'2022-02-15T13:43:00' AS SmallDateTime), CAST(N'2022-02-15T13:52:00' AS SmallDateTime), 0, 3, N'فودکورت', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (8, CAST(N'2022-02-15T13:50:00' AS SmallDateTime), CAST(N'2022-02-15T13:50:00' AS SmallDateTime), 0, 3, N'شهربازی', NULL)
GO
INSERT [dbo].[Properties] ([Id], [CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon]) VALUES (9, CAST(N'2022-05-06T17:47:00' AS SmallDateTime), CAST(N'2022-05-06T17:47:00' AS SmallDateTime), 0, 1, N'تست', NULL)
GO
SET IDENTITY_INSERT [dbo].[Properties] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [CreationDate], [ModifyDate], [IsDelete], [Code], [FirstName], [LastName], [Password], [TempPassword], [Email], [EmailActiveCode], [IsEmailActived], [IsBlocked], [RoleEnum], [IP], [AvatarName], [TryCount], [IsPasswordForgotten]) VALUES (4, CAST(N'2022-02-05T21:49:00' AS SmallDateTime), CAST(N'2022-04-26T13:18:00' AS SmallDateTime), 0, N'593986432', N'نیما', N'انصاری', N'20-2C-B9-62-AC-59-07-5B-96-4B-07-15-2D-23-4B-70', NULL, N'nimaansariwork@gmail.com', N'cfce344bda8c4e238187ccc219152246', 1, 0, 1, N'151.246.122.65', NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [CreationDate], [ModifyDate], [IsDelete], [Code], [FirstName], [LastName], [Password], [TempPassword], [Email], [EmailActiveCode], [IsEmailActived], [IsBlocked], [RoleEnum], [IP], [AvatarName], [TryCount], [IsPasswordForgotten]) VALUES (5, CAST(N'2022-02-06T21:12:00' AS SmallDateTime), CAST(N'2022-02-06T21:31:00' AS SmallDateTime), 0, N'086614277', N'مرضیه', N'قاضی زاده', N'83-9E-9C-1A-49-E7-EB-DE-DD-F2-58-63-0A-89-A2-BC', NULL, N'marzieghazizade@gmail.com', N'f49eeac2a6064c7a8e41970f2dd79271', 1, 0, 4, N'2.179.1.105', NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_EnglishName]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [IX_Categories_EnglishName] UNIQUE NONCLUSTERED 
(
	[EnglishName] ASC,
	[IsDelete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_PersianName]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [IX_Categories_PersianName] UNIQUE NONCLUSTERED 
(
	[PersianName] ASC,
	[IsDelete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryProperties]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[CategoryProperties] ADD  CONSTRAINT [IX_CategoryProperties] UNIQUE NONCLUSTERED 
(
	[IsDelete] ASC,
	[PropertyId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EnglishName]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Cities] ADD  CONSTRAINT [IX_EnglishName] UNIQUE NONCLUSTERED 
(
	[EnglishName] ASC,
	[IsDelete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersianName]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Cities] ADD  CONSTRAINT [IX_PersianName] UNIQUE NONCLUSTERED 
(
	[PersianName] ASC,
	[IsDelete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlaceProperties]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[PlaceProperties] ADD  CONSTRAINT [IX_PlaceProperties] UNIQUE NONCLUSTERED 
(
	[IsDelete] ASC,
	[PlaceId] ASC,
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Properties]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Properties] ADD  CONSTRAINT [IX_Properties] UNIQUE NONCLUSTERED 
(
	[Title] ASC,
	[PropertyTypeEnum] ASC,
	[IsDelete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Code]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Users_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Email]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Users_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_EmailActiveCode]    Script Date: 10/3/2024 4:44:38 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Users_EmailActiveCode] UNIQUE NONCLUSTERED 
(
	[EmailActiveCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[CategoryProperties]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProperties_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryProperties] CHECK CONSTRAINT [FK_CategoryProperties_Categories]
GO
ALTER TABLE [dbo].[CategoryProperties]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProperties_Properties] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryProperties] CHECK CONSTRAINT [FK_CategoryProperties_Properties]
GO
ALTER TABLE [dbo].[PlaceGalleries]  WITH CHECK ADD  CONSTRAINT [FK_PlaceGalleries_Places] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Places] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlaceGalleries] CHECK CONSTRAINT [FK_PlaceGalleries_Places]
GO
ALTER TABLE [dbo].[PlaceProperties]  WITH CHECK ADD  CONSTRAINT [FK_PlaceProperties_Places] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Places] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlaceProperties] CHECK CONSTRAINT [FK_PlaceProperties_Places]
GO
ALTER TABLE [dbo].[PlaceProperties]  WITH CHECK ADD  CONSTRAINT [FK_PlaceProperties_Properties] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlaceProperties] CHECK CONSTRAINT [FK_PlaceProperties_Properties]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Categories]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Cities]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Users] FOREIGN KEY([CreatorUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Users]
GO
