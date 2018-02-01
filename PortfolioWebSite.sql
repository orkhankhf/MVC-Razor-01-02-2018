USE [master]
GO
/****** Object:  Database [PortfolioWebSite]    Script Date: 2.02.2018 02:24:26 ******/
CREATE DATABASE [PortfolioWebSite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PortfolioWebSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PortfolioWebSite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PortfolioWebSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PortfolioWebSite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PortfolioWebSite] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PortfolioWebSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PortfolioWebSite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET ARITHABORT OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PortfolioWebSite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PortfolioWebSite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PortfolioWebSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PortfolioWebSite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PortfolioWebSite] SET  MULTI_USER 
GO
ALTER DATABASE [PortfolioWebSite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PortfolioWebSite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PortfolioWebSite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PortfolioWebSite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PortfolioWebSite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PortfolioWebSite] SET QUERY_STORE = OFF
GO
USE [PortfolioWebSite]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PortfolioWebSite]
GO
/****** Object:  Table [dbo].[Portfolio]    Script Date: 2.02.2018 02:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_name] [nvarchar](150) NULL,
	[project_description] [nvarchar](1000) NULL,
	[project_img] [nvarchar](10) NULL,
 CONSTRAINT [PK_Portfolio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PortfolioWebSite] SET  READ_WRITE 
GO
