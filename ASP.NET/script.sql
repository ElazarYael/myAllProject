USE [MoviesBest]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_dbo.Orders_dbo.Movies_IDMovies_MoviesID]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_dbo.Orders_dbo.FilmScreenings_IDfillScreeninge_IDFilmScreening]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_dbo.Orders_dbo.Customers_IDCustomer_CustomertrID]
GO
ALTER TABLE [dbo].[Movies] DROP CONSTRAINT [FK_dbo.Movies_dbo.Categoryes_CategoryID]
GO
ALTER TABLE [dbo].[FilmScreenings] DROP CONSTRAINT [FK_dbo.FilmScreenings_dbo.Movies_MoviesID_MoviesID]
GO
ALTER TABLE [dbo].[FilmScreenings] DROP CONSTRAINT [FK_dbo.FilmScreenings_dbo.Cities_IDcity_IDcity]
GO
/****** Object:  Index [IX_IDMovies_MoviesID]    Script Date: 17/06/2018 16:16:45 ******/
DROP INDEX [IX_IDMovies_MoviesID] ON [dbo].[Orders]
GO
/****** Object:  Index [IX_IDfillScreeninge_IDFilmScreening]    Script Date: 17/06/2018 16:16:45 ******/
DROP INDEX [IX_IDfillScreeninge_IDFilmScreening] ON [dbo].[Orders]
GO
/****** Object:  Index [IX_IDCustomer_CustomertrID]    Script Date: 17/06/2018 16:16:45 ******/
DROP INDEX [IX_IDCustomer_CustomertrID] ON [dbo].[Orders]
GO
/****** Object:  Index [IX_CategoryID]    Script Date: 17/06/2018 16:16:45 ******/
DROP INDEX [IX_CategoryID] ON [dbo].[Movies]
GO
/****** Object:  Index [IX_MoviesID_MoviesID]    Script Date: 17/06/2018 16:16:45 ******/
DROP INDEX [IX_MoviesID_MoviesID] ON [dbo].[FilmScreenings]
GO
/****** Object:  Index [IX_IDcity_IDcity]    Script Date: 17/06/2018 16:16:45 ******/
DROP INDEX [IX_IDcity_IDcity] ON [dbo].[FilmScreenings]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[Movies]
GO
/****** Object:  Table [dbo].[Mangers]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[Mangers]
GO
/****** Object:  Table [dbo].[FilmScreenings]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[FilmScreenings]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[Cities]
GO
/****** Object:  Table [dbo].[Categoryes]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[Categoryes]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 17/06/2018 16:16:45 ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
USE [master]
GO
/****** Object:  Database [MoviesBest]    Script Date: 17/06/2018 16:16:45 ******/
DROP DATABASE [MoviesBest]
GO
/****** Object:  Database [MoviesBest]    Script Date: 17/06/2018 16:16:45 ******/
CREATE DATABASE [MoviesBest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MoviesBest', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MoviesBest.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MoviesBest_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MoviesBest_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MoviesBest] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MoviesBest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MoviesBest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MoviesBest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MoviesBest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MoviesBest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MoviesBest] SET ARITHABORT OFF 
GO
ALTER DATABASE [MoviesBest] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MoviesBest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MoviesBest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MoviesBest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MoviesBest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MoviesBest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MoviesBest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MoviesBest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MoviesBest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MoviesBest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MoviesBest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MoviesBest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MoviesBest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MoviesBest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MoviesBest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MoviesBest] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MoviesBest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MoviesBest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MoviesBest] SET  MULTI_USER 
GO
ALTER DATABASE [MoviesBest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MoviesBest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MoviesBest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MoviesBest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MoviesBest] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MoviesBest]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categoryes]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoryes](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Categoryes] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[IDcity] [int] IDENTITY(1,1) NOT NULL,
	[NameCity] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.Cities] PRIMARY KEY CLUSTERED 
(
	[IDcity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomertrID] [int] IDENTITY(1,1) NOT NULL,
	[NameCustomer] [nvarchar](50) NOT NULL,
	[Pasword] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[CardToBages] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[CustomertrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FilmScreenings]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmScreenings](
	[IDFilmScreening] [int] IDENTITY(1,1) NOT NULL,
	[DataTime] [datetime] NOT NULL,
	[IDcity_IDcity] [int] NOT NULL,
	[MoviesID_MoviesID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.FilmScreenings] PRIMARY KEY CLUSTERED 
(
	[IDFilmScreening] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mangers]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mangers](
	[MangerID] [int] IDENTITY(1,1) NOT NULL,
	[MangerName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Mangers] PRIMARY KEY CLUSTERED 
(
	[MangerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MoviesID] [int] IDENTITY(1,1) NOT NULL,
	[NameMovies] [nvarchar](50) NOT NULL,
	[ImageUrlOfMovies] [ntext] NOT NULL,
	[MovieDirector] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Inventory] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[CuntRating] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Movies] PRIMARY KEY CLUSTERED 
(
	[MoviesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17/06/2018 16:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[IDOrders] [int] IDENTITY(1,1) NOT NULL,
	[IDCustomer_CustomertrID] [int] NULL,
	[IDfillScreeninge_IDFilmScreening] [int] NULL,
	[IDMovies_MoviesID] [int] NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[IDOrders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201806162247564_InitialCreate', N'WebMovies.DbContextDrowDataBase', 0x1F8B0800000000000400D55DDB6E23B9117D0F907F68F45312782D7B06011243DAC58C3C0E84CC8C0DCBDEE4CDA0BB29B991BE28DD94D746902FCB433E29BF10F69DD7E645EC96160B0C2C36592C164F158B64B1F67FFFF9EFFCA7B724F65E615E4459BAF02FCF2F7C0FA6411646E976E1EFD1E6873FF93FFDF8DBDFCCBF84C99BF7735BEF63590FB74C8B85FF82D0EE6A362B82179880E23C89823C2BB20D3A0FB26406C26CF6E1E2E2CFB3CBCB19C4247C4CCBF3E6F7FB144509AC7EE09FCB2C0DE00EED41FC2D0B615C34E5F8CBBAA2EA7D07092C7620800BFF6FF0F95BF61AC1C2F73EC511C00CAC61BCF13D90A6190208B377F558C035CAB374BBDEE102103FBCEF20AEB70171011BB6AFFAEABA23B8F8508E60D6376C4905FB02658921C1CB8F8D48666C732BC1FA9DC8B0D0BE60E1A2F772D495E016FE1220B8CDF2F752686C7757CB382FAB12923DEFEB9F795DE95937FD1825E57F67DE721FA37D0E1729DCA31CC467DEDDFE398E82BFC2F787EC1F305DA4FB382639C3BCE16F54012EBACBB31DCCD1FB3DDC30FCAEAE7D6F46B79FB104BAE682B6F5B85629FAF8C1F7BE6366C0730C3B20103258A32C877F8129CC71EBF00E2004733C8FAB1056A2E4B860FABC86459047BB7AF6EA4E3100B10AF9DE37F0F615A65BF4B2F0F19FBE7713BDC1B02D6918794C23AC71B811CAF750C028D3F977F01A6D2BBE19365ABDB88771F5B9788976B57A1033FAD4D6BAC9B3E43E8B2978341F9FD6D93E0F70CF0F99ACC603C8B710D1BCCD673DF206F1D8B2A083C5167CC7C061DDA10D0AFB965361B0FCB795AB14827FBC708240A6EB5502B6F0318F6F374A065CE98048DCD7510E032CC4E9BB9F56FF59E9A7AF1821583955581B26A36F3787E9DC633497033F8817EC1E58D1919AC69B284ED6410E615A11155848AAC653AFBFBD9914D7E82C616B2B25D55A936A653019F675EC26D5E438E67375CDF06D6A453902932DE8008107ECA0B63DE2DFB0FE6D8DC0D5755075AC845E5B5106BCFA3BB7440B2B895669B50751C2DEA5860CB3CA299295862C2B996939B7B8E6B1F42110614F430DEA7653BA124BA247C15A76E9C6917066AF359566D856339A6587C30A8130D7C46253FB48DBACA677945B6DB4A8D69362B393F1C48EEE1D287EC9F2707CBD60FAFD9280289E7CB44B90870FD967ECDB4FBFA5782C605EFE3579C75F41818ED2F1DD4B968EDDABFE061DA45B5D1B56D73DD206BDEADB6A83DEB59CCA72D53D2AB035D21E111B2E95E51AA96795E91AA95B0DFBE1A4676D8DBACD43AC147A1A55D73D968FDA726AEEA5B62D47D3A881CD55EF13087CC59AB127B256EF28721FB9FD0A5FC3745FB5BADE4471DC799A70984BB6AE8057BA8A9C63A69E39DF0367CA5D27FC8932F349CE9FC569F2A7A2C882A86246B45968B702F408BFA4A1A7B399AE8D05B7BFC08603EB5BB4C31A86AB2FFC3F70225474D06D3CFA0EEA1D164DF7D26735F436BD863144D0FB14D4774B4B500420E40D20965648498F909389F8BA7DBDDEF8F84DBE7311F2276D7D172DF44E408CFC158B6C7803F72D043C883BBBB146A7E04A5BDEFC5CE20505E6A51507F1121B0DBC444529E2579F280DA21D885572611A1ADE1996E3EEBA62BF5CC31D4CCBF5462585C379E8BA62E644252B030CF20B9D6CB60756BD7EB6DB055D5F73E54B2509ED6E15A6095F9C9F5FB26B80F9D099D553C9A96C29752206C9FAAB6B24DD4844618EA48BB5130998DA128321D7FE01D619843506E6EDD9FD735902DFD0759EFD521EE47F06A5DBC939DE788BD0F8DE45E3EAB36329A9AF21120451F49E89C05A7332A1E9B4C3E668B41F14ED19C0706486EF5C586AF5B1293F1E91FBCD49A4D163A1403A1D5789A3396AE0C5D17C50B46FA1C9B597EC63082C4964DA1D261355870E9D5943AFE96B7603E1A6945B3A349D4B82A2F8A2811EBBB15CFA2B1F9564C44EA4891BE9403A9CDF48D094E89AB984048135BC7014AEA1A67348B02F37379A2EDD18A210ECB27951283C144D1F85605FACE69A4E0929D2DE98B99304BB931F90C790DB62E4B858CA46E2A9E8EAE12152922BCEA00BA3E5C4584AC3A1BAB4E7189D9FD27D9BCFEAF0D6A6603E93C4C1CEBF81DD0ECB9C888B6D4ABC751D14BBFC616D1E369AD434664121881EEDB8ED7A42590EB690F98ABBC69CDE4479814A57EBB972B59661C255137B6592A5BDED9373BCF8996B17FDB649F977DD4C14CE2AD8C5350D6FF0E092721B589D498A4D2DD7D82B0394410CF28158AA6516EF9354BD3F9453A3A2CB4872D4079EDE7CC68C8DDB9172E2E34E0BE809D19A2EA9AAEA4C95B8B1C634C91ACA84DAFB32A44465019F4394C8C04B921659AE4F8D8FA52469F25FF529333192DCB0FB4FE343533AFA3E96911A765FAC4FCBAD12B6E18824A5B6CC802722B091E289283F1945A6D77B3B7D1EA4A1A1D68AF6521CB18183149A86C31287E8F6718114D8BBD293993BC9C6546BB51434D5592785CDE41354EF50E97911ED5A87A8F4816AACE1159D5F1C713AFACD85E59C48364B3AF3226D2A37526460176DA6E40163CA79EA3685DC5C498E8A862876915824B1AE509F4E139E4052698A4C161A224E8A5E69880FFAF4FAD80592585FAA4FA90F662229F5A506F2AEA3932869D74527A363CD79A1A5DF296CACE3774A1A4ABDB02EEE8872C024714C6A4AFCF492E5460A25D6A8A3A894B90A1C0974CD99821DE8C48D3540276B285F6DDBB30F7ABD959D888C2F4EFAB464C0EF7C2283DF07BDCBAEA6910F591EFE0CC59E3367ECBCA00CDD9B27999753DDCDB7642C99945E978FE024CBF965CFC20E0400FD947218027D5DB72060AF1234253C7CC8F0243F6D38080CEC5DCAAF1D0E827B05B935A5AAE9D94D8140A537069AB294BBD004C9616FDA1002D2BB12EDD9375B2206D95B666918559108ABA28CFFEC623F2D24E10E3EEC65CC2088D8CA8743497CC1E2463919DA0768ABD1184E1F626682718735F221BC14636DA5C3B1A50A5533589D3A62CE5627C9D5DC09A3462101354CB83B3FB64AE75F77777FCC1DDFBCB96F5327C4E12EE0EA2ABE8785F01A85E5E5DBFABD4030392F2B9CAFFF192FE3087BF47D05BC638C36B040F5CB01FFC3C5E50726B9CEE924BA991545483D6C18CC76434FDB1172CF44A59C95CF1C0E4F3791BE823C7801F9EF12F0F67B67AFC044718313274E194580E4D51C2D3FEEC99DA35428D5D5B79BB4262653ED1C3B8211B3E947AA193B38F94845858BD95CA5217C5BF8FFAA9A5D79ABBF3FF52DCFBC6A49B8F22EBC7F1F98B5C46A085CCE123515CBFC1F160A39562A8E71EC1B937D23C4649156F60DE131CC139D3F41175954E383C025D8F09BB1C2113060C72C838615B45C64B518CDCE93892C8456FE5265E5CD733FD8B81DCE73318C275126FD82ABB593C9AE6037593C59EA05B22B5E05B9115C91669F2EBBA2CB663670366D64E2023BA2A679096C3C5267990246D12B3E39C0615E19FBE0FF306A4215B2232543B7D38D8BE80065EAE7EFA3C0447A666AEADA08C9C8BC8A3A0F828A33D5519B298BC3F40EE3953BE031658E21A0CFCD48AFDAA9745DE3BF2EA7FA16CEB3CD0370BB47C3E270355D3FD533791CAC8A6694753A70E93BC1A360C3F7FD4C0ED7295ED99F109CA401E8FA875C23434AEBFA780258D9E43B386E86036D643BCF67306506030304FF8AF2157039FFCC120950B46847CDE881BB1D0EE4D1BB6607014638904697895629EDA0842941A199C9C172C1383190D8F816CA5BFE71C0621E6D30256A148B91F6227062F898DA3131428446C88073083037ECADF9E49EA3B2136899D5A3BE555FF8E1738627BDDEDEB9CCFA21A23F4E4610514F5415758FF5EE9297571D7F2B9254847446D22FE83CED3EAA4F445FFA7A9F9B0855BE11E14454DFD4C495C94844C44F205109399FFD6B2EED541BA3A60918310709AD9403CFFB8F34F411938BD8A413D116D729240F614D09FD184E9D04422375C4A96506B104E6F4837791F0C34E775D0CCF20A1071FC4871D1EE2FF7D87BDAE22DAF624CA00C5140694ABD3D559A59BAC75BE188EDA2AECAD124420C47ED0A71C451B1020FC3980455161E06710EFABAB9D6718AED2DB3DDAED111E324C9E63CAF2979EDB50FF55D6129AE7F96D155F54B8180266332AE33F6ED3CFFB280E3BBE6F04D7431212A54BD8DCC1947389CABB98ED7B47E93BF78C5146A8115FE7C93EC064176362C56DBA06AFD086B7C7027E855B10BCB7B1987222EA89A0C53EBF8EC0360749D1D0E8DBE39F18C361F2F6E3FF0116A69DD002720000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[Categoryes] ON 

INSERT [dbo].[Categoryes] ([CategoryID], [Description]) VALUES (1, N'Animation')
INSERT [dbo].[Categoryes] ([CategoryID], [Description]) VALUES (2, N'Movies for the whole family')
INSERT [dbo].[Categoryes] ([CategoryID], [Description]) VALUES (3, N'Semi-cartoons')
INSERT [dbo].[Categoryes] ([CategoryID], [Description]) VALUES (4, N'Israeli Films by Type')
INSERT [dbo].[Categoryes] ([CategoryID], [Description]) VALUES (5, N'Kosher movies')
SET IDENTITY_INSERT [dbo].[Categoryes] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomertrID], [NameCustomer], [Pasword], [Email], [CardToBages], [UserName], [LastName], [Phone]) VALUES (1, N'Almog', N'566778909', N'gdfgdfg@mail.com', N'458012346777', N'34567890', N'pop', N'0504123333')
INSERT [dbo].[Customers] ([CustomertrID], [NameCustomer], [Pasword], [Email], [CardToBages], [UserName], [LastName], [Phone]) VALUES (2, N'kobi', N'Aa2345', N'koko@mail.com', N'45801234889', N'hjlhh', N'opo', N'0504123393')
INSERT [dbo].[Customers] ([CustomertrID], [NameCustomer], [Pasword], [Email], [CardToBages], [UserName], [LastName], [Phone]) VALUES (3, N'gili', N'Ss556', N'gilior@mail.com', N'458012300977', N'dfgdd', N'1317', N'0504128833')
INSERT [dbo].[Customers] ([CustomertrID], [NameCustomer], [Pasword], [Email], [CardToBages], [UserName], [LastName], [Phone]) VALUES (4, N'Shimi', N'Xx4545', N'Shmon@mail.com', N'45801900777', N'dfguugd', N' 556', N'0504127633')
INSERT [dbo].[Customers] ([CustomertrID], [NameCustomer], [Pasword], [Email], [CardToBages], [UserName], [LastName], [Phone]) VALUES (5, N'Riki', N'Dd5656', N'89Riki@mail.com', N'458088806777', N'dfggd', N'1239094', N'0504126783')
INSERT [dbo].[Customers] ([CustomertrID], [NameCustomer], [Pasword], [Email], [CardToBages], [UserName], [LastName], [Phone]) VALUES (6, N'www', N'Aa12345600', N'g@gmail.com', N'4567888888222222', N'Aa12345678', N'eeeee', N'0522134555')
INSERT [dbo].[Customers] ([CustomertrID], [NameCustomer], [Pasword], [Email], [CardToBages], [UserName], [LastName], [Phone]) VALUES (7, N'limor', N'Admin1234', N'limor@gmail.com', N'4567888888333333333333', N'Admin1234', N'elazar', N'05021345599')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Mangers] ON 

INSERT [dbo].[Mangers] ([MangerID], [MangerName], [Password], [Email], [UserName]) VALUES (1, N'Alomog', N'Aa12345678', N'almogIsKing@gmail.com', N'Aa12345678')
SET IDENTITY_INSERT [dbo].[Mangers] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MoviesID], [NameMovies], [ImageUrlOfMovies], [MovieDirector], [Description], [Inventory], [CategoryID], [Rating], [CuntRating]) VALUES (28, N'fly To Frike', N'../Image/flyToAfrike.jpg', N'Kristine Knudsen', N'As a bird growing and growing up with storks, little Richard is convinced that he is, too, and is very excited about the coming migration season for Africa. But when the band sets out, they reveal the truth to him. As a sparrow, he simply will not survive the journey, and he must stay behind. But Richard does not let the facts confuse him. Armed with his instinct', 6900, 1, 4, 1)
INSERT [dbo].[Movies] ([MoviesID], [NameMovies], [ImageUrlOfMovies], [MovieDirector], [Description], [Inventory], [CategoryID], [Rating], [CuntRating]) VALUES (29, N'Paddington 2', N'../Image/pdinton2.jpg', N'Paul King', N'Paddington 2 is a British comedy film from 2017 based on Michael Bond''s popular children''s book The Adventures of the Bear Paddington. The film was directed by Paul King and produced by David', 3909, 1, 0, 0)
INSERT [dbo].[Movies] ([MoviesID], [NameMovies], [ImageUrlOfMovies], [MovieDirector], [Description], [Inventory], [CategoryID], [Rating], [CuntRating]) VALUES (30, N'The secret world of garden gnomes', N'../Image/הורד (2).jpg', N'John Stevenson', N'The Secret World of Garden Gnomes is a British animated film that is based on William Shakespeare''s Romeo and Juliet, and the series of detective novels by Sir Arthur Conan Doyle Sherlock Holmes.', 700, 1, 8, 2)
INSERT [dbo].[Movies] ([MoviesID], [NameMovies], [ImageUrlOfMovies], [MovieDirector], [Description], [Inventory], [CategoryID], [Rating], [CuntRating]) VALUES (31, N'The Super Family 2', N'../Image/moviesSuper.jpg', N'Brad Bird', N'The super-super family 2 is a superhero movie in computer animation by Pixar and Disney. The film was released on June 14, 2018. The film is directed by Brad Bird who directed and wrote the first film in the series', 690, 1, 11, 3)
INSERT [dbo].[Movies] ([MoviesID], [NameMovies], [ImageUrlOfMovies], [MovieDirector], [Description], [Inventory], [CategoryID], [Rating], [CuntRating]) VALUES (51, N'The simple words', N'../Image/The simple words.jpg', N'Ivan Atal', N'An exciting and funny comic drama that swept through France with sharp humor, extraordinary performances by Daniel Auteuil and Camelia Jordana, and a heartwarming story ... Neila grew up in the suburbs of Paris,', 690, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Movies] OFF
/****** Object:  Index [IX_IDcity_IDcity]    Script Date: 17/06/2018 16:16:45 ******/
CREATE NONCLUSTERED INDEX [IX_IDcity_IDcity] ON [dbo].[FilmScreenings]
(
	[IDcity_IDcity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MoviesID_MoviesID]    Script Date: 17/06/2018 16:16:45 ******/
CREATE NONCLUSTERED INDEX [IX_MoviesID_MoviesID] ON [dbo].[FilmScreenings]
(
	[MoviesID_MoviesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryID]    Script Date: 17/06/2018 16:16:45 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryID] ON [dbo].[Movies]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IDCustomer_CustomertrID]    Script Date: 17/06/2018 16:16:45 ******/
CREATE NONCLUSTERED INDEX [IX_IDCustomer_CustomertrID] ON [dbo].[Orders]
(
	[IDCustomer_CustomertrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IDfillScreeninge_IDFilmScreening]    Script Date: 17/06/2018 16:16:45 ******/
CREATE NONCLUSTERED INDEX [IX_IDfillScreeninge_IDFilmScreening] ON [dbo].[Orders]
(
	[IDfillScreeninge_IDFilmScreening] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IDMovies_MoviesID]    Script Date: 17/06/2018 16:16:45 ******/
CREATE NONCLUSTERED INDEX [IX_IDMovies_MoviesID] ON [dbo].[Orders]
(
	[IDMovies_MoviesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FilmScreenings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FilmScreenings_dbo.Cities_IDcity_IDcity] FOREIGN KEY([IDcity_IDcity])
REFERENCES [dbo].[Cities] ([IDcity])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FilmScreenings] CHECK CONSTRAINT [FK_dbo.FilmScreenings_dbo.Cities_IDcity_IDcity]
GO
ALTER TABLE [dbo].[FilmScreenings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FilmScreenings_dbo.Movies_MoviesID_MoviesID] FOREIGN KEY([MoviesID_MoviesID])
REFERENCES [dbo].[Movies] ([MoviesID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FilmScreenings] CHECK CONSTRAINT [FK_dbo.FilmScreenings_dbo.Movies_MoviesID_MoviesID]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Movies_dbo.Categoryes_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categoryes] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_dbo.Movies_dbo.Categoryes_CategoryID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orders_dbo.Customers_IDCustomer_CustomertrID] FOREIGN KEY([IDCustomer_CustomertrID])
REFERENCES [dbo].[Customers] ([CustomertrID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_dbo.Orders_dbo.Customers_IDCustomer_CustomertrID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orders_dbo.FilmScreenings_IDfillScreeninge_IDFilmScreening] FOREIGN KEY([IDfillScreeninge_IDFilmScreening])
REFERENCES [dbo].[FilmScreenings] ([IDFilmScreening])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_dbo.Orders_dbo.FilmScreenings_IDfillScreeninge_IDFilmScreening]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orders_dbo.Movies_IDMovies_MoviesID] FOREIGN KEY([IDMovies_MoviesID])
REFERENCES [dbo].[Movies] ([MoviesID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_dbo.Orders_dbo.Movies_IDMovies_MoviesID]
GO
USE [master]
GO
ALTER DATABASE [MoviesBest] SET  READ_WRITE 
GO
