USE [master]
GO
/****** Object:  Database [Crime]    Script Date: 04/07/2016 15:55:49 ******/
CREATE DATABASE [Crime] ON  PRIMARY 
( NAME = N'Crime', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Crime.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Crime_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Crime_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Crime] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Crime].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Crime] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Crime] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Crime] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Crime] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Crime] SET ARITHABORT OFF
GO
ALTER DATABASE [Crime] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Crime] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Crime] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Crime] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Crime] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Crime] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Crime] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Crime] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Crime] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Crime] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Crime] SET  DISABLE_BROKER
GO
ALTER DATABASE [Crime] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Crime] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Crime] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Crime] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Crime] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Crime] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Crime] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Crime] SET  READ_WRITE
GO
ALTER DATABASE [Crime] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Crime] SET  MULTI_USER
GO
ALTER DATABASE [Crime] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Crime] SET DB_CHAINING OFF
GO
USE [Crime]
GO
/****** Object:  Table [dbo].[Suspect]    Script Date: 04/07/2016 15:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suspect](
	[CaseID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Addr] [varchar](5000) NULL,
	[Relation] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Rank] [varchar](50) NULL,
	[Note] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Suspect] ([CaseID], [Name], [Mobile], [Addr], [Relation], [Image], [Date], [Rank], [Note]) VALUES (N'10001', N'ABC', N'9076613214', N'asdasdas, malad', N'Patner', N'Image\Image.jpg', N'20-07-15', N'10', N'dfjksdsjdfsndjfs')
INSERT [dbo].[Suspect] ([CaseID], [Name], [Mobile], [Addr], [Relation], [Image], [Date], [Rank], [Note]) VALUES (N'10001', N'PQR', N'9076613216', N'asdasdas, malad', N'Wife', N'Image\Image2.jpg', N'22-07-15', N'11', N'Many fights ')
INSERT [dbo].[Suspect] ([CaseID], [Name], [Mobile], [Addr], [Relation], [Image], [Date], [Rank], [Note]) VALUES (N'10001', N'House Keeper', N'9076613247', N'Malad', N'House Keeper', N'Image\C4.jpg', N'23-07-15', N'14', N'New house keeper')
INSERT [dbo].[Suspect] ([CaseID], [Name], [Mobile], [Addr], [Relation], [Image], [Date], [Rank], [Note]) VALUES (N'10001', N'Suspect', N'9076613217', N'gfvghg', N'Son', N'Image\C2.jpg', N'25-07-15', N'7', N'hvjhbgvsrd tfhgjn')
/****** Object:  Table [dbo].[Officer]    Script Date: 04/07/2016 15:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Officer](
	[ID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Mail] [varchar](50) NULL,
	[Post] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Officer] ([ID], [Name], [Image], [Mobile], [Address], [Mail], [Post]) VALUES (N'1001', N'amish vora', N'Image\1.jpg', N'9076613215', N'M.G.Road, Goregoan', N'vora@gmail.com', N'Goregoan')
INSERT [dbo].[Officer] ([ID], [Name], [Image], [Mobile], [Address], [Mail], [Post]) VALUES (N'1002', N'PQR', N'Image\Officer1.jpg', N'9076113214', N'gfsycrrhtgkhg', N'pqr@gmail.com', N'Mumbai')
/****** Object:  Table [dbo].[NCase]    Script Date: 04/07/2016 15:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NCase](
	[CaseID] [varchar](50) NULL,
	[OfficerID] [varchar](50) NULL,
	[CaseName] [varchar](50) NULL,
	[Note] [varchar](5000) NULL,
	[Result] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NCase] ([CaseID], [OfficerID], [CaseName], [Note], [Result]) VALUES (N'10001', N'1001', N'Murder', N'We found him guilty', N'House Keeper')
INSERT [dbo].[NCase] ([CaseID], [OfficerID], [CaseName], [Note], [Result]) VALUES (N'10002', N'1002', N'Murder 2014', N'Child was killed.', N'Case Opened')
/****** Object:  Table [dbo].[Login]    Script Date: 04/07/2016 15:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[CaseID] [varchar](50) NULL,
	[OfficerID] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Login] ([CaseID], [OfficerID], [Pass]) VALUES (N'10002', N'1002', N'4650')
INSERT [dbo].[Login] ([CaseID], [OfficerID], [Pass]) VALUES (N'10001', N'1001', N'1001')
INSERT [dbo].[Login] ([CaseID], [OfficerID], [Pass]) VALUES (N'Murder 2014', N'10002', N'5052')
/****** Object:  Table [dbo].[Evidence]    Script Date: 04/07/2016 15:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evidence](
	[CaseID] [varchar](50) NULL,
	[Evidence] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Suspect] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[Note] [varchar](5000) NULL,
	[Rank] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[OfficerID] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Evidence] ([CaseID], [Evidence], [Type], [Suspect], [Image], [Note], [Rank], [Date], [OfficerID]) VALUES (N'10001', N'Knife', N'Physical', N'ABC', N'Image\Black_Grapes.jpg', N'lnflsdjfsdljflsdns,dfnsldfsldkfjsdlfs,sfnsdfsld', N'4', N'20-07-15', N'1001')
INSERT [dbo].[Evidence] ([CaseID], [Evidence], [Type], [Suspect], [Image], [Note], [Rank], [Date], [OfficerID]) VALUES (N'10001', N'Death Claim Money', N'Logical', N'PQR', N'N/A', N'Claim money would be going to his wife', N'6', N'23-07-15', N'1001')
INSERT [dbo].[Evidence] ([CaseID], [Evidence], [Type], [Suspect], [Image], [Note], [Rank], [Date], [OfficerID]) VALUES (N'10001', N'Loss due to Him', N'Logical', N'ABC', N'N/A', N'His partner has suffered many losses due to him and finally he had close the company', N'6', N'23-07-15', N'1001')
INSERT [dbo].[Evidence] ([CaseID], [Evidence], [Type], [Suspect], [Image], [Note], [Rank], [Date], [OfficerID]) VALUES (N'10001', N'He had extra marital affair', N'Logical', N'PQR', N'N/A', N'He had extra marital affair so his wife was upset with him.', N'5', N'23-07-15', N'1001')
INSERT [dbo].[Evidence] ([CaseID], [Evidence], [Type], [Suspect], [Image], [Note], [Rank], [Date], [OfficerID]) VALUES (N'10001', N'Robbery ', N'Logical', N'House Keeper', N'N/A', N'He might tried to rob the house, And he was new.', N'5', N'23-07-15', N'1001')
INSERT [dbo].[Evidence] ([CaseID], [Evidence], [Type], [Suspect], [Image], [Note], [Rank], [Date], [OfficerID]) VALUES (N'10001', N'Knife with blood', N'Physical', N'House Keeper', N'Image\download.png', N'We found knife with blood on it, in house keepers house', N'9', N'23-07-15', N'1001')
INSERT [dbo].[Evidence] ([CaseID], [Evidence], [Type], [Suspect], [Image], [Note], [Rank], [Date], [OfficerID]) VALUES (N'10001', N'Pistol', N'Physical', N'Suspect', N'Image\03-c6-shouldbe-c2.png', N'jcdfvgb', N'7', N'25-07-15', N'1001')
/****** Object:  Table [dbo].[CaseHistory]    Script Date: 04/07/2016 15:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CaseHistory](
	[CaseID] [varchar](50) NULL,
	[History] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[OfficerID] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Suspect Added to the case : ABC', N'20-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Evidence Added : Knife', N'20-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New History', N'20-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Evidence Added : Death Claim Money', N'23-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Evidence Added : Loss due to Him', N'23-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Suspect Added to the case : Suspect', N'25-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Evidence Added : Pistol', N'25-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Evidence Added : He had extra marital affair', N'23-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Suspect Added to the case : House Keeper', N'23-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Evidence Added : Robbery ', N'23-07-15', N'1001')
INSERT [dbo].[CaseHistory] ([CaseID], [History], [Date], [OfficerID]) VALUES (N'10001', N'New Evidence Added : Knife with blood', N'23-07-15', N'1001')
/****** Object:  Table [dbo].[admin]    Script Date: 04/07/2016 15:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[admin] ([admin_id], [password]) VALUES (N'Admin', N'Admin')
