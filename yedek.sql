USE [master]
GO
/****** Object:  Database [aspnet-WebApplication1-bagis]    Script Date: 20.05.2022 19:38:14 ******/
CREATE DATABASE [aspnet-WebApplication1-bagis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-WebApplication1-bagis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-WebApplication1-bagis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-WebApplication1-bagis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-WebApplication1-bagis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-WebApplication1-bagis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET RECOVERY FULL 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'aspnet-WebApplication1-bagis', N'ON'
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET QUERY_STORE = OFF
GO
USE [aspnet-WebApplication1-bagis]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bagis]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bagis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bagisci] [nvarchar](max) NULL,
	[miktar] [real] NOT NULL,
	[bagisTuruID] [int] NOT NULL,
 CONSTRAINT [PK_bagis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bagisturu]    Script Date: 20.05.2022 19:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bagisturu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bagisAdi] [nvarchar](max) NULL,
	[bagisDetay] [nvarchar](max) NULL,
	[resim] [nvarchar](max) NULL,
 CONSTRAINT [PK_bagisturu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517112137_bir', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517122825_2', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517123607_3', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517141445_5', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[bagis] ON 

INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (1, N'ahmet', 111, 1)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (2, N'tahsin', 233, 3)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (3, N'ayşe', 99, 2)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (5, N'tahsin', 66, 2)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (6, N'tahsin', 2, 3)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (7, N'aysel', 12, 3)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (8, N'aysel', 12, 3)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (9, N'ali demir', 1000, 4)
INSERT [dbo].[bagis] ([Id], [bagisci], [miktar], [bagisTuruID]) VALUES (10, N'ayşe', 99, 2)
SET IDENTITY_INSERT [dbo].[bagis] OFF
GO
SET IDENTITY_INSERT [dbo].[bagisturu] ON 

INSERT [dbo].[bagisturu] ([Id], [bagisAdi], [bagisDetay], [resim]) VALUES (1, N'Su Kuyusu Bağışları', N'Dünya Sağlık Örgütü’nün yayınladığı rapora göre; dünyada 2 milyar insan temiz su kaynaklarına ulaşamamaktadır. İklim değişikliği (kuraklık, yağış azlığı vb.) ve insan eliyle yapılan hataların yanı sıra; ekonomi ve siyasi istikrasızlık, altyapı ve üstyapı eksiklikleri, coğrafi konum ve şekiller, yatırım eksiklikleri, hükümet ve idari yönetim çıkarcılığı, etnik ve kabile arası çatışmalar gibi nedenlerden dolayı temiz su kaynaklarına ulaşımda sorun yaşanmaktadır.', N'su.jpg')
INSERT [dbo].[bagisturu] ([Id], [bagisAdi], [bagisDetay], [resim]) VALUES (2, N'Ukrayna’ya İnsani Yardım', N'Ukrayna ve Rusya arasında devam eden gerilim savaşa dönüştü. İnsanlık bir kez daha savaşın doğurduğu yıkım, acı ve kayıplarla sınanıyor. Daha önce yaşanmış benzerlerinin acısı henüz dinmeden Uluslararası toplumun çaresiz kalarak izlediği bu krizde sivil yerleşimler savaş alanına dönüşmüş, sivil insanlar, çocuklar, kadınlar, yaşlılar, engelliler korku ve panik içerisinde sığınaklarda yeraltı metro istasyonlarında soğuk ve sıkıntılı şartlarda hayata tutunmaya çalışıyorlar. 
', N'ukr.jpg')
INSERT [dbo].[bagisturu] ([Id], [bagisAdi], [bagisDetay], [resim]) VALUES (3, N'Azerbaycan''a İnsani Yardım', N'Azerbaycanlı Kardeşlerimizin Zor Günlerinde, Sizlerin Desteği İle Yardımlar Ulaştırılmaktadır.
', N'azer.jpg')
INSERT [dbo].[bagisturu] ([Id], [bagisAdi], [bagisDetay], [resim]) VALUES (4, N'Sudan''a İnsani Yardım', N'Sudan’daki Sel Felaketinden Etkilenen İhtiyaç Sahiplerine, Sizlerin Destekleri Sayesinde Yardımlar Ulaştırılmaktadır.
', N'sudan.jpg')
SET IDENTITY_INSERT [dbo].[bagisturu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20.05.2022 19:38:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20.05.2022 19:38:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20.05.2022 19:38:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20.05.2022 19:38:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20.05.2022 19:38:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20.05.2022 19:38:14 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20.05.2022 19:38:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_bagis_bagisTuruID]    Script Date: 20.05.2022 19:38:14 ******/
CREATE NONCLUSTERED INDEX [IX_bagis_bagisTuruID] ON [dbo].[bagis]
(
	[bagisTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[bagis]  WITH CHECK ADD  CONSTRAINT [FK_bagis_bagisturu_bagisTuruID] FOREIGN KEY([bagisTuruID])
REFERENCES [dbo].[bagisturu] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bagis] CHECK CONSTRAINT [FK_bagis_bagisturu_bagisTuruID]
GO
USE [master]
GO
ALTER DATABASE [aspnet-WebApplication1-bagis] SET  READ_WRITE 
GO
