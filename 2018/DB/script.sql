USE [SHELLX_DB]
GO
/****** Object:  Table [dbo].[Center_RTUChange]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Center_RTUChange](
	[ProjectName] [nvarchar](50) NOT NULL,
	[PublicIP] [nvarchar](20) NOT NULL,
	[RTUCount] [int] NOT NULL,
	[DTime] [datetime] NULL,
 CONSTRAINT [PK_Center_RTUChange_1] PRIMARY KEY CLUSTERED 
(
	[ProjectName] ASC,
	[PublicIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Center_Server]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Center_Server](
	[ProjectName] [nvarchar](50) NOT NULL,
	[PublicIP] [nvarchar](20) NOT NULL,
	[RunTime] [nvarchar](50) NULL,
	[RegisterTime] [int] NULL,
	[RTUCount] [int] NULL,
	[DTime] [datetime] NULL,
	[RunState] [nvarchar](10) NULL,
	[SrartTime] [datetime] NULL,
	[IP] [nvarchar](20) NULL,
 CONSTRAINT [PK_Center_Server] PRIMARY KEY CLUSTERED 
(
	[ProjectName] ASC,
	[PublicIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Center_StartState]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Center_StartState](
	[ProjectName] [nvarchar](50) NOT NULL,
	[PublicIP] [nvarchar](20) NOT NULL,
	[RunTime] [nvarchar](50) NULL,
	[DTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Center_StartState] PRIMARY KEY CLUSTERED 
(
	[ProjectName] ASC,
	[PublicIP] ASC,
	[DTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_COMMAND_TEMP]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_COMMAND_TEMP](
	[STCD] [nvarchar](20) NOT NULL,
	[NFOINDEX] [int] NOT NULL,
	[CommandID] [nvarchar](40) NOT NULL,
	[Data] [text] NOT NULL,
	[TM] [datetime] NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_YY_COMMAND_TEMP] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[NFOINDEX] ASC,
	[CommandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_DATA_AUTO]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_DATA_AUTO](
	[STCD] [nvarchar](20) NOT NULL,
	[ItemID] [nvarchar](40) NOT NULL,
	[TM] [datetime] NOT NULL,
	[DOWNDATE] [datetime] NULL,
	[NFOINDEX] [int] NULL,
	[DATAVALUE] [decimal](20, 10) NULL,
	[CorrectionVALUE] [decimal](20, 10) NULL,
	[DATATYPE] [int] NULL,
	[STTYPE] [nvarchar](10) NULL,
 CONSTRAINT [PK_YY_DATA_AUTO_1] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[ItemID] ASC,
	[TM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_DATA_COMMAND]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_DATA_COMMAND](
	[CommandID] [nvarchar](40) NOT NULL,
	[TM] [datetime] NOT NULL,
	[STCD] [nvarchar](20) NOT NULL,
	[DOWNDATE] [datetime] NULL,
	[STATE] [int] NULL,
	[NFOINDEX] [int] NULL,
	[Command] [nvarchar](500) NULL,
 CONSTRAINT [PK_YY_DATA_COMMAND] PRIMARY KEY CLUSTERED 
(
	[CommandID] ASC,
	[TM] ASC,
	[STCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_DATA_IMG]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_DATA_IMG](
	[STCD] [nvarchar](20) NOT NULL,
	[TM] [datetime] NOT NULL,
	[DOWNDATE] [datetime] NULL,
	[NFOINDEX] [int] NULL,
	[DATAVALUE] [image] NULL,
	[INFO] [text] NULL,
	[DATATYPE] [int] NULL,
 CONSTRAINT [PK_YY_DATA_IMG] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[TM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_DATA_LOG]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_DATA_LOG](
	[STCD] [nvarchar](20) NOT NULL,
	[TM] [datetime] NOT NULL,
	[LOGID] [int] NULL,
	[DOWNDATE] [datetime] NULL,
	[NFOINDEX] [int] NULL,
	[COUNT] [int] NULL,
	[ERC] [int] NOT NULL,
 CONSTRAINT [PK_YY_DATA_LOG_1] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[TM] ASC,
	[ERC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_DATA_MANUAL]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_DATA_MANUAL](
	[STCD] [nvarchar](20) NOT NULL,
	[TM] [datetime] NOT NULL,
	[DOWNDATE] [datetime] NULL,
	[NFOINDEX] [int] NULL,
	[DATAVALUE] [text] NULL,
	[DATATYPE] [int] NULL,
 CONSTRAINT [PK_YY_DATA_MANUAL] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[TM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_DATA_REM]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YY_DATA_REM](
	[STCD] [varchar](20) NOT NULL,
	[ItemID] [varchar](40) NOT NULL,
	[TM] [datetime] NOT NULL,
	[DOWNDATE] [datetime] NULL,
	[NFOINDEX] [int] NULL,
	[DATAVALUE] [decimal](20, 10) NULL,
	[DATATYPE] [int] NULL,
 CONSTRAINT [PK_YY_DATA_REM] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[ItemID] ASC,
	[TM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YY_DATA_STATE]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_DATA_STATE](
	[STCD] [nvarchar](20) NOT NULL,
	[TM] [datetime] NOT NULL,
	[DOWNDATE] [datetime] NULL,
	[NFOINDEX] [int] NULL,
	[STATEDATA] [nvarchar](40) NOT NULL,
	[DATAVALUE] [decimal](20, 1) NULL,
 CONSTRAINT [PK_YY_DATA_STATE] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[TM] ASC,
	[STATEDATA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_ITEM_TI]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_ITEM_TI](
	[ItemTypeID] [nvarchar](50) NOT NULL,
	[ItemID] [nvarchar](40) NOT NULL,
	[ItemIndex] [int] NOT NULL,
 CONSTRAINT [PK_YY_ITEM_TI] PRIMARY KEY CLUSTERED 
(
	[ItemTypeID] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_ITEMTYPE]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_ITEMTYPE](
	[ItemTypeID] [nvarchar](50) NOT NULL,
	[ItemType] [nvarchar](50) NOT NULL,
	[ItemTypeIndex] [int] NOT NULL,
 CONSTRAINT [PK_YY_ITEMTYPE] PRIMARY KEY CLUSTERED 
(
	[ItemTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_LOG]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_LOG](
	[LOGID] [int] NOT NULL,
	[RTULOG] [nvarchar](200) NULL,
 CONSTRAINT [PK_YY_LOG] PRIMARY KEY CLUSTERED 
(
	[LOGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_Basic]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_Basic](
	[STCD] [nvarchar](20) NOT NULL,
	[PassWord] [nvarchar](6) NULL,
	[NiceName] [nvarchar](50) NULL,
 CONSTRAINT [PK_YY_RTU_BASIC] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_BI]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_BI](
	[STCD] [nvarchar](20) NOT NULL,
	[ItemID] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_YY_RTU_BI] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_COMMAND]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_COMMAND](
	[CommandID] [nvarchar](40) NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[State] [bit] NOT NULL,
 CONSTRAINT [PK_YY_RTU_COMMAND] PRIMARY KEY CLUSTERED 
(
	[CommandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_CONFIGDATA]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_CONFIGDATA](
	[STCD] [nvarchar](20) NOT NULL,
	[ItemID] [nvarchar](40) NOT NULL,
	[ConfigID] [nvarchar](40) NOT NULL,
	[ConfigVal] [nvarchar](100) NULL,
 CONSTRAINT [PK_YY_RTU_CONFIGDATA] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[ItemID] ASC,
	[ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_CONFIGITEM]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_CONFIGITEM](
	[ConfigID] [nvarchar](40) NOT NULL,
	[ConfigItem] [nvarchar](20) NULL,
 CONSTRAINT [PK_YY_ RTU_CONFIGITEM] PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_ITEM]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_ITEM](
	[ItemID] [nvarchar](40) NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[ItemCode] [nvarchar](10) NOT NULL,
	[ItemInteger] [int] NOT NULL,
	[ItemDecimal] [int] NOT NULL,
	[PlusOrMinus] [bit] NOT NULL,
	[Units] [nvarchar](20) NULL,
 CONSTRAINT [PK_YY_RTU_ITEM] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_ITEMCONFIG]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_ITEMCONFIG](
	[ItemID] [nvarchar](40) NOT NULL,
	[ConfigID] [nvarchar](40) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_WATERYIELD]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_WATERYIELD](
	[STCD] [nvarchar](20) NOT NULL,
	[ItemID] [nvarchar](40) NOT NULL,
	[STREAM] [decimal](10, 0) NOT NULL,
	[STR_PAD] [decimal](8, 0) NULL,
	[TM] [datetime] NULL,
	[TYPE] [int] NULL,
 CONSTRAINT [PK_YY_RTU_WATERYIELD] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_RTU_WRES]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_RTU_WRES](
	[STCD] [nvarchar](20) NOT NULL,
	[CODE] [int] NOT NULL,
	[ADR_ZX] [int] NULL,
	[COM_M] [int] NULL,
	[ADR_M] [nvarchar](20) NULL,
	[PORT_M] [int] NULL,
	[COM_B] [int] NULL,
	[ADR_B] [nvarchar](20) NULL,
	[PORT_B] [int] NULL,
	[PhoneNum] [nvarchar](15) NULL,
	[SatelliteNum] [nvarchar](15) NULL,
 CONSTRAINT [PK_YY_RTU_WRES] PRIMARY KEY CLUSTERED 
(
	[STCD] ASC,
	[CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YY_STATE]    Script Date: 2017/9/24 21:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YY_STATE](
	[STATEID] [nvarchar](40) NOT NULL,
	[RTUSTATE] [nvarchar](200) NULL,
 CONSTRAINT [PK_YY_STATE] PRIMARY KEY CLUSTERED 
(
	[STATEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Center_RTUChange] ([ProjectName], [PublicIP], [RTUCount], [DTime]) VALUES (N'111111111111$BFEBFBFF000306A9', N'123.113.218.97', 0, CAST(0x0000A7F501282A36 AS DateTime))
INSERT [dbo].[Center_RTUChange] ([ProjectName], [PublicIP], [RTUCount], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', 1, CAST(0x0000A7F6017509F3 AS DateTime))
INSERT [dbo].[Center_Server] ([ProjectName], [PublicIP], [RunTime], [RegisterTime], [RTUCount], [DTime], [RunState], [SrartTime], [IP]) VALUES (N'111111111111$BFEBFBFF000306A9', N'123.113.218.97', N'0d6h11m58s', 272, 1, CAST(0x0000A7F601295273 AS DateTime), N'runing', CAST(0x0000A7F600C3EC11 AS DateTime), N'0.0.0.0')
INSERT [dbo].[Center_Server] ([ProjectName], [PublicIP], [RunTime], [RegisterTime], [RTUCount], [DTime], [RunState], [SrartTime], [IP]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h28m45s', 271, 1, CAST(0x0000A7F70124DBB6 AS DateTime), N'runing', CAST(0x0000A7F7011D03C7 AS DateTime), N'0.0.0.0')
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF000306A9', N'123.113.218.97', N'0d0h8m10s', CAST(0x0000A7F501282A36 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF000306A9', N'123.113.218.97', N'0d0h0m1s', CAST(0x0000A7F600C30E28 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF000306A9', N'123.113.218.97', N'0d0h0m1s', CAST(0x0000A7F600C31328 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF000306A9', N'123.113.218.97', N'0d6h11m58s', CAST(0x0000A7F600C3EC11 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h1m13s', CAST(0x0000A7F6017509F3 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h40m56s', CAST(0x0000A7F60175B97C AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h30m37s', CAST(0x0000A7F601813C3E AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h17m21s', CAST(0x0000A7F60189BB02 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h4m7s', CAST(0x0000A7F7000351B4 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d10h28m30s', CAST(0x0000A7F7009D4F3B AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d15h36m31s', CAST(0x0000A7F700BCD9EE AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h17m27s', CAST(0x0000A7F70104E65F AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h18m24s', CAST(0x0000A7F70109E6F7 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h24m2s', CAST(0x0000A7F701141503 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h0m2s', CAST(0x0000A7F7011AAE59 AS DateTime))
INSERT [dbo].[Center_StartState] ([ProjectName], [PublicIP], [RunTime], [DTime]) VALUES (N'111111111111$BFEBFBFF00040651', N'121.4.150.154', N'0d0h28m45s', CAST(0x0000A7F7011D03C7 AS DateTime))
INSERT [dbo].[YY_ITEM_TI] ([ItemTypeID], [ItemID], [ItemIndex]) VALUES (N'ca0662b7-4f57-4d28-b74d-b961a0a778d7', N'03', 2)
INSERT [dbo].[YY_ITEM_TI] ([ItemTypeID], [ItemID], [ItemIndex]) VALUES (N'ca0662b7-4f57-4d28-b74d-b961a0a778d7', N'04', 1)
INSERT [dbo].[YY_ITEM_TI] ([ItemTypeID], [ItemID], [ItemIndex]) VALUES (N'ca0662b7-4f57-4d28-b74d-b961a0a778d7', N'05', 0)
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (1, N'历史数据初始化记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (2, N'参数变更记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (3, N'状态量变位记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (4, N'传感器及仪表故障记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (5, N'密码修改记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (6, N'终端故障记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (7, N'交流失电记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (8, N'蓄电池电压低告警记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (9, N'终端箱非法打开记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (10, N'水泵故障记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (11, N'剩余水量超限告警记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (12, N'水位超限告警记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (13, N'水压超限告警记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (14, N'水质参数超限告警记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (15, N'数据出错记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (16, N'发报文记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (17, N'收报文记录')
INSERT [dbo].[YY_LOG] ([LOGID], [RTULOG]) VALUES (18, N'发报文出错记录')
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'00', N'设置GPRS在线', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'36', N'遥测站图片报或中心站查询遥测站图片采集信息', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'37', N'中心站查询遥测站实时数据', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'38', N'中心站查询遥测站时段数据', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'39', N'中心站查询遥测站人工置数', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'3A', N'中心站查询遥测站指定要素数据', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'40', N'中心站修改遥测站基本配置表', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'41', N'中心站读取遥测站基本配置表/遥测站自报基本配置表', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'42', N'中心站修改遥测站运行参数配置表', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'43', N'中心站读取遥测站运行参数配置表/遥测站自报运行参数配置表', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'44', N'查询水泵电机实时工作数据', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'45', N'查询遥测终端软件版本', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'46', N'查询遥测站状态和报警信息', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'47', N'初始化固态存储数据', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'48', N'恢复终端出厂设置', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'49', N'修改密码', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'4A', N'设置遥测站时钟', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'4B', N'设置遥测终端IC卡状态', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'4C', N'控制水泵开关命令/水泵状态信息自报', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'4D', N'控制阀门开关命令/阀门状态信息自报', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'4E', N'控制闸门开关命令/闸门状态信息自报', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'4F', N'水量定值控制命令', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'50', N'中心站查询遥测站事件记录', 1)
INSERT [dbo].[YY_RTU_COMMAND] ([CommandID], [Remark], [State]) VALUES (N'51', N'中心站查询遥测站时钟', 1)
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000000', N'GPRS是否在线')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000000C', N'工作方式')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000000D', N'遥测站采集要素设置')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000000E', N'中继站（转发）服务地址范围')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000000F', N'通信设备识别号')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000020', N'定时报时间间隔')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000021', N'加报时间间隔')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000022', N'降水量日起始时间')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000023', N'采样间隔')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000024', N'水位数据存储间隔')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000025', N'雨量计分辨力')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'110000000026', N'水位计分辨力')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA01', N'测站类型')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA02', N'状态和报警信息')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA03', N'水量定值控制')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA04', N'水泵状态(命令)信息')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA05', N'阀门状态(命令)信息')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA06', N'闸门状态(命令)信息')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA07', N'手机号码')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000AA08', N'卫星号码')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11000000FF03', N'最低控制水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000027', N'雨量加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000028', N'水位基值1')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000029', N'水位基值2')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000002A', N'水位基值3')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000002B', N'水位基值4')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000002C', N'水位基值5')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000002D', N'水位基值6')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000002E', N'水位基值7')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000002F', N'水位基值8')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000030', N'水位修正基值1')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000031', N'水位修正基值2')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000032', N'水位修正基值3')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000033', N'水位修正基值4')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000034', N'水位修正基值5')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000035', N'水位修正基值6')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000036', N'水位修正基值7')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000037', N'水位修正基值8')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000038', N'加报水位1')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000039', N'加报水位2')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000003A', N'加报水位3')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000003B', N'加报水位4')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000003C', N'加报水位5')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000003D', N'加报水位6')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000003E', N'加报水位7')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000003F', N'加报水位8')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000040', N'加报水位以上加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000041', N'加报水位以下加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000042', N'流量加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000043', N'流速加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000044', N'闸位加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000045', N'功率加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000046', N'气压加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000047', N'风速加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000048', N'水温加报阈值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000049', N'取（排）水口1上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000004A', N'取（排）水口1下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000004B', N'取（排）水口2上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000004C', N'取（排）水口2下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000004D', N'取（排）水口3上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000004E', N'取（排）水口3下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000004F', N'取（排）水口4上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000050', N'取（排）水口4下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000051', N'取（排）水口5上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000052', N'取（排）水口5下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000053', N'取（排）水口6上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000054', N'取（排）水口6下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000055', N'取（排）水口7上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000056', N'取（排）水口7下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000057', N'取（排）水口8上限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000058', N'取（排）水口8下限水位')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000059', N'取（排）水口1上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000005A', N'取（排）水口1下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000005B', N'取（排）水口2上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000005C', N'取（排）水口2下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000005D', N'取（排）水口3上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000005E', N'取（排）水口3下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000005F', N'取（排）水口4上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000060', N'取（排）水口4下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000061', N'取（排）水口5上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000062', N'取（排）水口5下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000063', N'取（排）水口6上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000064', N'取（排）水口6下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000065', N'取（排）水口7上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000066', N'取（排）水口7下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000067', N'取（排）水口8上限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000068', N'取（排）水口8下限水压')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000069', N'水温上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000006A', N'水温下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000006B', N'pH值上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000006C', N'pH值下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000006D', N'溶解氧上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000006E', N'溶解氧下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000006F', N'高锰酸盐指数上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000070', N'高锰酸盐指数下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000071', N'电导率上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000072', N'电导率下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000073', N'氧化还原电位上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000074', N'氧化还原电位下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000075', N'浊度上限')
GO
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000076', N'浊度下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000077', N'氨氮上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000078', N'氨氮下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000079', N'总氮上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000007A', N'总氮下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000007B', N'铜上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000007C', N'铜下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000007D', N'锌上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000007E', N'锌下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000007F', N'氟化物上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000080', N'氟化物下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000081', N'硒上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000082', N'硒下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000083', N'砷上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000084', N'砷下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000085', N'汞上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000086', N'汞下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000087', N'镉上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000088', N'镉下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000089', N'总有机碳上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000008A', N'总有机碳下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000008B', N'叶绿素上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000008C', N'叶绿素下限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000008D', N'流量上限')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000008E', N'水表1充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000008F', N'水表2充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000090', N'水表3充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000091', N'水表4充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000092', N'水表5充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000093', N'水表6充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000094', N'水表7充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000095', N'水表8充值水量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000096', N'水量定值量')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'111100000099', N'水表1水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000009A', N'水表2水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000009B', N'水表3水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000009C', N'水表4水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000009D', N'水表5水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000009E', N'水表6水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'11110000009F', N'水表7水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A0', N'水表8水量表底(初始)值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A1', N'水表1剩余水量报警值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A2', N'水表2剩余水量报警值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A3', N'水表3剩余水量报警值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A4', N'水表4剩余水量报警值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A5', N'水表5剩余水量报警值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A6', N'水表6剩余水量报警值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A7', N'水表7剩余水量报警值')
INSERT [dbo].[YY_RTU_CONFIGITEM] ([ConfigID], [ConfigItem]) VALUES (N'1111000000A8', N'水表8剩余水量报警值')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'0000000000', N'RTU', N'0000000000', 0, 0, 0, N'个')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'01', N'断面面积', N'01', 10, 2, 0, N'平方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'02', N'瞬时气温', N'02', 10, 1, 0, N'摄氏度')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'03', N'瞬时水温', N'03', 10, 0, 0, N'摄氏度')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'04', N'时间步长码', N'04', 10, 0, 0, NULL)
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'05', N'时段长', N'05', 10, 2, 0, N'小时.分钟')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'06', N'日蒸发量', N'06', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'07', N'当前蒸发', N'07', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'08', N'气压', N'08', 10, 0, 0, N'百帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'09', N'闸坝、水库闸门开启高度', N'09', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'0A', N'输水设备、闸门(组)编号', N'0A', 10, 0, 0, NULL)
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'0B', N'输水设备类别', N'0B', 10, 0, 0, NULL)
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'0C', N'水库、闸坝闸门开启孔数', N'0C', 10, 0, 0, N'孔')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'0D', N'地温', N'0D', 10, 1, 0, N'摄氏度')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'0E', N'地下水瞬时埋深', N'0E', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'0F', N'波浪高度', N'0F', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'10', N'10厘米处土壤含水量', N'10', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'11', N'20厘米处土壤含水量', N'11', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'12', N'30厘米处土壤含水量', N'12', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'13', N'40厘米处土壤含水量', N'13', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'14', N'50厘米处土壤含水量', N'14', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'15', N'60厘米处土壤含水量', N'15', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'16', N'80厘米处土壤含水量', N'16', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'17', N'100厘米处土壤含水量', N'17', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'18', N'湿度', N'18', 10, 1, 0, N'百分比')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'19', N'开机台数', N'19', 10, 1, 0, N'台')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'1A', N'1小时时段降水量', N'1A', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'1B', N'2小时时段降水量', N'1B', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'1C', N'3小时时段降水量', N'1C', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'1D', N'6小时时段降水量', N'1D', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'1E', N'12小时时段降水量', N'1E', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'1F', N'日降水量', N'1F', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'20', N'当前降水量', N'20', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'21', N'1分钟时段降水量', N'21', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'22', N'5分钟时段降水量', N'22', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'222', N'222', N'222', 10, 2, 0, N'')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'23', N'10分钟时段降水量', N'23', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'24', N'30分钟时段降水量', N'24', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'25', N'暴雨量', N'25', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'26', N'降水量累计值', N'26', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'27', N'瞬时流量、抽水流量', N'27', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'28', N'取(排)水口流量1', N'28', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'29', N'取(排)水口流量2', N'29', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'2A', N'取(排)水口流量3', N'2A', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'2B', N'取(排)水口流量4', N'2B', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'2C', N'取(排)水口流量5', N'2C', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'2D', N'取(排)水口流量6', N'2D', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'2E', N'取(排)水口流量7', N'2E', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'2F', N'取(排)水口流量8', N'2F', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'30', N'总出库流量、过闸总流量', N'30', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'31', N'输水设备流量、过闸(组)流量', N'31', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'32', N'输沙量', N'32', 11, 3, 0, N'万吨')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'33', N'风向', N'33', 10, 0, 0, NULL)
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'34', N'风力（级）', N'34', 10, 0, 0, N'级')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'35', N'风速', N'35', 10, 1, 0, N'米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'36', N'断面平均流速', N'36', 10, 3, 0, N'米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'37', N'当前瞬时流速', N'37', 10, 3, 0, N'米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'38', N'电源电压', N'38', 10, 2, 0, N'伏特')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'39', N'瞬时河道水位、潮位', N'39', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'3A', N'库(闸、站)下水位', N'3A', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'3B', N'库(闸、站)上水位', N'3B', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'3C', N'取(排）水口水位1 ', N'3C', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'3D', N'取(排）水口水位2 ', N'3D', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'3E', N'取(排）水口水位3 ', N'3E', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'3F', N'取(排）水口水位4 ', N'3F', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'40', N'取(排）水口水位5 ', N'40', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'41', N'取(排）水口水位6 ', N'41', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'42', N'取(排）水口水位7 ', N'42', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'43', N'取(排）水口水位8 ', N'43', 10, 3, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'44', N'含沙量', N'44', 10, 3, 0, N'千克/立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'46', N'pH值', N'46', 10, 2, 0, N'')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'47', N'溶解氧', N'47', 10, 1, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'4A', N'高锰酸盐指数', N'4A', 10, 1, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'4B', N'氧化还原电位', N'4B', 10, 1, 0, N'毫伏')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'4C', N'氨氮', N'4C', 10, 2, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'4D', N'总磷', N'4D', 10, 3, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'4E', N'总氮', N'4E', 10, 2, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'4F', N'总有机碳', N'4F', 10, 2, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'50', N'铜', N'50', 10, 4, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'51', N'锌', N'51', 10, 4, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'52', N'硒', N'52', 10, 5, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'53', N'砷', N'53', 10, 5, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'54', N'总汞', N'54', 10, 5, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'55', N'镉', N'55', 10, 5, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'56', N'铅', N'56', 10, 5, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'57', N'叶绿素a', N'57', 10, 2, 0, N'毫克/升')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'58', N'水压1', N'58', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'59', N'水压2', N'59', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'5A', N'水压3', N'5A', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'5B', N'水压4', N'5B', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'5C', N'水压5', N'5C', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'5D', N'水压6', N'5D', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'5E', N'水压7', N'5E', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'5F', N'水压8', N'5F', 10, 2, 0, N'千帕')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'60', N'水表1剩余水量', N'60', 11, 3, 0, N'立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'61', N'水表2剩余水量', N'61', 11, 3, 0, N'立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'62', N'水表3剩余水量', N'62', 11, 3, 0, N'立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'63', N'水表4剩余水量', N'63', 11, 3, 0, N'立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'64', N'水表5剩余水量', N'64', 11, 3, 0, N'立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'65', N'水表6剩余水量', N'65', 11, 3, 0, N'立方米')
GO
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'66', N'水表7剩余水量', N'66', 11, 3, 0, N'立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'67', N'水表8剩余水量', N'67', 11, 3, 0, N'立方米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'68', N'水表1每小时水量', N'68', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'69', N'水表2每小时水量', N'69', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'6A', N'水表3每小时水量', N'6A', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'6B', N'水表4每小时水量', N'6B', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'6C', N'水表5每小时水量', N'6C', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'6D', N'水表6每小时水量', N'6D', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'6E', N'水表7每小时水量', N'6E', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'6F', N'水表8每小时水量', N'6F', 10, 2, 0, N'立方米/小时')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'70', N'交流A相电压', N'70', 10, 1, 0, N'伏特')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'71', N'交流B相电压', N'71', 10, 1, 0, N'伏特')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'72', N'交流C相电压', N'72', 10, 1, 0, N'伏特')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'73', N'交流A相电流', N'73', 10, 1, 0, N'安培')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'74', N'交流B相电流', N'74', 10, 1, 0, N'安培')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'75', N'交流C相电流', N'75', 10, 1, 0, N'安培')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'F4', N'1小时内每5分钟时段雨量', N'F4', 10, 1, 0, N'毫米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'F5', N'1小时内5分钟间隔相对水位1', N'F5', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'F6', N'1小时内5分钟间隔相对水位2', N'F6', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'F7', N'1小时内5分钟间隔相对水位3', N'F7', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'F8', N'1小时内5分钟间隔相对水位4', N'F8', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'F9', N'1小时内5分钟间隔相对水位5', N'F9', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FA', N'1小时内5分钟间隔相对水位6', N'FA', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FB', N'1小时内5分钟间隔相对水位7', N'FB', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FC', N'1小时内5分钟间隔相对水位8', N'FC', 10, 2, 0, N'米')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FD', N'流速', N'FD', 10, 2, 0, N'')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF03', N'信号强度', N'FF03', 10, 0, 0, NULL)
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF13', N'取(排)水口总流量1', N'FF13', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF14', N'取(排)水口总流量2', N'FF14', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF15', N'取(排)水口总流量3', N'FF15', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF16', N'取(排)水口总流量4', N'FF16', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF17', N'取(排)水口总流量5', N'FF17', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF18', N'取(排)水口总流量6', N'FF18', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF19', N'取(排)水口总流量7', N'FF19', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEM] ([ItemID], [ItemName], [ItemCode], [ItemInteger], [ItemDecimal], [PlusOrMinus], [Units]) VALUES (N'FF1A', N'取(排)水口总流量8', N'FF1A', 10, 3, 0, N'立方米/秒')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000000C')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000000D')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000000E')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000000F')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'110000000020')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'110000000021')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'110000000022')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'110000000023')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'110000000024')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'110000000025')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'110000000026')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA01')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA02')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA03')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA04')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA05')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA06')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA07')
INSERT [dbo].[YY_RTU_ITEMCONFIG] ([ItemID], [ConfigID]) VALUES (N'0000000000', N'11000000AA08')
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'协议（2） 是否监测项（2）  内部编码（4，如果为0，未归类） 协议编码（4） 例：111100000025     协议编码部分 AAXX为自定义扩展' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YY_RTU_CONFIGITEM', @level2type=N'COLUMN',@level2name=N'ConfigID'
GO
