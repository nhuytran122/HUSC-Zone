USE [master]
GO
/****** Object:  Database [QL_HUSCZone]    Script Date: 1/8/2025 10:27:56 PM ******/
CREATE DATABASE [QL_HUSCZone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_HUSCZone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QL_HUSCZone.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_HUSCZone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QL_HUSCZone_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_HUSCZone] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_HUSCZone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_HUSCZone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_HUSCZone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_HUSCZone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_HUSCZone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_HUSCZone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_HUSCZone] SET  MULTI_USER 
GO
ALTER DATABASE [QL_HUSCZone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_HUSCZone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_HUSCZone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_HUSCZone] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL_HUSCZone] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_HUSCZone', N'ON'
GO
USE [QL_HUSCZone]
GO
/****** Object:  Table [dbo].[tbl_ActivityTypes]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ActivityTypes](
	[ActivityTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityTypeName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_ActivityTypes] PRIMARY KEY CLUSTERED 
(
	[ActivityTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Bookmarks]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bookmarks](
	[BookmarkID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentID] [bigint] NOT NULL,
	[MarkedBy] [bigint] NOT NULL,
	[MarkedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Bookmarks] PRIMARY KEY CLUSTERED 
(
	[BookmarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Categories]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Categories](
	[CategoryID] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](500) NULL,
 CONSTRAINT [PK_tbl_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Comments]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Comments](
	[CommentID] [bigint] IDENTITY(1,1) NOT NULL,
	[CommentContent] [nvarchar](1000) NOT NULL,
	[PostID] [bigint] NOT NULL,
	[CommentedBy] [bigint] NOT NULL,
	[CommentedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_tbl_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ContentOfNotication]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ContentOfNotication](
	[NotificationContentID] [bigint] NOT NULL,
	[Descriptions] [nvarchar](500) NULL,
 CONSTRAINT [PK_tbl_NoticationStatus] PRIMARY KEY CLUSTERED 
(
	[NotificationContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ContentOfStatus]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ContentOfStatus](
	[StatusID] [bigint] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_StatusOfContent] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Documents]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Documents](
	[DocumentID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[FilePath] [varchar](1000) NOT NULL,
	[CategoryID] [bigint] NOT NULL,
	[MaterialID] [bigint] NOT NULL,
	[UploadedBy] [bigint] NOT NULL,
 CONSTRAINT [PK_tbl_Documents] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Likes]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Likes](
	[LikeID] [bigint] IDENTITY(1,1) NOT NULL,
	[PostID] [bigint] NOT NULL,
	[LikedAt] [datetime] NOT NULL,
	[LikedBy] [bigint] NOT NULL,
 CONSTRAINT [PK_tbl_Likes] PRIMARY KEY CLUSTERED 
(
	[LikeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Materials]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Materials](
	[MaterialID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_Materials] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Notifications]    Script Date: 1/8/2025 10:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Notifications](
	[NotificationID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CmtID] [bigint] NULL,
	[ReportID] [bigint] NULL,
	[ActivityTypeID] [bigint] NULL,
 CONSTRAINT [PK_tbl_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Reports]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Reports](
	[ReportID] [bigint] IDENTITY(1,1) NOT NULL,
	[Reason] [nvarchar](1000) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[PostID] [bigint] NOT NULL,
	[StatusID] [bigint] NULL,
	[SolvedAt] [datetime] NULL,
 CONSTRAINT [PK_tbl_Reports] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[RoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_StatusPosts]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_StatusPosts](
	[PostID] [bigint] IDENTITY(1,1) NOT NULL,
	[PostContent] [nvarchar](4000) NOT NULL,
	[UploadedBy] [bigint] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[ImagePath] [varchar](1000) NULL,
	[IsPublic] [bit] NULL,
 CONSTRAINT [PK_tbl_StatusPosts] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NULL,
	[IsUsing] [bit] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[RoleID] [bigint] NOT NULL,
	[Avatar] [varchar](1000) NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[V_Details_Bookmarks]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Details_Bookmarks]
AS
SELECT dbo.tbl_Bookmarks.MarkedBy, dbo.tbl_Categories.CategoryName, dbo.tbl_Materials.MaterialName, dbo.tbl_Categories.CategoryID, dbo.tbl_Materials.MaterialID, dbo.tbl_Documents.Title, dbo.tbl_Documents.DocumentID, 
                  dbo.tbl_Bookmarks.BookmarkID, dbo.tbl_Bookmarks.MarkedAt, dbo.tbl_Categories.Image AS CategoryImage
FROM     dbo.tbl_Bookmarks INNER JOIN
                  dbo.tbl_Documents ON dbo.tbl_Bookmarks.DocumentID = dbo.tbl_Documents.DocumentID INNER JOIN
                  dbo.tbl_Categories ON dbo.tbl_Documents.CategoryID = dbo.tbl_Categories.CategoryID INNER JOIN
                  dbo.tbl_Materials ON dbo.tbl_Documents.MaterialID = dbo.tbl_Materials.MaterialID

GO
/****** Object:  View [dbo].[V_Details_Comments]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Details_Comments]
AS
SELECT c.CommentID, c.CommentContent, c.PostID, c.CommentedBy, c.CommentedAt, c.UpdatedAt, uc.Name AS CommentedByName, uc.Avatar AS CommentedByAvatar, up.Name AS PosterName, up.Avatar AS PosterAvatar, 
                  up.UserID AS PosterID, sp.ImagePath
FROM     dbo.tbl_Comments AS c INNER JOIN
                  dbo.tbl_StatusPosts AS sp ON c.PostID = sp.PostID INNER JOIN
                  dbo.tbl_Users AS uc ON c.CommentedBy = uc.UserID INNER JOIN
                  dbo.tbl_Users AS up ON sp.UploadedBy = up.UserID

GO
/****** Object:  View [dbo].[V_Details_Docs]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Details_Docs]
AS
SELECT dbo.tbl_Documents.DocumentID, dbo.tbl_Documents.Title, dbo.tbl_Documents.Description, dbo.tbl_Documents.CreatedAt, dbo.tbl_Documents.UpdatedAt, dbo.tbl_Documents.FilePath, dbo.tbl_Documents.CategoryID, 
                  dbo.tbl_Documents.MaterialID, dbo.tbl_Documents.UploadedBy, dbo.tbl_Users.Name, dbo.tbl_Materials.MaterialName, dbo.tbl_Categories.CategoryName, COUNT(DISTINCT dbo.tbl_Bookmarks.BookmarkID) AS CountBookmarks, 
                  dbo.tbl_Categories.Image AS CategoryImage
FROM     dbo.tbl_Documents INNER JOIN
                  dbo.tbl_Categories ON dbo.tbl_Documents.CategoryID = dbo.tbl_Categories.CategoryID INNER JOIN
                  dbo.tbl_Materials ON dbo.tbl_Documents.MaterialID = dbo.tbl_Materials.MaterialID INNER JOIN
                  dbo.tbl_Users ON dbo.tbl_Documents.UploadedBy = dbo.tbl_Users.UserID LEFT OUTER JOIN
                  dbo.tbl_Bookmarks ON dbo.tbl_Documents.DocumentID = dbo.tbl_Bookmarks.DocumentID
GROUP BY dbo.tbl_Documents.DocumentID, dbo.tbl_Documents.Title, dbo.tbl_Documents.Description, dbo.tbl_Documents.CreatedAt, dbo.tbl_Documents.UpdatedAt, dbo.tbl_Documents.FilePath, dbo.tbl_Documents.CategoryID, 
                  dbo.tbl_Documents.MaterialID, dbo.tbl_Documents.UploadedBy, dbo.tbl_Users.Name, dbo.tbl_Materials.MaterialName, dbo.tbl_Categories.CategoryName, dbo.tbl_Categories.Image

GO
/****** Object:  View [dbo].[V_Details_Liked]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Details_Liked]
AS
SELECT l.LikeID, l.PostID, l.LikedBy, l.LikedAt, sp.PostContent, sp.ImagePath, up.Name AS PosterName, up.Avatar AS PosterAvatar, sp.UploadedBy AS PosterID
FROM     dbo.tbl_Likes AS l INNER JOIN
                  dbo.tbl_StatusPosts AS sp ON l.PostID = sp.PostID INNER JOIN
                  dbo.tbl_Users AS up ON sp.UploadedBy = up.UserID

GO
/****** Object:  View [dbo].[V_Details_Notifications]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* Kết nối với bảng Report*/
CREATE VIEW [dbo].[V_Details_Notifications]
AS
SELECT n.NotificationID, n.ActivityTypeID, 
                  CASE WHEN at.ActivityTypeID = 1 THEN sp.UploadedBy WHEN at.ActivityTypeID = 2 THEN sp.UploadedBy WHEN at.ActivityTypeID = 3 THEN sp.UploadedBy WHEN at.ActivityTypeID = 4 THEN r.CreatedBy ELSE NULL END AS SendTo, 
                  n.CreatedAt, CASE WHEN at.ActivityTypeID = 1 THEN c.PostID WHEN at.ActivityTypeID = 2 THEN r.PostID WHEN at.ActivityTypeID = 3 THEN r.PostID WHEN at.ActivityTypeID = 4 THEN r.PostID ELSE NULL END AS PostID, 
                  CASE WHEN at.ActivityTypeID = 1 THEN c.CommentedBy WHEN at.ActivityTypeID = 2 THEN r.CreatedBy WHEN at.ActivityTypeID = 3 THEN r.CreatedBy WHEN at.ActivityTypeID = 4 THEN r.CreatedBy ELSE NULL END AS ActorID, 
                  u.Name AS ActorName, sp.PostContent AS StatusContent, 
                  CASE WHEN at.ActivityTypeID = 1 THEN c.CommentContent WHEN at.ActivityTypeID = 2 THEN r.Reason WHEN at.ActivityTypeID = 3 THEN r.Reason WHEN at.ActivityTypeID = 4 THEN r.Reason ELSE NULL END AS ActivityContent
FROM     dbo.tbl_Notifications AS n INNER JOIN
                  dbo.tbl_ActivityTypes AS at ON n.ActivityTypeID = at.ActivityTypeID LEFT OUTER JOIN
                  dbo.tbl_Comments AS c ON at.ActivityTypeID = 1 AND n.CmtID = c.CommentID LEFT OUTER JOIN
                  dbo.tbl_Reports AS r ON at.ActivityTypeID IN (2, 3, 4) AND n.ReportID = r.ReportID INNER JOIN
                  dbo.tbl_StatusPosts AS sp ON c.PostID = sp.PostID OR r.PostID = sp.PostID INNER JOIN
                  dbo.tbl_Users AS u ON c.CommentedBy = u.UserID OR r.CreatedBy = u.UserID

GO
/****** Object:  View [dbo].[V_Details_Posts]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Details_Posts]
AS
SELECT dbo.tbl_StatusPosts.PostID, dbo.tbl_StatusPosts.UploadedBy, dbo.tbl_StatusPosts.PostContent, dbo.tbl_StatusPosts.CreatedAt, dbo.tbl_StatusPosts.UpdatedAt, dbo.tbl_StatusPosts.ImagePath, dbo.tbl_Users.Name, dbo.tbl_Users.Avatar, 
                  COUNT(DISTINCT dbo.tbl_Likes.LikeID) AS CountLikes, COUNT(DISTINCT dbo.tbl_Comments.CommentID) AS CountComments, CASE WHEN dbo.tbl_StatusPosts.IsPublic = 1 THEN 'Public' ELSE 'Private' END AS PostVisibility
FROM     dbo.tbl_StatusPosts LEFT OUTER JOIN
                  dbo.tbl_Likes ON dbo.tbl_StatusPosts.PostID = dbo.tbl_Likes.PostID LEFT OUTER JOIN
                  dbo.tbl_Comments ON dbo.tbl_StatusPosts.PostID = dbo.tbl_Comments.PostID INNER JOIN
                  dbo.tbl_Users ON dbo.tbl_StatusPosts.UploadedBy = dbo.tbl_Users.UserID
GROUP BY dbo.tbl_StatusPosts.PostID, dbo.tbl_StatusPosts.UploadedBy, dbo.tbl_StatusPosts.PostContent, dbo.tbl_StatusPosts.CreatedAt, dbo.tbl_StatusPosts.UpdatedAt, dbo.tbl_StatusPosts.ImagePath, dbo.tbl_Users.Name, 
                  dbo.tbl_Users.Avatar, dbo.tbl_StatusPosts.IsPublic

GO
/****** Object:  View [dbo].[V_Details_Reports]    Script Date: 1/8/2025 10:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Details_Reports]
AS
SELECT r.ReportID, r.Reason, r.CreatedAt, r.CreatedBy, r.PostID, r.StatusID, sp.UploadedBy AS PosterID, up.Name AS PosterName, up.Avatar AS PosterAvatar, sp.PostContent, sp.ImagePath, cos.Description, r.SolvedAt
FROM     dbo.tbl_Reports AS r INNER JOIN
                  dbo.tbl_ContentOfStatus AS cos ON cos.StatusID = r.StatusID INNER JOIN
                  dbo.tbl_StatusPosts AS sp ON r.PostID = sp.PostID INNER JOIN
                  dbo.tbl_Users AS up ON sp.UploadedBy = up.UserID

GO
SET IDENTITY_INSERT [dbo].[tbl_ActivityTypes] ON 

INSERT [dbo].[tbl_ActivityTypes] ([ActivityTypeID], [ActivityTypeName]) VALUES (1, N'Comment')
INSERT [dbo].[tbl_ActivityTypes] ([ActivityTypeID], [ActivityTypeName]) VALUES (2, N'Report')
INSERT [dbo].[tbl_ActivityTypes] ([ActivityTypeID], [ActivityTypeName]) VALUES (3, N'Accepted Report')
INSERT [dbo].[tbl_ActivityTypes] ([ActivityTypeID], [ActivityTypeName]) VALUES (4, N'Rejected Report')
SET IDENTITY_INSERT [dbo].[tbl_ActivityTypes] OFF
SET IDENTITY_INSERT [dbo].[tbl_Bookmarks] ON 

INSERT [dbo].[tbl_Bookmarks] ([BookmarkID], [DocumentID], [MarkedBy], [MarkedAt]) VALUES (39, 11, 4, CAST(N'2025-01-07 20:37:39.087' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Bookmarks] OFF
SET IDENTITY_INSERT [dbo].[tbl_Categories] ON 

INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (1, N'Công nghệ thông tin', N'/images/categories/IT.jpeg')
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (2, N'Kỹ thuật phần mềm', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (3, N'Quản trị và phân tích dữ liệu', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (4, N'Kiến trúc', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (5, N'Báo chí', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (6, N'Truyền thông số', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (9, N'Công nghệ sinh học', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (10, N'	
Công nghệ kỹ thuật hóa học', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (11, N'Lịch sử', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (12, N'Đông phương học', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (13, N'Hóa học', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (14, N'Hán Nôm', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (15, N'Công tác xã hội', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (16, N'Quản lý Nhà nước', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (17, N'Khoa học môi trường', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (18, N'
Kỹ thuật địa chất', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (19, N'
Triết học', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (21, N'Địa kỹ thuật xây dựng', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (22, N'Kỹ thuật trắc địa - bản đồ', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (23, N'Kỹ thuật địa chất', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (24, N'Kỹ thuật môi trường', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (25, N'Khác', NULL)
INSERT [dbo].[tbl_Categories] ([CategoryID], [CategoryName], [Image]) VALUES (26, N'Đại cương', N'/images/categories/1735549177033_ĐC.jpeg')
SET IDENTITY_INSERT [dbo].[tbl_Categories] OFF
SET IDENTITY_INSERT [dbo].[tbl_Comments] ON 

INSERT [dbo].[tbl_Comments] ([CommentID], [CommentContent], [PostID], [CommentedBy], [CommentedAt], [UpdatedAt]) VALUES (7, N'Đã cmt
', 43, 4, CAST(N'2025-01-07 20:36:52.747' AS DateTime), CAST(N'2025-01-07 20:37:06.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Comments] OFF
INSERT [dbo].[tbl_ContentOfNotication] ([NotificationContentID], [Descriptions]) VALUES (-2, N'Bài đăng đã bị xóa')
INSERT [dbo].[tbl_ContentOfNotication] ([NotificationContentID], [Descriptions]) VALUES (-1, N'Bài đăng đã bị báo cáo')
INSERT [dbo].[tbl_ContentOfNotication] ([NotificationContentID], [Descriptions]) VALUES (1, N'Tài liệu đã được yêu thích')
INSERT [dbo].[tbl_ContentOfNotication] ([NotificationContentID], [Descriptions]) VALUES (2, N'Bài đăng đã được thích')
INSERT [dbo].[tbl_ContentOfNotication] ([NotificationContentID], [Descriptions]) VALUES (3, N'Bài đăng đã nhận được bình luận')
INSERT [dbo].[tbl_ContentOfNotication] ([NotificationContentID], [Descriptions]) VALUES (4, N'Báo cáo đã được phê duyệt')
INSERT [dbo].[tbl_ContentOfNotication] ([NotificationContentID], [Descriptions]) VALUES (5, N'Báo cáo đã bị từ chối')
INSERT [dbo].[tbl_ContentOfStatus] ([StatusID], [Description]) VALUES (-1, N'Báo cáo đã được xem xét và bị từ chối')
INSERT [dbo].[tbl_ContentOfStatus] ([StatusID], [Description]) VALUES (1, N'Báo cáo đang chờ phê duyệt')
INSERT [dbo].[tbl_ContentOfStatus] ([StatusID], [Description]) VALUES (2, N'Báo cáo đã được phê duyệt')
SET IDENTITY_INSERT [dbo].[tbl_Documents] ON 

INSERT [dbo].[tbl_Documents] ([DocumentID], [Title], [Description], [CreatedAt], [UpdatedAt], [FilePath], [CategoryID], [MaterialID], [UploadedBy]) VALUES (11, N'Slide Java cơ bản', N'', CAST(N'2024-12-29 11:13:18.893' AS DateTime), NULL, N'/docs/1735445598848_Phan 1 Ngon Ngu Java.ppt', 1, 1, 5)
INSERT [dbo].[tbl_Documents] ([DocumentID], [Title], [Description], [CreatedAt], [UpdatedAt], [FilePath], [CategoryID], [MaterialID], [UploadedBy]) VALUES (26, N'Java Servlet -  Hướng dẫn upload file', N'', CAST(N'2025-01-01 19:59:05.677' AS DateTime), CAST(N'2025-01-07 20:39:17.663' AS DateTime), N'/docs/1735736345642_Vi du upfle len Server va lay cac dieu khien tren form dung enctype=multipartform-data .docx', 1, 2, 4)
INSERT [dbo].[tbl_Documents] ([DocumentID], [Title], [Description], [CreatedAt], [UpdatedAt], [FilePath], [CategoryID], [MaterialID], [UploadedBy]) VALUES (35, N'Đề mẫu Đồ án Công nghệ phần mềm', N'', CAST(N'2025-01-07 20:40:11.747' AS DateTime), CAST(N'2025-01-08 20:11:38.907' AS DateTime), N'/docs/1736257211719_DeMau_FinalTest_CNPM_for_KHH_2024.doc', 1, 3, 4)
INSERT [dbo].[tbl_Documents] ([DocumentID], [Title], [Description], [CreatedAt], [UpdatedAt], [FilePath], [CategoryID], [MaterialID], [UploadedBy]) VALUES (36, N'Code Convention C#', N'', CAST(N'2025-01-08 20:12:50.850' AS DateTime), NULL, N'/docs/1736341970793_Code_conventions.pdf', 1, 2, 4)
SET IDENTITY_INSERT [dbo].[tbl_Documents] OFF
SET IDENTITY_INSERT [dbo].[tbl_Likes] ON 

INSERT [dbo].[tbl_Likes] ([LikeID], [PostID], [LikedAt], [LikedBy]) VALUES (5, 43, CAST(N'2025-01-07 20:36:46.100' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[tbl_Likes] OFF
SET IDENTITY_INSERT [dbo].[tbl_Materials] ON 

INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (1, N'Slide Bài giảng', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (2, N'File giáo trình', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (3, N'Đề thi các khóa', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (4, N'Bài tập', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (5, N'Bài tập nhóm', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (6, N'Bài thực hành', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (7, N'Đề cương ôn tập', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (9, N'Tài liệu ghi chú', NULL)
INSERT [dbo].[tbl_Materials] ([MaterialID], [MaterialName], [Description]) VALUES (10, N'Khác', NULL)
SET IDENTITY_INSERT [dbo].[tbl_Materials] OFF
SET IDENTITY_INSERT [dbo].[tbl_Role] ON 

INSERT [dbo].[tbl_Role] ([RoleID], [RoleName], [Description]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[tbl_Role] ([RoleID], [RoleName], [Description]) VALUES (2, N'User', NULL)
SET IDENTITY_INSERT [dbo].[tbl_Role] OFF
SET IDENTITY_INSERT [dbo].[tbl_StatusPosts] ON 

INSERT [dbo].[tbl_StatusPosts] ([PostID], [PostContent], [UploadedBy], [CreatedAt], [UpdatedAt], [ImagePath], [IsPublic]) VALUES (43, N'Có thể bạn chưa biết:  SQLite là cơ sở dữ liệu được triển khai nhiều nhất và được sử dụng nhiều nhất. Có hơn một nghìn tỷ (10000000000000 hoặc một triệu triệu) cơ sở dữ liệu SQLite đang được sử dụng.

Điều đặc biệt, nó được duy trì bởi ba người và họ không cho phép đóng góp từ phía bên ngoài. 😎', 5, CAST(N'2025-01-07 16:44:42.030' AS DateTime), CAST(N'2025-01-07 16:57:05.290' AS DateTime), N'/images/status_images/1736243081999_471986992_580309594638175_3175009533803274261_n.jpg', 1)
INSERT [dbo].[tbl_StatusPosts] ([PostID], [PostContent], [UploadedBy], [CreatedAt], [UpdatedAt], [ImagePath], [IsPublic]) VALUES (44, N'Có thể bạn chưa biết: Vài tháng trước, Postman (công cụ lập trình viên hay sử dụng để hỗ trợ xử lý API) cho ra mắt extension mới là "Postman VS Code Extension" tích hợp sẵn trong VSCode nhanh chóng đạt hơn 1 triệu lượt cài đặt. Extension này tích hợp các tính năng như Postman Collections, HTTP, WebSocket, yêu cầu gRPC, debug phản hồi và các tính năng cộng tác ngay trên Code Editor của mình. 

Hiện bạn có thể xử lý API ngay trên VSCode thay vì phải mở thêm một ứng dụng bên ngoài.😀', 4, CAST(N'2025-01-07 16:58:13.960' AS DateTime), NULL, N'', 1)
SET IDENTITY_INSERT [dbo].[tbl_StatusPosts] OFF
SET IDENTITY_INSERT [dbo].[tbl_Users] ON 

INSERT [dbo].[tbl_Users] ([UserID], [Name], [Password], [Gender], [Email], [Phone], [IsUsing], [CreatedAt], [UpdatedAt], [RoleID], [Avatar]) VALUES (4, N'Như Ý', N'$2a$12$6GE5YphhtYO4dq1wh1Ne1.xWv.HUNeMICAD9KeCHdKSb0ohCJPuvG', N'Nữ', N'nhuytran@gmail.com', N'079789656', 1, CAST(N'2024-11-30 13:43:35.787' AS DateTime), CAST(N'2025-01-08 20:45:51.293' AS DateTime), 2, N'/images/avt_users/1736343938553_a0a846db2c036d3a8fcf739bb5707e43.jpg')
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Password], [Gender], [Email], [Phone], [IsUsing], [CreatedAt], [UpdatedAt], [RoleID], [Avatar]) VALUES (5, N'BM', N'$2a$12$mZlTKd0yoSsX4qC22mTRoed5h3pg8XxtB9RYn9cC4EycjWSJVVIX6', N'Nam', N'bmn@gmail.com', N'0791234566', 1, CAST(N'2024-12-07 15:29:16.113' AS DateTime), CAST(N'2024-12-29 21:57:46.867' AS DateTime), 1, NULL)
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Password], [Gender], [Email], [Phone], [IsUsing], [CreatedAt], [UpdatedAt], [RoleID], [Avatar]) VALUES (7, N'BM', N'$2a$12$QgrNXAy.MQMS5gwyRgbVfuq7NXTxDHHY2FxHb.KKB2MkG0YuGhECO', N'Nam', N'bmng@gmail.com', N'0791234566', 1, CAST(N'2024-12-29 21:21:35.670' AS DateTime), CAST(N'2025-01-08 20:35:44.583' AS DateTime), 1, NULL)
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Password], [Gender], [Email], [Phone], [IsUsing], [CreatedAt], [UpdatedAt], [RoleID], [Avatar]) VALUES (8, N'Minh Hằng', N'$2a$12$BG1ExBsBfJElLmcD2UHhtuUjvPjQBlZaCxcDAIJcCWnFvCApLhoh.', N'Nữ', N'mhang@gmail.com', N'', 1, CAST(N'2024-12-31 11:27:49.063' AS DateTime), CAST(N'2024-12-31 11:28:26.433' AS DateTime), 2, NULL)
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Password], [Gender], [Email], [Phone], [IsUsing], [CreatedAt], [UpdatedAt], [RoleID], [Avatar]) VALUES (9, N'User', N'$2a$12$/688zUSN1X.s1ohjeUW3kePiz/CTeVZah/gSuIXufFzpChRCNQRci', N'Nữ', N'user@gmail.com', N'', 1, CAST(N'2025-01-02 16:53:26.010' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Password], [Gender], [Email], [Phone], [IsUsing], [CreatedAt], [UpdatedAt], [RoleID], [Avatar]) VALUES (10, N'Admin', N'$2a$12$SOfaVMySuZPA1xl7PT2oL.DBIsasFRZWDemzU28KtMElBwJDuloye', N'Nam', N'admin@gmail.com', N'', 1, CAST(N'2025-01-02 16:54:02.207' AS DateTime), CAST(N'2025-01-02 16:54:29.093' AS DateTime), 2, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Users] OFF
ALTER TABLE [dbo].[tbl_Bookmarks]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Bookmarks_tbl_Documents] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[tbl_Documents] ([DocumentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Bookmarks] CHECK CONSTRAINT [FK_tbl_Bookmarks_tbl_Documents]
GO
ALTER TABLE [dbo].[tbl_Bookmarks]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Bookmarks_tbl_Users] FOREIGN KEY([MarkedBy])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Bookmarks] CHECK CONSTRAINT [FK_tbl_Bookmarks_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Comments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Comments_tbl_StatusPosts] FOREIGN KEY([PostID])
REFERENCES [dbo].[tbl_StatusPosts] ([PostID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Comments] CHECK CONSTRAINT [FK_tbl_Comments_tbl_StatusPosts]
GO
ALTER TABLE [dbo].[tbl_Comments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Comments_tbl_Users] FOREIGN KEY([CommentedBy])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Comments] CHECK CONSTRAINT [FK_tbl_Comments_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Documents]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Documents_tbl_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Documents] CHECK CONSTRAINT [FK_tbl_Documents_tbl_Categories]
GO
ALTER TABLE [dbo].[tbl_Documents]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Documents_tbl_Materials] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[tbl_Materials] ([MaterialID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Documents] CHECK CONSTRAINT [FK_tbl_Documents_tbl_Materials]
GO
ALTER TABLE [dbo].[tbl_Documents]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Documents_tbl_Users] FOREIGN KEY([UploadedBy])
REFERENCES [dbo].[tbl_Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Documents] CHECK CONSTRAINT [FK_tbl_Documents_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Likes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Likes_tbl_StatusPosts] FOREIGN KEY([PostID])
REFERENCES [dbo].[tbl_StatusPosts] ([PostID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Likes] CHECK CONSTRAINT [FK_tbl_Likes_tbl_StatusPosts]
GO
ALTER TABLE [dbo].[tbl_Likes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Likes_tbl_Users] FOREIGN KEY([LikedBy])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Likes] CHECK CONSTRAINT [FK_tbl_Likes_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Notifications]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Notifications_tbl_ActivityTypes] FOREIGN KEY([ActivityTypeID])
REFERENCES [dbo].[tbl_ActivityTypes] ([ActivityTypeID])
GO
ALTER TABLE [dbo].[tbl_Notifications] CHECK CONSTRAINT [FK_tbl_Notifications_tbl_ActivityTypes]
GO
ALTER TABLE [dbo].[tbl_Notifications]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Notifications_tbl_Comments] FOREIGN KEY([CmtID])
REFERENCES [dbo].[tbl_Comments] ([CommentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Notifications] CHECK CONSTRAINT [FK_tbl_Notifications_tbl_Comments]
GO
ALTER TABLE [dbo].[tbl_Notifications]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Notifications_tbl_Reports] FOREIGN KEY([ReportID])
REFERENCES [dbo].[tbl_Reports] ([ReportID])
GO
ALTER TABLE [dbo].[tbl_Notifications] CHECK CONSTRAINT [FK_tbl_Notifications_tbl_Reports]
GO
ALTER TABLE [dbo].[tbl_Reports]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Reports_tbl_ContentOfStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbl_ContentOfStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbl_Reports] CHECK CONSTRAINT [FK_tbl_Reports_tbl_ContentOfStatus]
GO
ALTER TABLE [dbo].[tbl_Reports]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Reports_tbl_StatusPosts] FOREIGN KEY([PostID])
REFERENCES [dbo].[tbl_StatusPosts] ([PostID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Reports] CHECK CONSTRAINT [FK_tbl_Reports_tbl_StatusPosts]
GO
ALTER TABLE [dbo].[tbl_Reports]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Reports_tbl_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Reports] CHECK CONSTRAINT [FK_tbl_Reports_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_StatusPosts]  WITH CHECK ADD  CONSTRAINT [FK_tbl_StatusPosts_tbl_Users] FOREIGN KEY([UploadedBy])
REFERENCES [dbo].[tbl_Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_StatusPosts] CHECK CONSTRAINT [FK_tbl_StatusPosts_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Users_tbl_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tbl_Role] ([RoleID])
GO
ALTER TABLE [dbo].[tbl_Users] CHECK CONSTRAINT [FK_tbl_Users_tbl_Role]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Bookmarks"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Documents"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Categories"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 148
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_Materials"
            Begin Extent = 
               Top = 7
               Left = 775
               Bottom = 148
               Right = 969
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2424
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         O' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Bookmarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'r = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Bookmarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Bookmarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[22] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sp"
            Begin Extent = 
               Top = 7
               Left = 308
               Bottom = 170
               Right = 502
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "uc"
            Begin Extent = 
               Top = 246
               Left = 110
               Bottom = 409
               Right = 304
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "up"
            Begin Extent = 
               Top = 15
               Left = 671
               Bottom = 178
               Right = 865
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1200
         Width = 2268
         Width = 1200
         Width = 2508
         Width = 2064
         Width = 1200
         Width = 1500
         Width = 1932
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5808
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[39] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Documents"
            Begin Extent = 
               Top = 8
               Left = 577
               Bottom = 299
               Right = 771
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Categories"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 156
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tbl_Materials"
            Begin Extent = 
               Top = 22
               Left = 881
               Bottom = 163
               Right = 1075
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Users"
            Begin Extent = 
               Top = 258
               Left = 854
               Bottom = 421
               Right = 1048
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Bookmarks"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         W' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Docs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idth = 1716
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Docs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Docs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "l"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sp"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "up"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Liked'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Liked'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[57] 4[3] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -120
         Left = 0
      End
      Begin Tables = 
         Begin Table = "n"
            Begin Extent = 
               Top = 112
               Left = 576
               Bottom = 453
               Right = 817
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "at"
            Begin Extent = 
               Top = 443
               Left = 865
               Bottom = 562
               Right = 1081
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 0
               Left = 332
               Bottom = 163
               Right = 544
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "r"
            Begin Extent = 
               Top = 295
               Left = 48
               Bottom = 458
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sp"
            Begin Extent = 
               Top = 359
               Left = 302
               Bottom = 522
               Right = 496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "u"
            Begin Extent = 
               Top = 279
               Left = 1028
               Bottom = 442
               Right = 1222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1548
         Width = 1464
         Width = 1164
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Notifications'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Width = 2268
         Width = 1164
         Width = 1380
         Width = 1824
         Width = 1800
         Width = 1608
         Width = 1836
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Notifications'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Notifications'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[19] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_StatusPosts"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tbl_Likes"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Comments"
            Begin Extent = 
               Top = 7
               Left = 857
               Bottom = 170
               Right = 1085
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Users"
            Begin Extent = 
               Top = 4
               Left = 615
               Bottom = 167
               Right = 809
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1668
         Width = 1200
         Width = 1656
         Width = 1200
         Width = 1656
         Width = 1200
         Width = 1644
         Width = 1200
         Width = 1776
         Width = 1416
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1512
         Alias = 1608
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Fi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Posts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'lter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Posts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Posts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "r"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 251
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cos"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 126
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sp"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "up"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Reports'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Details_Reports'
GO
USE [master]
GO
ALTER DATABASE [QL_HUSCZone] SET  READ_WRITE 
GO
