
ALTER DATABASE [UniversityManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [UniversityManagementDB]
GO
/****** Object:  Table [dbo].[AllocateClassroomtb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllocateClassroomtb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NULL,
	[CourseId] [int] NULL,
	[RoomId] [int] NULL,
	[DayId] [int] NULL,
	[FromTime] [time](7) NULL,
	[ToTime] [time](7) NULL,
 CONSTRAINT [PK_AllocateClassroomtb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseEnrolltb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseEnrolltb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[StudentName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_CourseEnrolltb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coursestb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coursestb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Credit] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
 CONSTRAINT [PK_Coursestb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Daystb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Daystb](
	[DaysId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Daystb] PRIMARY KEY CLUSTERED 
(
	[DaysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departmentstb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departmentstb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departmentstb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designationstb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designationstb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designationstb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gradetb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gradetb](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Gradetb] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roomstb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roomstb](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Roomstb] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Semesterstb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semesterstb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Semesterstb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentResult]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Grade] [varchar](50) NULL,
 CONSTRAINT [PK_StudentResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Studentstb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Studentstb](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ContactNo] [int] NULL,
	[Date] [datetime] NULL,
	[Address] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_Studentstb] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacherstb]    Script Date: 12/1/2019 12:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacherstb](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[ContactNo] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[CreditToBeTaken] [int] NOT NULL,
 CONSTRAINT [PK_Techerstb] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Coursestb] ON 

INSERT [dbo].[Coursestb] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (1, N'CSE-1224', N'Algorithm', 3, N'Major Subject', 1, 4)
INSERT [dbo].[Coursestb] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (2, N'CSE-2325', N'Database', 0, N'Major Subject', 1, 4)
INSERT [dbo].[Coursestb] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (3, N'CSE_2024', N'Theory Of Computing', 0, N'Major Subject', 1, 4)
INSERT [dbo].[Coursestb] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (4, N'CSE_2025', N'Database Seccional', 0, N'Major Subject', 1, 5)
INSERT [dbo].[Coursestb] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (5, N'CSE-2326', N'Algorithm Seccional', 0, N'Major Subject', 1, 5)
INSERT [dbo].[Coursestb] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (6, N'23265', N'Alg', 0, N'Major ', 1, 5)
SET IDENTITY_INSERT [dbo].[Coursestb] OFF
SET IDENTITY_INSERT [dbo].[Daystb] ON 

INSERT [dbo].[Daystb] ([DaysId], [Name]) VALUES (7, N'Firday')
INSERT [dbo].[Daystb] ([DaysId], [Name]) VALUES (3, N'Monday')
INSERT [dbo].[Daystb] ([DaysId], [Name]) VALUES (1, N'Saturday')
INSERT [dbo].[Daystb] ([DaysId], [Name]) VALUES (2, N'Sunday')
INSERT [dbo].[Daystb] ([DaysId], [Name]) VALUES (6, N'Thursday')
INSERT [dbo].[Daystb] ([DaysId], [Name]) VALUES (4, N'Tuesday')
INSERT [dbo].[Daystb] ([DaysId], [Name]) VALUES (5, N'Wednesday')
SET IDENTITY_INSERT [dbo].[Daystb] OFF
SET IDENTITY_INSERT [dbo].[Departmentstb] ON 

INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (1, N'CSE', N'Computer Science & Engineering')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (2, N'EEE', N'Electrical & Electronics Engineering')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (3, N'IT', N'Information Technology')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (4, N'BBA', N'Bachelor of Business Administration')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (5, N'EB', N'Economics & Banking')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (6, N'APEE', N'Aplied Physics & Electronic Engineernig')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (7, N'BFT', N'Bachelor of Fashion Technology')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (8, N'LLB', N'Low')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (9, N'ETE', N'Electronics & Telecommunication Engineering')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (10, N'ELL', N'English Literature & Language')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (11, N'Ban', N'Bangla')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (12, N'2326', N'Ban')
INSERT [dbo].[Departmentstb] ([Id], [Code], [Name]) VALUES (13, N'2020', N'Engl')
SET IDENTITY_INSERT [dbo].[Departmentstb] OFF
SET IDENTITY_INSERT [dbo].[Designationstb] ON 

INSERT [dbo].[Designationstb] ([Id], [Name]) VALUES (5, N'Assistant Professor')
INSERT [dbo].[Designationstb] ([Id], [Name]) VALUES (3, N'Asssistant Head')
INSERT [dbo].[Designationstb] ([Id], [Name]) VALUES (1, N'Chairman')
INSERT [dbo].[Designationstb] ([Id], [Name]) VALUES (2, N'Head')
INSERT [dbo].[Designationstb] ([Id], [Name]) VALUES (6, N'Lecturer')
INSERT [dbo].[Designationstb] ([Id], [Name]) VALUES (4, N'Professor')
SET IDENTITY_INSERT [dbo].[Designationstb] OFF
SET IDENTITY_INSERT [dbo].[Gradetb] ON 

INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (2, N'A')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (1, N'A+')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (3, N'A-')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (6, N'B')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (4, N'B+')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (7, N'B-')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (9, N'C')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (8, N'C+')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (10, N'C-')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (12, N'D')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (11, N'D+')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (13, N'D-')
INSERT [dbo].[Gradetb] ([GradeId], [Name]) VALUES (14, N'F')
SET IDENTITY_INSERT [dbo].[Gradetb] OFF
SET IDENTITY_INSERT [dbo].[Semesterstb] ON 

INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (1, N'1st')
INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (2, N'2nd')
INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (3, N'3rd')
INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (4, N'4th')
INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (5, N'5th')
INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (6, N'6th')
INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (7, N'7th')
INSERT [dbo].[Semesterstb] ([Id], [Name]) VALUES (8, N'8th')
SET IDENTITY_INSERT [dbo].[Semesterstb] OFF
SET IDENTITY_INSERT [dbo].[Teacherstb] ON 

INSERT [dbo].[Teacherstb] ([TeacherId], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [CreditToBeTaken]) VALUES (2, N'Afnan', N'North Khulshi', N'Afnan@gmail.com', 1835197434, 5, 1, 20)
INSERT [dbo].[Teacherstb] ([TeacherId], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [CreditToBeTaken]) VALUES (3, N'Ayan Ahmed', N'North Khulshi', N'Ayan@gmail.com', 1850886199, 5, 1, 20)
INSERT [dbo].[Teacherstb] ([TeacherId], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [CreditToBeTaken]) VALUES (4, N'Ayan Ahmed', N'dsfds', N'Arfatdfdsafds.com', 135415, 3, 1, 0)
INSERT [dbo].[Teacherstb] ([TeacherId], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [CreditToBeTaken]) VALUES (5, N'Afnansdaf', N'dfesdaf', N'Arfat@gmailcom', 0, 5, 2, 5)
SET IDENTITY_INSERT [dbo].[Teacherstb] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Coursestb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Coursestb] ADD  CONSTRAINT [IX_Coursestb] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Coursestb_1]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Coursestb] ADD  CONSTRAINT [IX_Coursestb_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Daystb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Daystb] ADD  CONSTRAINT [IX_Daystb] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Departmentstb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Departmentstb] ADD  CONSTRAINT [IX_Departmentstb] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Departmentstb_1]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Departmentstb] ADD  CONSTRAINT [IX_Departmentstb_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Designationstb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Designationstb] ADD  CONSTRAINT [IX_Designationstb] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Gradetb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Gradetb] ADD  CONSTRAINT [IX_Gradetb] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Roomstb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Roomstb] ADD  CONSTRAINT [IX_Roomstb] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Semesterstb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Semesterstb] ADD  CONSTRAINT [IX_Semesterstb] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Studentstb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Studentstb] ADD  CONSTRAINT [IX_Studentstb] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Techerstb]    Script Date: 12/1/2019 12:45:53 PM ******/
ALTER TABLE [dbo].[Teacherstb] ADD  CONSTRAINT [IX_Techerstb] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Coursestb] ADD  CONSTRAINT [DF_Coursestb_CourseCredit]  DEFAULT ((0.5)) FOR [Credit]
GO
ALTER TABLE [dbo].[Teacherstb] ADD  CONSTRAINT [DF_Techerstb_CreditToBeTaken]  DEFAULT ((0.5)) FOR [CreditToBeTaken]
GO
ALTER TABLE [dbo].[AllocateClassroomtb]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroomtb_Coursestb] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Coursestb] ([Id])
GO
ALTER TABLE [dbo].[AllocateClassroomtb] CHECK CONSTRAINT [FK_AllocateClassroomtb_Coursestb]
GO
ALTER TABLE [dbo].[AllocateClassroomtb]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroomtb_Daystb] FOREIGN KEY([DayId])
REFERENCES [dbo].[Daystb] ([DaysId])
GO
ALTER TABLE [dbo].[AllocateClassroomtb] CHECK CONSTRAINT [FK_AllocateClassroomtb_Daystb]
GO
ALTER TABLE [dbo].[AllocateClassroomtb]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroomtb_Departmentstb] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departmentstb] ([Id])
GO
ALTER TABLE [dbo].[AllocateClassroomtb] CHECK CONSTRAINT [FK_AllocateClassroomtb_Departmentstb]
GO
ALTER TABLE [dbo].[AllocateClassroomtb]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroomtb_Roomstb] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Roomstb] ([RoomId])
GO
ALTER TABLE [dbo].[AllocateClassroomtb] CHECK CONSTRAINT [FK_AllocateClassroomtb_Roomstb]
GO
ALTER TABLE [dbo].[Coursestb]  WITH CHECK ADD  CONSTRAINT [FK_Coursestb_Departmentstb] FOREIGN KEY([Id])
REFERENCES [dbo].[Departmentstb] ([Id])
GO
ALTER TABLE [dbo].[Coursestb] CHECK CONSTRAINT [FK_Coursestb_Departmentstb]
GO
ALTER TABLE [dbo].[Coursestb]  WITH CHECK ADD  CONSTRAINT [FK_Coursestb_Semesterstb] FOREIGN KEY([Id])
REFERENCES [dbo].[Semesterstb] ([Id])
GO
ALTER TABLE [dbo].[Coursestb] CHECK CONSTRAINT [FK_Coursestb_Semesterstb]
GO
ALTER TABLE [dbo].[Studentstb]  WITH CHECK ADD  CONSTRAINT [FK_Studentstb_Departmentstb] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departmentstb] ([Id])
GO
ALTER TABLE [dbo].[Studentstb] CHECK CONSTRAINT [FK_Studentstb_Departmentstb]
GO
ALTER TABLE [dbo].[Teacherstb]  WITH CHECK ADD  CONSTRAINT [FK_Techerstb_Departmentstb] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departmentstb] ([Id])
GO
ALTER TABLE [dbo].[Teacherstb] CHECK CONSTRAINT [FK_Techerstb_Departmentstb]
GO
ALTER TABLE [dbo].[Teacherstb]  WITH CHECK ADD  CONSTRAINT [FK_Techerstb_Designationstb] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designationstb] ([Id])
GO
ALTER TABLE [dbo].[Teacherstb] CHECK CONSTRAINT [FK_Techerstb_Designationstb]
GO
USE [master]
GO
ALTER DATABASE [UniversityManagementDB] SET  READ_WRITE 
GO
