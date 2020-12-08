USE [master]
GO
/****** Object:  Database [TermProject]    Script Date: 10/18/2020 8:55:28 PM ******/
CREATE DATABASE [TermProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TermProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TermProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TermProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TermProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TermProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TermProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TermProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TermProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TermProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TermProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TermProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [TermProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TermProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TermProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TermProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TermProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TermProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TermProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TermProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TermProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TermProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TermProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TermProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TermProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TermProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TermProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TermProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TermProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TermProject] SET RECOVERY FULL 
GO
ALTER DATABASE [TermProject] SET  MULTI_USER 
GO
ALTER DATABASE [TermProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TermProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TermProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TermProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TermProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TermProject', N'ON'
GO
ALTER DATABASE [TermProject] SET QUERY_STORE = OFF
GO
USE [TermProject]
GO
/****** Object:  Table [dbo].[account]    Script Date: 10/18/2020 8:55:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[Account_ID] [int] NOT NULL,
	[UserName] [varchar](25) NULL,
	[Password] [varchar](25) NULL,
	[IS_GM] [int] NULL,
	[Last_login] [date] NULL,
	[IP] [varchar](20) NULL,
	[Email] [varchar](30) NULL,
	[Ban] [int] NULL,
	[Account_Address] [varchar](50) NULL,
	[Zip_ID] [int] NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Character]    Script Date: 10/18/2020 8:55:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Character](
	[Character_ID] [int] NOT NULL,
	[Account_id] [int] NULL,
	[Name] [varchar](30) NULL,
	[Species_id] [int] NULL,
	[Class_id] [int] NULL,
	[gender] [int] NULL,
	[level] [int] NULL,
	[Gold] [int] NULL,
	[Hit_Points] [int] NULL,
	[Is_online] [int] NULL,
 CONSTRAINT [PK_Character] PRIMARY KEY CLUSTERED 
(
	[Character_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 10/18/2020 8:55:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Class_ID] [int] NOT NULL,
	[Class_Name] [varchar](30) NULL,
	[Coin_cost] [int] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 10/18/2020 8:55:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[Inventory_ID] [int] NOT NULL,
	[Character_id] [int] NULL,
	[Item_id] [int] NULL,
	[equiped] [int] NULL,
	[Forsale] [int] NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[Inventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 10/18/2020 8:55:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[Item_ID] [int] NOT NULL,
	[Item_name] [varchar](50) NULL,
	[Attack_bonus] [int] NULL,
	[Luck_bonus] [int] NULL,
	[Description] [varchar](70) NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Species]    Script Date: 10/18/2020 8:55:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[Species_ID] [int] NOT NULL,
	[Species] [varchar](30) NULL,
	[Strength] [int] NULL,
	[Intelligence] [int] NULL,
	[Constitution] [int] NULL,
	[Dexterity] [int] NULL,
	[Wisdom] [int] NULL,
 CONSTRAINT [PK_Species] PRIMARY KEY CLUSTERED 
(
	[Species_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZipCode]    Script Date: 10/18/2020 8:55:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCode](
	[Zip_ID] [int] NOT NULL,
	[Zip_Code] [varchar](5) NULL,
	[city] [varchar](50) NULL,
	[STATE_CODE] [varchar](2) NULL,
	[Country] [varchar](25) NULL,
 CONSTRAINT [PK_ZipCode] PRIMARY KEY CLUSTERED 
(
	[Zip_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [idx_Zipcode]    Script Date: 10/18/2020 8:55:28 PM ******/
CREATE NONCLUSTERED INDEX [idx_Zipcode] ON [dbo].[account]
(
	[Zip_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_Account_id]    Script Date: 10/18/2020 8:55:28 PM ******/
CREATE NONCLUSTERED INDEX [idx_Account_id] ON [dbo].[Character]
(
	[Account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_Class]    Script Date: 10/18/2020 8:55:28 PM ******/
CREATE NONCLUSTERED INDEX [idx_Class] ON [dbo].[Character]
(
	[Class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_Species_ID]    Script Date: 10/18/2020 8:55:28 PM ******/
CREATE NONCLUSTERED INDEX [idx_Species_ID] ON [dbo].[Character]
(
	[Species_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_Character_ID]    Script Date: 10/18/2020 8:55:28 PM ******/
CREATE NONCLUSTERED INDEX [idx_Character_ID] ON [dbo].[Inventory]
(
	[Character_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_Item_ID]    Script Date: 10/18/2020 8:55:28 PM ******/
CREATE NONCLUSTERED INDEX [idx_Item_ID] ON [dbo].[Inventory]
(
	[Item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_Zipcode] FOREIGN KEY([Zip_ID])
REFERENCES [dbo].[ZipCode] ([Zip_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_Zipcode]
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD  CONSTRAINT [FK_AccountID] FOREIGN KEY([Account_id])
REFERENCES [dbo].[account] ([Account_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Character] CHECK CONSTRAINT [FK_AccountID]
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD  CONSTRAINT [FK_ClassID] FOREIGN KEY([Class_id])
REFERENCES [dbo].[Class] ([Class_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Character] CHECK CONSTRAINT [FK_ClassID]
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD  CONSTRAINT [FK_SpeciesID] FOREIGN KEY([Species_id])
REFERENCES [dbo].[Species] ([Species_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Character] CHECK CONSTRAINT [FK_SpeciesID]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Character_ID] FOREIGN KEY([Character_id])
REFERENCES [dbo].[Character] ([Character_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Character_ID]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_ItemID] FOREIGN KEY([Item_id])
REFERENCES [dbo].[item] ([Item_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_ItemID]
GO
USE [master]
GO
ALTER DATABASE [TermProject] SET  READ_WRITE 
GO
