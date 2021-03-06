USE [master]
GO
/****** Object:  Database [rushik]    Script Date: Mon 07-01-2019 09:06:32 ******/
CREATE DATABASE [rushik]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'rushik', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\rushik.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'rushik_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\rushik_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [rushik] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [rushik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [rushik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [rushik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [rushik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [rushik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [rushik] SET ARITHABORT OFF 
GO
ALTER DATABASE [rushik] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [rushik] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [rushik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [rushik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [rushik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [rushik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [rushik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [rushik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [rushik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [rushik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [rushik] SET  DISABLE_BROKER 
GO
ALTER DATABASE [rushik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [rushik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [rushik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [rushik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [rushik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [rushik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [rushik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [rushik] SET RECOVERY FULL 
GO
ALTER DATABASE [rushik] SET  MULTI_USER 
GO
ALTER DATABASE [rushik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [rushik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [rushik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [rushik] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'rushik', N'ON'
GO
USE [rushik]
GO
/****** Object:  User [bca610]    Script Date: Mon 07-01-2019 09:06:32 ******/
CREATE USER [bca610] FOR LOGIN [bca610] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bca601]    Script Date: Mon 07-01-2019 09:06:32 ******/
CREATE USER [bca601] FOR LOGIN [bca601] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[BBA]    Script Date: Mon 07-01-2019 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BBA](
	[EnrollNo] [int] NOT NULL,
	[RollNo] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNo] [bigint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BCA]    Script Date: Mon 07-01-2019 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BCA](
	[EnrollNo] [int] NOT NULL,
	[RollNo] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNo] [bigint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChristCollege]    Script Date: Mon 07-01-2019 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChristCollege](
	[EnrollNo] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address] [text] NOT NULL,
	[City] [varchar](50) NOT NULL,
	[PhoneNo] [bigint] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Age] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EnrollNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: Mon 07-01-2019 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[country_id] [int] NULL,
	[country_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: Mon 07-01-2019 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[emp_no] [int] NOT NULL,
	[emp_name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[new_country]    Script Date: Mon 07-01-2019 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[new_country](
	[Country_id] [int] NULL,
	[country_name] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentFees]    Script Date: Mon 07-01-2019 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentFees](
	[EnrollNo] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[PanCard] [varchar](50) NOT NULL,
	[AadharCard] [bigint] NOT NULL,
	[AccountNo] [bigint] NOT NULL,
	[IFSCCode] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ChristCollege] ADD  CONSTRAINT [DF_ChristCollege_Class]  DEFAULT ('BCA') FOR [Class]
GO
ALTER TABLE [dbo].[BBA]  WITH CHECK ADD  CONSTRAINT [BBA_FK] FOREIGN KEY([EnrollNo])
REFERENCES [dbo].[ChristCollege] ([EnrollNo])
GO
ALTER TABLE [dbo].[BBA] CHECK CONSTRAINT [BBA_FK]
GO
ALTER TABLE [dbo].[BCA]  WITH CHECK ADD  CONSTRAINT [BCA_FK] FOREIGN KEY([EnrollNo])
REFERENCES [dbo].[ChristCollege] ([EnrollNo])
GO
ALTER TABLE [dbo].[BCA] CHECK CONSTRAINT [BCA_FK]
GO
ALTER TABLE [dbo].[StudentFees]  WITH CHECK ADD  CONSTRAINT [studentFees_Fk] FOREIGN KEY([EnrollNo])
REFERENCES [dbo].[ChristCollege] ([EnrollNo])
GO
ALTER TABLE [dbo].[StudentFees] CHECK CONSTRAINT [studentFees_Fk]
GO
ALTER TABLE [dbo].[ChristCollege]  WITH CHECK ADD  CONSTRAINT [chk1] CHECK  (([Class]='BCA' OR [Class]='BBA'))
GO
ALTER TABLE [dbo].[ChristCollege] CHECK CONSTRAINT [chk1]
GO
ALTER TABLE [dbo].[ChristCollege]  WITH CHECK ADD  CONSTRAINT [chkage] CHECK  (([Age]>(17)))
GO
ALTER TABLE [dbo].[ChristCollege] CHECK CONSTRAINT [chkage]
GO
USE [master]
GO
ALTER DATABASE [rushik] SET  READ_WRITE 
GO
