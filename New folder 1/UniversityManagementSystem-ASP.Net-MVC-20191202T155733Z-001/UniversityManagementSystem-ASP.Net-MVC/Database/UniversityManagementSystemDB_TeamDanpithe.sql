
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [UniversityManagementSystemDB_TeamDanpithe]
GO
/****** Object:  Table [dbo].[AllocateClassroom]    Script Date: 9/29/2018 8:55:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllocateClassroom](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[DeptId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
	[DayId] [int] NOT NULL,
	[FromTime] [varchar](50) NOT NULL,
	[ToTime] [varchar](50) NOT NULL,
	[Action] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AllocateClassroom] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[CourseCode] [varchar](50) NOT NULL,
	[Credit] [float] NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[DeptId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseAssignToTeacher]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseAssignToTeacher](
	[CourseAsgnId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Action] [varchar](50) NOT NULL,
	[DeptId] [int] NOT NULL,
 CONSTRAINT [PK_CourseAssignToTeacher] PRIMARY KEY CLUSTERED 
(
	[CourseAsgnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designations](
	[DesignationsId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationsName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designations] PRIMARY KEY CLUSTERED 
(
	[DesignationsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enroll](
	[EnrollId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[GradeId] [int] NULL,
	[Action] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Enroll] PRIMARY KEY CLUSTERED 
(
	[EnrollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [varchar](50) NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterId] [int] IDENTITY(1,1) NOT NULL,
	[SemesterName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Address] [varchar](50) NULL,
	[DepartmentId] [int] NOT NULL,
	[RegistrationNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[DesignationId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Credit] [float] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WeekDays]    Script Date: 9/29/2018 8:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WeekDays](
	[DayId] [int] IDENTITY(1,1) NOT NULL,
	[DayName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WeekDays] PRIMARY KEY CLUSTERED 
(
	[DayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AllocateClassroom] ON 

INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (1, 1, 1, 1, 1, N'08:30 AM', N'10:30 AM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (2, 1, 1, 1, 1, N'11:30 AM', N'02:30 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (1002, 1, 1, 1, 1, N'08:14 PM', N'10:14 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (1003, 1, 1, 1, 1, N'06:27 PM', N'07:04 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (1004, 1, 1, 1, 1, N'02:36 PM', N'04:00 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (2002, 2, 5, 1, 1, N'10:58 AM', N'11:00 AM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (3002, 1, 1, 1, 1, N'08:30 AM', N'10:11 AM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (4002, 1, 1, 1, 1, N'07:15 PM', N'07:15 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (4003, 1, 1, 1, 1, N'07:15 PM', N'07:15 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (4004, 2, 6, 1, 1, N'07:15 PM', N'07:15 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (4005, 2, 5, 1, 1, N'07:42 PM', N'07:43 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (4006, 1, 2, 2, 1, N'07:47 PM', N'07:50 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (4007, 1, 1, 3, 1, N'07:52 AM', N'08:52 AM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (5002, 1, 7, 1, 4, N'02:37 PM', N'06:28 PM', N'insert')
INSERT [dbo].[AllocateClassroom] ([ClassId], [DeptId], [CourseId], [RoomId], [DayId], [FromTime], [ToTime], [Action]) VALUES (6002, 1, 2, 1, 1, N'01:58 AM', N'02:58 AM', N'insert')
SET IDENTITY_INSERT [dbo].[AllocateClassroom] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [Credit], [Description], [DeptId], [SemesterId]) VALUES (1, N'Computer Networks', N'CSE-4701', 3, N'Prerequisite Course CSE-3601', 1, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [Credit], [Description], [DeptId], [SemesterId]) VALUES (2, N'Computer Graphics', N'CSE-4703', 3, N'Prerequisite MATH-2401
CSE-2403', 1, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [Credit], [Description], [DeptId], [SemesterId]) VALUES (3, N'Artificial Intelligence', N'CSE-4703', 3, N'Prerequisite CSE-2303', 1, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [Credit], [Description], [DeptId], [SemesterId]) VALUES (4, N'Computer Networks sessional', N'CSE-4702', 1.5, N'No Prerequisite', 1, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [Credit], [Description], [DeptId], [SemesterId]) VALUES (5, N'Industrial Psychology', N'GE-300', 3, N'Prerequisite 
GE – 202', 2, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [Credit], [Description], [DeptId], [SemesterId]) VALUES (6, N'Entrepreneurship Development', N'CC-304', 1.5, N'Prerequisite 
CC – 206', 2, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [Credit], [Description], [DeptId], [SemesterId]) VALUES (7, N'Algorithm', N'CSE-3098', 3, N'optional', 1, 7)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[CourseAssignToTeacher] ON 

INSERT [dbo].[CourseAssignToTeacher] ([CourseAsgnId], [TeacherId], [CourseId], [Action], [DeptId]) VALUES (1, 1003, 1, N'insert', 1)
INSERT [dbo].[CourseAssignToTeacher] ([CourseAsgnId], [TeacherId], [CourseId], [Action], [DeptId]) VALUES (2, 1003, 2, N'insert', 1)
SET IDENTITY_INSERT [dbo].[CourseAssignToTeacher] OFF
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DeptId], [Code], [Name]) VALUES (1, N'CSE', N'Computer Science & Engineering')
INSERT [dbo].[Departments] ([DeptId], [Code], [Name]) VALUES (2, N'BBA', N'Business Administration')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Designations] ON 

INSERT [dbo].[Designations] ([DesignationsId], [DesignationsName]) VALUES (1, N'Leacturer')
SET IDENTITY_INSERT [dbo].[Designations] OFF
SET IDENTITY_INSERT [dbo].[Enroll] ON 

INSERT [dbo].[Enroll] ([EnrollId], [StudentId], [CourseId], [Date], [GradeId], [Action]) VALUES (1, 1, 1, CAST(0xB63E0B00 AS Date), 1, N'insert')
INSERT [dbo].[Enroll] ([EnrollId], [StudentId], [CourseId], [Date], [GradeId], [Action]) VALUES (2, 1, 2, CAST(0xB63E0B00 AS Date), 1, N'insert')
INSERT [dbo].[Enroll] ([EnrollId], [StudentId], [CourseId], [Date], [GradeId], [Action]) VALUES (3, 2, 1, CAST(0xB63E0B00 AS Date), NULL, N'insert')
INSERT [dbo].[Enroll] ([EnrollId], [StudentId], [CourseId], [Date], [GradeId], [Action]) VALUES (4, 2, 2, CAST(0xB63E0B00 AS Date), NULL, N'insert')
INSERT [dbo].[Enroll] ([EnrollId], [StudentId], [CourseId], [Date], [GradeId], [Action]) VALUES (1002, 6, 2, CAST(0xC53E0B00 AS Date), NULL, N'insert')
SET IDENTITY_INSERT [dbo].[Enroll] OFF
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (1, N'A+')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (2, N'A')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (3, N'A-')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (4, N'B+')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (5, N'B')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (6, N'B-')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (7, N'C+')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (8, N'C')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (9, N'C-')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (10, N'D+')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (11, N'D')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (12, N'D-')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (13, N'F')
SET IDENTITY_INSERT [dbo].[Grade] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [RoomName]) VALUES (1, N'SE-101')
INSERT [dbo].[Rooms] ([RoomID], [RoomName]) VALUES (2, N'SE-102')
INSERT [dbo].[Rooms] ([RoomID], [RoomName]) VALUES (3, N'SE-103')
INSERT [dbo].[Rooms] ([RoomID], [RoomName]) VALUES (4, N'SE-201')
INSERT [dbo].[Rooms] ([RoomID], [RoomName]) VALUES (5, N'SE-202')
SET IDENTITY_INSERT [dbo].[Rooms] OFF
SET IDENTITY_INSERT [dbo].[Semester] ON 

INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (1, N'1st')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (2, N'2nd')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (3, N'3rd')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (4, N'4th')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (5, N'5th')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (6, N'6th')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (7, N'7th')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (8, N'8th')
SET IDENTITY_INSERT [dbo].[Semester] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (1, N'Forman khan', N'01953037475', N'formankhan2014@gmail.com', CAST(0xB63E0B00 AS Date), N'200/a,Chittagong', 1, N'CSE-2018-001')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (2, N'Sohel khan', N'01953037473', N'Sohel2014@gmail.com', CAST(0xB63E0B00 AS Date), N'Wase,Chittagong', 1, N'CSE-2018-002')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (3, N'Jahedul Kader', N'01856784500', N'formankhan2016@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-003')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (4, N'Jahedul Kader', N'01856784500', N'formankhan2017@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-004')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (5, N'Jahedul Kader', N'01856784500', N'formankhan2018@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-005')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (6, N'Jahedul Kader', N'01856784500', N'formankhan2019@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-006')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (7, N'Jahedul Kader', N'01856784500', N'formankhan2020@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-007')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (8, N'Jahedul Kader', N'01856784500', N'formankhan2022@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-008')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (9, N'Jahedul Kader', N'01856784500', N'formankhan2023@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-009')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (10, N'Jahedul Kader', N'01856784500', N'formankhan2024@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 1, N'CSE-2018-010')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (11, N'Jahedul Kader', N'01856784500', N'formankhan2026@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 2, N'BBA-2018-001')
INSERT [dbo].[Student] ([StudentId], [StudentName], [ContactNo], [Email], [Date], [Address], [DepartmentId], [RegistrationNo]) VALUES (12, N'Jahedul Kader', N'01856784500', N'formankhan2028@gmail.com', CAST(0x0B3F0B00 AS Date), N'ctg', 2, N'BBA-2018-002')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (2, N'Jamil Asad', N'wasa', N'jamil@gmail.com', N'0189274824', 1, 1, 24)
INSERT [dbo].[Teacher] ([TeacherId], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (1003, N'khafi', N'ctg', N'khafi2016@gmail.com', N'01929493939', 1, 1, 3.5)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET IDENTITY_INSERT [dbo].[WeekDays] ON 

INSERT [dbo].[WeekDays] ([DayId], [DayName]) VALUES (1, N'Saturday')
INSERT [dbo].[WeekDays] ([DayId], [DayName]) VALUES (2, N'Sunday')
INSERT [dbo].[WeekDays] ([DayId], [DayName]) VALUES (3, N'Monday')
INSERT [dbo].[WeekDays] ([DayId], [DayName]) VALUES (4, N'Tuesday')
INSERT [dbo].[WeekDays] ([DayId], [DayName]) VALUES (5, N'Wednesday')
INSERT [dbo].[WeekDays] ([DayId], [DayName]) VALUES (6, N'Thursday')
INSERT [dbo].[WeekDays] ([DayId], [DayName]) VALUES (7, N'Friday')
SET IDENTITY_INSERT [dbo].[WeekDays] OFF
/****** Object:  Index [IX_Course]    Script Date: 9/29/2018 8:55:31 PM ******/
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [IX_Course] UNIQUE NONCLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Course_1]    Script Date: 9/29/2018 8:55:31 PM ******/
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [IX_Course_1] UNIQUE NONCLUSTERED 
(
	[CourseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Departments]    Script Date: 9/29/2018 8:55:31 PM ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [IX_Departments] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Departments_1]    Script Date: 9/29/2018 8:55:31 PM ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [IX_Departments_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroom_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassroom_Course]
GO
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroom_Departments] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassroom_Departments]
GO
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroom_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassroom_Rooms]
GO
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroom_WeekDays] FOREIGN KEY([DayId])
REFERENCES [dbo].[WeekDays] ([DayId])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassroom_WeekDays]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Departments] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Departments]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Semester]
GO
ALTER TABLE [dbo].[CourseAssignToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssignToTeacher_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[CourseAssignToTeacher] CHECK CONSTRAINT [FK_CourseAssignToTeacher_Course]
GO
ALTER TABLE [dbo].[CourseAssignToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssignToTeacher_CourseAssignToTeacher] FOREIGN KEY([CourseAsgnId])
REFERENCES [dbo].[CourseAssignToTeacher] ([CourseAsgnId])
GO
ALTER TABLE [dbo].[CourseAssignToTeacher] CHECK CONSTRAINT [FK_CourseAssignToTeacher_CourseAssignToTeacher]
GO
ALTER TABLE [dbo].[CourseAssignToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssignToTeacher_Departments] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[CourseAssignToTeacher] CHECK CONSTRAINT [FK_CourseAssignToTeacher_Departments]
GO
ALTER TABLE [dbo].[CourseAssignToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssignToTeacher_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[CourseAssignToTeacher] CHECK CONSTRAINT [FK_CourseAssignToTeacher_Teacher]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Course]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Grade]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Departments]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Departments]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Designations] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([DesignationsId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Designations]
GO
USE [master]
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET  READ_WRITE 
GO
