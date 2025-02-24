USE [master]
GO
/****** Object:  Database [Project Management]    Script Date: 21-02-2024 11:21:21 ******/
CREATE DATABASE [Project Management]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project Management', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Project Management.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project Management_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Project Management_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project Management] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project Management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project Management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project Management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project Management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project Management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project Management] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project Management] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Project Management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project Management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project Management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project Management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project Management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project Management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project Management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project Management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project Management] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project Management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project Management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project Management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project Management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project Management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project Management] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project Management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project Management] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project Management] SET  MULTI_USER 
GO
ALTER DATABASE [Project Management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project Management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project Management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project Management] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project Management] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project Management] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Project Management] SET QUERY_STORE = OFF
GO
USE [Project Management]
GO
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLogin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[AdminPassword] [varchar](50) NOT NULL,
	[AdminContactNo] [varchar](50) NOT NULL,
	[AdminEmail] [varchar](50) NOT NULL,
	[AdminLastLogin] [datetime] NOT NULL,
 CONSTRAINT [PK_AdminLogin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](100) NOT NULL,
	[EmpCode] [varchar](100) NOT NULL,
	[EmpPosition] [varchar](100) NOT NULL,
	[EmpContact] [varchar](100) NOT NULL,
	[EmpEmail] [varchar](50) NOT NULL,
	[EmpDepartment] [varchar](100) NOT NULL,
	[EmpDateOfBirth] [datetime] NOT NULL,
	[EmpProfileImage] [varchar](100) NOT NULL,
	[EmpProofImage] [varchar](100) NOT NULL,
	[EmpProofName] [varchar](100) NOT NULL,
	[EmpPerHourCharge] [varchar](100) NOT NULL,
	[EmpManagerId] [varchar](100) NOT NULL,
	[EmpCreated] [datetime] NOT NULL,
	[EmpModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjID] [int] IDENTITY(1,1) NOT NULL,
	[ProjName] [varchar](100) NOT NULL,
	[ProjDescription] [varchar](100) NOT NULL,
	[ProjStartDate] [datetime] NOT NULL,
	[ProjEndDate] [datetime] NOT NULL,
	[ProjTotalCost] [varchar](100) NOT NULL,
	[StatusID] [int] NOT NULL,
	[ProjSource] [varchar](100) NOT NULL,
	[ProjDocumentation] [varchar](100) NOT NULL,
	[ProjCreated] [datetime] NOT NULL,
	[ProjModified] [datetime] NOT NULL,
	[EmpID] [int] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectWiseTask]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectWiseTask](
	[ProjWiseTaskID] [int] IDENTITY(1,1) NOT NULL,
	[ProjID] [int] NOT NULL,
	[ProjWiseTaskNumber] [varchar](100) NOT NULL,
	[ProjWiseTaskName] [varchar](100) NOT NULL,
	[ProjWiseTaskStartDate] [datetime] NOT NULL,
	[ProjWiseTaskEndDate] [datetime] NOT NULL,
	[ProjectWiseTaskEmployeeNumber] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_ProjectWiseTask] PRIMARY KEY CLUSTERED 
(
	[ProjWiseTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](100) NOT NULL,
	[StatusCssColor] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskAssign]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskAssign](
	[TaskAssignID] [int] IDENTITY(1,1) NOT NULL,
	[ProjWiseTaskID] [int] NOT NULL,
	[EmpID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[TaskAssignStartDate] [datetime] NOT NULL,
	[TaskAssignCompletionDate] [datetime] NOT NULL,
	[Remarks] [varchar](100) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_TaskAssign] PRIMARY KEY CLUSTERED 
(
	[TaskAssignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskPriority]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskPriority](
	[TaskPriorityID] [int] IDENTITY(1,1) NOT NULL,
	[TaskPriorityName] [varchar](100) NOT NULL,
	[TaskPriorityCssColor] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[TaskPriorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminLogin] ON 

INSERT [dbo].[AdminLogin] ([AdminID], [AdminName], [AdminPassword], [AdminContactNo], [AdminEmail], [AdminLastLogin]) VALUES (3, N'Jay', N'Jay@1234', N'1234567890', N'jay@gmail.com', CAST(N'2024-02-21T08:16:59.243' AS DateTime))
SET IDENTITY_INSERT [dbo].[AdminLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (7, N'ancdef', N'01', N'aa', N'aa', N'jay@gmail.com', N'aa', CAST(N'2023-11-06T00:00:00.000' AS DateTime), N'419392.jpg', N'427408.jpg', N'Aadhar', N'450', N'True', CAST(N'2023-12-26T21:30:02.390' AS DateTime), CAST(N'2024-02-20T20:53:21.073' AS DateTime))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (1053, N' Jay rachchh', N'01', N'aa', N'aa', N'jay@gmail.com', N'aa', CAST(N'2023-11-06T00:00:00.000' AS DateTime), N'234864.jpg', N'419392.jpg', N'Aadhar', N'450', N'False', CAST(N'2024-02-10T20:15:26.320' AS DateTime), CAST(N'2024-02-20T19:42:48.980' AS DateTime))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (1054, N'Raj', N'101', N'Developer', N'1234567890', N'mafev81632@fkcod.com', N'IT', CAST(N'2024-02-12T00:00:00.000' AS DateTime), N'Photo-1.jpg', N'logo.png', N'Pan', N'500', N'True', CAST(N'2024-02-11T21:33:35.193' AS DateTime), CAST(N'2024-02-11T21:33:35.193' AS DateTime))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (1056, N'Niraj', N'201', N'developer', N'12345678890', N'mafev81632@fkcod.com', N'CSE', CAST(N'2024-02-13T00:00:00.000' AS DateTime), N'Photo-1.jpg', N'Photo-1.jpg', N'pan', N'500', N'False', CAST(N'2024-02-12T12:20:47.720' AS DateTime), CAST(N'2024-02-12T12:20:47.720' AS DateTime))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (1057, N'viraj', N'203', N'Technician', N'1234567890', N'mafev81632@fkcod.com', N'Network', CAST(N'2024-02-20T00:00:00.000' AS DateTime), N'234864.jpg', N'234864.jpg', N'pan', N'500', N'False', CAST(N'2024-02-19T12:40:14.430' AS DateTime), CAST(N'2024-02-19T12:40:14.430' AS DateTime))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (1058, N'veer', N'301', N'Assistent', N'1234567890', N'mafev81632@fkcod.com', N'Development', CAST(N'2024-02-20T00:00:00.000' AS DateTime), N'IMG_20230802_082652575.jpg', N'419392.jpg', N'passport', N'200', N'True', CAST(N'2024-02-19T12:41:32.027' AS DateTime), CAST(N'2024-02-19T12:41:32.027' AS DateTime))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (1059, N'ravindra', N'401', N'Jr.Developer', N'7894561230', N'mafev81632@fkcod.com', N'CSE', CAST(N'2024-02-19T00:00:00.000' AS DateTime), N'234864.jpg', N'234864.jpg', N'pan', N'3000', N'False', CAST(N'2024-02-19T12:42:53.457' AS DateTime), CAST(N'2024-02-19T12:42:53.457' AS DateTime))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpCode], [EmpPosition], [EmpContact], [EmpEmail], [EmpDepartment], [EmpDateOfBirth], [EmpProfileImage], [EmpProofImage], [EmpProofName], [EmpPerHourCharge], [EmpManagerId], [EmpCreated], [EmpModified]) VALUES (1060, N'jayu RACHCHH', N'002', N'CSE', N'1234567890', N'sareti2668@huizk.com', N'CSE', CAST(N'2024-02-18T00:00:00.000' AS DateTime), N'419392.jpg', N'419392.jpg', N'pan', N'5000', N'False', CAST(N'2024-02-20T18:57:14.127' AS DateTime), CAST(N'2024-02-20T19:42:10.693' AS DateTime))
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (9, N'Updated Project X', N'Updated Description of Project X', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), N'120000', 2, N'External', N'Updated_ProjectX_Docs', CAST(N'2023-12-27T10:21:44.837' AS DateTime), CAST(N'2024-02-19T22:41:16.310' AS DateTime), 7)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (32, N'project', N'lck jwjhc ', CAST(N'2024-02-11T00:00:00.000' AS DateTime), CAST(N'2024-02-12T00:00:00.000' AS DateTime), N'500', 7, N'wqkcn ewkcj', N'e ckdsj', CAST(N'2024-02-11T14:46:19.567' AS DateTime), CAST(N'2024-02-20T20:24:14.613' AS DateTime), 1054)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (33, N'bus tracking evalution', N'none', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-21T00:00:00.000' AS DateTime), N'20000', 6, N'none', N'none', CAST(N'2024-02-19T12:44:03.853' AS DateTime), CAST(N'2024-02-20T20:23:58.993' AS DateTime), 1054)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (34, N'ticket booking1', N'none', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-29T00:00:00.000' AS DateTime), N'30000', 3, N'none', N'none', CAST(N'2024-02-19T12:44:54.613' AS DateTime), CAST(N'2024-02-20T20:24:29.077' AS DateTime), 1054)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (35, N'shopping', N'none', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-29T00:00:00.000' AS DateTime), N'30000', 7, N'none', N'none', CAST(N'2024-02-19T12:45:39.207' AS DateTime), CAST(N'2024-02-19T12:47:13.213' AS DateTime), 7)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (36, N'food stole', N'none', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-19T00:00:00.000' AS DateTime), N'5000', 6, N'none', N'none', CAST(N'2024-02-19T12:46:49.123' AS DateTime), CAST(N'2024-02-19T12:46:49.123' AS DateTime), 7)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (37, N'project management', N'none', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-03-02T00:00:00.000' AS DateTime), N'20000', 6, N'none', N'none', CAST(N'2024-02-19T12:49:52.797' AS DateTime), CAST(N'2024-02-19T12:49:52.797' AS DateTime), 7)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (40, N'Project X', N'Description of Project X', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), N'100000', 3, N'Internal', N'ProjectX_Docs', CAST(N'2024-02-19T22:38:30.960' AS DateTime), CAST(N'2024-02-20T20:24:22.130' AS DateTime), 1058)
INSERT [dbo].[Project] ([ProjID], [ProjName], [ProjDescription], [ProjStartDate], [ProjEndDate], [ProjTotalCost], [StatusID], [ProjSource], [ProjDocumentation], [ProjCreated], [ProjModified], [EmpID]) VALUES (41, N'Train tracking evalution', N'none', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-21T00:00:00.000' AS DateTime), N'20000', 6, N'none', N'none', CAST(N'2024-02-20T07:55:34.770' AS DateTime), CAST(N'2024-02-20T20:41:21.313' AS DateTime), 1058)
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectWiseTask] ON 

INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (6, 32, N'5', N'api', CAST(N'2023-12-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime), 8, CAST(N'2023-12-28T20:54:43.247' AS DateTime), CAST(N'2024-02-20T21:55:28.690' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (8, 32, N'Task002', N'Task Name 1', CAST(N'2023-12-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime), 5, CAST(N'2024-01-27T21:55:12.123' AS DateTime), CAST(N'2024-02-20T21:19:56.147' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (18, 37, N'Task006', N'Task Name 2', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-10T13:07:17.693' AS DateTime), CAST(N'2024-02-20T21:20:07.120' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (19, 35, N'Task006', N'Task Name 3', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-10T13:07:22.270' AS DateTime), CAST(N'2024-02-20T21:20:14.970' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (20, 34, N'Task006', N'Task Name 4', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-10T13:07:26.800' AS DateTime), CAST(N'2024-02-20T21:20:22.560' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (21, 35, N'Task006', N'Task Name 5', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-10T13:07:30.990' AS DateTime), CAST(N'2024-02-20T21:20:31.650' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (24, 36, N'12', N'crud', CAST(N'2024-02-12T00:00:00.000' AS DateTime), CAST(N'2024-02-12T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-11T17:56:23.227' AS DateTime), CAST(N'2024-02-20T20:56:44.620' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (25, 33, N'001', N'api', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-22T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-19T12:51:34.197' AS DateTime), CAST(N'2024-02-20T20:54:06.067' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (26, 36, N'002', N'crud in database', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-20T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-19T12:53:19.657' AS DateTime), CAST(N'2024-02-20T20:57:11.180' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (27, 37, N'003', N'database procedure', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-02-23T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-19T12:54:04.013' AS DateTime), CAST(N'2024-02-19T12:54:04.013' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (28, 35, N'003', N'client design', CAST(N'2024-02-19T00:00:00.000' AS DateTime), CAST(N'2024-03-01T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-19T12:56:04.907' AS DateTime), CAST(N'2024-02-20T20:54:40.297' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (29, 32, N'Task006', N'Task Name', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-19T23:05:02.500' AS DateTime), CAST(N'2024-02-20T21:16:52.090' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (30, 41, N'001', N'Procedure', CAST(N'2024-02-18T00:00:00.000' AS DateTime), CAST(N'2024-02-20T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-20T20:48:15.940' AS DateTime), CAST(N'2024-02-20T20:48:15.940' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (31, 35, N'002', N'design', CAST(N'2024-02-18T00:00:00.000' AS DateTime), CAST(N'2024-02-20T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-20T21:17:51.367' AS DateTime), CAST(N'2024-02-20T21:18:23.520' AS DateTime))
INSERT [dbo].[ProjectWiseTask] ([ProjWiseTaskID], [ProjID], [ProjWiseTaskNumber], [ProjWiseTaskName], [ProjWiseTaskStartDate], [ProjWiseTaskEndDate], [ProjectWiseTaskEmployeeNumber], [Created], [Modified]) VALUES (32, 36, N'5', N'API', CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2025-04-01T00:00:00.000' AS DateTime), 5, CAST(N'2024-02-20T23:11:27.267' AS DateTime), CAST(N'2024-02-20T23:11:27.267' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProjectWiseTask] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [StatusName], [StatusCssColor]) VALUES (3, N'Upgoing', N'blue')
INSERT [dbo].[Status] ([StatusID], [StatusName], [StatusCssColor]) VALUES (6, N'Ongoing', N'Red')
INSERT [dbo].[Status] ([StatusID], [StatusName], [StatusCssColor]) VALUES (7, N'Completed', N'Green')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[TaskAssign] ON 

INSERT [dbo].[TaskAssign] ([TaskAssignID], [ProjWiseTaskID], [EmpID], [StatusID], [TaskAssignStartDate], [TaskAssignCompletionDate], [Remarks], [Created], [Modified]) VALUES (12, 24, 1053, 3, CAST(N'2023-12-31T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), N'none', CAST(N'2024-02-10T15:33:15.647' AS DateTime), CAST(N'2024-02-11T20:11:27.593' AS DateTime))
INSERT [dbo].[TaskAssign] ([TaskAssignID], [ProjWiseTaskID], [EmpID], [StatusID], [TaskAssignStartDate], [TaskAssignCompletionDate], [Remarks], [Created], [Modified]) VALUES (14, 6, 7, 6, CAST(N'2023-12-31T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), N'none 2', CAST(N'2024-02-10T15:33:33.240' AS DateTime), CAST(N'2024-02-10T15:33:33.240' AS DateTime))
INSERT [dbo].[TaskAssign] ([TaskAssignID], [ProjWiseTaskID], [EmpID], [StatusID], [TaskAssignStartDate], [TaskAssignCompletionDate], [Remarks], [Created], [Modified]) VALUES (20, 8, 7, 6, CAST(N'2024-02-06T00:00:00.000' AS DateTime), CAST(N'2024-02-07T00:00:00.000' AS DateTime), N'none', CAST(N'2024-02-11T18:47:27.977' AS DateTime), CAST(N'2024-02-11T18:47:27.977' AS DateTime))
INSERT [dbo].[TaskAssign] ([TaskAssignID], [ProjWiseTaskID], [EmpID], [StatusID], [TaskAssignStartDate], [TaskAssignCompletionDate], [Remarks], [Created], [Modified]) VALUES (21, 18, 7, 6, CAST(N'2024-02-12T00:00:00.000' AS DateTime), CAST(N'2024-02-15T00:00:00.000' AS DateTime), N'none', CAST(N'2024-02-11T20:12:09.047' AS DateTime), CAST(N'2024-02-11T20:12:09.047' AS DateTime))
SET IDENTITY_INSERT [dbo].[TaskAssign] OFF
GO
SET IDENTITY_INSERT [dbo].[TaskPriority] ON 

INSERT [dbo].[TaskPriority] ([TaskPriorityID], [TaskPriorityName], [TaskPriorityCssColor]) VALUES (2, N'Review Code', N'red')
SET IDENTITY_INSERT [dbo].[TaskPriority] OFF
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Employee]
GO
ALTER TABLE [dbo].[ProjectWiseTask]  WITH CHECK ADD  CONSTRAINT [FK_ProjectWiseTask_ProjectWiseTask] FOREIGN KEY([ProjID])
REFERENCES [dbo].[Project] ([ProjID])
GO
ALTER TABLE [dbo].[ProjectWiseTask] CHECK CONSTRAINT [FK_ProjectWiseTask_ProjectWiseTask]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_Employee]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_ProjectWiseTask] FOREIGN KEY([ProjWiseTaskID])
REFERENCES [dbo].[ProjectWiseTask] ([ProjWiseTaskID])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_ProjectWiseTask]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_Status]
GO
/****** Object:  StoredProcedure [dbo].[API_ALL_COUNTS]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[API_ALL_COUNTS]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        (SELECT COUNT(DISTINCT EmpID) FROM Employee) AS TotalEmployee,
		(SELECT COUNT(e.EmpID) 
		FROM Employee e 
		LEFT JOIN TaskAssign ta ON e.EmpID = ta.EmpID
		WHERE ta.EmpID IS NULL)AS TotalEmployeesWithoutTasks ,
		(SELECT COUNT(DISTINCT e.EmpID) 
		FROM Employee e
		INNER JOIN TaskAssign ta ON e.EmpID = ta.EmpID)AS TotalEmployeeAssignedtask,
		(SELECT COUNT(DISTINCT ProjID) FROM Project) AS TotalProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=3) AS TotalUpcomingProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=6) AS TotalCurrentProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=7) AS TotalCompleteProject
END
GO
/****** Object:  StoredProcedure [dbo].[API_ALL_Dashboord_COUNTS]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[API_ALL_Dashboord_COUNTS]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        (SELECT COUNT(DISTINCT EmpID) FROM Employee) AS TotalEmployee,
		(SELECT COUNT(e.EmpID) 
		FROM Employee e 
		LEFT JOIN TaskAssign ta ON e.EmpID = ta.EmpID
		WHERE ta.EmpID IS NULL)AS TotalEmployeesWithoutTasks ,
		(SELECT COUNT(DISTINCT e.EmpID) 
		FROM Employee e
		INNER JOIN TaskAssign ta ON e.EmpID = ta.EmpID)AS TotalEmployeeAssignedtask,
		(SELECT COUNT(DISTINCT ProjID) FROM Project) AS TotalProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=3) AS TotalUpcomingProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=6) AS TotalCurrentProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=7) AS TotalCompleteProject
END
GO
/****** Object:  StoredProcedure [dbo].[APi_DeleteEmployee]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[APi_DeleteEmployee]
    @EmpID INT
AS
BEGIN
    DELETE FROM Employee
    WHERE EmpID = @EmpID;
END;
GO
/****** Object:  StoredProcedure [dbo].[APi_InsertEmployee]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[APi_InsertEmployee]
    @EmpName VARCHAR(100),
    @EmpCode VARCHAR(100),
    @EmpPosition VARCHAR(100),
    @EmpContact VARCHAR(100),
    @EmpDepartment VARCHAR(100),
    @EmpDateOfBirth VARCHAR(100),
    @EmpProfileImage VARCHAR(100),
    @EmpProofImage VARCHAR(100),
    @EmpPerHourCharge VARCHAR(100),
    @EmpManagerId VARCHAR(100)
AS
BEGIN
    INSERT INTO Employee
    (
        EmpName,
        EmpCode,
        EmpPosition,
        EmpContact,
        EmpDepartment,
        EmpDateOfBirth,
        EmpProfileImage,
        EmpProofImage,
        EmpPerHourCharge,
        EmpManagerId,
        EmpCreated,
        EmpModified
    )
    VALUES
    (
        @EmpName,
        @EmpCode,
        @EmpPosition,
        @EmpContact,
        @EmpDepartment,
        @EmpDateOfBirth,
        @EmpProfileImage,
        @EmpProofImage,
        @EmpPerHourCharge,
        @EmpManagerId,
        GETDATE(),
        GETDATE()
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[APi_SelectAllEmployees]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[APi_SelectAllEmployees]
AS
BEGIN
    SELECT
        EmpID,
        EmpName,
        EmpCode,
        EmpPosition,
        EmpContact,
        EmpDepartment,
        EmpDateOfBirth,
        EmpProfileImage,
        EmpProofImage,
        EmpPerHourCharge,
        EmpManagerId,
        EmpCreated,
        EmpModified
    FROM Employee
	ORDER BY
[dbo].[Employee].[EmpName]
END;
GO
/****** Object:  StoredProcedure [dbo].[APi_SelectEmployeeById]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[APi_SelectEmployeeById]
    @EmpID INT
AS
BEGIN
    SELECT
        EmpID,
        EmpName,
        EmpCode,
        EmpPosition,
        EmpContact,
        EmpDepartment,
        EmpDateOfBirth,
        EmpProfileImage,
        EmpProofImage,
        EmpPerHourCharge,
        EmpManagerId,
        EmpCreated,
        EmpModified
    FROM Employee
    WHERE EmpID = @EmpID
	ORDER BY
[dbo].[Employee].[EmpName]
END;
GO
/****** Object:  StoredProcedure [dbo].[APi_UpdateEmployee]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[APi_UpdateEmployee]
    @EmpID INT,
    @EmpName VARCHAR(100),
    @EmpCode VARCHAR(100),
    @EmpPosition VARCHAR(100),
    @EmpContact VARCHAR(100),
    @EmpDepartment VARCHAR(100),
    @EmpDateOfBirth VARCHAR(100),
    @EmpProfileImage VARCHAR(100),
    @EmpProofImage VARCHAR(100),
    @EmpPerHourCharge VARCHAR(100),
    @EmpManagerId VARCHAR(100)
AS
BEGIN
    UPDATE Employee
    SET
        EmpName = @EmpName,
        EmpCode = @EmpCode,
        EmpPosition = @EmpPosition,
        EmpContact = @EmpContact,
        EmpDepartment = @EmpDepartment,
        EmpDateOfBirth = @EmpDateOfBirth,
        EmpProfileImage = @EmpProfileImage,
        EmpProofImage = @EmpProofImage,
        EmpPerHourCharge = @EmpPerHourCharge,
        EmpManagerId = @EmpManagerId,
        EmpModified = GETDATE()
    WHERE EmpID = @EmpID;
END;
GO
/****** Object:  StoredProcedure [dbo].[PR_ADMIN_LOGIN]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[PR_ADMIN_LOGIN]
    @Admin_Username varchar(50),
    @Password varchar(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CurrentTime DATETIME = GETDATE();

    -- Check if the login credentials are valid
    IF EXISTS (
        SELECT 
			[dbo].[AdminLogin].[AdminID], 
			[dbo].[AdminLogin].[AdminName], 
			[dbo].[AdminLogin].[AdminPassword], 
			[dbo].[AdminLogin].[AdminContactNo], 
			[dbo].[AdminLogin].[AdminEmail], 
			[dbo].[AdminLogin].[AdminLastLogin]
        FROM [dbo].[AdminLogin]
        WHERE [dbo].[AdminLogin].[AdminName] = @Admin_Username AND [AdminPassword] = @Password
    )
    BEGIN
        -- Update the Last_Login_Time for the logged-in admin
        UPDATE [dbo].[AdminLogin]
        SET [dbo].[AdminLogin].[AdminLastLogin] = @CurrentTime
        WHERE [dbo].[AdminLogin].[AdminName] = @Admin_Username;

        -- Return the user details with formatted Last_Login_Time
        SELECT 
            [AdminID], 
            [AdminName], 
            [AdminPassword], 
            [AdminContactNo], 
            [AdminEmail], 
            FORMAT([AdminLastLogin], 'MM/dd/yyyy hh:mm tt') AS [AdminLastLogin]
        FROM [dbo].[AdminLogin]
        WHERE [AdminName] = @Admin_Username;
    END

END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteEmployee]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_DeleteEmployee]
    @EmpID INT
AS
BEGIN
    DELETE FROM [dbo].[Employee]
    WHERE EmpID = @EmpID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteEmployee_Multiple]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Pro_DeleteEmployee_Multiple]
    @EmployeeIdsList NVARCHAR(MAX)
AS
BEGIN
    DECLARE @EmployeeIdsTable TABLE (EmpID INT);

    -- Convert the comma-separated string to a table of integers
    INSERT INTO @EmployeeIdsTable (EmpID)
    SELECT CAST(value AS INT)
    FROM STRING_SPLIT(@EmployeeIdsList, ',');

    -- Delete records based on the provided IDs
    DELETE FROM [dbo].[Employee]
    WHERE EmpID IN (SELECT EmpID FROM @EmployeeIdsTable);
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteProject]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Pro_DeleteProject]
    @ProjID INT
AS
BEGIN
    DELETE FROM [dbo].[Project]
    WHERE [dbo].[Project].ProjID = @ProjID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteProjWiseTask]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_DeleteProjWiseTask]
    @ProjWiseTaskID INT
AS
BEGIN
    DELETE FROM [dbo].[ProjectWiseTask]
    WHERE [dbo].[ProjectWiseTask].ProjWiseTaskID = @ProjWiseTaskID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteStatus]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_DeleteStatus]
    @StatusID INT
AS
BEGIN
    DELETE FROM [dbo].[Status]
    WHERE [dbo].[Status].StatusID = @StatusID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteTask]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_DeleteTask]
    @TaskPriorityID INT
AS
BEGIN
    DELETE FROM [dbo].[TaskPriority]
    WHERE [dbo].[TaskPriority].TaskPriorityID = @TaskPriorityID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_DeleteTaskAssign]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Delete TaskAssign--
CREATE PROCEDURE [dbo].[Pro_DeleteTaskAssign]
    @TaskAssignID INT
AS
BEGIN
    DELETE FROM [dbo].[TaskAssign]
    WHERE [dbo].[TaskAssign].TaskAssignID = @TaskAssignID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_Employee_MultiDeleteProcedure]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_Employee_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM Employee WHERE EmpID IN (' + @lstid + ')'
	
	EXEC sp_executesql @sql
END
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertEmployee]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_InsertEmployee]
    @EmpName VARCHAR(100),
    @EmpCode VARCHAR(100),
    @EmpPosition VARCHAR(100),
    @EmpContact VARCHAR(100),
	@EmpEmail VARCHAR(100),
    @EmpDepartment VARCHAR(100),
    @EmpDateOfBirth VARCHAR(100),
    @EmpProfileImage VARCHAR(100),
    @EmpProofImage VARCHAR(100),
	@EmpProofName VARCHAR(100),
    @EmpPerHourCharge VARCHAR(100),
    @EmpManagerId VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[Employee]
    (
        [dbo].[Employee].EmpName,
        [dbo].[Employee].EmpCode,
        [dbo].[Employee].EmpPosition,
        [dbo].[Employee].EmpContact,
		[dbo].[Employee].EmpEmail,
        [dbo].[Employee].EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage,
        [dbo].[Employee].EmpProofImage,
		[dbo].[Employee].EmpProofName,
        [dbo].[Employee].EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    )
    VALUES
    (
        @EmpName,
        @EmpCode,
        @EmpPosition,
        @EmpContact,
		@EmpEmail,
        @EmpDepartment,
        @EmpDateOfBirth,
        @EmpProfileImage,
        @EmpProofImage,
		@EmpProofName,
        @EmpPerHourCharge,
        @EmpManagerId,
        GETDATE(),
        GETDATE()
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertProject]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_InsertProject]
    @ProjName VARCHAR(100),
    @ProjDescription VARCHAR(100),
    @ProjStartDate DATETIME,
    @ProjEndDate DATETIME,
    @ProjTotalCost VARCHAR(100),
    @StatusID INT,
	@EmpID INT,
    @ProjSource VARCHAR(100),
    @ProjDocumentation VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[Project]
    (
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
        [dbo].[Project].StatusID,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    )
    VALUES
    (
        @ProjName,
        @ProjDescription,
        @ProjStartDate,
        @ProjEndDate,
        @ProjTotalCost,
        @EmpID,
        @StatusID,
        @ProjSource,
        @ProjDocumentation,
        GETDATE(),
        GETDATE()
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertProjWiseTask]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_InsertProjWiseTask]
    @ProjID INT,
    @ProjWiseTaskNumber VARCHAR(100),
    @ProjWiseTaskName VARCHAR(100),
    @ProjWiseTaskStartDate DATETIME,
	@ProjWiseTaskEndDate DATETIME,
    @ProjectWiseTaskEmployeeNumber Int
AS
BEGIN
    INSERT INTO [dbo].[ProjectWiseTask]
    (
        [dbo].[ProjWiseTask].ProjID,
        [dbo].[ProjWiseTask].ProjWiseTaskNumber,
        [dbo].[ProjWiseTask].ProjWiseTaskName,
        [dbo].[ProjWiseTask].ProjWiseTaskStartDate,
		[dbo].[ProjWiseTask].ProjWiseTaskEndDate,
        [dbo].[ProjWiseTask].ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjWiseTask].Created,
        [dbo].[ProjWiseTask].Modified
    )
    VALUES
    (
        @ProjID,
        @ProjWiseTaskNumber,
        @ProjWiseTaskName,
		@ProjWiseTaskStartDate,
        @ProjWiseTaskEndDate,
        @ProjectWiseTaskEmployeeNumber,
        GETDATE(),
        GETDATE()
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertStatus]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_InsertStatus]
    @StatusName VARCHAR(100),
	@StatusCssColor VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[Status] 
	(
		[dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor
	)
    VALUES 
	(
		@StatusName,
		@StatusCssColor
	);
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertTask]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_InsertTask]
    @TaskPriorityName VARCHAR(100),
	@TaskPriorityCssColor VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[TaskPriority] 
	(
		[dbo].[TaskPriority].TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor
	)
    VALUES 
	(
		@TaskPriorityName,
		@TaskPriorityCssColor
	);
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertTaskAssign]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_InsertTaskAssign]
    @TaskAssignStartDate DATETIME,
    @TaskAssignCompletionDate DATETIME,
	@Remarks VARCHAR(100),
    @ProjWiseTaskID INT,
    @EmpID INT,
    @StatusID INT
AS
BEGIN
    INSERT INTO [dbo].[TaskAssign] 
    (
		[dbo].[TaskAssign].TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID,
		[dbo].[TaskAssign].EmpID,
		[dbo].[TaskAssign].StatusID,
        [dbo].[TaskAssign].Created,
        [dbo].[TaskAssign].Modified
    )
    VALUES
    (
	    @TaskAssignStartDate,
		@TaskAssignCompletionDate,
		@Remarks,
		@ProjWiseTaskID,
		@EmpID ,
		@StatusID,
        GETDATE(),
        GETDATE()
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_Project_MultiDeleteProcedure]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[Pro_Project_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM Project WHERE ProjID IN (' + @lstid + ')'
	EXEC sp_executesql @sql
	print(@sql);
END
GO
/****** Object:  StoredProcedure [dbo].[Pro_ProjectWiseTask_MultiDeleteProcedure]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_ProjectWiseTask_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM ProjectWiseTask WHERE ProjWiseTaskID IN (' + @lstid + ')'
	EXEC sp_executesql @sql
	print(@sql);
END
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllEmployees]    Script Date: 21-02-2024 11:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get All Employee--
CREATE PROCEDURE [dbo].[Pro_SelectAllEmployees]
@EmpName varchar(100)=null,
@EmpCode varchar(100)=null,
@EmpPosition  varchar(100)=null,
@EmpDepartment  varchar(100)=null,
@EmpManagerId  varchar(100)=null
AS
BEGIN
    SELECT
		 [dbo].[Employee].EmpID,
		 CAST([dbo].[Employee].EmpCode + ' - '  + [dbo].[Employee].EmpName AS nvarchar(100)) AS EmpName,
		 [dbo].[Employee].EmpCode,
		 [dbo].[Employee].EmpPosition,
		 [dbo].[Employee].EmpContact,
		 [dbo].[Employee].EmpEmail,
		 [dbo].[Employee].EmpDepartment,
		 [dbo].[Employee].EmpDateOfBirth,
		 [dbo].[Employee].EmpProfileImage,
		 [dbo].[Employee].EmpProofImage,
		 [dbo].[Employee].EmpProofName,
		 [dbo].[Employee].EmpPerHourCharge,
		 [dbo].[Employee].EmpManagerId,
		 [dbo].[Employee].EmpCreated,
		 [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
	WHERE	(@EmpName is null or EmpName Like '%'+@EmpName+'%') AND
			(@EmpCode is null or EmpCode Like '%'+@EmpCode+'%') AND
			(@EmpPosition is null or EmpPosition Like '%'+@EmpPosition+'%') AND
			(@EmpDepartment is null or EmpDepartment Like '%'+@EmpDepartment+'%') AND
			(@EmpManagerId is null or EmpManagerId Like '%'+@EmpManagerId+'%')
	ORDER BY
		 [dbo].[Employee].[EmpName]
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllProjects]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get all Project
CREATE PROCEDURE [dbo].[Pro_SelectAllProjects]
@ProjName VARCHAR(100)=null,
@ProjStartDate VARCHAR(100) =null,
@ProjEndDate VARCHAR(100) =null,
@StatusID VARCHAR(100) =null,
@EmpID VARCHAR(100)=null
AS
BEGIN
    SELECT
        [dbo].[Project].ProjID,
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
		[dbo].[Employee].EmpName,
        [dbo].[Project].StatusID,
		[dbo].[Status].StatusName,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    FROM [dbo].[Project]
	INNER JOIN [dbo].[Status]
	ON [dbo].[Status].[StatusID]=[dbo].[Project].[StatusID]
	INNER JOIN [dbo].[Employee]
	ON [dbo].[Employee].[EmpID]=[dbo].[Project].[EmpID]
		WHERE(@ProjName is null or ProjName Like '%'+@ProjName+'%') AND
		(@ProjStartDate is null or ProjStartDate Like '%'+@ProjStartDate+'%') AND
		(@ProjEndDate is null or ProjEndDate Like '%'+@ProjEndDate+'%') AND
		(@StatusID is null or [Status].StatusID Like '%'+@StatusID+'%') AND
		(@EmpID is null or [Employee].EmpID Like '%'+@EmpID+'%') 
    ORDER BY [dbo].[Project].ProjName;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllProjWiseTasks]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get all ProjectWiseTask--
CREATE   PROCEDURE [dbo].[Pro_SelectAllProjWiseTasks]
@ProjID VARCHAR(100)=Null,
@ProjWiseTaskName VARCHAR(100)=Null,
@ProjWiseTaskNumber VARCHAR(100)=Null,
@ProjWiseTaskStartDate VARCHAR(100)=Null,
@ProjWiseTaskEndDate VARCHAR(100)=Null
AS
BEGIN
    SELECT
        [dbo].[ProjectWiseTask].ProjWiseTaskID,
        [dbo].[ProjectWiseTask].ProjID,
		[dbo].[Project].ProjName,
        [dbo].[ProjectWiseTask].ProjWiseTaskNumber,
        [dbo].[ProjectWiseTask].ProjWiseTaskName,
        [dbo].[ProjectWiseTask].ProjWiseTaskStartDate,
		[dbo].[ProjectWiseTask].ProjWiseTaskEndDate,
        [dbo].[ProjectWiseTask].ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjectWiseTask].Created,
        [dbo].[ProjectWiseTask].Modified
    FROM [dbo].[ProjectWiseTask]
	INNER Join [dbo].[Project]
	ON [dbo].[Project].ProjID=[dbo].[ProjectWiseTask].ProjID
		WHERE(@ProjID is null or [Project].ProjID Like '%'+@ProjID+'%') AND
		(@ProjWiseTaskName is null or ProjWiseTaskName Like '%'+@ProjWiseTaskName+'%') AND
		(@ProjWiseTaskNumber is null or ProjWiseTaskNumber Like '%'+@ProjWiseTaskNumber+'%') AND
		(@ProjWiseTaskStartDate is null or ProjWiseTaskStartDate Like '%'+@ProjWiseTaskStartDate+'%') AND
		(@ProjWiseTaskEndDate is null or ProjWiseTaskEndDate Like '%'+@ProjWiseTaskEndDate+'%')
    ORDER BY [dbo].[ProjectWiseTask].ProjWiseTaskName;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllStatus]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectAllStatus]
AS
BEGIN
    SELECT
        [dbo].[Status].StatusID,
        [dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor
    FROM [dbo].[Status]
    ORDER BY [dbo].[Status].StatusName;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllTaskAssign]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get all TaskAssign--
CREATE PROCEDURE [dbo].[Pro_SelectAllTaskAssign]
@TaskAssignStartDate VARCHAR(100)=null,
@TaskAssignCompletionDate VARCHAR(100)=null,
@ProjWiseTaskID VARCHAR(100)=null,
@EmpID VARCHAR(100)=null,
@StatusID VARCHAR(100)=null
AS
BEGIN
    SELECT
        [dbo].[TaskAssign].TaskAssignID,
		[dbo].[TaskAssign].TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID,
		[dbo].[ProjectWiseTask].ProjWiseTaskName,
		[dbo].[TaskAssign].EmpID,
		[dbo].[Employee].EmpName,
		[dbo].[TaskAssign].StatusID,
		[dbo].[Status].StatusName,
        [dbo].[TaskAssign].Created,
        [dbo].[TaskAssign].Modified
    FROM [dbo].[TaskAssign]
	INNER Join [dbo].[ProjectWiseTask]
	ON [dbo].[ProjectWiseTask].ProjWiseTaskID=[dbo].[TaskAssign].ProjWiseTaskID

	INNER Join [dbo].[Employee]
	ON [dbo].[Employee].EmpID=[dbo].[TaskAssign].EmpID

	INNER Join [dbo].[Status]
	ON [dbo].[Status].StatusID=[dbo].[TaskAssign].StatusID
	WHERE(@TaskAssignStartDate is null or TaskAssignStartDate Like '%'+@TaskAssignStartDate+'%') AND
		(@TaskAssignCompletionDate is null or TaskAssignCompletionDate Like '%'+@TaskAssignCompletionDate+'%') AND
		(@ProjWiseTaskID is null or [ProjectWiseTask].ProjWiseTaskID Like '%'+@ProjWiseTaskID+'%') AND
		(@EmpID is null or [Employee].EmpID Like '%'+@EmpID+'%') AND
		(@StatusID is null or [Status].StatusID Like '%'+@StatusID+'%')
    ORDER BY [dbo].[TaskAssign].TaskAssignID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllTasks]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectAllTasks]
AS
BEGIN
    SELECT
        [dbo].[TaskPriority].TaskPriorityID,
        [dbo].[TaskPriority].TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor
    FROM [dbo].[TaskPriority]
    ORDER BY  [dbo].[TaskPriority].TaskPriorityName;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectEmployeeByEmployee_manager]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Pro_SelectEmployeeByEmployee_manager]
  
AS
BEGIN
    SELECT
        [dbo].[Employee].EmpID,
        [dbo].[Employee].EmpName,
        [dbo].[Employee].EmpCode,
        [dbo].[Employee].EmpPosition,
        [dbo].[Employee].EmpContact,
		[dbo].[Employee].EmpEmail,
        [dbo].[Employee].EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage,
		[dbo].[Employee].EmpProofName,
        [dbo].[Employee].EmpProofImage,
        [dbo].[Employee].EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
    WHERE [dbo].[Employee].EmpManagerId ='True'
	ORDER BY
		[dbo].[Employee].[EmpName]
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectEmployeeById]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--GetByID Employee--
CREATE PROCEDURE [dbo].[Pro_SelectEmployeeById]
    @EmpID INT
AS
BEGIN
    SELECT
        [dbo].[Employee].EmpID,
        [dbo].[Employee].EmpName,
        [dbo].[Employee].EmpCode,
        [dbo].[Employee].EmpPosition,
        [dbo].[Employee].EmpContact,
		[dbo].[Employee].EmpEmail,
        [dbo].[Employee].EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage,
		[dbo].[Employee].EmpProofName,
        [dbo].[Employee].EmpProofImage,
        [dbo].[Employee].EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
    WHERE [dbo].[Employee].EmpID = @EmpID
	ORDER BY
		[dbo].[Employee].[EmpName]
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectProjectById]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectProjectById]
    @ProjID INT
AS
BEGIN
    SELECT
        [dbo].[Project].ProjID,
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
		[dbo].[Employee].EmpName,
        [dbo].[Project].StatusID,
		[dbo].[Status].StatusName,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    FROM [dbo].[Project]
	INNER JOIN [dbo].[Status]
	ON [dbo].[Status].[StatusID]=[dbo].[Project].[StatusID]
	INNER JOIN [dbo].[Employee]
	ON [dbo].[Employee].[EmpID]=[dbo].[Project].[EmpID]
    WHERE [dbo].[Project].ProjID = @ProjID
    ORDER BY [dbo].[Project].ProjName;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectProjWiseTaskById]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectProjWiseTaskById]
    @ProjWiseTaskID INT
AS
BEGIN
  SELECT
        [dbo].[ProjectWiseTask].ProjWiseTaskID,
        [dbo].[ProjectWiseTask].ProjID,
		[dbo].[Project].ProjName,
        [dbo].[ProjectWiseTask].ProjWiseTaskNumber,
        [dbo].[ProjectWiseTask].ProjWiseTaskName,
        [dbo].[ProjectWiseTask].ProjWiseTaskStartDate,
		[dbo].[ProjectWiseTask].ProjWiseTaskEndDate,
		[dbo].[ProjectWiseTask].ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjectWiseTask].Created,
        [dbo].[ProjectWiseTask].Modified
    FROM [dbo].[ProjectWiseTask]
	INNER Join [dbo].[Project]
	ON [dbo].[Project].ProjID=[dbo].[ProjectWiseTask].ProjID
    WHERE [dbo].[ProjectWiseTask].ProjWiseTaskID = @ProjWiseTaskID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectStatusById]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectStatusById]
    @StatusID INT
AS
BEGIN
    SELECT
        [dbo].[Status].StatusID,
        [dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor
    FROM [dbo].[Status]
    WHERE [dbo].[Status].[StatusID] = @StatusID
    ORDER BY [dbo].[Status].StatusName;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectTaskAssignById]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectTaskAssignById]
    @TaskAssignID INT
AS
BEGIN
   SELECT
        [dbo].[TaskAssign].TaskAssignID,
		[dbo].[TaskAssign].TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID,
		[dbo].[ProjectWiseTask].ProjWiseTaskName,
		[dbo].[TaskAssign].EmpID,
		[dbo].[Employee].EmpName,
		[dbo].[TaskAssign].StatusID,
		[dbo].[Status].StatusName,
        [dbo].[TaskAssign].Created,
        [dbo].[TaskAssign].Modified
    FROM [dbo].[TaskAssign]
	INNER Join [dbo].[ProjectWiseTask]
	ON [dbo].[ProjectWiseTask].ProjWiseTaskID=[dbo].[TaskAssign].ProjWiseTaskID

	INNER Join [dbo].[Employee]
	ON [dbo].[Employee].EmpID=[dbo].[TaskAssign].EmpID

	INNER Join [dbo].[Status]
	ON [dbo].[Status].StatusID=[dbo].[TaskAssign].StatusID

	WHERE [dbo].[TaskAssign].TaskAssignID = @TaskAssignID
    ORDER BY [dbo].[TaskAssign].TaskAssignID
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectTaskById]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectTaskById]
    @TaskPriorityID INT
AS
BEGIN
    SELECT
        [dbo].[TaskPriority].TaskPriorityID,
        [dbo].[TaskPriority].TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor
    FROM [dbo].[TaskPriority]
	WHERE [dbo].[TaskPriority].TaskPriorityID = @TaskPriorityID
    ORDER BY  [dbo].[TaskPriority].TaskPriorityName;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_TaskAssign_MultiDeleteProcedure]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Pro_TaskAssign_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM TaskAssign WHERE TaskAssignID IN (' + @lstid + ')'
	
	EXEC sp_executesql @sql
END
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateEmployee]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_UpdateEmployee]
    @EmpID INT,
    @EmpName VARCHAR(100),
    @EmpCode VARCHAR(100),
    @EmpPosition VARCHAR(100),
    @EmpContact VARCHAR(100),
	@EmpEmail VARCHAR(100),
    @EmpDepartment VARCHAR(100),
    @EmpDateOfBirth VARCHAR(100),
    @EmpProfileImage VARCHAR(100),
    @EmpProofImage VARCHAR(100),
	@EmpProofName VARCHAR(100),
    @EmpPerHourCharge VARCHAR(100),
    @EmpManagerId VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[Employee]
    SET
        [dbo].[Employee].EmpName = @EmpName,
        [dbo].[Employee].EmpCode = @EmpCode,
        [dbo].[Employee].EmpPosition = @EmpPosition,
        [dbo].[Employee].EmpContact = @EmpContact,
		[dbo].[Employee].EmpEmail = @EmpEmail,
        [dbo].[Employee].EmpDepartment = @EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth = @EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage = @EmpProfileImage,
        [dbo].[Employee].EmpProofImage = @EmpProofImage,
		[dbo].[Employee].EmpProofName=@EmpProofName,
        [dbo].[Employee].EmpPerHourCharge = @EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId = @EmpManagerId,
        [dbo].[Employee].EmpModified = GETDATE()
    WHERE EmpID = @EmpID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateProject]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_UpdateProject]
    @ProjID INT,
    @ProjName VARCHAR(100),
    @ProjDescription VARCHAR(100),
    @ProjStartDate DATETIME,
    @ProjEndDate DATETIME,
    @ProjTotalCost VARCHAR(100),
    @StatusID INT,
	@EmpID INT,
    @ProjSource VARCHAR(100),
    @ProjDocumentation VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[Project]
    SET
        [dbo].[Project].ProjName = @ProjName,
        [dbo].[Project].ProjDescription = @ProjDescription,
        [dbo].[Project].ProjStartDate = @ProjStartDate,
        [dbo].[Project].ProjEndDate = @ProjEndDate,
        [dbo].[Project].ProjTotalCost = @ProjTotalCost,
        [dbo].[Project].EmpID = @EmpID,
        [dbo].[Project].StatusID = @StatusID,
        [dbo].[Project].ProjSource = @ProjSource,
        [dbo].[Project].ProjDocumentation = @ProjDocumentation,
        [dbo].[Project].ProjModified = GETDATE()
    WHERE [dbo].[Project].ProjID = @ProjID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateProjWiseTask]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_UpdateProjWiseTask]
    @ProjWiseTaskID INT,
    @ProjID INT,
    @ProjWiseTaskNumber VARCHAR(100),
    @ProjWiseTaskName VARCHAR(100),
   @ProjWiseTaskStartDate DATETIME,
	@ProjWiseTaskEndDate DATETIME,
     @ProjectWiseTaskEmployeeNumber Int
AS
BEGIN
    UPDATE [dbo].[ProjectWiseTask]
    SET
        [dbo].[ProjectWiseTask].ProjID = @ProjID,
        [dbo].[ProjectWiseTask].ProjWiseTaskNumber = @ProjWiseTaskNumber,
        [dbo].[ProjectWiseTask].ProjWiseTaskName = @ProjWiseTaskName,
        [dbo].[ProjectWiseTask].ProjWiseTaskStartDate = @ProjWiseTaskStartDate,
		[dbo].[ProjectWiseTask].ProjWiseTaskEndDate = @ProjWiseTaskEndDate,
        [dbo].[ProjectWiseTask].ProjectWiseTaskEmployeeNumber  =  @ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjectWiseTask].Modified = GETDATE()
    WHERE [dbo].[ProjectWiseTask].ProjWiseTaskID = @ProjWiseTaskID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateStatus]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_UpdateStatus]
    @StatusID INT,
    @StatusName VARCHAR(100),
	@StatusCssColor VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[Status]
    SET 
	[dbo].[Status].StatusName = @StatusName,
	[dbo].[Status].StatusCssColor= @StatusCssColor 
    WHERE [dbo].[Status].StatusID = @StatusID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateTask]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_UpdateTask]
    @TaskPriorityID INT,
    @TaskPriorityName VARCHAR(100),
	@TaskPriorityCssColor VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[TaskPriority]
    SET 
		[dbo].[TaskPriority].TaskPriorityName = @TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor=@TaskPriorityCssColor
    WHERE [dbo].[TaskPriority].TaskPriorityID = @TaskPriorityID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateTaskAssign]    Script Date: 21-02-2024 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Update TaskAssign--
CREATE PROCEDURE [dbo].[Pro_UpdateTaskAssign]
    @TaskAssignID INT,
    @TaskAssignStartDate DATETIME,
    @TaskAssignCompletionDate DATETIME,
	@Remarks VARCHAR(100),
    @ProjWiseTaskID INT,
    @EmpID INT,
    @StatusID INT
AS
BEGIN
    UPDATE [dbo].[TaskAssign]
    SET
		[dbo].[TaskAssign].TaskAssignStartDate = @TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate = @TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks=@Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID = @ProjWiseTaskID,
		[dbo].[TaskAssign].EmpID = @EmpID,
		[dbo].[TaskAssign].StatusID = @StatusID,
        [dbo].[TaskAssign].Modified = GETDATE()
    WHERE [dbo].[TaskAssign].TaskAssignID = @TaskAssignID;
END;
GO
USE [master]
GO
ALTER DATABASE [Project Management] SET  READ_WRITE 
GO
