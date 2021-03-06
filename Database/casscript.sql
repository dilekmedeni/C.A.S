USE [master]
GO
/****** Object:  Database [CoiffeurAppointmentSystem]    Script Date: 26.03.2020 23:43:34 ******/
CREATE DATABASE [CoiffeurAppointmentSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CoiffeurAppointmentSystem', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CoiffeurAppointmentSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CoiffeurAppointmentSystem_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CoiffeurAppointmentSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CoiffeurAppointmentSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET  MULTI_USER 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET QUERY_STORE = OFF
GO
USE [CoiffeurAppointmentSystem]
GO
/****** Object:  Schema [cas]    Script Date: 26.03.2020 23:43:34 ******/
CREATE SCHEMA [cas]
GO
/****** Object:  Table [cas].[appointment]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[appointment](
	[appointment_id] [int] IDENTITY(1,1) NOT NULL,
	[appointment_date] [date] NOT NULL,
	[user_id] [int] NULL,
	[wp_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[city]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[comment]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](320) NOT NULL,
	[wp_id] [int] NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[district]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[district](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[city_id] [int] NULL,
	[district] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[employee]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[employee](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[wp_id] [int] NULL,
	[staff_id] [int] NULL,
	[description] [nvarchar](320) NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[gender]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[gender](
	[gender_id] [int] IDENTITY(1,1) NOT NULL,
	[gender] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[person]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[person](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [varchar](70) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[gender_id] [int] NULL,
	[city_id] [int] NULL,
	[district_id] [int] NULL,
	[create_date] [date] NOT NULL,
	[birth_day] [date] NOT NULL,
	[img] [image] NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [cas].[role]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[service]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[service](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[work]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[work](
	[work_id] [int] IDENTITY(1,1) NOT NULL,
	[staff_id] [int] NULL,
	[service_id] [int] NULL,
	[wp_id] [int] NULL,
	[price] [int] NOT NULL,
	[description] [nvarchar](320) NULL,
	[estimate_time] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[work_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cas].[workplace]    Script Date: 26.03.2020 23:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cas].[workplace](
	[wp_id] [int] IDENTITY(1,1) NOT NULL,
	[wp_name] [nvarchar](50) NOT NULL,
	[tel_no] [int] NOT NULL,
	[email] [varchar](70) NULL,
	[about] [nvarchar](320) NULL,
	[admin_id] [int] NULL,
	[city_id] [int] NULL,
	[district_id] [int] NULL,
	[address] [nvarchar](320) NOT NULL,
	[zipcode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[wp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [cas].[appointment] ADD  DEFAULT (getdate()) FOR [appointment_date]
GO
ALTER TABLE [cas].[person] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [cas].[appointment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [cas].[person] ([user_id])
GO
ALTER TABLE [cas].[appointment]  WITH CHECK ADD FOREIGN KEY([wp_id])
REFERENCES [cas].[workplace] ([wp_id])
GO
ALTER TABLE [cas].[comment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [cas].[person] ([user_id])
GO
ALTER TABLE [cas].[comment]  WITH CHECK ADD FOREIGN KEY([wp_id])
REFERENCES [cas].[workplace] ([wp_id])
GO
ALTER TABLE [cas].[district]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [cas].[city] ([city_id])
GO
ALTER TABLE [cas].[employee]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [cas].[person] ([user_id])
GO
ALTER TABLE [cas].[employee]  WITH CHECK ADD FOREIGN KEY([wp_id])
REFERENCES [cas].[workplace] ([wp_id])
GO
ALTER TABLE [cas].[person]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [cas].[city] ([city_id])
GO
ALTER TABLE [cas].[person]  WITH CHECK ADD FOREIGN KEY([district_id])
REFERENCES [cas].[district] ([district_id])
GO
ALTER TABLE [cas].[person]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [cas].[gender] ([gender_id])
GO
ALTER TABLE [cas].[person]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [cas].[role] ([role_id])
GO
ALTER TABLE [cas].[work]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [cas].[service] ([service_id])
GO
ALTER TABLE [cas].[work]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [cas].[person] ([user_id])
GO
ALTER TABLE [cas].[work]  WITH CHECK ADD FOREIGN KEY([wp_id])
REFERENCES [cas].[workplace] ([wp_id])
GO
ALTER TABLE [cas].[workplace]  WITH CHECK ADD FOREIGN KEY([admin_id])
REFERENCES [cas].[person] ([user_id])
GO
ALTER TABLE [cas].[workplace]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [cas].[city] ([city_id])
GO
ALTER TABLE [cas].[workplace]  WITH CHECK ADD FOREIGN KEY([district_id])
REFERENCES [cas].[district] ([district_id])
GO
USE [master]
GO
ALTER DATABASE [CoiffeurAppointmentSystem] SET  READ_WRITE 
GO
