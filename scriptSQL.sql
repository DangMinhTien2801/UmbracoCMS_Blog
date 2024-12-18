USE [UmbracoBlog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/9/2024 6:07:06 PM ******/
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
/****** Object:  Table [dbo].[cmsContentNu]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentNu](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[data] [nvarchar](max) NULL,
	[rv] [bigint] NOT NULL,
	[dataRaw] [varbinary](max) NULL,
 CONSTRAINT [PK_cmsContentNu] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[listView] [uniqueidentifier] NULL,
	[isElement] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
	[variations] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[key] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
	[passwordConfig] [nvarchar](500) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[emailConfirmedDate] [datetime] NULL,
	[failedPasswordAttempts] [int] NULL,
	[isLockedOut] [bit] NULL,
	[isApproved] [bit] NOT NULL,
	[lastLoginDate] [datetime] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
	[isSensitive] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[mandatoryMessage] [nvarchar](500) NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[validationRegExpMessage] [nvarchar](500) NULL,
	[Description] [nvarchar](2000) NULL,
	[labelOnTop] [bit] NOT NULL,
	[variations] [int] NOT NULL,
	[UniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueID] [uniqueidentifier] NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group] [nvarchar](100) NOT NULL,
	[languageId] [int] NULL,
	[tag] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccess]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccess](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[loginNodeId] [int] NOT NULL,
	[noAccessNodeId] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccessRule]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccessRule](
	[id] [uniqueidentifier] NOT NULL,
	[accessId] [uniqueidentifier] NOT NULL,
	[ruleValue] [nvarchar](255) NOT NULL,
	[ruleType] [nvarchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAudit]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAudit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[performingUserId] [int] NOT NULL,
	[performingDetails] [nvarchar](1024) NULL,
	[performingIp] [nvarchar](64) NULL,
	[eventDateUtc] [datetime] NOT NULL,
	[affectedUserId] [int] NOT NULL,
	[affectedDetails] [nvarchar](1024) NULL,
	[eventType] [nvarchar](256) NOT NULL,
	[eventDetails] [nvarchar](1024) NULL,
 CONSTRAINT [PK_umbracoAudit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoCacheInstruction]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCacheInstruction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[utcStamp] [datetime] NOT NULL,
	[jsonInstruction] [nvarchar](max) NOT NULL,
	[originated] [nvarchar](500) NOT NULL,
	[instructionCount] [int] NOT NULL,
 CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoConsent]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoConsent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[current] [bit] NOT NULL,
	[source] [nvarchar](512) NOT NULL,
	[context] [nvarchar](128) NOT NULL,
	[action] [nvarchar](512) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[state] [int] NOT NULL,
	[comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoConsent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContent]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContent](
	[nodeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_umbracoContent] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentSchedule]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentSchedule](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[date] [datetime] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoContentSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersion]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[versionDate] [datetime] NOT NULL,
	[userId] [int] NULL,
	[current] [bit] NOT NULL,
	[text] [nvarchar](255) NULL,
	[preventCleanup] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCleanupPolicy]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCleanupPolicy](
	[contentTypeId] [int] NOT NULL,
	[preventCleanup] [bit] NOT NULL,
	[keepAllVersionsNewerThanDays] [int] NULL,
	[keepLatestVersionPerDayForDays] [int] NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoContentVersionCleanupPolicy] PRIMARY KEY CLUSTERED 
(
	[contentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCultureVariation]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[date] [datetime] NOT NULL,
	[availableUserId] [int] NULL,
 CONSTRAINT [PK_umbracoContentVersionCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoCreatedPackageSchema]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCreatedPackageSchema](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[packageId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_umbracoCreatedPackageSchema] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDataType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDataType](
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[propertyEditorUiAlias] [nvarchar](255) NULL,
	[dbType] [nvarchar](50) NOT NULL,
	[config] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoDataType] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocument]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[edited] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocument] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentCultureVariation]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[edited] [bit] NOT NULL,
	[available] [bit] NOT NULL,
	[published] [bit] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoDocumentCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentVersion]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentVersion](
	[id] [int] NOT NULL,
	[templateId] [int] NULL,
	[published] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocumentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomain]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomain](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
	[sortOrder] [int] NOT NULL,
 CONSTRAINT [PK_umbracoDomain] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoExternalLogin]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userOrMemberKey] [uniqueidentifier] NOT NULL,
	[loginProvider] [nvarchar](400) NOT NULL,
	[providerKey] [nvarchar](4000) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[userData] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoExternalLoginToken]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLoginToken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[externalLoginId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoExternalLoginToken] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoKeyValue]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoKeyValue](
	[key] [nvarchar](256) NOT NULL,
	[value] [nvarchar](max) NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoKeyValue] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](14) NULL,
	[languageCultureName] [nvarchar](100) NULL,
	[isDefaultVariantLang] [bit] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[fallbackLanguageId] [int] NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLock]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLock](
	[id] [int] NOT NULL,
	[value] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_umbracoLock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[NodeId] [int] NOT NULL,
	[entityType] [nvarchar](50) NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
	[parameters] [nvarchar](500) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLogViewerQuery]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLogViewerQuery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[query] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoLogViewerQuery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoMediaVersion]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoMediaVersion](
	[id] [int] NOT NULL,
	[path] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoMediaVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[parentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[trashed] [bit] NOT NULL,
	[nodeUser] [int] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictApplications]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictApplications](
	[Id] [nvarchar](450) NOT NULL,
	[ClientId] [nvarchar](100) NULL,
	[ClientSecret] [nvarchar](max) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[ConsentType] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Permissions] [nvarchar](max) NULL,
	[PostLogoutRedirectUris] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedirectUris] [nvarchar](max) NULL,
	[Requirements] [nvarchar](max) NULL,
	[ClientType] [nvarchar](50) NULL,
	[ApplicationType] [nvarchar](50) NULL,
	[JsonWebKeySet] [nvarchar](max) NULL,
	[Settings] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoOpenIddictApplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictAuthorizations]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictAuthorizations](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[CreationDate] [datetime2](7) NULL,
	[Properties] [nvarchar](max) NULL,
	[Scopes] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoOpenIddictAuthorizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictScopes]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictScopes](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Name] [nvarchar](200) NULL,
	[Properties] [nvarchar](max) NULL,
	[Resources] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoOpenIddictScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictTokens]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictTokens](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[AuthorizationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[CreationDate] [datetime2](7) NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[Payload] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedemptionDate] [datetime2](7) NULL,
	[ReferenceId] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoOpenIddictTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoPropertyData]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[segment] [nvarchar](256) NULL,
	[intValue] [int] NULL,
	[decimalValue] [decimal](38, 6) NULL,
	[dateValue] [datetime] NULL,
	[varcharValue] [nvarchar](512) NULL,
	[textValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRedirectUrl]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRedirectUrl](
	[id] [uniqueidentifier] NOT NULL,
	[contentKey] [uniqueidentifier] NOT NULL,
	[createDateUtc] [datetime] NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[culture] [nvarchar](255) NULL,
	[urlHash] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeUniqueId] [uniqueidentifier] NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NULL,
	[childObjectType] [uniqueidentifier] NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NOT NULL,
	[isDependency] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isSchedulingPublisher] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoTwoFactorLogin]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoTwoFactorLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userOrMemberKey] [uniqueidentifier] NOT NULL,
	[providerName] [nvarchar](400) NOT NULL,
	[secret] [nvarchar](400) NOT NULL,
 CONSTRAINT [PK_umbracoTwoFactorLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[passwordConfig] [nvarchar](500) NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[failedLoginAttempts] [int] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
	[lastLoginDate] [datetime] NULL,
	[emailConfirmedDate] [datetime] NULL,
	[invitedDate] [datetime] NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[avatar] [nvarchar](500) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2UserGroup]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2UserGroup](
	[userId] [int] NOT NULL,
	[userGroupId] [int] NOT NULL,
 CONSTRAINT [PK_user2userGroup] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[userGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserData]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserData](
	[key] [uniqueidentifier] NOT NULL,
	[userKey] [uniqueidentifier] NOT NULL,
	[group] [nvarchar](255) NOT NULL,
	[identifier] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_umbracoUserDataDto] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[userGroupAlias] [nvarchar](200) NOT NULL,
	[userGroupName] [nvarchar](200) NOT NULL,
	[userGroupDefaultPermissions] [nvarchar](50) NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[icon] [nvarchar](255) NULL,
	[hasAccessToAllLanguages] [bit] NOT NULL,
	[startContentId] [int] NULL,
	[startMediaId] [int] NULL,
 CONSTRAINT [PK_umbracoUserGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2App]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2App](
	[userGroupId] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_userGroup2App] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2GranularPermission]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2GranularPermission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGroupKey] [uniqueidentifier] NOT NULL,
	[uniqueId] [uniqueidentifier] NULL,
	[permission] [nvarchar](255) NOT NULL,
	[context] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUserGroup2GranularPermissionDto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2Language]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2Language](
	[userGroupId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
 CONSTRAINT [PK_userGroup2language] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2Permission]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGroupKey] [uniqueidentifier] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_userGroup2Permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserLogin]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogin](
	[sessionId] [uniqueidentifier] NOT NULL,
	[userId] [int] NOT NULL,
	[loggedInUtc] [datetime] NOT NULL,
	[lastValidatedUtc] [datetime] NOT NULL,
	[loggedOutUtc] [datetime] NULL,
	[ipAddress] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoUserLogin] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserStartNode]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserStartNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[startNode] [int] NOT NULL,
	[startNodeType] [int] NOT NULL,
 CONSTRAINT [PK_userStartNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoWebhook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook2ContentTypeKeys]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook2ContentTypeKeys](
	[webhookId] [int] NOT NULL,
	[entityKey] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_webhookEntityKey2Webhook] PRIMARY KEY CLUSTERED 
(
	[webhookId] ASC,
	[entityKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook2Events]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook2Events](
	[webhookId] [int] NOT NULL,
	[event] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_webhookEvent2WebhookDto] PRIMARY KEY CLUSTERED 
(
	[webhookId] ASC,
	[event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook2Headers]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook2Headers](
	[webhookId] [int] NOT NULL,
	[Key] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_heaeders2WebhookDto] PRIMARY KEY CLUSTERED 
(
	[webhookId] ASC,
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhookLog]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhookLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[webhookKey] [uniqueidentifier] NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[statusCode] [nvarchar](255) NOT NULL,
	[date] [datetime] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[eventAlias] [nvarchar](255) NOT NULL,
	[retryCount] [int] NOT NULL,
	[requestHeaders] [nvarchar](max) NOT NULL,
	[requestBody] [nvarchar](max) NOT NULL,
	[responseHeaders] [nvarchar](max) NOT NULL,
	[responseBody] [nvarchar](max) NOT NULL,
	[exceptionOccured] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoWebhookLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhookRequest]    Script Date: 12/9/2024 6:07:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhookRequest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[webhookKey] [uniqueidentifier] NOT NULL,
	[eventName] [nvarchar](255) NOT NULL,
	[requestObject] [nvarchar](max) NULL,
	[retryCount] [int] NOT NULL,
 CONSTRAINT [PK_umbracoWebhookRequest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230622184303_InitialCreate', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230807654321_AddOpenIddict', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240403140654_UpdateOpenIddictToV5', N'8.0.5')
GO
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1064, 0, NULL, 4, 0x92C70362CD0131C600000127F4179387A8736974654E616D6590A46C6F676F90A57469746C659193A0A0A4486F6D65A873756254120090AC54686973206973201A00B0AA7061676542616E6E65722E00F129D9985B7B226B6579223A2236363865653563342D336362332D346461342D623335332D646265353439356231636563222C226D656469614B3200F41564343035306535612D636363362D343465342D383664632D3439313031623637353238643200F12854797065416C696173223A22496D616765222C2263726F7073223A5B5D2C22666F63616C506F696E74223A6E756C6C7D5DA6617574686FA500F033B3C490E1BAB76E67204D696E68205469E1BABF6EAB6465736372697074696F6E9193A0A0B7416E6820E1BAA579206CC3A02074C3A163206769E1BAA380A4686F6D65)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1064, 1, NULL, 2, 0x92C70362CD0131C600000127F4179387A8736974654E616D6590A46C6F676F90A57469746C659193A0A0A4486F6D65A873756254120090AC54686973206973201A00B0AA7061676542616E6E65722E00F129D9985B7B226B6579223A2236363865653563342D336362332D346461342D623335332D646265353439356231636563222C226D656469614B3200F41564343035306535612D636363362D343465342D383664632D3439313031623637353238643200F12854797065416C696173223A22496D616765222C2263726F7073223A5B5D2C22666F63616C506F696E74223A6E756C6C7D5DA6617574686FA500F033B3C490E1BAB76E67204D696E68205469E1BABF6EAB6465736372697074696F6E9193A0A0B7416E6820E1BAA579206CC3A02074C3A163206769E1BAA380A4686F6D65)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1068, 0, NULL, 2, 0x92C70362CD01DCC6000001A2F4089384A57469746C659193A0A0A541626F7574A8737562541300F011B4535542205449544C452041424F55542050414745AA7061676542616E6E65723700F129D9935B7B226B6579223A2233373164623032322D303235612D343266622D386130662D653638623438323163393939222C226D656469614B3200F41538333361323565642D353463382D343834332D613864622D3465653533643734356535313200F12954797065416C696173223A22222C2263726F7073223A5B5D2C22666F63616C506F696E74223A6E756C6C7D5DAB626F6479436F6E74656E74A500F104EB7B226D61726B7570223A225C75303033437007003045436808006146416E6720740A00F10434692078696E2067695C7531454442692074680B005043377520761400B04331207472616E672071750F005141336E206C3A003044206311005F4537612063560000107625006245306F206E670A00227920260060346D206E617914003333432F9700E2222C22626C6F636B73223A7B2263C9004244617461F1008673657474696E67731200F0044C61796F7574223A7B7D7D7D80A561626F7574)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1068, 1, NULL, 1, 0x92C70362CD01DCC6000001A2F4089384A57469746C659193A0A0A541626F7574A8737562541300F011B4535542205449544C452041424F55542050414745AA7061676542616E6E65723700F129D9935B7B226B6579223A2233373164623032322D303235612D343266622D386130662D653638623438323163393939222C226D656469614B3200F41538333361323565642D353463382D343834332D613864622D3465653533643734356535313200F12954797065416C696173223A22222C2263726F7073223A5B5D2C22666F63616C506F696E74223A6E756C6C7D5DAB626F6479436F6E74656E74A500F104EB7B226D61726B7570223A225C75303033437007003045436808006146416E6720740A00F10434692078696E2067695C7531454442692074680B005043377520761400B04331207472616E672071750F005141336E206C3A003044206311005F4537612063560000107625006245306F206E670A00227920260060346D206E617914003333432F9700E2222C22626C6F636B73223A7B2263C9004244617461F1008673657474696E67731200F0044C61796F7574223A7B7D7D7D80A561626F7574)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1076, 0, NULL, 0, 0x92D562CCC2C6000000A9F41E9385AB756D627261636F46696C659193A0A0D9457B22666F63616C506F696E74223A6E756C6C2C2263726F70730D00F316737263223A222F6D656469612F6D6C7868796E6E622F646F776E6C6F61642E6A7067227DAC5700505769647468580063D20000012BAD16006348656967687417002400A82D00504279746573160063A439383734B02D0090457874656E73696F6E1A00F002A36A706780AB646F776E6C6F61646A7067)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv], [dataRaw]) VALUES (1077, 0, NULL, 0, 0x92D562CCBBC6000000A1F41E9385AB756D627261636F46696C659193A0A0D9407B22666F63616C506F696E74223A6E756C6C2C2263726F70730D00F311737263223A222F6D656469612F30786365677976702F76322E6A666966227DAC5200505769647468530063D200000800AD16006348656967687417002405A32D00504279746573160083A6363931333239B02F0090457874656E73696F6E1C00D0A46A66696680A676326A666966)
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, NULL, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (540, 1034, N'umbracoMediaVideo', N'icon-video', N'icon-video', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (541, 1035, N'umbracoMediaAudio', N'icon-sound-waves', N'icon-sound-waves', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (542, 1036, N'umbracoMediaArticle', N'icon-article', N'icon-article', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (543, 1037, N'umbracoMediaVectorGraphics', N'icon-picture', N'icon-picture', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (549, 1063, N'home', N'icon-home color-light-blue', N'folder.png', N'Home Page', NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (550, 1067, N'about', N'icon-notepad', N'folder.png', N'About Page', NULL, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (552, 1073, N'layout', N'icon-notepad', N'folder.png', NULL, NULL, 1, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (553, 1075, N'page', N'icon-notepad', N'folder.png', N'Main page', NULL, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
GO
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1073, 1063)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1063)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1067)
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1034, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1035, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1036, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1037, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1063, 1067, 0)
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1063, 1062, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1067, 1066, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1075, 1074, 1)
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (6, 1043, 1032, 3, N'umbracoFile', N'Image', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'b646ca8f-e469-4fc2-a48a-d4dc1aa64a53')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (7, -91, 1032, 3, N'umbracoWidth', N'Width', 0, 0, NULL, NULL, NULL, N'in pixels', 0, 0, N'a68d453b-1f62-44f4-9f71-0b6bbd43c355')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (8, -91, 1032, 3, N'umbracoHeight', N'Height', 0, 0, NULL, NULL, NULL, N'in pixels', 0, 0, N'854087f6-648b-40ed-bc98-b8a9789e80b9')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (9, -93, 1032, 3, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'bd4c5ace-26e3-4a8b-af1a-e8206a35fa07')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'f7786fe8-724a-4ed0-b244-72546db32a92')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'File', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'a0fb68f3-f427-47a6-afce-536ffa5b64e9')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'3531c0a3-4e0a-4324-a621-b9d3822b071f')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (26, -93, 1033, 4, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'f9527050-59bc-43e4-8fa8-1658d1319ff5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'70f24c26-1c0e-4053-bd8e-e9e6e4ec4c01')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (40, -100, 1034, 52, N'umbracoFile', N'Video', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'bed8ab97-d85f-44d2-a8b9-aef6893f9610')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (41, -92, 1034, 52, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'edd2b3fd-1e57-4e57-935e-096defccdc9b')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (42, -93, 1034, 52, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'180eeecf-1f00-409e-8234-bba967e08b0a')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (43, -101, 1035, 53, N'umbracoFile', N'Audio', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'1f48d730-f174-4684-afad-a335e59d84a0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (44, -92, 1035, 53, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'1bee433f-a21a-4031-8e03-af01bb8d2de9')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (45, -93, 1035, 53, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'3cbf538a-29ab-4317-a9eb-bbcdf1a54260')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (46, -102, 1036, 54, N'umbracoFile', N'Article', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'e5c8c2d0-2d82-4f01-b53a-45a1d1cbf19c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (47, -92, 1036, 54, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'ef1b4af7-36de-45eb-8c18-a2de07319227')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (48, -93, 1036, 54, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'aab7d00c-7209-4337-be3f-a4421c8d79a0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (49, -103, 1037, 55, N'umbracoFile', N'Vector Graphics', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'e2a2bdf2-971b-483e-95a1-4104cc06af26')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (50, -92, 1037, 55, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'0f25a89e-2eb7-49bc-a7b4-759a7e4c69f2')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (51, -93, 1037, 55, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'09a07aff-861d-4769-a2b0-c165ebd43d39')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (52, -87, 1067, 56, N'bodyContent', N'Body Content', 0, 0, NULL, NULL, NULL, N'', 0, 0, N'97253f66-013a-447e-8d1b-c7d0fdab1aab')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (55, -88, 1073, 58, N'siteName', N'Site Name', 0, 0, NULL, NULL, NULL, N'', 0, 0, N'eba0b505-4aee-4418-a42b-0950064fafed')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (56, 1053, 1073, 58, N'logo', N'Logo', 1, 0, NULL, NULL, NULL, N'', 0, 0, N'b935ecc2-1b3e-4c98-a63b-a730841c838a')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (57, -88, 1075, 59, N'title', N'Title', 0, 0, NULL, NULL, NULL, N'', 0, 0, N'5b0c2ecc-34cd-4179-8391-e62a912085ea')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (58, -88, 1075, 59, N'subTitle', N'Sub Title', 1, 0, NULL, NULL, NULL, N'', 0, 0, N'a918f86b-e3be-446b-911b-740e3cf92b4d')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (59, 1053, 1075, 59, N'pageBanner', N'Page Banner', 2, 0, NULL, NULL, NULL, N'', 0, 0, N'b17cda1d-5da4-4caa-b0b3-88b7a98e758e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (60, -88, 1075, 60, N'author', N'Author', 0, 0, NULL, NULL, NULL, N'', 0, 0, N'be21039a-ffd3-4a16-81d1-cd4ba1c9c2ec')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (61, -88, 1075, 60, N'description', N'Description', 1, 0, NULL, NULL, NULL, N'', 0, 0, N'4fd3cd99-31e8-46d7-9022-8e2eb8dc35fd')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (3, N'79ed4d07-254a-42cf-8fa9-ebe1c116a596', 1032, 0, N'Image', N'image', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (4, N'50899f9c-023a-4466-b623-aba9049885fe', 1033, 0, N'File', N'file', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (11, N'0756729d-d665-46e3-b84a-37aceaa614f8', 1044, 0, N'Membership', N'membership', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (52, N'2f0a61b6-cf92-4ff4-b437-751ab35eb254', 1034, 0, N'Video', N'video', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (53, N'335fb495-0a87-4e82-b902-30eb367b767c', 1035, 0, N'Audio', N'audio', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (54, N'9af3bd65-f687-4453-9518-5f180d1898ec', 1036, 0, N'Article', N'article', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (55, N'f199b4d7-9e84-439f-8531-f87d9af37711', 1037, 0, N'Vector Graphics', N'vectorGraphics', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (56, N'12258f29-c3a2-4893-a649-1c5dfdf872d0', 1067, 1, N'Content', N'content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (58, N'3575a415-fac1-4243-8df6-be84deefb80f', 1073, 1, N'Layout - Settings', N'layout-Settings', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (59, N'16611692-097d-4ee6-be24-c74317320bbb', 1075, 1, N'Page - Settings', N'page-Settings', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (60, N'db8d9e48-4fa9-4bce-a0a2-86df9725bbbc', 1075, 1, N'Metadata', N'metadata', 1)
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (3, 1062, N'home')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (4, 1066, N'about')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (6, 1074, N'page')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoAudit] ON 

INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T08:23:35.077' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating Email, Name, Username, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T08:23:35.273' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (3, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T08:23:46.547' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (4, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T08:23:46.573' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (5, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T08:53:13.613' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (6, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T08:53:13.663' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (7, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T09:23:54.573' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (8, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-06T09:23:54.593' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (9, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T02:12:46.553' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (10, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T02:12:46.617' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (11, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T03:12:19.243' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (12, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T03:12:19.303' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (13, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T06:47:47.240' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (14, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T06:47:47.287' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (15, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T08:52:24.573' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (16, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T08:52:24.623' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (17, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T09:24:19.027' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (18, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T09:24:19.080' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (19, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T10:26:40.563' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (20, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T10:26:40.613' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (21, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T10:47:29.897' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (22, 0, N'User "SYSTEM" ', N'::1', CAST(N'2024-12-09T10:47:29.947' AS DateTime), -1, N'User "DangMinhTien" <minhtien280168@outlook.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON 

INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (48, CAST(N'2024-12-09T02:12:46.897' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P9300/D1] 144CBC25104A4102AB385C8D3A3A00DF', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (49, CAST(N'2024-12-09T03:12:19.430' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P12684/D1] E0B2D665BCD94A8B9F2E92177C97CE7F', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (50, CAST(N'2024-12-09T03:21:16.070' AS DateTime), N'[{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:2,\u0022changeType\u0022:\u0022Refresh\u0022},{\u0022id\u0022:5,\u0022changeType\u0022:\u0022Refresh\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (51, CAST(N'2024-12-09T03:21:17.103' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u0022808713bf-deba-43c9-a81f-6df1a4a97129\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (52, CAST(N'2024-12-09T03:21:17.343' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u0022808713bf-deba-43c9-a81f-6df1a4a97129\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (53, CAST(N'2024-12-09T03:29:13.850' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","JsonIds":"[1066]","JsonIdCount":1}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (54, CAST(N'2024-12-09T03:29:14.177' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1067,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (55, CAST(N'2024-12-09T03:35:43.017' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1063,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (56, CAST(N'2024-12-09T03:40:16.817' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","JsonIds":"[1066]","JsonIdCount":1}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (57, CAST(N'2024-12-09T03:43:55.367' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (58, CAST(N'2024-12-09T03:43:57.087' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshBranch\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (59, CAST(N'2024-12-09T03:44:13.143' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (60, CAST(N'2024-12-09T03:44:13.257' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10812/D1] AD07FB1FC9ED437EB785BBA766851844', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (61, CAST(N'2024-12-09T03:57:30.853' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1067,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P5240/D1] 75BE76240C084AD1B2C185541B30EA95', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (62, CAST(N'2024-12-09T03:58:07.917' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P5240/D1] 75BE76240C084AD1B2C185541B30EA95', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (63, CAST(N'2024-12-09T03:58:08.193' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P5240/D1] 75BE76240C084AD1B2C185541B30EA95', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (64, CAST(N'2024-12-09T04:01:48.597' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1067,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P5240/D1] 75BE76240C084AD1B2C185541B30EA95', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (65, CAST(N'2024-12-09T04:57:58.470' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P16604/D1] A94BD12A9209462CAEDB60C4DDD6FB5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (66, CAST(N'2024-12-09T04:57:58.650' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P16604/D1] A94BD12A9209462CAEDB60C4DDD6FB5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (67, CAST(N'2024-12-09T06:47:47.533' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P2620/D1] 3843B254F45A4B46B9D42E47B46B059E', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (68, CAST(N'2024-12-09T07:18:05.480' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1071,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (69, CAST(N'2024-12-09T07:21:50.370' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1071,\u0022changeTypes\u0022:\u0022Remove\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (70, CAST(N'2024-12-09T07:54:12.360' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","JsonIds":"[1072]","JsonIdCount":1}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (71, CAST(N'2024-12-09T07:54:12.477' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (72, CAST(N'2024-12-09T07:54:21.427' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (73, CAST(N'2024-12-09T07:54:43.127' AS DateTime), N'[{"RefreshType":5,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","IntId":1072,"JsonIdCount":1}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (74, CAST(N'2024-12-09T07:55:04.620' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (75, CAST(N'2024-12-09T07:55:05.180' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (76, CAST(N'2024-12-09T07:55:05.420' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (77, CAST(N'2024-12-09T07:55:05.643' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (78, CAST(N'2024-12-09T07:55:05.750' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (79, CAST(N'2024-12-09T07:55:05.927' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (80, CAST(N'2024-12-09T07:55:07.797' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1073,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (81, CAST(N'2024-12-09T08:02:02.590' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","JsonIds":"[1074]","JsonIdCount":1}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (82, CAST(N'2024-12-09T08:02:02.710' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1075,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (83, CAST(N'2024-12-09T08:02:19.720' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1075,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (84, CAST(N'2024-12-09T08:03:55.220' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1067,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (85, CAST(N'2024-12-09T08:08:42.513' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1076,\u0022key\u0022:\u0022833a25ed-54c8-4843-a8db-4ee53d745e51\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (86, CAST(N'2024-12-09T08:09:52.857' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (87, CAST(N'2024-12-09T08:09:53.023' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1068,\u0022key\u0022:\u002226c90cc7-1b08-49f7-8adf-bf9869ad2716\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P3888/D1] FFB842FE060143CEAA5D39E88D643FD0', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (88, CAST(N'2024-12-09T08:19:38.637' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1063,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P7364/D1] 0597F293D6DA4BA29D666544AFA8AF58', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (89, CAST(N'2024-12-09T08:52:24.827' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P10756/D1] 36AD03986C6A4BF786466A67CF91C227', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (90, CAST(N'2024-12-09T09:24:19.193' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P13232/D1] E60EE442677A4796A0AFDCABE50A9F8E', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (91, CAST(N'2024-12-09T09:25:16.327' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1077,\u0022key\u0022:\u0022d4050e5a-ccc6-44e4-86dc-49101b67528d\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P13232/D1] E60EE442677A4796A0AFDCABE50A9F8E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (92, CAST(N'2024-12-09T09:25:22.253' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u0022808713bf-deba-43c9-a81f-6df1a4a97129\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P13232/D1] E60EE442677A4796A0AFDCABE50A9F8E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (93, CAST(N'2024-12-09T09:25:22.413' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u0022808713bf-deba-43c9-a81f-6df1a4a97129\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P13232/D1] E60EE442677A4796A0AFDCABE50A9F8E', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (94, CAST(N'2024-12-09T10:26:40.727' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P7112/D1] 2F56F4502B2E4EE08BBFDD5271503A6A', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (95, CAST(N'2024-12-09T10:28:42.673' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1075,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P7112/D1] 2F56F4502B2E4EE08BBFDD5271503A6A', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (96, CAST(N'2024-12-09T10:30:50.717' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1075,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P7112/D1] 2F56F4502B2E4EE08BBFDD5271503A6A', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (97, CAST(N'2024-12-09T10:31:25.290' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u0022808713bf-deba-43c9-a81f-6df1a4a97129\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P7112/D1] 2F56F4502B2E4EE08BBFDD5271503A6A', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (98, CAST(N'2024-12-09T10:31:25.460' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u0022808713bf-deba-43c9-a81f-6df1a4a97129\u0022,\u0022changeTypes\u0022:\u0022RefreshNode\u0022,\u0022blueprint\u0022:false}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P7112/D1] 2F56F4502B2E4EE08BBFDD5271503A6A', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (99, CAST(N'2024-12-09T10:47:30.073' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4 [P8928/D1] 3001632DC98449BAA6DE64B13B386A41', 2)
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
GO
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1064, 1063)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1068, 1067)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1076, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1077, 1032)
GO
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] ON 

INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (1, 1064, CAST(N'2024-12-06T16:32:00.023' AS DateTime), -1, 0, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (2, 1064, CAST(N'2024-12-06T16:35:31.860' AS DateTime), -1, 0, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (3, 1064, CAST(N'2024-12-06T16:40:52.953' AS DateTime), -1, 0, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (4, 1064, CAST(N'2024-12-06T16:43:25.427' AS DateTime), -1, 0, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (5, 1064, CAST(N'2024-12-09T10:21:17.217' AS DateTime), -1, 0, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (6, 1064, CAST(N'2024-12-09T16:25:22.363' AS DateTime), -1, 0, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (15, 1064, CAST(N'2024-12-09T17:31:25.390' AS DateTime), -1, 0, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (16, 1064, CAST(N'2024-12-09T17:31:25.390' AS DateTime), -1, 1, N'Home', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (7, 1068, CAST(N'2024-12-09T10:43:55.470' AS DateTime), -1, 0, N'About', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (8, 1068, CAST(N'2024-12-09T10:44:13.207' AS DateTime), -1, 0, N'About', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (9, 1068, CAST(N'2024-12-09T10:58:08.060' AS DateTime), -1, 0, N'About', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (10, 1068, CAST(N'2024-12-09T11:57:58.590' AS DateTime), -1, 0, N'About', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (11, 1068, CAST(N'2024-12-09T15:09:52.963' AS DateTime), -1, 0, N'About', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (13, 1068, CAST(N'2024-12-09T15:09:52.963' AS DateTime), -1, 1, N'About', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (12, 1076, CAST(N'2024-12-09T15:08:42.353' AS DateTime), -1, 1, N'download.jpg', 0)
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text], [preventCleanup]) VALUES (14, 1077, CAST(N'2024-12-09T16:25:15.950' AS DateTime), -1, 1, N'v2.jfif', 0)
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] OFF
GO
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1063, 0, NULL, NULL, CAST(N'2024-12-09T15:19:38.230' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1067, 0, NULL, NULL, CAST(N'2024-12-09T15:03:50.020' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1073, 0, NULL, NULL, CAST(N'2024-12-09T14:55:07.773' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1075, 0, NULL, NULL, CAST(N'2024-12-09T17:30:50.607' AS DateTime))
GO
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-103, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["svg"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-102, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["pdf","docx","doc"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-101, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["mp3","weba","oga","opus"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-100, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["mp4","webm","ogv"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-99, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Decimal', N'{"umbracoDataValueType":"DECIMAL"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-98, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Date', N'{"umbracoDataValueType":"TIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-96, N'Umbraco.ListView', N'Umb.PropertyEditorUi.Collection', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","collectionView": "Umb.CollectionView.Media.Grid","icon": "icon-thumbnails-small", "isSystem": true,"selected": true},{"name": "List","collectionView": "Umb.CollectionView.Media.Table", "icon": "icon-list", "isSystem": true, "selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":true},{"alias":"creator","header":"Updated by","isSystem":true}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-95, N'Umbraco.ListView', N'Umb.PropertyEditorUi.Collection', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","collectionView": "Umb.CollectionView.Document.Grid","icon": "icon-thumbnails-small", "isSystem": true,"selected": true},{"name": "List","collectionView": "Umb.CollectionView.Document.Table", "icon": "icon-list", "isSystem": true, "selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":true},{"alias":"creator","header":"Updated by","isSystem":true}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-94, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Date', N'{"umbracoDataValueType":"DATETIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-93, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Nvarchar', N'{"umbracoDataValueType":"BIGINT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-92, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Nvarchar', N'{"umbracoDataValueType":"STRING"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-91, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Integer', N'{"umbracoDataValueType":"INT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-90, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-89, N'Umbraco.TextArea', N'Umb.PropertyEditorUi.TextArea', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-88, N'Umbraco.TextBox', N'Umb.PropertyEditorUi.TextBox', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-87, N'Umbraco.RichText', N'Umb.PropertyEditorUi.TinyMCE', N'Ntext', N'{"toolbar":["ace","styles","bold","italic","alignleft","aligncenter","alignright","bullist","numlist","outdent","indent","link","umbmediapicker","umbembeddialog"],"stylesheets":[],"maxImageSize":500,"mode":"classic"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-51, N'Umbraco.Integer', N'Umb.PropertyEditorUi.Integer', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-49, N'Umbraco.TrueFalse', N'Umb.PropertyEditorUi.Toggle', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-43, N'Umbraco.CheckBoxList', N'Umb.PropertyEditorUi.CheckBoxList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-42, N'Umbraco.DropDown.Flexible', N'Umb.PropertyEditorUi.Dropdown', N'Nvarchar', N'{"multiple":true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-41, N'Umbraco.DateTime', N'Umb.PropertyEditorUi.DatePicker', N'Date', N'{"format":"YYYY-MM-DD"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-40, N'Umbraco.RadioButtonList', N'Umb.PropertyEditorUi.RadioButtonList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-39, N'Umbraco.DropDown.Flexible', N'Umb.PropertyEditorUi.Dropdown', N'Nvarchar', N'{"multiple":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-37, N'Umbraco.ColorPicker', N'Umb.PropertyEditorUi.ColorPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-36, N'Umbraco.DateTime', N'Umb.PropertyEditorUi.DatePicker', N'Date', N'{"format":"YYYY-MM-DD HH:mm:ss"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1041, N'Umbraco.Tags', N'Umb.PropertyEditorUi.Tags', N'Ntext', N'{"group":"default", "storageType":"Json"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1043, N'Umbraco.ImageCropper', N'Umb.PropertyEditorUi.ImageCropper', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1046, N'Umbraco.ContentPicker', N'Umb.PropertyEditorUi.DocumentPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1047, N'Umbraco.MemberPicker', N'Umb.PropertyEditorUi.MemberPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1050, N'Umbraco.MultiUrlPicker', N'Umb.PropertyEditorUi.MultiUrlPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1051, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"multiple": false, "validationLimit":{"min":0,"max":1}}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1052, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"multiple": true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1053, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"filter":"cc07b313-0843-4aa8-bbda-871c8da728c8", "multiple": false, "validationLimit":{"min":0,"max":1}}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1054, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"filter":"cc07b313-0843-4aa8-bbda-871c8da728c8", "multiple": true}')
GO
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1064, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1068, 1, 0)
GO
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (2, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (3, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (4, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (5, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (6, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (7, 1066, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (8, 1066, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (9, 1066, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (10, 1066, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (13, 1066, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (16, 1062, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (11, 1066, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (15, 1062, 1)
GO
SET IDENTITY_INSERT [dbo].[umbracoDomain] ON 

INSERT [dbo].[umbracoDomain] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName], [sortOrder]) VALUES (2, 1, 1064, N'', -1)
INSERT [dbo].[umbracoDomain] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName], [sortOrder]) VALUES (5, 1, 1064, N'/', 0)
SET IDENTITY_INSERT [dbo].[umbracoDomain] OFF
GO
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Core.Upgrader.State+Umbraco.Core', N'{827360CA-0855-42A5-8F86-A51F168CB559}', CAST(N'2024-12-06T15:23:33.493' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Core.Upgrader.State+Umbraco.Core.Premigrations', N'{76FBF80E-37E6-462E-ADC1-25668F56151D}', CAST(N'2024-12-06T15:23:33.497' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Web.PublishedCache.NuCache.Serializer', N'MessagePack', CAST(N'2024-12-09T17:30:50.677' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'UmbracoAnalyticsLevel', N'Basic', CAST(N'2024-12-06T15:23:35.297' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName], [isDefaultVariantLang], [mandatory], [fallbackLanguageId]) VALUES (1, N'en-US', N'English (United States)', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
GO
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-1000, 1, N'MainDom')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-343, 1, N'WebhookLogs')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-342, 1, N'WebhookRequest')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-341, -1, N'ScheduledPublishing')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-340, 1, N'Languages')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-339, 1, N'KeyValues')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-338, 1, N'Domains')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-337, 1, N'MemberTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-336, 1, N'MediaTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-335, 1, N'MemberTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-334, 1, N'MediaTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-333, 1, N'ContentTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-332, -1, N'ContentTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-331, 1, N'Servers')
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON 

INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1, -1, 1055, N'Template', CAST(N'2024-12-06T15:32:01.700' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (2, -1, 1056, N'DocumentType', CAST(N'2024-12-06T15:32:01.927' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (3, -1, 1057, N'DocumentType', CAST(N'2024-12-06T15:37:52.117' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (4, -1, -1, N'Document', CAST(N'2024-12-06T15:38:00.607' AS DateTime), N'Delete', N'Delete content of type 1056', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (5, -1, 1056, N'DocumentType', CAST(N'2024-12-06T15:38:00.677' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (6, -1, -1, N'Document', CAST(N'2024-12-06T15:38:03.410' AS DateTime), N'Delete', N'Delete content of type 1057', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (7, -1, 1057, N'DocumentType', CAST(N'2024-12-06T15:38:03.420' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (8, -1, 1055, N'Template', CAST(N'2024-12-06T15:39:01.947' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (9, -1, 1058, N'DocumentType', CAST(N'2024-12-06T15:39:37.950' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (10, -1, 1058, N'DocumentType', CAST(N'2024-12-06T15:39:56.310' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (11, -1, -1, N'Document', CAST(N'2024-12-06T15:41:39.923' AS DateTime), N'Delete', N'Delete content of type 1058', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (12, -1, 1058, N'DocumentType', CAST(N'2024-12-06T15:41:39.980' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (13, -1, 1059, N'DocumentType', CAST(N'2024-12-06T15:42:11.237' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (14, -1, 1059, N'DocumentType', CAST(N'2024-12-06T15:42:12.357' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (15, -1, 1060, N'DocumentType', CAST(N'2024-12-06T15:42:41.767' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (16, -1, 1061, N'Template', CAST(N'2024-12-06T15:43:07.730' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (17, -1, -1, N'Document', CAST(N'2024-12-06T15:43:24.403' AS DateTime), N'Delete', N'Delete content of type 1060', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (18, -1, 1060, N'DocumentType', CAST(N'2024-12-06T15:43:24.460' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (19, -1, 1061, N'Template', CAST(N'2024-12-06T15:46:32.007' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (20, -1, -1, N'Document', CAST(N'2024-12-06T15:54:00.497' AS DateTime), N'Delete', N'Delete content of type 1059', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (21, -1, 1059, N'DocumentType', CAST(N'2024-12-06T15:54:00.567' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (22, -1, 1061, N'Template', CAST(N'2024-12-06T15:54:06.277' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (23, -1, 1062, N'Template', CAST(N'2024-12-06T15:55:09.927' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (24, -1, 1063, N'DocumentType', CAST(N'2024-12-06T15:55:10.073' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (25, -1, 1063, N'DocumentType', CAST(N'2024-12-06T15:55:28.307' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (26, -1, 1063, N'DocumentType', CAST(N'2024-12-06T16:25:03.627' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (27, -1, 1063, N'DocumentType', CAST(N'2024-12-06T16:26:22.153' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (28, -1, 1063, N'DocumentType', CAST(N'2024-12-06T16:28:11.810' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (29, -1, 1063, N'DocumentType', CAST(N'2024-12-06T16:29:07.443' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (30, -1, 1064, N'Document', CAST(N'2024-12-06T16:31:59.693' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (31, -1, 1064, N'Document', CAST(N'2024-12-06T16:32:00.050' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (32, -1, 1064, N'Document', CAST(N'2024-12-06T16:33:51.957' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (33, -1, 1064, N'Document', CAST(N'2024-12-06T16:35:31.320' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (34, -1, 1064, N'Document', CAST(N'2024-12-06T16:35:31.807' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (35, -1, 1064, N'Document', CAST(N'2024-12-06T16:35:31.893' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (36, -1, 1062, N'Template', CAST(N'2024-12-06T16:40:46.260' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (37, -1, 1064, N'Document', CAST(N'2024-12-06T16:40:51.797' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (38, -1, 1064, N'Document', CAST(N'2024-12-06T16:40:52.837' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (39, -1, 1064, N'Document', CAST(N'2024-12-06T16:40:52.983' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (40, -1, 1064, N'Document', CAST(N'2024-12-06T16:43:25.083' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (41, -1, 1064, N'Document', CAST(N'2024-12-06T16:43:25.520' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (42, -1, 1062, N'Template', CAST(N'2024-12-06T16:48:26.643' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (43, -1, 1062, N'Template', CAST(N'2024-12-06T17:20:48.700' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (44, -1, 1064, N'Document', CAST(N'2024-12-09T10:21:16.837' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (45, -1, 1064, N'Document', CAST(N'2024-12-09T10:21:17.310' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (46, -1, 1065, N'DocumentTypeContainer', CAST(N'2024-12-09T10:22:56.260' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (47, -1, 1066, N'Template', CAST(N'2024-12-09T10:29:13.833' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (48, -1, 1067, N'DocumentType', CAST(N'2024-12-09T10:29:14.063' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (49, -1, 1063, N'DocumentType', CAST(N'2024-12-09T10:35:42.940' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (50, -1, 1066, N'Template', CAST(N'2024-12-09T10:40:16.807' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (51, -1, 1068, N'Document', CAST(N'2024-12-09T10:43:54.167' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (52, -1, 1068, N'Document', CAST(N'2024-12-09T10:43:56.990' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (53, -1, 1068, N'Document', CAST(N'2024-12-09T10:44:13.103' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (54, -1, 1068, N'Document', CAST(N'2024-12-09T10:44:13.240' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (55, -1, 1067, N'DocumentType', CAST(N'2024-12-09T10:57:30.667' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (56, -1, 1068, N'Document', CAST(N'2024-12-09T10:58:07.790' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (57, -1, 1068, N'Document', CAST(N'2024-12-09T10:58:08.160' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (58, -1, 1067, N'DocumentType', CAST(N'2024-12-09T11:01:48.490' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (59, -1, 1068, N'Document', CAST(N'2024-12-09T11:57:58.253' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (60, -1, 1068, N'Document', CAST(N'2024-12-09T11:57:58.617' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (61, -1, 1069, N'DocumentTypeContainer', CAST(N'2024-12-09T14:03:13.487' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (62, -1, 1070, N'DocumentTypeContainer', CAST(N'2024-12-09T14:04:28.420' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (63, -1, 1070, N'DocumentTypeContainer', CAST(N'2024-12-09T14:06:40.803' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (64, -1, 1071, N'DocumentType', CAST(N'2024-12-09T14:18:05.413' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (65, -1, -1, N'Document', CAST(N'2024-12-09T14:21:48.103' AS DateTime), N'Delete', N'Delete content of type 1071', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (66, -1, 1071, N'DocumentType', CAST(N'2024-12-09T14:21:48.183' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (67, -1, 1072, N'Template', CAST(N'2024-12-09T14:54:12.350' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (68, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:54:12.450' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (69, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:54:21.413' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (70, -1, 1072, N'Template', CAST(N'2024-12-09T14:54:43.120' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (71, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:55:04.607' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (72, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:55:05.093' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (73, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:55:05.343' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (74, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:55:05.630' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (75, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:55:05.740' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (76, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:55:05.917' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (77, -1, 1073, N'DocumentType', CAST(N'2024-12-09T14:55:07.783' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (78, -1, 1074, N'Template', CAST(N'2024-12-09T15:02:02.587' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (79, -1, 1075, N'DocumentType', CAST(N'2024-12-09T15:02:02.700' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (80, -1, 1075, N'DocumentType', CAST(N'2024-12-09T15:02:19.707' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (81, -1, 1067, N'DocumentType', CAST(N'2024-12-09T15:03:55.143' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (82, -1, 1076, N'Media', CAST(N'2024-12-09T15:08:42.430' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (83, -1, 1068, N'Document', CAST(N'2024-12-09T15:09:52.707' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (84, -1, 1068, N'Document', CAST(N'2024-12-09T15:09:53.000' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (85, -1, 1063, N'DocumentType', CAST(N'2024-12-09T15:19:38.553' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (86, -1, 1077, N'Media', CAST(N'2024-12-09T16:25:16.213' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (87, -1, 1064, N'Document', CAST(N'2024-12-09T16:25:22.120' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (88, -1, 1064, N'Document', CAST(N'2024-12-09T16:25:22.390' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (89, -1, 1075, N'DocumentType', CAST(N'2024-12-09T17:28:42.613' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (90, -1, 1075, N'DocumentType', CAST(N'2024-12-09T17:30:50.687' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (91, -1, 1064, N'Document', CAST(N'2024-12-09T17:31:25.107' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (92, -1, 1064, N'Document', CAST(N'2024-12-09T17:31:25.427' AS DateTime), N'Publish', NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoLogViewerQuery] ON 

INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (1, N'Find all logs where the Level is NOT Verbose and NOT Debug', N'Not(@Level=''Verbose'') and Not(@Level=''Debug'')')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (2, N'Find all logs that has an exception property (Warning, Error & Fatal with Exceptions)', N'Has(@Exception)')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (3, N'Find all logs that have the property ''Duration''', N'Has(Duration)')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (4, N'Find all logs that have the property ''Duration'' and the duration is greater than 1000ms', N'Has(Duration) and Duration > 1000')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (5, N'Find all logs that are from the namespace ''Umbraco.Core''', N'StartsWith(SourceContext, ''Umbraco.Core'')')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (6, N'Find all logs that use a specific log message template', N'@MessageTemplate = ''[Timing {TimingId}] {EndMessage} ({TimingDuration}ms)''')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (7, N'Find logs where one of the items in the SortedComponentTypes property array is equal to', N'SortedComponentTypes[?] = ''Umbraco.Web.Search.ExamineComponent''')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (8, N'Find logs where one of the items in the SortedComponentTypes property array contains', N'Contains(SortedComponentTypes[?], ''DatabaseServer'')')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (9, N'Find all logs that the message has localhost in it with SQL like', N'@Message like ''%localhost%''')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (10, N'Find all logs that the message that starts with ''end'' in it with SQL like', N'@Message like ''end%''')
SET IDENTITY_INSERT [dbo].[umbracoLogViewerQuery] OFF
GO
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (12, N'/media/mlxhynnb/download.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (14, N'/media/0xcegyvp/v2.jfif')
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-1, N'916724a5-173d-4619-b97e-b9de133dd6f5', -1, 0, N'-1', 0, 0, -1, N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(N'2024-12-06T15:23:33.090' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1064, N'808713bf-deba-43c9-a81f-6df1a4a97129', -1, 1, N'-1,1064', 0, 0, -1, N'Home', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2024-12-06T16:31:59.520' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1068, N'26c90cc7-1b08-49f7-8adf-bf9869ad2716', 1064, 2, N'-1,1064,1068', 0, 0, -1, N'About', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2024-12-09T10:43:54.090' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1076, N'833a25ed-54c8-4843-a8db-4ee53d745e51', -1, 1, N'-1,1076', 0, 0, -1, N'download.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2024-12-09T15:08:42.353' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1077, N'd4050e5a-ccc6-44e4-86dc-49101b67528d', -1, 1, N'-1,1077', 1, 0, -1, N'v2.jfif', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2024-12-09T16:25:15.950' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1044, N'd59be02f-1df9-4228-aa1e-01917d806cda', -1, 1, N'-1,1044', 0, 0, -1, N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(N'2024-12-06T15:23:33.113' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-21, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', -1, 0, N'-1,-21', 0, 0, -1, N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(N'2024-12-06T15:23:33.093' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1062, N'dfb6f2b8-6b00-4f79-8389-35b0a27ff331', -1, 1, N'-1,1062', 0, 0, NULL, N'Home', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2024-12-06T15:55:09.903' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1066, N'a7d83834-27e0-420d-bbd4-fedb8acdfbdd', -1, 1, N'-1,1066', 0, 0, NULL, N'About', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2024-12-09T10:29:13.817' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1074, N'ca7b313c-8b24-4078-8796-7643914f29c1', -1, 1, N'-1,1074', 0, 0, NULL, N'Page', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2024-12-09T15:02:02.577' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1031, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', -1, 1, N'-1,1031', 2, 0, -1, N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2024-12-06T15:23:33.110' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1032, N'cc07b313-0843-4aa8-bbda-871c8da728c8', -1, 1, N'-1,1032', 2, 0, -1, N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2024-12-06T15:23:33.110' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1033, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', -1, 1, N'-1,1033', 2, 0, -1, N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2024-12-06T15:23:33.110' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1034, N'f6c515bb-653c-4bdc-821c-987729ebe327', -1, 1, N'-1,1034', 2, 0, -1, N'Video', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2024-12-06T15:23:33.110' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1035, N'a5ddeee0-8fd8-4cee-a658-6f1fcdb00de3', -1, 1, N'-1,1035', 2, 0, -1, N'Audio', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2024-12-06T15:23:33.110' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1036, N'a43e3414-9599-4230-a7d3-943a21b20122', -1, 1, N'-1,1036', 2, 0, -1, N'Article', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2024-12-06T15:23:33.113' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1037, N'c4b1efcf-a9d5-41c4-9621-e9d273b52a9c', -1, 1, N'-1,1037', 2, 0, -1, N'Vector Graphics (SVG)', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2024-12-06T15:23:33.113' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1065, N'1cda9e5b-1f97-488e-9a44-b393ed8138bd', -1, 1, N'-1,1065', 0, 0, NULL, N'About Page', N'2f7a2769-6b0b-4468-90dd-af42d64f7f16', CAST(N'2024-12-09T10:22:56.247' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1069, N'4aa5351a-e8a8-479d-981b-f5bd073c9d83', -1, 1, N'-1,1069', 0, 0, NULL, N'Master', N'2f7a2769-6b0b-4468-90dd-af42d64f7f16', CAST(N'2024-12-09T14:03:13.460' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1070, N'848fd207-9060-4995-8f2f-b11560d16c2f', 1069, 2, N'-1,1069,1070', 0, 0, NULL, N'Compositions', N'2f7a2769-6b0b-4468-90dd-af42d64f7f16', CAST(N'2024-12-09T14:04:28.410' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1063, N'c91daa92-1bdd-4ee1-bb95-fdb556eb1a61', -1, 1, N'-1,1063', 0, 0, -1, N'Home', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2024-12-06T15:55:10.040' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1067, N'4b3e04ce-ac18-4ef9-b3db-d83dbc0c3fdc', 1065, 2, N'-1,1065,1067', 0, 0, -1, N'About', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2024-12-09T10:29:14.010' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1073, N'30b57664-7760-40d8-8337-070f13b70d74', 1070, 3, N'-1,1069,1070,1073', 0, 0, -1, N'Layout', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2024-12-09T14:54:12.423' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1075, N'4c317e92-6588-465b-ba9e-45b6820b7fa6', 1070, 3, N'-1,1069,1070,1075', 1, 0, -1, N'Page', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2024-12-09T15:02:02.677' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-20, N'0f582a79-1e41-4cf0-bfa0-76340651891a', -1, 0, N'-1,-20', 0, 0, -1, N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(N'2024-12-06T15:23:33.093' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-103, N'215cb418-2153-4429-9aef-8c0f0041191b', -1, 1, N'-1,-103', 38, 0, -1, N'Upload Vector Graphics', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-102, N'bc1e266c-dac4-4164-bf08-8a1ec6a7143d', -1, 1, N'-1,-102', 37, 0, -1, N'Upload Article', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-101, N'8f430dd6-4e96-447e-9dc0-cb552c8cd1f3', -1, 1, N'-1,-101', 36, 0, -1, N'Upload Audio', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-100, N'70575fe7-9812-4396-bbe1-c81a76db71b5', -1, 1, N'-1,-100', 35, 0, -1, N'Upload Video', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-99, N'8f1ef1e1-9de4-40d3-a072-6673f631ca64', -1, 1, N'-1,-99', 39, 0, -1, N'Label (decimal)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.097' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-98, N'a97cec69-9b71-4c30-8b12-ec398860d7e8', -1, 1, N'-1,-98', 38, 0, -1, N'Label (time)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.097' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-96, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', -1, 1, N'-1,-96', 2, 0, -1, N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-95, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', -1, 1, N'-1,-95', 2, 0, -1, N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-94, N'0e9794eb-f9b5-4f20-a788-93acd233a7e4', -1, 1, N'-1,-94', 37, 0, -1, N'Label (datetime)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.097' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-93, N'930861bf-e262-4ead-a704-f99453565708', -1, 1, N'-1,-93', 36, 0, -1, N'Label (bigint)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.097' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-92, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', -1, 1, N'-1,-92', 35, 0, -1, N'Label (string)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.093' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-91, N'8e7f995c-bd81-4627-9932-c40e568ec788', -1, 1, N'-1,-91', 36, 0, -1, N'Label (integer)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.097' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-90, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', -1, 1, N'-1,-90', 34, 0, -1, N'Upload File', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-89, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', -1, 1, N'-1,-89', 33, 0, -1, N'Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-88, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', -1, 1, N'-1,-88', 32, 0, -1, N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-87, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', -1, 1, N'-1,-87', 4, 0, -1, N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-51, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', -1, 1, N'-1,-51', 2, 0, -1, N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-49, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', -1, 1, N'-1,-49', 2, 0, -1, N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-43, N'fbaf13a8-4036-41f2-93a3-974f678c312a', -1, 1, N'-1,-43', 2, 0, -1, N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-42, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', -1, 1, N'-1,-42', 2, 0, -1, N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-41, N'5046194e-4237-453c-a547-15db3a07c4e1', -1, 1, N'-1,-41', 2, 0, -1, N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-40, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', -1, 1, N'-1,-40', 2, 0, -1, N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-39, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', -1, 1, N'-1,-39', 2, 0, -1, N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-37, N'0225af17-b302-49cb-9176-b9f35cab9c17', -1, 1, N'-1,-37', 2, 0, -1, N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-36, N'e4d66c0f-b935-4200-81f0-025f7256b89a', -1, 1, N'-1,-36', 2, 0, -1, N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.103' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1041, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', -1, 1, N'-1,1041', 2, 0, -1, N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1043, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', -1, 1, N'-1,1043', 2, 0, -1, N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1046, N'fd1e0da5-5606-4862-b679-5d0cf3a52a59', -1, 1, N'-1,1046', 2, 0, -1, N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1047, N'1ea2e01f-ebd8-4ce1-8d71-6b1149e63548', -1, 1, N'-1,1047', 2, 0, -1, N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1050, N'b4e3535a-1753-47e2-8568-602cf8cfee6f', -1, 1, N'-1,1050', 2, 0, -1, N'Multi URL Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1051, N'4309a3ea-0d78-4329-a06c-c80b036af19a', -1, 1, N'-1,1051', 2, 0, -1, N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1052, N'1b661f40-2242-4b44-b9cb-3990ee2b13c0', -1, 1, N'-1,1052', 2, 0, -1, N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1053, N'ad9f0cf2-bda2-45d5-9ea1-a63cfc873fd3', -1, 1, N'-1,1053', 2, 0, -1, N'Image Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.110' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1054, N'0e63d883-b62b-4799-88c3-157f82e83ecc', -1, 1, N'-1,1054', 2, 0, -1, N'Multiple Image Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2024-12-06T15:23:33.110' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
GO
INSERT [dbo].[umbracoOpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConcurrencyToken], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [ClientType], [ApplicationType], [JsonWebKeySet], [Settings]) VALUES (N'3befc79d-1c3e-4634-b17f-e966661741a2', N'umbraco-postman', NULL, N'4b8a50db-6198-4518-bc3e-d4d259c7cec6', NULL, N'Umbraco Postman access', NULL, N'["ept:authorization","ept:token","gt:authorization_code","rst:code"]', NULL, NULL, N'["https://oauth.pstmn.io/v1/callback","https://oauth.pstmn.io/v1/browser-callback"]', NULL, N'public', NULL, NULL, N'{"tkn_lft:act":"00:20:00"}')
INSERT [dbo].[umbracoOpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConcurrencyToken], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [ClientType], [ApplicationType], [JsonWebKeySet], [Settings]) VALUES (N'9050647a-10e3-4017-bfe3-144b16384038', N'umbraco-swagger', NULL, N'2c69230c-b223-42b4-ac55-c0e0c26c19b6', NULL, N'Umbraco Swagger access', NULL, N'["ept:authorization","ept:token","gt:authorization_code","rst:code"]', NULL, NULL, N'["https://localhost:44384/umbraco/swagger/oauth2-redirect.html"]', NULL, N'public', NULL, NULL, N'{"tkn_lft:act":"00:20:00"}')
INSERT [dbo].[umbracoOpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConcurrencyToken], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [ClientType], [ApplicationType], [JsonWebKeySet], [Settings]) VALUES (N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'umbraco-back-office', NULL, N'1904260f-e007-4c15-afe3-2344d9fa6c64', NULL, N'Umbraco back-office access', NULL, N'["ept:authorization","ept:token","ept:logout","ept:revocation","gt:authorization_code","gt:refresh_token","rst:code"]', N'["https://localhost:44384/umbraco/oauth_complete","https://localhost:44384/umbraco/logout"]', NULL, N'["https://localhost:44384/umbraco/oauth_complete"]', NULL, N'public', NULL, NULL, NULL)
GO
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'082124f4-6e3e-479c-9283-76f4ae018989', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'b0d4ab12-aab9-4a52-a87a-8c7e4b38e674', CAST(N'2024-12-06T09:25:38.4658115' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'0d3fb644-8eb6-40bd-8f5f-19b5d06d579c', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'8f5a18e0-677d-4a8d-8463-be4f2cd4cea0', CAST(N'2024-12-06T09:23:54.6402543' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'237d186d-c069-4ab7-9bff-9430b5ac42d9', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'b861986a-1071-44b8-90c1-13446e3be763', CAST(N'2024-12-09T03:12:19.5016032' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'36124a24-f56e-4aa2-be4a-7fdbfb307a7f', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'50dea747-7db3-48e3-90d9-4995a77115c6', CAST(N'2024-12-06T08:23:46.8074160' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'507ac103-b348-4e1f-a410-5fa76fd9c7bf', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'c61313a8-6c93-4efe-a5fe-786c735fd5d4', CAST(N'2024-12-09T09:24:19.2672336' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'6174ccae-577e-4e3d-a077-076ff1160aa4', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'5262fdda-d66f-41f1-afc9-d8fd78eeaa38', CAST(N'2024-12-09T06:47:47.6023112' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'7357a4db-dae2-4bcc-a586-f5d7bbf34def', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'3a35e88c-4391-4351-9ef4-7b3d71b86d55', CAST(N'2024-12-06T08:53:14.0260491' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'7f13efdb-1ffc-40d6-b15e-3d464bae2b35', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'584dbe19-10e5-41c5-bb6d-6c31ee3ffa54', CAST(N'2024-12-09T08:52:24.8968217' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'854447ac-6a35-4926-b7e6-a55b4613367b', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'cadd40ee-fee2-4259-a98b-a2727651c17d', CAST(N'2024-12-09T02:12:46.9967562' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'86018e1e-5360-4597-934c-e5950123b778', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'9b4c3f2f-ee16-47f8-94ef-acc83f3f2bf5', CAST(N'2024-12-09T10:26:40.7988152' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'c53cd807-fb49-4a6e-a37d-80db1059588c', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'e8e8cdba-e791-4fd6-9630-f54073b3a8f6', CAST(N'2024-12-09T02:38:29.0738731' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'9f88bf7a-8eca-4668-a902-103b50d884d9', CAST(N'2024-12-09T10:47:30.1456425' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
GO
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'39b6a180-5c4b-4254-875f-26ceb9830138', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'6fed68d4-1217-446a-8bb4-9eeafe26969a', CAST(N'2024-12-09T10:47:30.0000000' AS DateTime2), CAST(N'2024-12-09T10:52:30.0000000' AS DateTime2), N'CfDJ8NI4xJXZcP9Fj7fupjNMnBa7ZxjpcR1OWGml_lOlZ1tYuucCom5rPMB8hhMnApM9eHQdnOQxCZA51lacy6oh5dmwd1GjbYaFcRbxm1L5AsTww8dQfktLO0PoBYJoW3CJXHmid7_g2tKzgvawZmh9ZJL60A0DnmfZqwhxtcExrJbgIWPNCLsE2oYceV7Ubb-kOQQoZ5JSaVFCISKyKudd4dITtYo9GbdtR_b5xswuFVgel5Nps7CBO578ZMFvI7XQvbXiOtZ_UKpkbu6_5hyChSrHg7F5eHXrmwpCEoyMfYwIIZW82xRd4zcJRHY7YLfSO93ysqCegsY7GZ0D6bcKSd99S5QXpA8WCI4M7WCD2rUbODO8A9-8YUi4t-xPRruwpa5EvnkbcNHd7TslOBoEVSGGsHYjAfuDH7rLfm2FM4EctGFA0qzCS9XY-hD5mBoJ7tmUi6Z6M0MeVHHqMamICxcPxbo6Q2X8eltFbptS6jQ8CCeAxfusalGFroQZKkPQdmYHuoDtxgW717wMnPwaP7-Ij17TriMmXXsrLd64jZWkH6pv_x45Yfg6DjwLpEV00JEE83R50fI8yeAC5fqG0YOz1zx4R2ZSSISr4uZa3KbdJgcYYod7I4kMgtmOLhOpEZ7Ka_y7yDLhswl0mlBAQ8FPLQ8Sz-rjS48mj_-MF9FiXv6sRvgOtenbMjQzEjmalFICXxlz2pEnEScndB9Dly7xhi9Z8Jov7hjJdUgkeYUChzjZ3vP-5mqlhQWf5ev6rGEo7wfZNo3U98OfTu1Wp8bcMjM8MKCD-y1Tt_WPaEXq7nN2AtE47_B3zdLnyx1twHSNl5N0zvkopQFuZWyLt535yyrSfUeLneNj1HQaFFXVtA2lLLwRblW99iIAtpeMjdaujH7Nb1v_AysregXh5OYAlxrKjWnyMftgYVGZpxHC74Sg8dgLJbT0ltJxvH5m1HGgDvyQ5zU6esNnwLIsrH3ye8tf1SFfVIGHzY4K78EfsYVtGQkVxjmkZe2QByZvW5KQIFeeybniQI7p32P6KH16Dm5mTPr5Cir5HwfliZlU_YQewqwAshsYrGxVmV3Fsm2wrUiWoqZQMvLOgACjfoJGGJLfkN5Kzc8IiJI23cLmQnp4tE_hez8gAGgkeA6MVVPt5v4ErHL1DRm7iCG099qg71qZjwJucyXL6KQG8sBsnF806OIf8e6VRyN6RVZ5t1hEJCj4IatE8YacG8mqSwejS09WFl4ctOQp3WPsd_T58iih83XJXuuo8I067Xm80pJJd8AaiDEcLUJto4rL2x0UsqlppTqvTDho_dr0YBkMQRD96FXvDLt_Dg9F9_QOYIn-2QDGK8O-w2f-vk0esxLu_XVhXOrxbYx7zrTPQj0XpGkZh9vG0X-8RgYbVJ-Y5QfUsY_lJApD4ASnhMvWwv1Ez1Qc1s1uOH9wGuMlsKtcmY3-YMAoS12mcvsRI91kHSMb9JKA8DQD2M3lL-l7ME8Pzmk1aPeSMHkvARM7Mxj0_Ty5ofVnis5LJY0A83cdcmVA4yZ6wca4w_DVZBy2LtzW_eS_wfDXwT1yhNcjJehH4O1lE3q2mhCy-Q54psvRWDcINZK9V71qbOOzoT8e_8Z1xLnR1K45hK3Mn2CM2k4hvDILErZaEFcXvxzg2O-lLGRM9vRgftTOOAmlYT9P3J2URIdTlwr3kKVWhPOY4vx2cq4t6l9Z_2vedMeymEFfE6Bv6Fqx3d6hXdpa5Xi3lIfvuzCUrpjgTVmPFzo7DWiYeMIQ7K8wXiIClPxJOufRgk73NJ0J69bsmVXrsspgXP3XLFPb8juYAc_2xuGEEGkVgn7K4qVUnjJEwurq4xLSdbrTWdiMMYBEGNY1gMm0UUjwGjpYKyzl0N9HYfgKPBEH6eZu7iidHxaViEGaJtrqKjcU6YyIQV4wyTRNLtrbXv0unmxWKD0LcbP19gTmcdaGauKGfs4rwm8jY2mnDilI2YmM2e85RfQ8_lzxfYOKveBwfA0vUG9qTLUwfrh-CcyR6yW3VeT_4tTsOCEEgceLy-WfFQxL7koCTWdQ7K-sdflEPpcZwMSnnq4Jefno95GAyr36s2qJAil-BR84GAdk08ZlRUoQ__4LET4FUnEUwKTBFfvOVsLuYo0Y9nMMDcsFAcKGyebRTSzhtxXlrk1G-V8cXZP7dNyNirMoOgZEwe6n0k8lpw954_dQKi2gwIS-kQp8sfRH4t-E4U27h-Wa73ZAQGicxJGTtlwcxJ38Yk86fb8EiASAkTfIj5eHfK_P95ogJ7eM2apoZd0jRKkG6-bzJGx9XWC3OqQrXikWeCdtqvCeqYGjkHFrYB6iYDkipbWY2vP7CDgFROp1BC1Txo4HOyAAgmQkz8sfKLcsFxzKfXSYLElEZLfkZQ6wY2Bo7O2SO2GdowhTNzIXyMls_jVk3M6coJGGnUZqzbxsxhs1kUu2sbzlN2fIMaSQOV3oEmzBMiOg-rC2FwqfuJao_L-kMujZU5XJY4fPppAcbLY3mskmyIHibkfXLNPEIc59L3mpqjvV9ZZy_JnZv49Sjg2Qoma-UwzWPXWi02HLFEerFQ2OfTlpxOyL1M7J0TSU2kPcE1l6Qt04Rmpf6IvVX0jOtoTkNJtipyChwQLHN0e2wO7RuuR-Mn5_v6ZpNumbuTiz019k4hQ8LXnLnihkszY2o6Rc5D0KRzza7HGRhv7OAEuTNUXeGfBZAcxbOKmHqFbqEQmG05O1jlJkAJYlPJ38c3ycD8dUHN_NMN2W2VzKOevEhPR-ITGlIvzOfsX3JPJoaknZp59-rkXKn9QAodzTW6FGpw_l5y23ICNqNjdR0wkE-c9zd6STUV3eOEk_lt_P4Lzppy5NzEGmTXQhmkZNbp9o85rUxDjXqnBIylmUSyglqDBIwWBzCxgf1wBsWEuMxgRPYXK1PnvzOfJ00HAS3_llcBUyv0zfsuMZaFE0RsWEE-P36v6Qf1f6bGpD9Df9t0xFua_4R1A6w-ik_gaSB8SCFHRc4GZP-uKf5Fg0xG4gbmvoHqrcJLRqgvQtbgRT627EAtxKvwqFqD-N8c85LtduKsaqfAYQ0Xz_94Q', NULL, NULL, N'rQ/Kp8w4mPEdmNWeeraJIuh/YgdInjB4wcw9TtMKcrI=', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'access_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'77758fee-d638-44ff-b139-92843a5d3948', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'8fb09c33-e99a-45b2-ab96-f5236450c5cf', CAST(N'2024-12-09T11:03:15.0000000' AS DateTime2), CAST(N'2024-12-09T11:08:15.0000000' AS DateTime2), N'CfDJ8NI4xJXZcP9Fj7fupjNMnBZoAW1j8qwRRpM2hyBSFX_0kNhxq2gHbPlHkW-JVi29nkg5kJcMRGZ1bG24Kukf0Xm5nphM6X34zjaYAKMkGyFV88bRvZmIebYaoAm4R8FWV8UCoyoVdsbKCdZ_9RT91BBL4wAjeaEP7uWN3D9NqMy3w9V-lgf8eaYnaHR1HOib6-z4hn-_FlIaimSxUovpxQC_pbuRVwPAFyOUOZgvoSxwYvTacPqD_NcNmRJE-oVTM6abDDF9LmCe8L351JAEtE6QXk0Wb1HJCtDhwqZc4DmeKrjQOI7LOpIrpzJY--qej_2aRtFyCbNbo1YZAA4jSxRXE69ogsecrAOEyO4AoD5Y5hVnkHf1GfJCtHZmrk54v32ATjfIFCtjtz8e06zFGjyxiSknRnbTr0ESt-NkFp5IH3kWSIZ92w3efxY8l-q828FxHdQxPbgF8oZh1I0VdER0dKqRX1b5Qhv-E96BQfq1gr7x8Y5NJ34s2Oe7-oeJmr5oqESDXo5c0ao11Ev4vrFUDAA26bONRGZz9ljxdcR1czYwGJ3rmpGzLk6MeUOwRRGU5QEMSk-sf7IJo5QpMnnbaTOr4lzRrFO_3SdYoarBgtL-f5j2gIK9Z8zQzVn3WgXp5zKFmJ7yxF0_7LLFNeR9Nt4lA8mKFUFaohVhG_roNHHkYrD7lX1fY2IcukqzbvtMTZ_GB8-ektuzXx82gezq_Vd-TZ-zJHuQNna68GiJMBqsYOFGfv1r-OXx5A21hKFShMYJDZQKgbzpoUjguQGw_6QFik3JEgMkSEd5B7El84fbxC7Tsq5247xS6XrJ2ymxDiFDc3Q2I9-YnEZP1otU8KQq4B6gOVj7iP_zFUwqD1qP8TxfdDzmyMveFD8UPpPdIlCC0QD6K9gczQLDgXI9YT6aC25YIcScE9gRopILVq6_8gbVPbjJgpXTqvpgp6_L03E1C7mOcovqZOlyDVORE6-LBmnQVjKwttpIDRbSA2cXGKyjtR-G5ulcDi3DWl6BF4HpckWlbZmMrgk-oVVY9crdwYMEIawEV4A15XbTiaq39-MdMlFUSPcTC9w6tX9Tq72T-raFbFAUhX6qf3eCJnbM6vYZiwHVBLXZQKD82P8lTa2lu9kRoHG6vZuqedXit4bMwxDlaY0SkRVciS787bwRP8WTYWUiXM_tRR9NRdiTMM_pcuTARxWQr93JG6WzxG0coFAA-gAeUivuPKVTKI8vyN3zmpxRHgps3_bM2_mVZbEYOvL4yIxwwoXZnBfUhJnpYet3H2WvUIkDLQKniFuxrz3LOd1XdNOg680L0M-SQ22ulu4i1WSWkbktbPG36OtYcbgyCLNFamem0gClX56vY7o7Uuao2f5Uu1-awwmUEjfMW3kFQxV0jK3J33I2kWWPFxnzGCtoVenT_ZwRTiTEu_OlmQZ385vqy4lrZw9VPnKLjnh7QzRkjoQzEKoNJFK4ZZBey2-xeG2iwMaubnweaXEbb5CBrRfIT-PWA2ERsjMG_WPWxDyXaNLUNrryusiHQTl4gaGL5Ow_Xi8w6LiKpwntMR5mV215AsTMw2eZPOeAaBzKXSCqkQkNCoh_mxB0oQOhYS_Xgzusfy3EFd9eg0LNVywdonydI9cJaUktXxcfIqqp-FxxomzsIndA56rOitDYQJnz0KkxFwaRApzJWlT1S-xPAwb3pac136VJrwyf7X0B_jJ635PnEEY1smbe4nY4DEO6esxj2gM7fd2VquaPD3bg1FekIcQacMwlaJ4R7lb6xfC9pVO5E2l06stxHAaAZMMwTYbJGXwFZ2O3AXS8-5SkzG-8SUejeMC9UgBNk1ZyK85SX1kwq1vqGJ8vAZhTXhd-AXOWLDswYWu29WjJNROgWA6W-UpncjCsxVYJJwL3QFLJxfPxEcU6LrYfZIzJ4Nt3uH5pr9166weNIsOILtp0eD5TRBXeydyXNQV1H5hMGarSmtTI4eVqoqYwB1YNmD4zpnLGMblsgNoxvGMzWAXgPh8ZDZoknnF8eYpXQ_V23C3In-9Pc7vBPRHYwtvzYxKlx5IsXSUY7dyLsmLhi-eCST2oN6hOkx0eyifgZmRA91jFHvANF7noegxHPui-f8SzTMa9kxTx6X8yUCmDMSvnJYhbEEZlAXwq16tT_P3siFMVjG5rGnAu12pgW0HFBBdpDuD-g55FaclE_RJQYgl8nSUF5mvbPCL1i7IN-qk1LeXEaIDt8eYndHhbAqiAbBI1bABCOkdo0O3eAuRJ78Xd9L67rAYqDHNZBePByF_LZZ1PwfDPAeNOcUx_2u-TMyUhKekH58phNBCyO_SqXolB2YCY3BAMGPAdh91cGbRNJo9g0qfbARDDZd_33zTz6BbT1jqBJjS2FSXjW8Xu7R2mFm-7y6wZRKl9zTf52_qZofrUpHqEtCPvl4PyPOO30R-ovh1SDnP1q5scLm8_EMMJT8BQoKg8T5Uh0w2JLnhz4ZX52EiPea7_MME6Ww1C6hTbkB-elLmCnVaRUpFkFQTeOTbZOQQh98Gk1Un1T6PgHH_EVgE3e3kz27AYKp7hqhWWrh5mrOUv6OTNelpL1RKIxUA7nxNs0bgviIf3NxD8B8WZUr0JWjpMu9VkRwYX-eduHsWiE8-VeGT2fMhQXpUYvqUVNZs1rtCHEPHD-zdB19BqaW1UrAolbUcefyh-0hiQkOxHsQYxKJUE3M5V5vKlvJaGqOS2grX9IG3Zp8-EaynJv8z0B9guwvgoi29kJ285Cfkdz25FXHZmhKHLFwJgr28sxzmZIhBQhrvPUCxS-ce5NrgHavtqOgiXCqYvyh-4r7XYJbznc_X3xcfMJPXbL06jkNDpi2unaw3qZ9Lq0DSdbpCEW3R9rx4T6YLzySw8ZNkmatn4QIcaYRjJAsQw34JrjFwa-daEQK8QvByMpp4k9BuKxKPe5DlTqLcmwl9nfTlN9Vh4TGxY3FtqCBymYCTwb7mwp6K6_ODt-jSJjUmBX7eDDfyd3EWa4A8loyW4GUQAfW-lJaQ5e5P2BLLa3fGMg0Jiv_hbLEPNGxBRxK6r8FipGBeG9Tp7uLfRrNlM3NZsYXA', NULL, NULL, N'dMAD1MWhGQIb7EYWpXxANA5h7FK/0F6p6sPhAQdBLME=', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'access_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'779d9b08-f177-45e8-b415-6745b849de68', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'7970d22c-fe67-4351-9d0d-58d67e21a4b4', CAST(N'2024-12-09T10:47:30.0000000' AS DateTime2), CAST(N'2024-12-09T10:52:30.0000000' AS DateTime2), N'CfDJ8NI4xJXZcP9Fj7fupjNMnBZXGBt_CRp0hpZ3qtGSerC7a1nQHM17W-WsuX9G6f_s6p9BsKlbYW9oyjxKHINH2bEJevUvDAU30qbcCyO0QsjKp6HqJyw42N12PZRL9A_BsgkldDwmDFm-fCnTRlYwIOQGHzcEduNaWApzwMnncXQHl4Ru-uMtikUhT2DEF-TugFBB-4Pa2fh_kZnXQY9uRsXmEVQ3LrxCxj9ERdB-DpJpPBO-iiUOMKxgjb0Ksd0WA2AEfev9KJiQ6myAFCiUUovAEpwk4073Wd71gCTDqWZVBbc2cmXxCA1HAIz1AkNVy-w6tSAYT-CQ6h91H2xC0W87qBkhQBbHQ9Welv7djFG47EESUGngHPagTZuGLtxyTl69_YJcnzzu60Qh9yeVQQa8Fx_h3aOODQiVQixKdZlYzFMV7lvSATpeqmCJX83LcYuP8PzSUlqSj-jg2sRxfEJvBx6BBP0KJNLplugyNFGnwJvaU84H4MyQYnGyozabsYMghuXzVGs96gkcqBtQHJ9A-cCMfyLp8Ircv4_xq72awRassLig-KQsiG6eZTdX529LW3OURmaQ9fUDKN883yMbZL8OFkJP59u6a2ra9oWnkU-5lAcBGb8R0KMOtrCG_KXXb3MXcf2RA-FlXHzyCkwQf5DnWU2U95GnagQ7OKmEZCG-skbQvlKh_gmpXctK4zpKzTrQ6pSld_vrzmVsl2GsEdN57Tov5vMCPXflmslJ_lod2gB22Yv9PFbIa57jmX9DF9jWKbb4V275M4HpXghcs07boKHpRx55aB-gF01uuYVttVh7V30KGvPUo6JW92HpUAwAQrpmHnAtnj1jnhSQcX5m6nvo1W4TTC0o7YDOKhOLsFLeAEWqmHnqRFrBOOiah78mAorQtzEU8YWUOl3NGKaaouVZBcQPBpYQ6HU6ZJpggcWPvKuvc1dzzb3aZF_dsO3xqMibVJMLvPNmWdt87NQBT1OdYDKV-m-IjU76Zajpb5DW3YxJH7WnMqP5dwQe8wnUZOcuxJiOW9_EtMEbeCS7aIpC8aQ1NXWQWD2cgRYyqlThuAAMEHy8dfkymN0zDILpsbqHmE_XHy_YYpYBUw-Q1N2hiFnldHJ6GW2Qkf8I9njGdKR7pkKfnyMnfatyMsCVj5h3v18tPYDGDg91eEAslDSIlVL3DAbg-DWyMur2XLuC4rqtTTxGHFRsriHczqql74iLPNaj9pr_OMatT-YIJ-03E9UKfU5JPXfq9M3h-3S47l4Q4oiY3hBtAhcQcKk5ZYytrUuiuCUvRnTTvXhn8ZarprUkyBfaRK-WoI-BXPhfmSAm7XK4zdyGxg_rlwl7l80-wh5QMW81v3broCfZI87OIgnnzlHwBZ4D6Gv95jb1hINy0Fhdjz9fnX33E10KPduMvtNwLGMPczme0pNX9pQQNYrFR7tVviMo4L7g0uFZyQeDxjHQAZx6SNuKV74k7b4S3YlsTEeUffwdhubfo23SKO2VJrwrGNerNc2vgt7NI60svxCVO23M1iW9P-VuI3-PCuOVxYxuXGcSZSOokXaktRTfdVxUXrwcx8RTAdLe7XTCijtK-Uy0b5Uf0T4t-GIOxE-UUfRX9m7BJOFZGkSFKJMrH2-Vyf5T8_hvzqf-yUP2zaCTiMz8KiF9c3QIvjTyYBkW560Mil6j3z_A5cXDAodh5atCxH4bOAg2_W4UTMxsEaOAMt36_QkHMpx0ay2zbssfMexJiSLCSjvSh9-5MX5UL4Go5KWFJ9_du73rr5rGgQlY85VzeyaWoQrdU6PoDNn7FLW51D8IHKtGjheQ5Iatun44VLE8DN_YVfxNb-x3jLPJd_2YmcSzZsI5xqIFTC0HZlglEBQjUtBA54WJLGvViPSRkZKnILRe88LwFAv5f9c48DAknr16KDh18hWduwp7oXZdDxbNXGXdwWIr4Qussr6aJYbpglgmkZAz1NmEOk6xh5Jfe_Iz9Kc859uFXAjc7JITM2LryIlAAd26gHccX4c2iRr5n_Ru9kPTuKXI6w2xaq12ZzcVai0mmrdVf2hGAVdKV25rS8AdQFmj1gfj1h5dwoto9mPPC2ik-02vgMELAenIriSniDxODIa_kHYBzImI-X29cZNIZp4EAMeLibB4Rl-p3hA0nHlI7cKPCBpYKObr5eqrnnNmvR2IDfmvR-72wsYsBPGSOfvdJ0MkhKY46HO2FPmHJMNjkoHkFoe3SZ9GAX7BTYGkzyGp3RzBS13FP6Z2s-uuDMfY8FT3vCgog6C1ridioVuQL4F5HRVZ0tUQv4nEboP1iWSjb18LR6KbQC9GnEClp3ANEd8qm3r8i2A3okqBmgNNvrcYfYqrFx6npy-efGwm1Eix5wvlayWVBmC4LDWXH0-MLMQ2DLLtxGBL9_UMAfjzXVJhJeAe4YEGvpNWkNDvkyhkJqIIGjENE9GP2RPSUROxFsixxXwxlW7cpEHvgh5f3PjQLiJdgeVGzyLxrSUhhgRfpKXBsA6KtCqw8W0xYoq1GGhqnNeNqOSUHK1cSqFpEs_Jet4uvknbE4srxFrWGFC_g6kSTE_2sZLzcp9XHCol6Av1qsb8odEERnF9qvuZ9yhR27kJGqNo2Z6wo1o2BrdZowWxgDICCxlHcQHdAe8iH2YsSBM5VuIO_CSNvszm9UXOlVCRnaDpTBXMzmGAL8FE1-hiR89RLBATQ8OI_H6tm2iM0y_4dPDjnju1YjbV3BfuvLdMkR6D9-1ox2Lepbx6vDdmoT77gW30w4jDUheU26dn7eCInIDPYyOtegkNLTvZEmcmG05EPq_v3tB_SbxGubIqSiudR3tJvKU-9A7luneyJbLIPd1W4ju9b2ZDnVUM5mi1DJOEoHRUYNV35l62MAiAw9zzGJgPtUcbosEIgRBCcSjNa8EpxEZEFWfqE1KhGnWBm-2mFBtRIGr7WiKbkuD_o262vGuGKnf6UgB5LY9aIPKblL0LbeLzGvme0I7gHoHlCeFZIx-V-uikIcw4gyYmYs8iWeVVhixWS-Juhf2owkfHQhzCTO_6nWZykz5oAj9tIroOe8CM-gZ3Ku0Vih7IpkEsb3cF1KlWAkA4q5ddB7bkph5p5CjX2JpweVqHCmqh8bSA0IgN4DpMCfXsSAtOXTeebC5sGc1dXD1QI_Flb-K5X2JoUFqL3nH3EjQplDtitHLcuDafINwIWlkgTDRhoyyLNtD5tU7Fd2NlPn7g5dIPBKvOhJxRKFqzDm6h2pTvGOzefWNCIY5jYpXOewka6zg9g_i2i4dGKPwTRr9_9cC8saVCxWuMTilis_M2CozHXLG8Jp8TwK9ZCb5CuE8ZOMSMBMTXEm2nCl1DkLkFs_FsINvh6f22UJ7NOAel2yQHumLT3F-EZhjBpn0xe9owLbqtvbiI0JZrKhcWGO4OzOJ5U21ITd0KcEXlsRwXpefamkt8j9S-_jc4Dpc-uoPhSfHq-40V9iR3E-7ryHYxRYP_r5rTUFIPLhHzALEzlsy7nn3DA9TdgYxHdRUmbaiEl8HPj4SRisB8idS7AdzJIPaADQQnlA_67pgJsk5d-Uv_GnRyLp7JWYh-Hgu23LXC5N4xG2ucEVA7Jl0goFOeQ6No4Jkb1ogIIPZyVgU0QHdjclpZttdWYyJHbc88fao3wa_is1zHXJxGHleJKZv9QZSLmQKzNQG49b88kcGUrKD1-TXTve3Yy_csif9hccLCFbvHrKvs5JrQ9FGE6a7EBP85WfVjSLAy1cwsVfVMpNpkqV_XdrtYNYFMp__ama63m6mxueH3aGXG2Zz1p1t8HWu-hT3iM0bX3gp9CnsalBkydv3_biFQynQhUXmbIwa9OLMIqYFcsQwPFiYyqOWsWAuet7nN_UG2DvSwkUna-u1kYGqMDqX5B4V2ItIA3C-qPzg6XiLUpleKDuHBSpN7reoryqfHboAL-mzopSbfz4mmlwzN803H-65U6RiXShDaOLL9pXS03NT3E5nrZzQE6Sct19wqfG_RX-wfHBobX598QVyFFg', NULL, CAST(N'2024-12-09T10:47:30.6006565' AS DateTime2), N'ZGkrzPUf+RDz9rKiuY0ybNYmyl0wlsAkTP9u7J7ACZk=', N'redeemed', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'authorization_code')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'97c83998-fe99-448c-b282-3b249e8c24bf', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'7f3b312b-d92f-4a00-9439-c0d05bb35427', CAST(N'2024-12-09T10:47:30.0000000' AS DateTime2), CAST(N'2024-12-09T10:52:30.0000000' AS DateTime2), N'CfDJ8NI4xJXZcP9Fj7fupjNMnBYPDkXDRF_-gkkMdZ3amH2v35eFJlBNA8KEYeG2x4S59vOiMBWe1GlkGL3neOzUfi9d_WsHlYMDhrqKTF5Kt0vqKGcQaYLh28YrsG3npkpfUuglHqC6sTDBGbGksN3s1QSacIWxdvZCl1RnhW6zLqUdf3okpEaIcVtag2UFjNwQX1MwreWXfzL67OUXG9wn4EgJMth7jdnxOVxJaRTGI8_CfN8AE7AtzqBSblcenLu2Y5Y8S71YSTRr4pyezYbFsDR7XicbhKzLRgXl7nT8S83ppY8d9mYeJAWzQY_875cuYNhqONs-VBvnGftLsQbeoqtJcRwzK-IcvtYfXCh6wqCoZpAQk70eqq4UOAxD9vGOM3A2zIR_9e3IGqAGlku4Sn3NL4bKVieJ4i8RtQleUECNfqIj152LGDIr9bV-acsPHSBAYRIkZyKAxDgFMRLffQCjfU01onY4aGszq5l5BwRG1uNSl0_fkbkl_HjxKJTFkKYREErIVdmbsPMnOMw3RjC_MkW_ubWyLSJqanGAvZLAV3de3eVDbWGWwI6RL3OjYuGa_FgguMVW4PjtkcOVgXiOMxi_Lm67f1b2KINnXdNfQtJCsMGBmi6Rpg1EnnmN2SQcHCkAFJvvj4ma_iBXXacUTEazrfGaYe7EEv6EuA5LQ8CU841S6ZimhDKs8QsK18s4ucDsFv9g41X402ZpwR5tz2XiLamZHrs9RUqw3V9HSzjo4Y7_eQyCt5_QqVNWbg_amnqsvlqIVxpeJntzmIVRB65X78hgmk0ZncUIPfetkF0l39kejMlo_NxA3k8-GWhk8qbokRJHmxn6IPf9JT3zQxThmumalwZvViQo81ECG4k37le6BRs8cerZBQkdAJoCyE5E59JY9Htm0dpbjKpxNRgv_83SP7RWr2H2g9UvQ_2KrZaVUSKm1gJ-BbesK_wzyDf2eIKi5FzSWbkedYcXRjiGQcO_XITxRZPA5hudQqGa5IrZYLZJHjsm17VNcEMpmJ-IJLV9A-LqHrUpzlSFq7B50QHftT1X10NgZ-E3nJZ_sy5D3hGLk6cL4GaPeFdKqNeIPRF-szh1KY3ND_Pv5lIo9XQZgFIdF5E_mXW9P5WE34SLtpAk0Q_R3h6wXARmDc8kcOMM-LwKwxzJRofEOSW0kpkgNC6QZ6LANR7xUrk8dNZoCX9fb6yZPfRt2zAxks9wjd8DIKLRjMEXKb7A1SmLnft8rJBKHAoKbqQXv9YCLXzp5JZw8Jv0zzjpFy6ze0XbK-ji_TvsL9fpBNMpx3MpZGoY0amTS5Spzs4swXDAx58qyJ_DzYNRla5gVAUORv0cmJclPkX9JDGNCDGRQlPCHwdP006gOPjsgdCqC3xYo2lTHwE-mXeWf4vfswl2Sj1Hm3sADGIUZyL9pJO_EYOxxoV50rsITSbXZPsRJoCZ6xEvAC8qTtmFCkz0fA8_NSzjtrZ_9tt57cnn5TH03nf_SDIHucDunUZA4FIa0iRBpI8vhCl3lSukcAJgEbZHCnTiHVb-86fkYhQRhtcgNOnuyO0ns8wUrtwP9X2d4BRL_wSifW9Uqc6GUBDVYZcRr0pwTjyGH9K3IqdEweKkdo30fOD5Tu-bYUAuwyUh5HFkBioS6z5PhxPb2n8RNyHWu6TeVsg-c_CYRWkSkDbHHyncW-XaId3kSsrqXzEm6yPoJMvXpTXE73gF_WjLgnvwy1CCsXgRkHTpvH3Xc0Dt9p6A576otbFJWiQ6RG4brgxitlB0PYcv227xuwUoG-RulkZnomc0So3uThmffBtGugjNF7UDlHVE9vDJI85_Baq89ssqRwyhF5nH-k96haG_lcK6JxwoY-pJm1e0BpEH3Y-6k12BI61SdGwE0xAksZ0fOS0hhK6ayQP1mCBTrEZa-_mrSIHEJvq2Q7dn0NmYS90ogxy7dBFGKTAL6xhBQxspKUvyYkokz-Ohbq3sfcpicdokFXqCXSDi_w8zA22cKdvukexaWFnA1NfRT-AencMhXzwGR15xswyq9ygHWy10930ia6UImaaEuN9MyONUrMJyUGy-5T8L1Qj0xoy1q49eOxqKrGd0XqPY4koTq-0dJ-TiuQC6wm4Q0--KpzPiIrmx51rPWWgzH-1u5WiYlfFMapr4mlzqNWuUpaUwzx7Th49SGERPdyA31oGgLN1ZVt8YEfqHNbC3_RJ_IhRfSX710vCRqnZSEHq1ENEm8fe_bM0NNOlf4oPjbMOF5XvAEo6R13rnsV7HSyKsKMz-DCEdV6JyeoAF07UbEOy8GTkG2-AoYTaFM6LNvYJbzl5uJsxM99QWC2vFkHFqtGTF2ANwYF75JLWTRMOd_nJ6uNv60-Ph7ualGkKfDTiUcO-uf1jQR9NpYsk2W5cyeA--Kxc891Mz_SyDY5OxBY_yuFQL7FFiGkfZUx76RalwBLDU7nQmsHOPBd6_f1VcfqGPW09c0_5gV4JFm0EsA8z_uXJZo30Q4Go20xkNtNqt5S0QBR2ZBwUkcxemB3Z8fJX9Z0vmmkjWrphXUqu0MO4_WY20iws8ukQ4-Bf4JE4GDS58UUitEqHRb6WmB_dfAujS0bzcGVPrW3WxJaMZVYVQlX6Yry4nRj4Nj3Z5LVaqQb-pTBn7Rr3SspMoV3chxz6GE2_JPm1IX-TiYdXCY7TKFVFS3ibYkReTDoQYEdydpKcwE8w6FhPVYp_3WDJ419qDX7M4BYLsbNv6VbDRfpG-D2vVtXDHJa8dvNNcQxFIdLW4fWANoAGaaszZ1t4-IAKJe-hVqQOMPyxPcmCw9PG7dYM5LBNnCAPm3SV8yG555Fj9KkIHyFfzbU_MmB45vM0ek9gUVfn6y_6VAcNYTmKVzVXATeZ0LtelB0_dyvCExlAc8_nQn1Iw7rSjUZhSVr6Dj-s2FeAGwVlwPtrnnYFIDsto6cBu3aFZ3Tnhg346_aa2Osjv9TOrX-k-y9SqJ7zn53AkkRrkiQ2YCeUmdxp2r8eFSgzguT2q4iI0gXAiwlV_ntlDKDcfD7TcI_Pwv_eNdMMzFktKn6MrGz3xjMZORmmjBxPqNuLRl6d3NfmKD-8', NULL, NULL, N'JoLO6IJRUuEMQd5ABlm99iZANN84aZQ+z1EwdohjcWQ=', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'access_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'b6c552f5-3144-47cb-a0d6-e8cc1c9ba8d2', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'd5577279-e83a-4411-b8f1-cb788f301070', CAST(N'2024-12-09T10:47:30.0000000' AS DateTime2), CAST(N'2024-12-09T11:07:30.0000000' AS DateTime2), N'CfDJ8NI4xJXZcP9Fj7fupjNMnBbmNPg5PYyDrEhduJVurh0UMS2PCFWf11Ta62_FcYelumrZC5i_yuj3G-KdVSOuHlWYZ2e9a0hY1przqwESfjTu-Xq6lJ6q1dBTKJveyjWsSZme9XBU3xrOb3NFGtuh8ImBI-cOAyx-zjS4TT5Q4mpS5q5-6XKWQE_c1Jprao77HGG6TrF43TUkbFhLFaN5qOKfPI1MaUFIeGg5w32evcBm5o0TqbEjsxeaVoMKvfdmDN1Ho_gBSGRvcjPXjZIQliuMSJ_BuyIN1kJA2yJLMI9tvc-wnQM4yc_Rx7ubz6f5w61LrnrsWEAjlIk1eTm0dpM7q4QfJ4SqlCdW7yESskQnRIeXpMDXKNW7xtGElJyhskUOwbiSBM1kNdOqSlAyE_4BYOHVp8mvt6BIMgiE4vFUahrJlMfwE67eEAGLcOiWQvDH-Cywce2z-XKgcMNEK4rNtLPuzbhCkbJp75jgS9ho_oCit8p0wIUz8pBY8ru4bL78MCB16Zva2G_6sICR9BIRK5xH-EYEwV72MvQZZ6jK4YSiSkiL4jmAGyFe3E54EZ3PiwC-3U1NTvVEhlIFJ9ObSVpWfuvPp400iFeIqduLOx5mamAc9fMsWdH8IERSYRgs0doG0W-DQea_721WoCJrMG8P7q1qfmYhoE67Gdvmzjynrwmb9ePJlgnflRRVzlpWmATcxMeIpps_VZFVDHQYvazGTlq8uhAf9inJsifGSop4cf4NA13YGvAzCUjx2vc7u7PImiGxe0Gn61fKgeS9fd-mGtXuwcMgxHbEuoxKamhs70ok0K3B8L-3ijxtqSVnVQK0Jt2GYbuTnr34lyIb8OVdCzQxi5c1V8hVgtgEywgVHlEs-GBcDoD2o7AxAFB5OOsj3_tls8Rn8GZbgHC8x6cZnh-rlQ5QLTsh87-XqkoEHVl88qwuJ24SUvPTLfYfQbi74iNvzG7KA-sxmRrNr6SbdWfkiBiEVqQviMdHgFcTfcqPxxhzemyOnawFYGca22JeUO9oIwQV4_0OJAUSoZsGJ1aarD_Sln-RFyV5WHo88Wqo1DY19JV5VcGGCz29y8FUXaOUd2NpxYiySCvfJDZFFZ6EqE0SRyBrVkBGrqra-XhjJ02q8GyoS75RzHSDA5PtBTrq25ljgn4b55rSR9emBYNwr0jpTLLgbcTM0OFfh7kC_blVM-HfoJc8KMXi-39Ge7lvi_dDHRCpKQJJppoHOPkzXW2eK29Lv9Jq034KA5uJ0O5Kln4ckMJjhlcsBwiriqmp5Ufejw4he7AjXAR6IEG5MwKSHTs4571FYSinO6qK4HLn7NFbbILaXQexRAvSPTII6j3q21K25tF--OlJ6a_JVRLMYxV3wRangcNUI8_wmzra-VdMImibeAnXRFPEaFsX-nHH-PD2-qdd5Fhsfmv-a-goxSTsSGi4KqogKR6aB1oWV3FCVvQdhztaaG7cQ_GRfb2hyG1RNbcFmzlZqsZvsL8U96J_mCtPaM1dEr2ociY3K4h69HuF9VgdSxWn-uKDaG_FIYAqbDMCc0Cb2tKPAadK3VpA8EmU69qjW6j9F6GoA9wC3g8Ci6V3N-GnnB1Giusorl5bjpfKnE31Kva6KQO5XzMQtSL8o9TiT1pq8BVhwzFh6wIyQwLf8jaUlX9X3R_wDo90c8vp2m1VdRanQ1IL9OjT84aGHQxy3mJ-yn6fp53M-hE3lyFtF9qqyYQ3A87zZQrYvJ_NDtGiigFoYyofCGyc6A-ZzmgD_wH6RWtsRsvXLvaSNcAAaRBXq2x-NbTRgux7TMe-mMz63-EbShgnfIW3DyOGv66V1rVlbNpte_b25LyipXNeyOt2fFU1UZ1EQM_i9ke57sfeAIhCicm6UNuMLRL_3xRyhpc-ZfcM1vaZgqEQiiuC8D9ki3z2_-w5PNAEnCoA7vFhuAlREiSmSNvamd0fHvI5IaXrtA28m8yEQoLGOwvJbpP07cK3nsDL6nY-ZlG8mJWGE-H0AaVQpttVgTid1l6lGN8bLTwB737Mp_ndtP6u6Dj3-h7lj92JA_v_50eccuNMkcz06v8GAGGogsJeEeGwo3BQtg5ngK-MdcSRdZOjV65ZfPo2-EnCGNLmENlgl-QNHAsr8b7d8Sm1TSNXl2cjQeovgUzpl72gBoqpu5NE1GCqY_FdJBwrByceR_NnUlAkIe15YEysCnvsbjiJjoC8ctkt3U877cWoc8dwjtPJwEHBAx8cw7uhbam3JuxclwOtxt4yL5XzPo78zjYfYbed1_acBhW3_7_vRuwneq6GWSVw2eSRazQiiJEjkb4iInXBUnQhAOVmRykUqjQ1yJcoOZpaVckV6i6LeKutCZ7PTF_26QF37tWPBCuWEQdLrf7w7SaZURxLt0lJ403uDNkCd0NAZZeXWhk_qxpcT1gcMdIcTQnZ2veAsz9uX4ZJYqNxSBSyPhoA4K9eTagfEBBpRo9G8zXg9Z21RY8R7HlmIWXYmLgcf8RQbUJmbv51qOUDt7oIk1wdDtyuIlRJFQr4oTSnBCTeumMAgc1KSi-eWdyJS1oLeY1F1getCdeXP7D7B6L-tFSWrD93tKtMmJw-0ld4KsUflBRwWG-cxlesL5Cqy7NM7yXeqGmtH4Ol7T_3opx9quR7L-US8liZArY27YSW7UapJhEgc5sFivIozohmhyMwjdu8fA9cd-C24NMAeSNF8Qr-3O1eAYVATs35-6Cv21CjWm06c24kcNi64kfPIj_DqvNSgLUSK9pOzaglUTj3wp482kM3yYQF1Ga5zNZK-u1c2yc89E1LKg4-UWwU73ivnHPKIQZIjy1cbXqyPn3QIAuRHWDSreyL7dnFPh_RlI51zL61wTSvYcb-X9AXIARkHC33XuK3Nyc-DLlTRIIAXxCERW29dn3PBkieHApL5g44sHYLFUa3PnsY2XXBXCjcQA_HEBfpZ4GUAD2ISTeik0ZJ_CaiH62RpG4j0aT2QwKi3BVBvigzI9-OMAba_jM4tQJvdFiylBeyveNMiCBaz9wn9PfYECt7mE52cNVfl75ZBkNXjH2LkD01XTAA7-5HMEm0zOMiq9WToKJ-9ex25_WfO_XUw5_oByJHsaQG7nhjGemZnN5UhnAMHD3KB9UIPHsk6K54QeFA8uPewaquLNI4M0rlEAi8g3WZF3vxaJcn5jyMo8iiDrp9O5g2al_kmB9Z7sjnBVwdmywvCIbhjzfgZVaTXdGlOH8s1RjKZqAXFfoyNH-e32CI5yWNDn1_nsVclZacqD_ion6eezRqhhLNpvyGJQ49mwzgKDY5qZn8G5HFJOSl30g9U29oUPuRbGo3LQD5bgl_DNGcpHpfv-JwQe17OS1CHyTObc8RwXC9AX1FaELJ3bJqubUW0DLlDUku4b9ZoY45g9-5KT8jzeeOt0GEX5UOVZ7ZEI7_7WYq05uvReBwe-qtGmYvpYh9RdzJK2tAo0st8GoKN1hA7E3iJYuwhv7iPjDUMNklUdbc0qW03ljBN0hah5X_7atHfI3VvG-aOQtWkwbkXp_3mGxJL3gT9Vc_Ty6rRSpQvN-J92-iBiswhOYZ-Z0UzbVsxqiZSMCRM_oMhPyYkyyTaUMrZM32NaAzW_az2UlfUSJMjZ7pGEmhA70ozV8AL2lG2fWTFLrMwNrOyBeG6waGypt1VHNZiDFzPBn-r_RGO2w4rnd6971KhJOLYOkAlB8oiBkwPh_g6mda7ekS_B6oTvYk_2pKHTgLyFriClh5NSRjk8KCHZWLt7jQE7KvixmYX3iyOjjNh4vEe3eMuknBDngc80MNQWsKjDio_k68p50mdyS-sQFGwC4TvsweMGCOK4dqgWIiDC88f6KQdhE3O_VXqnj_unbvlms6Uy3RX1iywrjvi_Ul-X-0phgRMKybrarmdRxjvX6a1Uy7bfeWFAsEYGbrg17zGlGoy-8EzymywL40b0FaetgxoSZvH-3DOeNPmGLsWOiHh6vSBU4D5Go2jk7xrY9uM9ieKv_nwmHV8wte_9VWOe8DZoU7FH6Bi26GcxOHU8XcIFJGh9YTT1GC6ttiDE6f', NULL, CAST(N'2024-12-09T11:03:15.1945171' AS DateTime2), N'BY9HSpHbB3psJzoTieoS3EXOg+Hh5jWxKEqv8CTMmqA=', N'redeemed', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'refresh_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'c799679b-da8c-4bc8-ad01-9c6b52c2319d', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'368cd36e-4496-4bbe-9466-17cf07778236', CAST(N'2024-12-09T10:47:30.0000000' AS DateTime2), CAST(N'2024-12-09T11:07:30.0000000' AS DateTime2), N'CfDJ8NI4xJXZcP9Fj7fupjNMnBYbcq62NdF2xCaPfnMPZtFF3ixlFEbwnR6KcMjCETreHzAwDPuBDPMCeSBYhN5uGWVhWCn74kiPI02k07-P8zV18QAppKE64m4LcVcBN26gCyFsA5M4E3DHeWHJQ2KQ_hH9zSNl8MQAHXSC_p6uJ7jphX9Kl1TXSDMboORIyzS0JJQHyUaOUls4UD4Z5cXd5BhIa5wJ1VSWLkCqDZ-yfSJe06zXJ1v_QtZ9WGchIhpri9WaBcV6xqucwflUTJ4Lua3bcPHR8VzsfxrU_bcLYXcrBVrO6F_4KZX74AyOspBtfJ9W9oHG_4C-MEzdQX-JaOWsFTjrG-IkX1txpAl8gGRjBXEuOxHmrss1TfGuIRFkUL_svmoSUBgkgX3LMMEWNM8UNkWtysbl3ScmAINJjTAN395fetopgL_bwi3JPEgeXRkbm5sHXaOiEBeWEBIcQDrdAmZOU4wfjNfVRSKRUuhXVPB_CgoCnD_noucl7xXKPpotYvfJnbGXpuuyfEwxB90LT8stZY8SKBRsxfUiFIJynmrROBPEa4pVDsognKDp13YLsu-SXhWO48xRCq_Ihe1BYw2AC8ZmRI0m8cIvngx7fzMGXf3Hd_eRtZaacp56ozz-CcibQB4kk6Hk9qLQXywxlq0NsJLK3HJWctedzs19CFcFBxodkbImPtSXWtqsfcbPeLT0S-aJlU9Of_uhKSQXE6BsLe19jSCllYm9Y_H02-BbbordIDWmr-57TTrCQjCGONVS0S7f8KZS2ZAN1g_NTaM2kN5bhJCpN74RDdRfxs46ue18DsgaY1tTLEF-hli6pWcyVdRXB_Vaz35K7ai7DKCS3ZHtPz6QXJSqqPQbCkt9kpMzSR4DNUQy09q0q340EF7GsaUzO4iB_ltQ63aRhzCARtqpur6-xms6yTHEtTE8WorDISe9fpSSIevbBuXc5Hz1qcxKveXDPw2LR8ohUVz23wbHxj6nmEbAPgPR-M7RKpEFbt6q5nzGRv0VJPg-SM7BmRn4KGIlYK7qVRvqkD3sFhb1-TSTTDiYa-5uQj77mwZZiSXwkP3T5j5bmrl9X-jOIRR0c_A65q7QGuhNFaujAc0mZsVVsMT7JwA8lqvSOhPVUKDpgJettuZPQzMhfXulldRMvLzKZ_F6p5bi6PnG58fYpH3ey1pOqK_UBwVDN0pwSXj1YEvvUoVUj4EvCQvQFJY6xMQETBe3QQ3ynf4yH3UaeMQuCPvtSTszFd4tq6vidoAAV8bAwe-yn5D0coguihZjM8Jl-PHsguCpmfEl8JFe1hSSkdB8JKMlCe9n1I_EGu1nU8rETEeFuDo0U82-nBJx58DnPQwC4mzwTgIVPKz6_L25o9NLN_Wr7NjhFAj_CyoPe02gDNzyiSYeDS1JVAyJNn9lz_27uoa5kyDLyT52Oj3Iiio_jN1YYzmQe-gZ-3VWsf_lSdXq8iBuJLusMH3TWYhwzb054xs-ERN8KQAzJmeEtMkfNkHcDrQVO74exMca0kFtTbQ1zXilLUQ7Tn34mGSXOyIePXmQI9jSxGVGUiqDdE0ljuwJHFS-qOJI2ZfN5xOnYF2eNc6pEXqHs0xnmDrrrKqhaRZgOp0In8rzGkrine9YuQ38Jj9ESZYPBMbgV-mdMSWepYg8XhY8FFcOzi7Y-JOwlg-zC0N6FdMj2OZhdG8eHhHJoh_y8tKbspNdIhk11HO-IfvWKTOlB9O1dW89rwkTYn8Mf2PPsPpvtI1odz3pOnqdpV_x09vvgqpHxShZZaxUvYGNIwCxPpsrFTngTQjDPe1kg4u5TCUGemJzACePSTKXR2BSho5NQ6v29qKlUxGx_zxfCVwyztLJ0M6AeQV0rCzLh3rteH8kBEJpTTXGUejHBEG3FI8S1tHPdkBfVVQ4h8uxgXwLfU5qQwzAi3olbJCQPEDlneN9IWJrVKXyER01hg7gle8d8v7ks5PyN-pryR6mlM4vj-7IjGwMWBgf8SVm3q6WxYCycs2thyHQkyeMSgPcf79-8lY-as1qh2csjzbdIIswRtFffw26_v1ZZ7_ppiMwlKB2x8TRICiHJ-bb4Z30OsQUDs313VcKRBb7Yd-T6kWNKFuGVXkDrnDSbCrO-0CA6gS7pfsVeMU3ZJLCmD9xRJDsFvD-_US_d-Sq3q25e7ObLNvXFYcwRSP4qSTUNYB6L8vc5PXaxVFMmrctmAd0ddCKYxYt54UupFcOzp64BqvmeiCI6b7x58JWZhZTmFjuIHaRJyDnrpGS_kGGfuvXjJftn9nfYAlxcBgEeoc39gprrHVBSjH3uiV0l13iFM6JSxW7Ykwd0BYdYLWgYa9-2yX-exuZw1H7Q39bBGnGDXLsgRiFml0VNWAHQBYTX1UcCBEflnPZ2Nadqq27HCzT7p0b0xy82J1C_Ofv0sY5kVNw3b6mML-be7dZQ1AIE9Dxr0RZNWAqR2aGPXreJ79mElIb4qBvHwxerFBHGVwJiDwGhIsVLRaGXXBv2MrqZjUegLy7gWTCrL67xGUN1A-B9O4LXDcNggdOgn_LnMLr_Pvzd8M7bkyyzB7WoX4gxXuGMbx5_5512VIMMVveH4OiMMnhHuMk-PKvfQtftfJsLV4vIWF4JGB0mS380vkaMABd0kKqUO-JSrslkbLRoYMiqO4dzosat_bvEDXTJ_EWzxuotgpsK6OhtZdtydaTTKAzSfGTG4FooFtqIb15BJUlGgVPEvCIO8z44Mk4lGdHWWpB_Hp0-hupsIGg9-AtEbFsiakrSMr956Ipa381EcVTHJipn9ciPTyKIbsYerlcCL3GxrJ6IrTwS5rYQzmfZOZN9SQ0-vL3R8T5eZP2ghJGQbq6NwCr0i3H3GWVK5O_VXKbGY4B83BRBEIwjUF1MrvjN6ct53dadJnabMCHARe31LGgt1NwS_u7JuqqJ6H_-hiYeBacZSYxKhxP3_escHImqz9_VHnj-PIrpj4bIxsp6E2hs0P-38nqSzfYgmCQr4WTSgh0-efmp6yepglIpyBm7zU5_eIpU6oIc3ACTLL1AQzdWAxHi1xKGonhgqqIJGCqHDhMPzhxdkyz7k0ckRLKtRM7cMmzNOHRBsotQWHJxhqVBcVe78FWOwZlSnsIS-LhK3AllktRTZKGUQY72AmW8ZncmWGhxkXR2oP_V4-5Eb8hFgQ5PM5F9PKTRFeepR6sXwgbSQ6Hack_ubR1UVsAyGbobIU6TCqHC0i7fkcwA4kj44JvGhJvxnj8QyngmN_daCya1G5pbnPQClmsTL-TCsBWinUnDlNkaXRs_e19EAIjDITDpTm62HdE9ZIR84Kpyi_Mv_0gAhVjJ2E71Qd3W60WtjUL3mYmYohQoJdltf_E3pDFl1dI_LNvnPvFIGSfliG_-rpoyZfg6ohCwiw6EKeSNH4i4gLcTYu-mThJN9-Nu94n5r6VOeac7Sr4k-UX-TBDgMu9zjdQXnRyhDUXfmy9W9Ts17kRQEZ6nJsDjA3QmoD70CA8uAoHtdu46V6sJAcUCvbQXddTpdv4k74imP80rg_hunc2bdWOd1gft-m52CEDdabCMysTUQTZnPk6wll5yfgkVyb9aDt-KltHNIxMnUzqk8gFtDiFQWXw7pJst-elJbe5M2BsgXiQMoLoN-fx8YHUZW-ZH3U5PJlqB-xa5mjfhavDV-U9bfjxld-sEkVT77hq6yC3p96v9YzsqnYkLhOmNEKsdzx3rE4WZkbdmSRDSKxm1GlnPCmLiNl6QgEQq83qNeLF8Bo8ObbMgL4gRpeDuIhEhJf5tXDlKp-IaFsCZaDUWtuR6ZqhkZYpiEJVceO0zvv_YiRWCYgYCCXM6D6t5Sx0tidccLNAyIHLfyNHZm-zX9BOF6gmo7gwFz2K5USGRAn8-Ahzm4-r0K4d0L94PBf-PR_LcQa9hqMtQ3h7Af0cI2bxn7bigSQUGKuN8vmLDkHnRRdamG5P3w8EUWiehW9zH3yU5g5IfqpfYPpaPSQucjntaIc8yLZAJc7VVfcFX2PIlkyk3p-z8A5E_Yv_wjj72-jkTmcrh-E_DX9OwMlWtEb-S6HYsS8jQXN7CDOSJLAvSw', NULL, CAST(N'2024-12-09T10:47:30.6585358' AS DateTime2), N'IFEmVI6uKqVT8m8DvkbPB9UjfE2F27FNRz2L17AbA/0=', N'redeemed', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'refresh_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'd03b3580-93f1-400d-885f-12fa9053c76c', N'd04ed0a4-6cbe-4c65-84c3-f5604e6f4e27', N'dcb331d5-cfb0-4e5c-8c44-515f05b23737', N'2d93b65b-4234-4ddf-b3d7-2b9967336f81', CAST(N'2024-12-09T11:03:15.0000000' AS DateTime2), CAST(N'2024-12-09T11:23:15.0000000' AS DateTime2), N'CfDJ8NI4xJXZcP9Fj7fupjNMnBaPTeK-eg0OSHaiyMRMIJPfYjwoap8Q8fa4Fiu2XmbjtrlRECuCfOjxFuM-NH-PXzN1fRrwSwNn8TmHxvZ-CtePQ86ldUQQilX0q8OtD-WNpyel_n-BWw-pxYtQkYFtH57Vp3GVv416MI9DlWpUxCP63enBjHod9HrEgpNvog5qg-Ox_VWPtIvRxGApGgkk7VlAWeb-utHIlS9TlqWhrLwmtbisz4C_u_e88LOv9zwVkH8qBy3IS2eoFx5QB-90fc4t8MVmc9XY-CtbDT8yDrhSWXeuuARBjH1RUcEO1pB4sNd5RXDfmlnxPXllKJP92eNC7yPCrdeZD_i4CvWWYiz5uCPBaeuBGIRo-kjszpRc00A7g2xTfw-Jxa6MpL4Q-CDw1gmgienpt4tOIjN8tvr_UcpbxA7TRGifXNeTSef5HDCyaVttj0ZUPdlEFNklcf_n6o6AVl5Ca_71egB3zPx0V1ld6-LrMRlMYH_V8_1Cgxi8jntzk7PeArksLwCItAjoRTzTuwUdguIZ5JZt9Ysy_JZeXyELoHgh3G2mYHvvfqee7P12BF0drBZBZOvFR5FIvmOo_jdvXQhWc26CEUoG4_aFezVdge0Un39jaWKCfU6-Psoq9AekEQtDk0LP1DFMT1a1kng2WvkcC2mtz3sIlzhFfUElp9gnNjX2VCjVfgSkE9jcNcXYuM3DpSTyVXypBDijd74UCCERkwJcse0BddpKGi5aCgojxkTr__sIRcfoSuPwqJHck23E9U14jjwoUAwkIFb1qLIooqG1VFV4VDhQGrdd6xAKzp3jTRPDdtSCcENVQ_Xtxgvc_EHGcMisj_-PXakwEgCSrDKdKG_AHWS4P-fBmEQqdhvn89nV0Asq8hzKfuC1iM6HDt48Zrckg-SR4OPuOiu9wxtXT0ypO1fSAlqmQUzqUs33PGjSTudsT3EHszGczgHUs2R6CITap-Ihji4aEBkAOhgEejz1JLtXisgdNQvuQAOT-VsXwpP2jDbRq4mTkLda2l5B2t-nob4MX-NE-1iyfGadkiRYRDK8oXABzX8D41-sAV5k1V0NnnUbWb9kPBCDpGm-MNeOEjUhYTkLsL8wEy08P9HKI2zDGMxwq6VA8SW_UQkMni64xexTLuuxOUIhIMnpVoPTaCJ81e2lfg-nafM9PHLQXRu4CGiMMbkw2Ts6VO0BsumYD7uR3uZqW0K57gFcAHoHFyycvFTxqUiO5zgHZ48JfjNRK-sNlEbaPGZsdf4rJAvqD4EINVR5DvgsqMFLiExtvcvQyc9lvvO_J9X2b90fY6o1ZIcwW8i7OsiJKcm4NaEljHkZlhp9YhQnl2WHZqPYj_ZmSRF7XlX_vIGyu1AswZUcht_3q9L0PH6bztDhpo__y9yVEvMg_UMiBLfL5M2UDcMbvug8Fz0cm23rXVfJ_GUCDNUjTYYHfwO7ZBknHU_fYbwUG6X_QYsyrTKUJm3ysU58_EzzT8vrtkosxs4E1HHfcpMN85WziNrqCB7GsyunWPKYhNtoggtBgZPAlgGcPNFnIblODOfQZ74JmvXJhjx_6qTP5qxxWriVf9r09AQw3uUyirD8EWXjNd64ANt655oRHx9a8iq6Wg04q3iuhY0GNV-t6znvLRMI3-_qfhL2o06KRNd7ey-gO2e9PxNX7lumo_7VJvHorx-FR9eZs6iWrIk8ItY3mfg77787921ngOtFz8tx4z1TtPR6qeo7a0OrXhxxUYBbhLJTorcY3JQbjK-KarADzPaHoYQnIzxQTeuRIJ3d-_84jGtiFJAt1AwzQWiGUy5JLspVkfHzIDRjLw2Z5mNd4twUm3_w_A038kNy02tAOnw-doGiyTL2Er4LjO2Y2vq0vaf6A6znCu5s0Cm7Go8ryQsr6sVXA9IsGJ06O7Gt6wgknvhsWTHeLA4Q-3R4kICNUb4SM7VVfMTRzy6azu2BOFtg3MTaTlo385TvyjdqRnaIKDLdTmW4-EHUatj50QQkzBbW_ykaNsS_4skoyFud8H8WCzhAPSRgBLPbWNH1Tg8yBs7vUzFzkYHQwn9AWu3zW3O50inIlKVTYFcaDf1wZ_GqWyuu6AyIGuWzGdSCzZok2h0Knp3knOLvspYNLxeQ769QEJtkNd2TSXqQvXjcAKZEgBPItkhEE-M1Uf_XFePb1o8nczegGSIA3A4U_s82Rv7SZC1tFVWfy9PzWszRdAH3Pr9KHmbuEe6_wGlKqR6J2nbge_qk0LnzUrZ_UJmjkZvFXOhCaW-NCaK4JYtAgFN7vNPSlpStuFoIlEVy9Z9xd1ox0sjXGQM3tK_DGyE0_coiZsPm6iELt4eefhtfty-rqUgtcDtHhnMwY7ma5J5jhbM6z71wkEsXZ_250IOqIOb3WPRgvmZfKEUVxnruFOliTd8kJNznYpFZA1vOtFuOcfnpSr2B1oJ4jv6YTMyZZHunPGym6T92_bmIbxL8j2wV7_nVYjTlNolfy5pwqqaxkJxzu0Zb8MK-XG-Pdiz4m1NulpOsE5GFAZ9tGWC6o9Sb_6Wczd35OkR6NHwPm6q8gXTWIIDEcp8OzThzPiTMK-0NGejp4HbCH6ZI6h-KxcyiHd8Mkm2mQ2KLv5-aQkXVpMngWlOnB03F3MePjJKerxqzYxxZRtNgIBxIfpTmtaKEk4jVDu00fjXsSJRgYRMN6c7ylgU8mztd9O2NQIHTt8rYnun9qWIWZK5LUeTsgtYQP4nRFr4RhkT05PsjbZIe-bDyACKMoFlYjJ6-kWEfN96Ziel6qXDDGmgTFJvwSrJVvIjtGaU1xI5klEBkT-18x7IUwX1fPkwDIT4JuUKmwbGdc3XbdCht3hVKiy6AJp8bzoI0UXkNiN_WFnID8INuUIE6T1VBkA2uaFS-Vj1lwpELEKZwxw20gQKF70VdgacNDHsCHIxYcuQlA3CjUjw153CM8RY66nRLltAJEkFuNcS3UiMo-R4YQ6I7lVKE6yL0TeRFednuUjsDC6wuf9L1udND4fXUXU7YTTFxJjSaxnGi_F-L5wkpIXjmU2Fm3eizimb3cwuRFc9JPdU4ZoBt_7sKfF8vVJ3ZBL1mGeZOhRhb6wTgfHQj11OfLDNgSvPS-e9wwVcJ9gu1kU75Fg0aKwCKAa7gZnT2PcC1lFvMgT1NM_kbPB4rot5RI2Tm9KagcdM88rWnv6MYt94QLIosilqK1wCshC8UL3zmOe1CGkDynAqT8YIejDmgk3fSVerzPdA7OlKbygi5KjKOR3QCKPtjprrbMi4b2Z_qRAD6nOtM0VqaZcphs5ljdfQjcPLNbGMZSRZISYwIYVUmRFsqJA09DOrIINQqW8yDUOzx4Q_ycwGMTycBSeRDRN-teRYmnJKQDxyieZacRRa6LQx6oPkh77PyAFQzS9FmT9GXqb2kgp65VU3ia2M4sDC3OMwmY5PaRPF9z1eXPr-5W69n3ClDMo7sYDScYOwwXecDysh-xXS1DRLCdEClycbcjNwXVzwNz0_PhNkLxqGSnK5hT2rtUjeJhimhxURKz6Oef8UwkmOcb6x7Yh6JYltpwAwYYxwiZKGb9BL4kR84URX3AVGKw-j2I_RVnnfUt_qFrQq_exi7Na7lDSxBO5gYffJ4Ttt9eyUgPPMOHNbeL6qdouq7ohdO5AI22bol_J7ggbkIZQ_87psXxWz7g8wvjfD3LYvW72CkkuTrbrHaYyzOoehZsyD5kwlsldhA6ZZnNdWiwwn6jHVtvQH4lDh1wA9H1iMINdra8zHHqC5FbaJQ8hWiMEzuShakZ-vZxOicEq7WmvmXmeWtueW5MtH4SxKoWTyEMrYlxFjZ1gIg7qhd0nrAYS7f3EK1Cr-1nlkIaHjLmb9AD5dn__w9GjCfScpbDmdlbHRJ5ZZfeEoQtDQyEEkIuGneiJywPogMawd5GZtYoxmlojKk0mjHKje5pVaHj_DtHhuVSFDBF_zqLKAvfSzHqTiIcs8rje3DNH2d-hqVF4gxMR4MaE7PtXXJbWGfQYuLVq4hitohGLnaiktLt9KhYNIkFut9Qd9DAvIF13qqQYEI', NULL, NULL, N'gWICQTbKBe5CReTr8mq2W3NYFw+lu88O3zIzA6bSWd0=', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'refresh_token')
GO
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] ON 

INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1, 7, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"markup":"\u003Cp\u003ETest\u003C/p\u003E","blocks":{"contentData":[],"settingsData":[],"Layout":{}}}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (2, 8, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"markup":"\u003Cp\u003ETest\u003C/p\u003E","blocks":{"contentData":[],"settingsData":[],"Layout":{}}}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (3, 9, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"markup":"\u003Cp\u003ETest\u003C/p\u003E","blocks":{"contentData":[],"settingsData":[],"Layout":{}}}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (4, 10, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"markup":"\u003Cp\u003ECh\u00FAng t\u00F4i xin gi\u1EDBi thi\u1EC7u v\u1EC1 trang qu\u1EA3n l\u00FD c\u1EE7a ch\u00FAng t\u00F4i v\u00E0o ng\u00E0y h\u00F4m nay\u003C/p\u003E","blocks":{"contentData":[],"settingsData":[],"Layout":{}}}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (5, 11, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"markup":"\u003Cp\u003ECh\u00FAng t\u00F4i xin gi\u1EDBi thi\u1EC7u v\u1EC1 trang qu\u1EA3n l\u00FD c\u1EE7a ch\u00FAng t\u00F4i v\u00E0o ng\u00E0y h\u00F4m nay\u003C/p\u003E","blocks":{"contentData":[],"settingsData":[],"Layout":{}}}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (6, 12, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"focalPoint":null,"crops":null,"src":"/media/mlxhynnb/download.jpg"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (7, 12, 7, NULL, NULL, 299, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (8, 12, 8, NULL, NULL, 168, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (9, 12, 9, NULL, NULL, NULL, NULL, NULL, N'9874', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (10, 12, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (11, 11, 57, NULL, NULL, NULL, NULL, NULL, N'About', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (12, 11, 58, NULL, NULL, NULL, NULL, NULL, N'SUB TITLE ABOUT PAGE', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (13, 11, 59, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"371db022-025a-42fb-8a0f-e68b4821c999","mediaKey":"833a25ed-54c8-4843-a8db-4ee53d745e51","mediaTypeAlias":"","crops":[],"focalPoint":null}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (14, 13, 57, NULL, NULL, NULL, NULL, NULL, N'About', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (15, 13, 58, NULL, NULL, NULL, NULL, NULL, N'SUB TITLE ABOUT PAGE', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (16, 13, 59, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"371db022-025a-42fb-8a0f-e68b4821c999","mediaKey":"833a25ed-54c8-4843-a8db-4ee53d745e51","mediaTypeAlias":"","crops":[],"focalPoint":null}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (17, 13, 52, NULL, NULL, NULL, NULL, NULL, NULL, N'{"markup":"\u003Cp\u003ECh\u00FAng t\u00F4i xin gi\u1EDBi thi\u1EC7u v\u1EC1 trang qu\u1EA3n l\u00FD c\u1EE7a ch\u00FAng t\u00F4i v\u00E0o ng\u00E0y h\u00F4m nay\u003C/p\u003E","blocks":{"contentData":[],"settingsData":[],"Layout":{}}}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (18, 14, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"focalPoint":null,"crops":null,"src":"/media/0xcegyvp/v2.jfif"}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (19, 14, 7, NULL, NULL, 2048, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (20, 14, 8, NULL, NULL, 1443, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (21, 14, 9, NULL, NULL, NULL, NULL, NULL, N'691329', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (22, 14, 10, NULL, NULL, NULL, NULL, NULL, N'jfif', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (23, 6, 57, NULL, NULL, NULL, NULL, NULL, N'Home', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (24, 6, 58, NULL, NULL, NULL, NULL, NULL, N'This is Home', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (25, 6, 59, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"668ee5c4-3cb3-4da4-b353-dbe5495b1cec","mediaKey":"d4050e5a-ccc6-44e4-86dc-49101b67528d","mediaTypeAlias":"","crops":[],"focalPoint":null}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (26, 15, 57, NULL, NULL, NULL, NULL, NULL, N'Home', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (27, 15, 58, NULL, NULL, NULL, NULL, NULL, N'This is Home', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (28, 15, 59, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"668ee5c4-3cb3-4da4-b353-dbe5495b1cec","mediaKey":"d4050e5a-ccc6-44e4-86dc-49101b67528d","mediaTypeAlias":"Image","crops":[],"focalPoint":null}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (29, 15, 60, NULL, NULL, NULL, NULL, NULL, N'Đặng Minh Tiến', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (30, 15, 61, NULL, NULL, NULL, NULL, NULL, N'Anh ấy là tác giả', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (31, 16, 57, NULL, NULL, NULL, NULL, NULL, N'Home', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (32, 16, 58, NULL, NULL, NULL, NULL, NULL, N'This is Home', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (33, 16, 59, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"668ee5c4-3cb3-4da4-b353-dbe5495b1cec","mediaKey":"d4050e5a-ccc6-44e4-86dc-49101b67528d","mediaTypeAlias":"Image","crops":[],"focalPoint":null}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (34, 16, 60, NULL, NULL, NULL, NULL, NULL, N'Đặng Minh Tiến', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (35, 16, 61, NULL, NULL, NULL, NULL, NULL, N'Anh ấy là tác giả', NULL)
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoRelation] ON 

INSERT [dbo].[umbracoRelation] ([id], [parentId], [childId], [relType], [datetime], [comment]) VALUES (1, 1068, 1076, 4, CAST(N'2024-12-09T15:09:52.657' AS DateTime), N'')
INSERT [dbo].[umbracoRelation] ([id], [parentId], [childId], [relType], [datetime], [comment]) VALUES (2, 1064, 1077, 4, CAST(N'2024-12-09T16:25:22.027' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[umbracoRelation] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (1, N'4cbeb612-e689-3563-b755-bf3ede295433', 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy', 0)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (2, N'0cc3507c-66ab-3091-8913-3d998148e423', 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete', 0)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (3, N'8307994f-faf2-3844-bab9-72d34514edf2', 0, N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'Relate Parent Media Folder On Delete', N'relateParentMediaFolderOnDelete', 0)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (4, N'4954ce93-3bf9-3d1e-9cd2-21bf9f9c2abf', 0, NULL, NULL, N'Related Media', N'umbMedia', 1)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (5, N'0b93e414-5abe-36ec-a6bb-516e56f12238', 0, NULL, NULL, N'Related Document', N'umbDocument', 1)
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isSchedulingPublisher]) VALUES (1, N'https://localhost:44318/', N'DESKTOP-I7HLTM1/e166521b6f78d599754c0c03ca92cdbc74e0f9c0', CAST(N'2024-12-06T15:24:12.407' AS DateTime), CAST(N'2024-12-06T15:47:16.310' AS DateTime), 0, 0)
INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isSchedulingPublisher]) VALUES (2, N'https://localhost:44384/', N'DESKTOP-I7HLTM1/41fead0e3a2bdf89398976089f1590b0dcaba3f8', CAST(N'2024-12-06T15:53:32.343' AS DateTime), CAST(N'2024-12-06T17:57:50.757' AS DateTime), 0, 0)
INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isSchedulingPublisher]) VALUES (3, N'https://localhost:44384/', N'DESKTOP-I7HLTM1/944f71a7b5098715caa4859d9a0fd9a3463db8f4', CAST(N'2024-12-09T09:12:31.357' AS DateTime), CAST(N'2024-12-09T18:03:19.977' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [key], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar]) VALUES (-1, 0, N'1e70f841-c261-413b-abb2-2d68cdb96094', 0, N'DangMinhTien', N'minhtien280168@outlook.com', N'AQAAAAIAAYagAAAAEOWGORtJWotRH9u5DMB+UXwCK8+njzjnE3PNQzXumfFhhxJ7QWgRotBBWj/cb3DA9w==', N'{"hashAlgorithm":"PBKDF2.ASPNETCORE.V3"}', N'minhtien280168@outlook.com', N'en-US', N'QDZ6337WMWZJD3D5UPLQFTY5B32VB6ME', NULL, NULL, CAST(N'2024-12-06T15:23:35.223' AS DateTime), CAST(N'2024-12-09T17:47:29.803' AS DateTime), NULL, NULL, CAST(N'2024-12-06T15:23:33.057' AS DateTime), CAST(N'2024-12-09T17:47:29.943' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
GO
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 1)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 5)
GO
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] ON 

INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (1, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'admin', N'Administrators', NULL, CAST(N'2024-12-06T15:23:33.423' AS DateTime), CAST(N'2024-12-06T15:23:33.423' AS DateTime), N'icon-medal', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (2, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N'writer', N'Writers', NULL, CAST(N'2024-12-06T15:23:33.427' AS DateTime), CAST(N'2024-12-06T15:23:33.427' AS DateTime), N'icon-edit', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (3, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'editor', N'Editors', NULL, CAST(N'2024-12-06T15:23:33.427' AS DateTime), CAST(N'2024-12-06T15:23:33.427' AS DateTime), N'icon-tools', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (4, N'f2012e4c-d232-4bd1-8eae-4384032d97d8', N'translator', N'Translators', NULL, CAST(N'2024-12-06T15:23:33.427' AS DateTime), CAST(N'2024-12-06T15:23:33.427' AS DateTime), N'icon-globe', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (5, N'8c6ad70f-d307-4e4a-af58-72c2e4e9439d', N'sensitiveData', N'Sensitive data', NULL, CAST(N'2024-12-06T15:23:33.427' AS DateTime), CAST(N'2024-12-06T15:23:33.427' AS DateTime), N'icon-lock', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] OFF
GO
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'packages')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'users')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (2, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (4, N'translation')
GO
SET IDENTITY_INSERT [dbo].[umbracoUserGroup2Permission] ON 

INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (42, N'f2012e4c-d232-4bd1-8eae-4384032d97d8', N'Umb.Document.Update')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (43, N'f2012e4c-d232-4bd1-8eae-4384032d97d8', N'Umb.Document.Read')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (20, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N'Umb.Document.Create')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (21, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N'Umb.Document.Update')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (22, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N'Umb.Document.SendForApproval')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (23, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N'Umb.Document.Read')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (24, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N'Umb.Document.Notifications')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (25, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N':')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (1, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Create')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (2, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Update')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (3, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Delete')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (4, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Move')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (5, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Duplicate')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (6, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Sort')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (7, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Rollback')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (8, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.PublicAccess')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (9, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.CultureAndHostnames')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (10, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Publish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (11, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Permissions')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (12, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Unpublish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (13, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Read')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (14, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.CreateBlueprint')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (15, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Notifications')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (16, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N':')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (17, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'5')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (18, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'7')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (19, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'T')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (26, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Create')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (27, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Update')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (28, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Delete')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (29, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Move')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (30, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Duplicate')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (31, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Sort')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (32, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Rollback')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (33, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.PublicAccess')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (34, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Publish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (35, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Unpublish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (36, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Read')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (37, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.CreateBlueprint')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (38, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Notifications')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (39, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N':')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (40, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'5')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (41, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'T')
SET IDENTITY_INSERT [dbo].[umbracoUserGroup2Permission] OFF
GO
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'8b57f720-c348-4eda-b781-20ad5c6073bd', -1, CAST(N'2024-12-09T02:12:46.880' AS DateTime), CAST(N'2024-12-09T02:12:46.880' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'f69e0846-a8df-44d2-8485-46e7162a8dc3', -1, CAST(N'2024-12-06T08:53:13.940' AS DateTime), CAST(N'2024-12-06T08:53:13.940' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'c834f750-b6d5-4dd3-90b5-5bbb6a06cf56', -1, CAST(N'2024-12-09T10:26:40.713' AS DateTime), CAST(N'2024-12-09T10:26:40.713' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'a467ec30-84c8-42c8-bdc1-63472355d15b', -1, CAST(N'2024-12-06T08:23:46.733' AS DateTime), CAST(N'2024-12-06T08:23:46.733' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'fa03238a-75d3-40f0-81ea-a8f631d5276f', -1, CAST(N'2024-12-09T10:47:30.057' AS DateTime), CAST(N'2024-12-09T10:47:30.057' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'17b0e0ec-a951-4657-80e4-aad9bfb78b29', -1, CAST(N'2024-12-09T08:52:24.810' AS DateTime), CAST(N'2024-12-09T08:52:24.810' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'f566553d-e354-4050-91c5-b3a9db2c5bb6', -1, CAST(N'2024-12-09T03:12:19.417' AS DateTime), CAST(N'2024-12-09T03:12:19.417' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'2e9964da-3f29-4fce-8180-b5463eccc5a6', -1, CAST(N'2024-12-09T06:47:47.520' AS DateTime), CAST(N'2024-12-09T06:47:47.520' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'2ad7fa17-719c-428a-8d95-b56675a1ed8f', -1, CAST(N'2024-12-09T09:24:19.180' AS DateTime), CAST(N'2024-12-09T09:24:19.180' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'c909d79e-499b-48eb-99a9-ca77f0c1e5ca', -1, CAST(N'2024-12-06T09:23:54.617' AS DateTime), CAST(N'2024-12-06T09:23:54.617' AS DateTime), NULL, N'::1')
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isElement]  DEFAULT ('0') FOR [isElement]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_isLockedOut]  DEFAULT ('0') FOR [isLockedOut]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_isApproved]  DEFAULT ('1') FOR [isApproved]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_isSensitive]  DEFAULT ('0') FOR [isSensitive]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_labelOnTop]  DEFAULT ('0') FOR [labelOnTop]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_UniqueID]  DEFAULT (newid()) FOR [UniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_uniqueID]  DEFAULT (newid()) FOR [uniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_type]  DEFAULT ('0') FOR [type]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAudit] ADD  CONSTRAINT [DF_umbracoAudit_eventDateUtc]  DEFAULT (getdate()) FOR [eventDateUtc]
GO
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD  CONSTRAINT [DF_umbracoCacheInstruction_instructionCount]  DEFAULT ('1') FOR [instructionCount]
GO
ALTER TABLE [dbo].[umbracoConsent] ADD  CONSTRAINT [DF_umbracoConsent_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_versionDate]  DEFAULT (getdate()) FOR [versionDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_preventCleanup]  DEFAULT ('0') FOR [preventCleanup]
GO
ALTER TABLE [dbo].[umbracoCreatedPackageSchema] ADD  CONSTRAINT [DF_umbracoCreatedPackageSchema_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoExternalLogin] ADD  CONSTRAINT [DF_umbracoExternalLogin_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoExternalLoginToken] ADD  CONSTRAINT [DF_umbracoExternalLoginToken_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoKeyValue] ADD  CONSTRAINT [DF_umbracoKeyValue_updated]  DEFAULT (getdate()) FOR [updated]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_isDefaultVariantLang]  DEFAULT ('0') FOR [isDefaultVariantLang]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_uniqueId]  DEFAULT (newid()) FOR [uniqueId]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
ALTER TABLE [dbo].[umbracoRelationType] ADD  CONSTRAINT [DF_umbracoRelationType_isDependency]  DEFAULT ('0') FOR [isDependency]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_key]  DEFAULT (newid()) FOR [key]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_key]  DEFAULT (newid()) FOR [key]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[cmsContentNu]  WITH NOCHECK ADD  CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cmsContentNu] CHECK CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
ALTER TABLE [dbo].[cmsDictionary]  WITH CHECK ADD  CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY([parent])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsDictionary] CHECK CONSTRAINT [FK_cmsDictionary_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[umbracoDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id1]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id2]
GO
ALTER TABLE [dbo].[umbracoAccessRule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId])
REFERENCES [dbo].[umbracoAccess] ([id])
GO
ALTER TABLE [dbo].[umbracoAccessRule] CHECK CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCleanupPolicy]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCleanupPolicy_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentVersionCleanupPolicy] CHECK CONSTRAINT [FK_umbracoContentVersionCleanupPolicy_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id] FOREIGN KEY([availableUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoDataType]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDataType] CHECK CONSTRAINT [FK_umbracoDataType_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocument]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocument] CHECK CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoDomain]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomain_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomain] CHECK CONSTRAINT [FK_umbracoDomain_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoExternalLoginToken]  WITH CHECK ADD  CONSTRAINT [FK_umbracoExternalLoginToken_umbracoExternalLogin_id] FOREIGN KEY([externalLoginId])
REFERENCES [dbo].[umbracoExternalLogin] ([id])
GO
ALTER TABLE [dbo].[umbracoExternalLoginToken] CHECK CONSTRAINT [FK_umbracoExternalLoginToken_umbracoExternalLogin_id]
GO
ALTER TABLE [dbo].[umbracoLanguage]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id] FOREIGN KEY([fallbackLanguageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoLanguage] CHECK CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoLog]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLog_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoLog] CHECK CONSTRAINT [FK_umbracoLog_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoMediaVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoMediaVersion] CHECK CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoUser_id] FOREIGN KEY([nodeUser])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoOpenIddictAuthorizations]  WITH CHECK ADD  CONSTRAINT [FK_umbracoOpenIddictAuthorizations_umbracoOpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[umbracoOpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[umbracoOpenIddictAuthorizations] CHECK CONSTRAINT [FK_umbracoOpenIddictAuthorizations_umbracoOpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[umbracoOpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens] CHECK CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictAuthorizations_AuthorizationId] FOREIGN KEY([AuthorizationId])
REFERENCES [dbo].[umbracoOpenIddictAuthorizations] ([Id])
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens] CHECK CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictAuthorizations_AuthorizationId]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoRedirectUrl]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY([contentKey])
REFERENCES [dbo].[umbracoNode] ([uniqueId])
GO
ALTER TABLE [dbo].[umbracoRedirectUrl] CHECK CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserData_umbracoUser_key] FOREIGN KEY([userKey])
REFERENCES [dbo].[umbracoUser] ([key])
GO
ALTER TABLE [dbo].[umbracoUserData] CHECK CONSTRAINT [FK_umbracoUserData_umbracoUser_key]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY([startContentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startContentId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY([startMediaId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startMediaId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2App]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2App] CHECK CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoNode_uniqueId] FOREIGN KEY([uniqueId])
REFERENCES [dbo].[umbracoNode] ([uniqueId])
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission] CHECK CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoNode_uniqueId]
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoUserGroup_key] FOREIGN KEY([userGroupKey])
REFERENCES [dbo].[umbracoUserGroup] ([key])
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission] CHECK CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoUserGroup_key]
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2Language_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language] CHECK CONSTRAINT [FK_umbracoUserGroup2Language_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2Language_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language] CHECK CONSTRAINT [FK_umbracoUserGroup2Language_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2Permission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2Permission_umbracoUserGroup_key] FOREIGN KEY([userGroupKey])
REFERENCES [dbo].[umbracoUserGroup] ([key])
GO
ALTER TABLE [dbo].[umbracoUserGroup2Permission] CHECK CONSTRAINT [FK_umbracoUserGroup2Permission_umbracoUserGroup_key]
GO
ALTER TABLE [dbo].[umbracoUserLogin]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserLogin] CHECK CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY([startNode])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoWebhook2ContentTypeKeys]  WITH CHECK ADD  CONSTRAINT [FK_umbracoWebhook2ContentTypeKeys_umbracoWebhook_id] FOREIGN KEY([webhookId])
REFERENCES [dbo].[umbracoWebhook] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoWebhook2ContentTypeKeys] CHECK CONSTRAINT [FK_umbracoWebhook2ContentTypeKeys_umbracoWebhook_id]
GO
ALTER TABLE [dbo].[umbracoWebhook2Events]  WITH CHECK ADD  CONSTRAINT [FK_umbracoWebhook2Events_umbracoWebhook_id] FOREIGN KEY([webhookId])
REFERENCES [dbo].[umbracoWebhook] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoWebhook2Events] CHECK CONSTRAINT [FK_umbracoWebhook2Events_umbracoWebhook_id]
GO
ALTER TABLE [dbo].[umbracoWebhook2Headers]  WITH CHECK ADD  CONSTRAINT [FK_umbracoWebhook2Headers_umbracoWebhook_id] FOREIGN KEY([webhookId])
REFERENCES [dbo].[umbracoWebhook] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoWebhook2Headers] CHECK CONSTRAINT [FK_umbracoWebhook2Headers_umbracoWebhook_id]
GO
