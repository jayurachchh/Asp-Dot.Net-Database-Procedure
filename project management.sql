USE [master]
GO
/****** Object:  Database [Project Management 1]    Script Date: 25-07-2024 22:30:21 ******/
CREATE DATABASE [Project Management 1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project Management 1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Project Management 1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project Management 1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Project Management 1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project Management 1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project Management 1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project Management 1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project Management 1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project Management 1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project Management 1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project Management 1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project Management 1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project Management 1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project Management 1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project Management 1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project Management 1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project Management 1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project Management 1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project Management 1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project Management 1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project Management 1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project Management 1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project Management 1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project Management 1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project Management 1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project Management 1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project Management 1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project Management 1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project Management 1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project Management 1] SET  MULTI_USER 
GO
ALTER DATABASE [Project Management 1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project Management 1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project Management 1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project Management 1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project Management 1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project Management 1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Project Management 1] SET QUERY_STORE = OFF
GO
USE [Project Management 1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[Employee]    Script Date: 25-07-2024 22:30:21 ******/
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
	[EmpGitLink] [varchar](max) NULL,
	[EmpCreated] [datetime] NOT NULL,
	[EmpModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[ProjectWiseTask]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[RECENT_ACTIONS_TABLE]    Script Date: 25-07-2024 22:30:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECENT_ACTIONS_TABLE](
	[REC_ACT_ID] [int] IDENTITY(1,1) NOT NULL,
	[REC_ACT_TABLE_NAME] [varchar](100) NOT NULL,
	[RECT_ACT_INFO] [varchar](max) NOT NULL,
	[RECT_ACT_CREATE] [datetime] NOT NULL,
 CONSTRAINT [PK_RECENT_ACTIONS_TABLE] PRIMARY KEY CLUSTERED 
(
	[REC_ACT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[TaskAssign]    Script Date: 25-07-2024 22:30:21 ******/
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
/****** Object:  Table [dbo].[TaskPriority]    Script Date: 25-07-2024 22:30:21 ******/
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
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'116138111709493440945', N'Google', N'0a1dcbc2-1550-4670-9dfb-d4070f793d71')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0a1dcbc2-1550-4670-9dfb-d4070f793d71', N'jayrachchh2612@gmail.com', N'JAYRACHCHH2612@GMAIL.COM', N'jayrachchh2612@gmail.com', N'JAYRACHCHH2612@GMAIL.COM', 1, NULL, N'ZTN7N2S2UUZ2GFUJNE4AKX464P5V4CEY', N'e68f55e7-c5c5-4b79-a5c3-c8e4fc90bbbe', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a4f18f77-ef30-4ee5-a1f7-bf0e4d5920b6', N'sebewij455@facais.com', N'SEBEWIJ455@FACAIS.COM', N'sebewij455@facais.com', N'SEBEWIJ455@FACAIS.COM', 1, N'AQAAAAEAACcQAAAAEK/4BAI5mAmtVn0lMOzXG7kXPKaPmkGNpYGvMFahNlefFzKf0Gbw6aEOWkv9XYYONw==', N'PO72U5OZYTXYNA4VWCPS4HV3F2V27QFC', N'f25cb372-a17d-428d-830f-6b1f066131b4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c61a373a-9952-4542-adf3-d48e7306f3d1', N'marid46900@joeroc.com', N'MARID46900@JOEROC.COM', N'marid46900@joeroc.com', N'MARID46900@JOEROC.COM', 1, N'AQAAAAEAACcQAAAAEK6hITaQf4joFxRtg2ly+WlESl1vYJk1ZEX0Brz33EfIWXoslO2AcivZyBGtlRDO0Q==', N'SYNGL72WNWTE3K5LHRFDMU2VTTC3EBGY', N'6abec955-c640-40ba-87a1-a549ee0cf6c7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd4c5f6b6-a57b-44bb-a771-6476b5a10cde', N'nelotoh945@acuxi.com', N'NELOTOH945@ACUXI.COM', N'nelotoh945@acuxi.com', N'NELOTOH945@ACUXI.COM', 1, N'AQAAAAEAACcQAAAAEItvSLi85cDwPbUpDln3iNKqvb0RdOMYXvy85woFNDjUXVFRGm4wS9Ae3Z5MQEvN+w==', N'2BDKANNXEOINA54H4ACGD53TSKQROVM6', N'7014caa2-3ca2-4058-82cf-82db2ef05069', NULL, 0, 0, NULL, 1, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 25-07-2024 22:30:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25-07-2024 22:30:22 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 25-07-2024 22:30:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 25-07-2024 22:30:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 25-07-2024 22:30:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 25-07-2024 22:30:22 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25-07-2024 22:30:22 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[API_ALL_COUNTS]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[API_ALL_Dashboord_COUNTS]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[APi_DeleteEmployee]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[APi_InsertEmployee]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[APi_SelectAllEmployees]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[APi_SelectEmployeeById]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[APi_UpdateEmployee]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[PR_ADMIN_LOGIN]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_DeleteEmployee]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_DeleteEmployee_Multiple]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_DeleteProject]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_DeleteProjWiseTask]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_DeleteStatus]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_DeleteTask]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_DeleteTaskAssign]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_Employee_MultiDeleteProcedure]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_InsertEmployee]    Script Date: 25-07-2024 22:30:22 ******/
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
    @EmpManagerId VARCHAR(100),
	@EmpGitLink VARCHAR(100)
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
		[dbo].[Employee].EmpGitLink,
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
		@EmpGitLink,
        GETDATE(),
        GETDATE()
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertProject]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_InsertProjWiseTask]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_InsertStatus]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_InsertTask]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_InsertTaskAssign]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_Project_MultiDeleteProcedure]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_ProjectWiseTask_MultiDeleteProcedure]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllEmployees]    Script Date: 25-07-2024 22:30:22 ******/
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
		 [dbo].[Employee].EmpGitLink,
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllProjects]    Script Date: 25-07-2024 22:30:22 ******/
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
		[dbo].[Status].StatusCssColor,
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllProjWiseTasks]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllRecentAction]    Script Date: 25-07-2024 22:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectAllRecentAction]
AS
BEGIN
    SELECT
		 [dbo].[RECENT_ACTIONS_TABLE].REC_ACT_ID,
		 [dbo].[RECENT_ACTIONS_TABLE].REC_ACT_TABLE_NAME,
		 [dbo].[RECENT_ACTIONS_TABLE].RECT_ACT_INFO,
		 [dbo].[RECENT_ACTIONS_TABLE].RECT_ACT_CREATE
    FROM [dbo].[RECENT_ACTIONS_TABLE]
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllStatus]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllTaskAssign]    Script Date: 25-07-2024 22:30:22 ******/
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
		[dbo].[Status].StatusCssColor,
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllTasks]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectEmployeeByEmployee_manager]    Script Date: 25-07-2024 22:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_SelectEmployeeByEmployee_manager] 
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
		[dbo].[Employee].EmpGitLink,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
    WHERE [dbo].[Employee].EmpManagerId ='True'
	ORDER BY
		[dbo].[Employee].[EmpName]
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectEmployeeById]    Script Date: 25-07-2024 22:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
		[dbo].[Employee].EmpGitLink,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
    WHERE [dbo].[Employee].EmpID = @EmpID
	ORDER BY
		[dbo].[Employee].[EmpName]
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectProjectById]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectProjWiseTaskById]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectStatusById]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectTaskAssignById]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_SelectTaskById]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_TaskAssign_MultiDeleteProcedure]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_UpdateEmployee]    Script Date: 25-07-2024 22:30:22 ******/
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
    @EmpManagerId VARCHAR(100),
	@EmpGitLink VARCHAR(100)
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
		[dbo].[Employee].EmpGitLink = @EmpGitLink,
        [dbo].[Employee].EmpModified = GETDATE()
    WHERE EmpID = @EmpID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Pro_UpdateProject]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_UpdateProjWiseTask]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_UpdateStatus]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_UpdateTask]    Script Date: 25-07-2024 22:30:22 ******/
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
/****** Object:  StoredProcedure [dbo].[Pro_UpdateTaskAssign]    Script Date: 25-07-2024 22:30:22 ******/
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
ALTER DATABASE [Project Management 1] SET  READ_WRITE 
GO
