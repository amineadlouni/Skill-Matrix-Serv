

USE [Test_DB]
GO

/****** Object:  Table [dbo].[Answers]    Script Date: 12/11/2025 10:58:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Answers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OperatorMat] [int] NOT NULL,
	[TeamLeader] [nvarchar](50) NOT NULL,
	[Station] [nvarchar](150) NOT NULL,
	[LVLID] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[Score] [int] NULL,
	[ANS1] [bit] NULL,
	[ANS2] [bit] NULL,
	[ANS3] [bit] NULL,
	[ANS4] [bit] NULL,
	[ANS5] [bit] NULL,
	[ANS6] [bit] NULL,
	[ANS7] [bit] NULL,
	[ANS8] [bit] NULL,
	[ANS9] [bit] NULL,
	[ANS10] [bit] NULL,
	[ANS11] [bit] NULL,
	[ANS12] [bit] NULL,
	[ANS13] [bit] NULL,
	[ANS14] [bit] NULL,
	[ANS15] [bit] NULL,
	[ANS16] [bit] NULL,
	[ANS17] [bit] NULL,
	[ANS18] [bit] NULL,
	[ANS19] [bit] NULL,
	[ANS20] [bit] NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__DateA__59063A47]  DEFAULT (getdate()) FOR [DateAdded]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS1__59FA5E80]  DEFAULT ((0)) FOR [ANS1]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS2__5AEE82B9]  DEFAULT ((0)) FOR [ANS2]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS3__5BE2A6F2]  DEFAULT ((0)) FOR [ANS3]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS4__5CD6CB2B]  DEFAULT ((0)) FOR [ANS4]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS5__5DCAEF64]  DEFAULT ((0)) FOR [ANS5]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS6__5EBF139D]  DEFAULT ((0)) FOR [ANS6]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS7__5FB337D6]  DEFAULT ((0)) FOR [ANS7]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS8__60A75C0F]  DEFAULT ((0)) FOR [ANS8]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answer__ANS9__619B8048]  DEFAULT ((0)) FOR [ANS9]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS10__628FA481]  DEFAULT ((0)) FOR [ANS10]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS11__6383C8BA]  DEFAULT ((0)) FOR [ANS11]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS12__6477ECF3]  DEFAULT ((0)) FOR [ANS12]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS13__656C112C]  DEFAULT ((0)) FOR [ANS13]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS14__66603565]  DEFAULT ((0)) FOR [ANS14]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS15__6754599E]  DEFAULT ((0)) FOR [ANS15]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS16__68487DD7]  DEFAULT ((0)) FOR [ANS16]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS17__693CA210]  DEFAULT ((0)) FOR [ANS17]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS18__6A30C649]  DEFAULT ((0)) FOR [ANS18]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS19__6B24EA82]  DEFAULT ((0)) FOR [ANS19]
GO

ALTER TABLE [dbo].[Answers] ADD  CONSTRAINT [DF__Tmp_Answe__ANS20__6C190EBB]  DEFAULT ((0)) FOR [ANS20]
GO

USE [Test_DB]
GO

/****** Object:  Table [dbo].[Levels]    Script Date: 12/11/2025 10:58:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Levels](
	[LvlID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[QuestionCount] [int] NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[LvlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [Test_DB]
GO

/****** Object:  Table [dbo].[Operators]    Script Date: 12/11/2025 10:59:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Operators](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Matricule] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Project] [nvarchar](150) NULL,
	[CurrentStation] [nvarchar](150) NULL,
	[CurrentLevel] [int] NULL,
	[TeamLeader] [nvarchar](150) NULL,
	[IsActive] [int] NULL,
	[dateAdded] [datetime] NULL,
 CONSTRAINT [PK_Operators] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Operators] ADD  CONSTRAINT [DF__Tmp_Opera__IsAct__5165187F]  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Operators] ADD  CONSTRAINT [DF__Tmp_Opera__dateA__52593CB8]  DEFAULT (getdate()) FOR [dateAdded]
GO

USE [Test_DB]
GO

/****** Object:  Table [dbo].[Questions]    Script Date: 12/11/2025 10:59:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Questions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LvlID] [int] NOT NULL,
	[QuestionID] [int] NULL,
	[QuestionText] [nvarchar](max) NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [Test_DB]
GO

/****** Object:  Table [dbo].[TeamLeaders]    Script Date: 12/11/2025 10:59:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TeamLeaders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NetID] [nvarchar](150) NOT NULL,
	[Matricule] [int] NULL,
	[Name] [nvarchar](150) NULL,
	[Project] [nvarchar](150) NULL,
	[Zone] [nvarchar](150) NULL,
	[Supervisor] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[mdp] [varchar](50) NULL,
 CONSTRAINT [PK_TeamLeaders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_TeamLeaderID] UNIQUE NONCLUSTERED 
(
	[NetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Test_DB]
GO

/****** Object:  Table [dbo].[Technician]    Script Date: 12/11/2025 10:59:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Technician](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NetID] [nvarchar](150) NOT NULL,
	[Matricule] [int] NULL,
	[Name] [nvarchar](150) NULL,
	[Project] [nvarchar](150) NULL,
	[Zone] [nvarchar](150) NULL,
	[Supervisor] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[mot_passe] [varchar](50) NULL,
 CONSTRAINT [PK_Technician] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

