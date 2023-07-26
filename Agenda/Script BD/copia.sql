USE [master]
GO
/****** Object:  Database [contactos]    Script Date: 26/7/2023 10:39:51 ******/
CREATE DATABASE [contactos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'contactos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\contactos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'contactos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\contactos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [contactos] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [contactos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [contactos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [contactos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [contactos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [contactos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [contactos] SET ARITHABORT OFF 
GO
ALTER DATABASE [contactos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [contactos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [contactos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [contactos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [contactos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [contactos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [contactos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [contactos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [contactos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [contactos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [contactos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [contactos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [contactos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [contactos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [contactos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [contactos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [contactos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [contactos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [contactos] SET  MULTI_USER 
GO
ALTER DATABASE [contactos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [contactos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [contactos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [contactos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [contactos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [contactos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [contactos] SET QUERY_STORE = ON
GO
ALTER DATABASE [contactos] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [contactos]
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 26/7/2023 10:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacto](
	[idContacto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[numero] [varchar](50) NULL,
	[email] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[contacto] ON 

INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (40, N'valentin', N'1', N'wasdas@gmial.com')
INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (42, N'Martin', N'3855632685', N'martin@gmail.com')
INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (43, N'jorge martinez', N'66989854', N'jorge@outlook.com')
INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (44, N'Mariano', N'989898574', N'mariano@elmariano.com')
INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (45, N'silvina', N'8889874', N'silvia@lg.com')
INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (46, N'Mirta', N'6987744558', N'mirta.mirta@mirta.com')
INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (52, N'silvia', N'', N'silvia@gmail.com')
INSERT [dbo].[contacto] ([idContacto], [nombre], [numero], [email]) VALUES (53, N'Thiago', N'445448517', N'')
SET IDENTITY_INSERT [dbo].[contacto] OFF
GO
USE [master]
GO
ALTER DATABASE [contactos] SET  READ_WRITE 
GO
