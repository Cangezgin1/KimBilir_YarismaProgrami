USE [KimBilirgüncel]
GO
/****** Object:  Table [dbo].[Avm]    Script Date: 30.03.2022 14:46:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avm](
	[AvmId] [int] IDENTITY(1,1) NOT NULL,
	[AvmAd] [nvarchar](50) NULL,
	[AvmAdres] [nvarchar](max) NULL,
	[YetkiliAdı] [nvarchar](50) NULL,
	[YetkiliTelefon] [nvarchar](50) NULL,
	[AvmTopGelir] [nvarchar](50) NULL,
	[MuhasebeId] [int] NOT NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_Avm_1] PRIMARY KEY CLUSTERED 
(
	[AvmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Defacto]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Defacto](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[YetkiliAd] [nvarchar](50) NOT NULL,
	[YetkiliTelefon] [nvarchar](50) NOT NULL,
	[AvmAdres] [nvarchar](max) NOT NULL,
	[GenelMüdürlük] [nvarchar](50) NOT NULL,
	[AvmId] [int] NOT NULL,
	[KuponKod] [nvarchar](50) NOT NULL,
	[sil] [int] NOT NULL,
 CONSTRAINT [PK_Defacto] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefactoReklam]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefactoReklam](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[ReklamAdı] [nvarchar](max) NOT NULL,
	[ReklamSüresi] [nvarchar](50) NOT NULL,
	[ReklamÜcreti] [money] NOT NULL,
	[sil] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DR]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DR](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[YetkiliAd] [nvarchar](50) NULL,
	[YetkiliTelefon] [nvarchar](50) NULL,
	[AvmAdres] [nvarchar](50) NULL,
	[GenelMüdürlük] [nvarchar](50) NULL,
	[AvmId] [int] NULL,
	[KuponKod] [nvarchar](50) NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_DR] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DRReklam]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DRReklam](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[ReklamAdı] [nvarchar](50) NOT NULL,
	[ReklamSüresi] [nvarchar](50) NOT NULL,
	[ReklamÜcreti] [money] NOT NULL,
	[sil] [int] NOT NULL,
 CONSTRAINT [PK_DRReklam] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flo]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flo](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[YetkiliAd] [nvarchar](50) NULL,
	[YetkiliTelefon] [nvarchar](50) NULL,
	[AvmAdres] [nvarchar](50) NULL,
	[GenelMüdürlük] [nvarchar](50) NULL,
	[AvmId] [int] NULL,
	[KuponKod] [nvarchar](50) NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_Flo] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FloReklam]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloReklam](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[ReklamAdı] [nvarchar](50) NULL,
	[ReklamSüresi] [nvarchar](50) NULL,
	[ReklamÜcreti] [money] NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_FloReklam] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KazanılanKuponBilgisi]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KazanılanKuponBilgisi](
	[KazanılanKId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[KuponMagaza] [nvarchar](50) NULL,
	[KuponKod] [nvarchar](50) NULL,
	[KuponluYId] [int] NOT NULL,
 CONSTRAINT [PK_KazanılanKuponBilgisi] PRIMARY KEY CLUSTERED 
(
	[KazanılanKId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KolaySorular]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KolaySorular](
	[KolaySoruId] [int] IDENTITY(1,1) NOT NULL,
	[Soru] [nvarchar](max) NULL,
	[a] [nvarchar](max) NULL,
	[b] [nvarchar](max) NULL,
	[c] [nvarchar](max) NULL,
	[d] [nvarchar](max) NULL,
	[DogruCevap] [text] NULL,
	[SorularId] [int] NOT NULL,
 CONSTRAINT [PK_KolaySorular] PRIMARY KEY CLUSTERED 
(
	[KolaySoruId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KuponluPuanTablosu]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KuponluPuanTablosu](
	[MusteriId] [int] IDENTITY(1,1) NOT NULL,
	[DogruCevap] [nvarchar](50) NULL,
	[YanlısCevap] [nvarchar](50) NULL,
 CONSTRAINT [PK_KuponluPuanTablosu] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KuponluYarışmacıBilgisi]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KuponluYarışmacıBilgisi](
	[KuponluYId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[MagazaAd] [nvarchar](50) NULL,
	[MagazaKod] [nvarchar](50) NULL,
	[MusteriId] [int] NOT NULL,
	[PersonelDId] [int] NOT NULL,
 CONSTRAINT [PK_KuponluYarışmacıBilgisi] PRIMARY KEY CLUSTERED 
(
	[KuponluYId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LCW]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LCW](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[YetkiliAd] [nvarchar](50) NULL,
	[YetkiliTelefon] [nvarchar](50) NULL,
	[AvmAdres] [nvarchar](50) NULL,
	[GenelMüdürlük] [nvarchar](50) NULL,
	[AvmId] [int] NULL,
	[KuponKod] [nvarchar](50) NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_LCW] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LCWReklam]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LCWReklam](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[ReklamAdı] [nvarchar](max) NULL,
	[ReklamSüresi] [nvarchar](50) NULL,
	[ReklamÜcreti] [money] NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_LCWReklam] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mavi]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mavi](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[YetkiliAd] [nvarchar](50) NULL,
	[YetkiliTelefon] [nchar](15) NULL,
	[AvmAdres] [nvarchar](max) NULL,
	[GenelMüdürlük] [nvarchar](50) NULL,
	[AvmId] [int] NULL,
	[KuponKod] [nvarchar](50) NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_Mavi] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaviReklam]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaviReklam](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[ReklamAdı] [nvarchar](50) NOT NULL,
	[ReklamSüresi] [nvarchar](50) NOT NULL,
	[ReklamÜcreti] [money] NOT NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_MaviReklam] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migros]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migros](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[YetkiliAd] [nvarchar](50) NULL,
	[YetkiliTelefon] [nvarchar](50) NULL,
	[AvmAdres] [nvarchar](50) NULL,
	[GenelMüdürlük] [nvarchar](50) NULL,
	[AvmId] [int] NULL,
	[KuponKod] [nvarchar](50) NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_Migros] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MigrosReklam]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MigrosReklam](
	[MagazaId] [int] IDENTITY(1,1) NOT NULL,
	[ReklamAdı] [nvarchar](max) NULL,
	[ReklamSüresi] [nvarchar](50) NULL,
	[ReklamÜcreti] [money] NULL,
	[sil] [int] NULL,
 CONSTRAINT [PK_MigrosReklam] PRIMARY KEY CLUSTERED 
(
	[MagazaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muhasebe]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muhasebe](
	[MuhasebeId] [int] IDENTITY(1,1) NOT NULL,
	[ToplamGelir] [int] NULL,
	[ToplamGider] [int] NULL,
	[NetKar] [int] NULL,
	[Faturalar] [int] NULL,
	[PersonelMaas] [int] NULL,
	[AvmId] [int] NULL,
 CONSTRAINT [PK_Muhasebe] PRIMARY KEY CLUSTERED 
(
	[MuhasebeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrtaSorular]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrtaSorular](
	[OrtaSoruId] [int] IDENTITY(1,1) NOT NULL,
	[Soru] [nvarchar](max) NULL,
	[a] [nvarchar](max) NULL,
	[b] [nvarchar](max) NULL,
	[c] [nvarchar](max) NULL,
	[d] [nvarchar](max) NULL,
	[DogruCevap] [text] NULL,
	[SorularId] [int] NULL,
 CONSTRAINT [PK_OrtaSorular] PRIMARY KEY CLUSTERED 
(
	[OrtaSoruId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonelDetay]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonelDetay](
	[PersonelDId] [int] IDENTITY(1,1) NOT NULL,
	[Adı] [nvarchar](50) NULL,
	[Soyadı] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Adresi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MuhasebeId] [int] NULL,
 CONSTRAINT [PK_PersonelDetay] PRIMARY KEY CLUSTERED 
(
	[PersonelDId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonelGirisBilgileri]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonelGirisBilgileri](
	[PersonelId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PersonelGirisBilgileri] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sorular]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sorular](
	[SorularId] [int] IDENTITY(1,1) NOT NULL,
	[KolaySoruAdet] [int] NULL,
	[OrtaSoruAdet] [int] NULL,
	[ZorSoruAdet] [int] NULL,
 CONSTRAINT [PK_Sorular] PRIMARY KEY CLUSTERED 
(
	[SorularId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UcretliMusteriKayıt]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UcretliMusteriKayıt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adı] [nvarchar](50) NOT NULL,
	[Soyadı] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](50) NULL,
	[Eposta] [nvarchar](50) NULL,
	[UcretliPId] [int] NULL,
	[PersonelDId] [int] NULL,
 CONSTRAINT [PK_UcretliMusteriKayıt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UcretliPuanTablosu]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UcretliPuanTablosu](
	[UcretliPId] [int] IDENTITY(1,1) NOT NULL,
	[DogruCevam] [nvarchar](50) NULL,
	[YanlısCevap] [nvarchar](50) NULL,
	[puan] [int] NULL,
 CONSTRAINT [PK_UcretliPuanTablosu] PRIMARY KEY CLUSTERED 
(
	[UcretliPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ÜcretliPuanTablosu]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ÜcretliPuanTablosu](
	[UcretliPId] [int] IDENTITY(1,1) NOT NULL,
	[DoğruCevap] [int] NULL,
	[YanlışCevap] [int] NULL,
	[Puan] [int] NULL,
	[ID] [int] NULL,
 CONSTRAINT [PK_ÜcretliPuanTablosu] PRIMARY KEY CLUSTERED 
(
	[UcretliPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZorSorular]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZorSorular](
	[ZorSoruId] [int] IDENTITY(1,1) NOT NULL,
	[Soru] [nvarchar](max) NULL,
	[a] [nvarchar](max) NULL,
	[b] [nvarchar](max) NULL,
	[c] [nvarchar](max) NULL,
	[d] [nvarchar](max) NULL,
	[DogruCevap] [text] NULL,
	[SorularId] [int] NOT NULL,
 CONSTRAINT [PK_ZorSorular] PRIMARY KEY CLUSTERED 
(
	[ZorSoruId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Avm] ON 

INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (4, N'Canpark', N'Ümraniye/İstanbul', N'Can Yaman', N'05364563256', N'10000000', 1, 0)
INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (5, N'Buyaka', N'Çakmakmah Ümraniye/İstanbul', N'Servet Bingöl', N'05637896545', N'5000000', 2, 0)
INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (6, N'Cevahir', N'Şişli/İstanbul', N'Mevlüt Kanzar', N'05336547898', N'7000000', 3, 0)
INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (7, N'Akasya', N'Kadıköy/İstanbul', N'İrem Su Yazıcı', N'05334569685', N'8000000', 4, 0)
INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (10, N'Emaar', N'Bulgurlu/istanbul', N'Serda Gamze Keles', N'05384563223', N'15000000', 5, 0)
INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (11, N'İstinyePark', N'Sarıyer/İstanbul', N'Nergiz Han', N'(0212)345 55 55', N'12000000', 6, 0)
INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (12, N'Cits Nisantası', N'Nişantası/İstanbul', N'Bade İşçi', N'05394248565', N'15000000', 7, 0)
INSERT [dbo].[Avm] ([AvmId], [AvmAd], [AvmAdres], [YetkiliAdı], [YetkiliTelefon], [AvmTopGelir], [MuhasebeId], [sil]) VALUES (14, N'Akbatı', N'Esenkent/İstanbul', N'Görkem Torun', N'05420558877', N'12000000', 8, 0)
SET IDENTITY_INSERT [dbo].[Avm] OFF
GO
SET IDENTITY_INSERT [dbo].[Defacto] ON 

INSERT [dbo].[Defacto] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (6, N'Muhammed Bulut', N'02123654552', N'Küçükçekmece / İSTANBUL', N'Halkalı', 1, N'XXX11', 0)
INSERT [dbo].[Defacto] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (7, N'Aslı Güngör', N'02166395265', N'Halkalı - Küçükçekmece / İSTANBUL', N'Halkalı', 2, N'XXX12', 0)
INSERT [dbo].[Defacto] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (10, N'Ahmet Sever', N'02164566525', N'Canpark AVM Ümraniye/İstanbul', N'Ümraniye', 3, N'XXX13', 0)
INSERT [dbo].[Defacto] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (11, N'Sezen Işık', N'02164566545', N'Kartal Avm', N'Kartal', 4, N'XXX14', 0)
INSERT [dbo].[Defacto] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (12, N'Ayse Kurt', N'02124563652', N'Cevahir Avm', N'Şişli', 5, N'XXX15', 0)
INSERT [dbo].[Defacto] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (13, N'Umut Kazan', N'05364785254', N'Watergarden Avm', N'Ataşehir', 6, N'XXX16', 0)
SET IDENTITY_INSERT [dbo].[Defacto] OFF
GO
SET IDENTITY_INSERT [dbo].[DefactoReklam] ON 

INSERT [dbo].[DefactoReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (6, N'Bu yaz herkes tarzında yıkılıyor', N'kırkbeşsaniye', 750000.0000, 0)
INSERT [dbo].[DefactoReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (7, N'Şipsak alışveriş', N'otuzbeşsaniye', 650000.0000, 0)
INSERT [dbo].[DefactoReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (10, N'Defakto ile kendini sev kendini kutla', N'onaltısaniye', 4000.0000, 0)
SET IDENTITY_INSERT [dbo].[DefactoReklam] OFF
GO
SET IDENTITY_INSERT [dbo].[DR] ON 

INSERT [dbo].[DR] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (1, N'Ahmet canseven', N'05637896545', N'Canpark Avm', N'Arnavutköy', 4, N'XCCC1', NULL)
INSERT [dbo].[DR] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (3, N'Mensude Bulut', N'05367894565', N'Buyaka Avm', N'Erenköy', 5, N'XCCC2', NULL)
INSERT [dbo].[DR] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (4, N'Adnan Cesur', N'05639631254', N'Cevahir Avm', N'Şişli', 6, N'XCCC3', NULL)
SET IDENTITY_INSERT [dbo].[DR] OFF
GO
SET IDENTITY_INSERT [dbo].[DRReklam] ON 

INSERT [dbo].[DRReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (1, N'Mavi Kitap', N'20 (s)', 6000.0000, 0)
INSERT [dbo].[DRReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (3, N'Siyah Kitap', N'25 (s)', 50000.0000, 0)
INSERT [dbo].[DRReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (4, N'Yeşil Kitap', N'35 (s)', 40000.0000, 0)
INSERT [dbo].[DRReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (6, N'Sarı Kitap', N'32 (s)', 30000.0000, 0)
SET IDENTITY_INSERT [dbo].[DRReklam] OFF
GO
SET IDENTITY_INSERT [dbo].[Flo] ON 

INSERT [dbo].[Flo] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (1, N'Ezgi Yanık', N'Kökkülünk', N'Buyaka Avm', N'Çekmeköy', 5, N'XCCD1', NULL)
INSERT [dbo].[Flo] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (3, N'zeynep ', N'kara ', N'Sultanbeyli', N'Şişli', 6, N'XCCD2', 0)
SET IDENTITY_INSERT [dbo].[Flo] OFF
GO
SET IDENTITY_INSERT [dbo].[FloReklam] ON 

INSERT [dbo].[FloReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (1, N'AyakvUydur Hayata', N'25 (s)', 6.0000, NULL)
SET IDENTITY_INSERT [dbo].[FloReklam] OFF
GO
SET IDENTITY_INSERT [dbo].[KolaySorular] ON 

INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (2, N'Türkyenin en büyük takımı?', N'Beşiktaş', N'Fenerbahçe', N'Galatasaray', N'HamsiSpor', N'Fenerbahçe', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (3, N'Bu proje ne zaman biter?', N'Pazar', N'Pazartesi', N'Salı', N'Çarşamba', N'Salı', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (4, N'Çanakkale Savaşı sırasında 215 kg’lık mermiyi tek başına kaldıran Türk askeri kimdir?', N'Hasan Onbaşı', N'Seyit Onbaşı', N'Seyit Yüzbaşı', N'Ali Onbaşı', N'Seyit Onbaşı', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (5, N'Yazları sıcak ve kurak; kışları ise soğuk ve karlı geçen bir bölgede aşağıdaki iklimlerden hangisi görülür?', N'Ilıman İklim', N'Akdeniz İklimi', N'Karasal İklim', N'Tropikal İklim', N'Karasal İklim', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (6, N'Hangi Ülke nüfus sıralamasında ilk 5''te bulunmaz?', N'Çin', N'Pakistan', N'Hindistan', N'Rusya', N'Rusya', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (7, N'"Uyuyamadım" anlamındaki söz hangisidir?', N'Uyku atmadı ', N'Uyku tutmadı ', N'Uyku kalmadı', N' Uyku yatmadı', N'Uyku tutmadı ', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (8, N'Hangisi, bazı futbol takımlarının, taraftarları için kullandıkları bir ifadedir?', N'12. Adam', N'Yardımcı eleman', N'Canlı destek', N'Yedek kuvvet', N'12. Adam', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (9, N'Hangisi "yazı karakteri" anlamındadır?', N'Font', N'Küpür', N'Ons', N'Karat', N'Font', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (10, N'Trafikte hangi araçların arkasında "Dolu" ya da "Boş" yazar?', N' Akaryakıt tankeri ', N'Öğrenci servisi', N'Harfiyat kamyonu', N'Yolcu otobüsü', N' Akaryakıt tankeri ', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (11, N'"Annemleyiz ama aslında o teyzenmiş. Teyzemle bakkala gidiyoruz. Bakkal para üstü vermiyor, böyle uçarak kapıdan çıkıyor" diyen biri ne anlatıyordur? ', N'Bilmece', N'Fıkra', N'Rüya', N'Masal', N'Rüya', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (12, N'Hangisiyle beraber şehir derin bir sessizliğe bürünür?', N'Kar', N'Yagmur', N'Çiy', N'Sis', N'Kar', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (13, N'"Derman,Şifa,Deva" hangisine sıklıkla verilen isimlerdir? ', N'Eczane', N'Çilingir', N'Lokanta', N'Kasap', N'Eczane', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (14, N'Hangisinde oluşan yara izleri genellikle çocukluk dönemini hatırlatır?', N'Diz', N'Bilek', N'Burun', N'Dirsek', N'Diz', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (15, N'Hangi enstürmandan farklı nota çıkartabilmeniz için parmaklarınızı oynatmanız gerekmez?', N'Trompet', N'Borazan', N'Flüt', N' Ney', N'Borazan', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (17, N'Uçlu kalemlerde "0.5,0.7" gibi rakamlar hangisini ifade eder?', N' Uçların uzunluğu', N'Uçların esnekliği ', N'Uçların koyuluğu', N'Uçların çapı', N'Uçların çapı', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (18, N'"Kaşlarını çattığını" söyleyen biri hangi duyguyu yaşıyordur?', N'Şaşkınlık', N'Kızgınlık', N'Hayranlık', N'Pişmanlık', N'Kızgınlık', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (19, N'Bir konuda "mutabık" olduğunu söyleyen iki kişi hangisinden bahsediyordur?', N'Anlaştıklarından ', N'Anlaşamadıklarından ', N'Tartıştıklarından ', N'Kararsız kaldıklarından', N'Anlaştıklarından', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (20, N'"Sedan, coupe, cabrio" hangi aracın türlerine verilen isimlerdir?', N'Otomobil ', N'Kamyonet ', N'Motosiklet ', N'Fayton', N'Otomobil', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (21, N'Hayvancılıkla geçinen, genellikle Toroslarda yaşayan göçebe Türkler hangi isimle anılır?', N'Tatar', N'Boşnak ', N'Yörük', N'Çerkes', N'Yörük', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (22, N'"Geleceğe Dönüş" film serisinin zamanda yolculuk yapan kahramanın adı nedir?', N'Marty', N'Luke ', N'Jack', N' Tony', N'Marty', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (23, N'Daha çok eskiden, temiz ve düzenli olması için kapalı tutularak çocukların sokulmadığı odalar hangi isimle anılırdı?', N'Misafir ', N'Kral ', N'Akraba ', N'Komşu', N'Misafir', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (24, N'"Meracılık" yaptığını söyleyen birinin işi hangisiyle ilgilidir?', N'Çiftçilik', N'Ormancılık ', N'Madencilik ', N'Hayvancılık', N'Hayvancılık', 1)
INSERT [dbo].[KolaySorular] ([KolaySoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (25, N'Karşınızdakine "Alemsin" ya da "İlahi" diyorsanız onun nasıl bir kişiliğe sahip olduğunu ifade ediyorsunuzdur?', N'Esprili', N' Gizemli', N'Bilgili', N'Cesur', N'Esprili', 1)
SET IDENTITY_INSERT [dbo].[KolaySorular] OFF
GO
SET IDENTITY_INSERT [dbo].[LCW] ON 

INSERT [dbo].[LCW] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (1, N'Serdar Kim', N'05345697898', N'Buyaka Avm', N'İstanbul', 5, N'XCCCA1', NULL)
SET IDENTITY_INSERT [dbo].[LCW] OFF
GO
SET IDENTITY_INSERT [dbo].[LCWReklam] ON 

INSERT [dbo].[LCWReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (1, N'ÖnümdeHayatÜstümdeWaikiki', N'50 (s)', 9000.0000, NULL)
SET IDENTITY_INSERT [dbo].[LCWReklam] OFF
GO
SET IDENTITY_INSERT [dbo].[Mavi] ON 

INSERT [dbo].[Mavi] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (1, N'Ayse Gezer', N'05452364565    ', N'Canpark Avm', N'Ümraniye', 4, N'XCCB1', NULL)
SET IDENTITY_INSERT [dbo].[Mavi] OFF
GO
SET IDENTITY_INSERT [dbo].[MaviReklam] ON 

INSERT [dbo].[MaviReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (1, N'Burası İstanbul', N'20 (s)', 5000.0000, NULL)
INSERT [dbo].[MaviReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (2, N'Hep mi cok Modayız', N'15 (s)', 4000.0000, NULL)
INSERT [dbo].[MaviReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (3, N'Mavilendik', N'25 (s)', 6500.0000, NULL)
SET IDENTITY_INSERT [dbo].[MaviReklam] OFF
GO
SET IDENTITY_INSERT [dbo].[Migros] ON 

INSERT [dbo].[Migros] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (1, N'Serpil Gümrük', N'05459631254', N'Cevahir Avm', N'Şişli', 6, N'XCCCC4', NULL)
INSERT [dbo].[Migros] ([MagazaId], [YetkiliAd], [YetkiliTelefon], [AvmAdres], [GenelMüdürlük], [AvmId], [KuponKod], [sil]) VALUES (2, N'Ahmet Yüzer', N'05336547898', N'Canpark Avm', N'Ümraniye', 4, N'XCCCC5', NULL)
SET IDENTITY_INSERT [dbo].[Migros] OFF
GO
SET IDENTITY_INSERT [dbo].[MigrosReklam] ON 

INSERT [dbo].[MigrosReklam] ([MagazaId], [ReklamAdı], [ReklamSüresi], [ReklamÜcreti], [sil]) VALUES (1, N'Burada her işe kadın eli deger', N'ellialtısaniye', 10000.0000, NULL)
SET IDENTITY_INSERT [dbo].[MigrosReklam] OFF
GO
SET IDENTITY_INSERT [dbo].[Muhasebe] ON 

INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (1, 10000, 5000, 5000, 200, 6000, 1)
INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (2, 15000, 5000, 10000, 300, 10000, 2)
INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (3, 20000, 8000, 12000, 400, 4000, 3)
INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (4, 14000, 3000, 11000, 300, 5000, 4)
INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (5, 20000, 15000, 5000, 200, 6000, 5)
INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (6, 18000, 6700, 11300, 500, 7000, 6)
INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (7, 17000, 5500, 11500, 600, 8000, 7)
INSERT [dbo].[Muhasebe] ([MuhasebeId], [ToplamGelir], [ToplamGider], [NetKar], [Faturalar], [PersonelMaas], [AvmId]) VALUES (8, 9000, 1500, 7500, 550, 8000, 14)
SET IDENTITY_INSERT [dbo].[Muhasebe] OFF
GO
SET IDENTITY_INSERT [dbo].[OrtaSorular] ON 

INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (1, N'Fatih Sultan Mehmet’in babası kimdir?', N'Yıldırım Beyazıt', N'I. Mehmet', N'II. Murat', N'I. Murat', N'II. Murat', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (2, N'Hangisi periyodik tabloda bulunan bir element değildir?', N'Su', N'Azot', N'Oksijen', N'Kurşun', N'Su', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (3, N'(76 − 16 ÷ 4 + 3 x 6) İşleminin sonucu nedir?', N'33', N'65', N'90', N'96', N'90', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (4, N'Kıbrıs Barış harekatı hangi tarihte gerçekleşmiştir?', N'1971', N'1972', N'1973', N'1974', N'1974', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (5, N'Hangi ülke Asya kıtasındadır?', N'Madagaskar', N'Singapur', N'Peru', N'Angola', N'Singapur', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (6, N'Patates cipsi paketleri, içinde cipslerin taze kalması için genellikle hangi gazla doldurulur?', N'Oksijen', N' Hidrojen', N'Helyum ', N'Azot', N'Azot', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (7, N'"Pizzaya en yakıştırdığım malzeme ançüezdir" cümlesinde adı geçen "ançüez" hangisinden yapılan bir ezme çeşididir?', N'Mantar', N'Tavuk', N'Balık', N'Mısır', N'Balık', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (8, N'"Bezekçi" hangisinin diğer adıdır?', N'Hattat', N'Sarraf', N'Nakkaş', N'Hallaç', N'Nakkaş', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (9, N'Günümüzde popüler bir söz olan "şehir efsanesi" için eski kuşakların kullandığı kelime hangisidir?', N'Teamül ', N'Tahayyül ', N'Tevatür ', N'Tezahür', N'Tevatür', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (10, N'Hangi ülkenin tarihteki hükümdaları "Şah" unvanıyla anılır?', N'İran', N'Çin ', N'Mısır ', N'Moğolistan', N'İran', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (11, N'Çoğunlukla eski el yazması kitapların kenarlarında bulunan altın rengi süslemeler hangi sanat eserinin örneklerindendir?', N'Tezhip ', N'Telkari ', N'Hat ', N'Gravür', N'Tezhip ', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (12, N'Kışın genellikle arabaların kaportasının üstünde uyumayı seven hayvan hangisidir?', N'Köpek ', N'Kedi', N'Sincap ', N'Güvercin ', N'Kedi', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (13, N'Evlerin girişlerinde ve koridorlara konulan, rüzgar estiğinde çeşitli güzel sesler çıkaran ev aksesuarı hangisidir?', N'Müzik kutusu', N'Rüzgar çanı ', N'Kedi merdiveni', N'Çiçek dürbünü

', N'Rüzgar çanı ', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (14, N'Barışı savunan, kendilerine uzatılan silahlara çiçek koyan ve birçok filme konu olan kuşak hangi isimle anılır?', N'48 kuşağı', N'58 kuşağı', N' 68 kuşağı', N'78 kuşağı', N'68 kuşağı', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (15, N'Efsaneye göre, Büyük Tufan''da Nuh peygamber''in gemisinde, elde kalan az miktarda erzakla ilk kez yapılan yiyecek nedir?', N'Keşkek ', N'Aşure ', N'Çiğköfte ', N'Tarhana', N'Aşure', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (16, N'J.J Abrams''ın yönetmenliğini yaptığı "The Force Awakens- Gü. Uyanıyor" filmi hangi serinin son filmidir?', N'Transformers ', N'James Bond ', N'Matrix', N'Star Wars', N'Star Wars', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (17, N'Bir şeyi cepheden gördüğünü söylüyorsanız ne taraftan bakıyorsunuz demektir?', N'Karşı', N'Yan ', N'Arka ', N'Üst', N'Karşı', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (18, N'Çay bahçeleri ve kahvehanelerde iskambil destesi, hangi sayı söylenerek istenir?', N'51', N'52', N'53', N'54', N'52', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (19, N'"Önüne dön" kimin çok sık kullandığı bir sözdür?', N' Nikah memuru', N'Öğretmen ', N'Cerrah ', N'Garson', N'Öğretmen', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (20, N'"Çatlakların Şükran" , "Elekçilerin Hasan" sözlerindeki "çatlak ve elekçi" lakaplarıyla hangisi kastedilmektedir?', N'Aileleri ', N'Yetenekleri ', N'Memleketleri ', N'Meslekleri', N'Aileleri', 1)
INSERT [dbo].[OrtaSorular] ([OrtaSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (21, N'Bir kişiyle akrabalığınız kan yoluyla değilde evlilik yoluyla oluştuysa, o kişi neyiniz olur?', N'Hasım', N'Hemşehri ', N'Hısım ', N'Halef', N'Hısım', 1)
SET IDENTITY_INSERT [dbo].[OrtaSorular] OFF
GO
SET IDENTITY_INSERT [dbo].[PersonelDetay] ON 

INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (2, N'Ahmet', N'Yüncü', N'05364562332', N'Çekmeköy/İstanbul', N'ahm.7@gmail.com', 1)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (3, N'Sevgi', N'Yılmaz', N'05367894565', N'Çengelköy/İstanbul', N'sevgi14@gmail.com', 2)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (4, N'Mehmet', N'Batak', N'05324569689', N'Ümraniye/İstanbul', N'mehmetb@gmail.com', 3)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (5, N'burhan', N'keskin', N'05071457351', N'sultanbeyli', N'burhankeskin1234@gmail.com', 4)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (6, N'Kaan', N'Yiğit', N'', N'54', N'', 5)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (7, N'kaan', N'yiğit', N'', N'54', N'', 6)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (8, N'kaan', N'yiğit', N'', N'54', N'', 7)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (9, N'kaan', N'yiğit', N'', N'54', N'', 8)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (10, N'kaan', N'yiğit', N'', N'54', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (11, N'Burak', N'Topal', N'', N'485', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (12, N'Mehmet', N'Gümüş', N'', N'785', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (13, N'zeynep', N'Gül', N'', N'693', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (14, N'ali', N'kara', N'', N'444', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (15, N'Can', N'Gezgin', N'', N'', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (16, N'Can', N'Gezgin', N'', N'12', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (17, N'Ali', N'Karaca', N'asd', N'asd', N'asd', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (18, N'asd', N'asd', N'123', N'asd', N'asd', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (19, N'dd', N'ss', N'456', N'aa', N'adas', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (20, N'dd', N'ss', N'456', N'123', N'adas', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (21, N'dd', N'ss', N'', N'55', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (22, N'ss', N'ff', N'', N'77', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (23, N'dd', N'ss', N'', N'77', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (24, N'ss', N'dd', N'88', N'vv', N'dd', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (25, N'ff', N'dd', N'', N'8', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (26, N'hh', N'uu', N'', N'88', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (27, N'ss', N'rr', N'', N'11', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (28, N'tt', N'yy', N'', N'55', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (29, N'pp', N'pp', N'', N'22', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (30, N'dd', N'ww', N'', N'11', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (31, N'dd', N'ss', N'', N'22', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (32, N'ıı', N'ıı', N'', N'44', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (33, N'pp', N'oo', N'', N'77', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (34, N'ğğ', N'ğğ', N'', N'11', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (35, N'fd', N'yy', N'', N'66', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (36, N'gg', N'gg', N'', N'99', N'', NULL)
INSERT [dbo].[PersonelDetay] ([PersonelDId], [Adı], [Soyadı], [Telefon], [Adresi], [Email], [MuhasebeId]) VALUES (37, N'dd', N'ss', N'44', N'ww', N'hgf', NULL)
SET IDENTITY_INSERT [dbo].[PersonelDetay] OFF
GO
SET IDENTITY_INSERT [dbo].[PersonelGirisBilgileri] ON 

INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (2, N'Can', N'Gezgin', N'1907')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (3, N'İrem', N'Gümüş', N'1234')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (4, N'Burhan', N'Keskin', N'1585')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (5, N'kaan', N'yiğit', N'0')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (6, N'Ali', N'Veli', N'11')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (7, N'Burak', N'Topal', N'485')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (8, N'Mehmet', N'Gümüş', N'785')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (9, N'ali', N'kara', N'444')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (10, N'Can', N'Gezgin', N'0')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (11, N'Can', N'Gezgin', N'12')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (12, N'dd', N'tt', N'33')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (13, N'bb', N'ff', N'66')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (14, N'pp', N'pp', N'99')
INSERT [dbo].[PersonelGirisBilgileri] ([PersonelId], [Ad], [Soyad], [Sifre]) VALUES (15, N'aa', N'bb', N'33')
SET IDENTITY_INSERT [dbo].[PersonelGirisBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[Sorular] ON 

INSERT [dbo].[Sorular] ([SorularId], [KolaySoruAdet], [OrtaSoruAdet], [ZorSoruAdet]) VALUES (1, 5, 5, 5)
SET IDENTITY_INSERT [dbo].[Sorular] OFF
GO
SET IDENTITY_INSERT [dbo].[UcretliMusteriKayıt] ON 

INSERT [dbo].[UcretliMusteriKayıt] ([ID], [Adı], [Soyadı], [Sifre], [Telefon], [Eposta], [UcretliPId], [PersonelDId]) VALUES (6, N'Can', N'Gezgin', N'1908', N'0542234281', N'can.gesgin@gmail.com', NULL, NULL)
INSERT [dbo].[UcretliMusteriKayıt] ([ID], [Adı], [Soyadı], [Sifre], [Telefon], [Eposta], [UcretliPId], [PersonelDId]) VALUES (7, N'Burhan', N'Keskin', N'1584', N'05554443322', N'burhan.keskin@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[UcretliMusteriKayıt] OFF
GO
SET IDENTITY_INSERT [dbo].[UcretliPuanTablosu] ON 

INSERT [dbo].[UcretliPuanTablosu] ([UcretliPId], [DogruCevam], [YanlısCevap], [puan]) VALUES (1, N'8', N'2', 80)
INSERT [dbo].[UcretliPuanTablosu] ([UcretliPId], [DogruCevam], [YanlısCevap], [puan]) VALUES (2, N'7', N'3', 75)
SET IDENTITY_INSERT [dbo].[UcretliPuanTablosu] OFF
GO
SET IDENTITY_INSERT [dbo].[ÜcretliPuanTablosu] ON 

INSERT [dbo].[ÜcretliPuanTablosu] ([UcretliPId], [DoğruCevap], [YanlışCevap], [Puan], [ID]) VALUES (1, 10, 2, 80, 1)
SET IDENTITY_INSERT [dbo].[ÜcretliPuanTablosu] OFF
GO
SET IDENTITY_INSERT [dbo].[ZorSorular] ON 

INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (1, N'"Beni öldürmeyen acı güçlendirir" hangi ünlü düşünürün sözüdür?', N'Freud', N'Marx', N'Nietzsche', N'Lev Tolstoy', N'Nietzsche', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (2, N'"Türk futbolunda aslında her şeyden biraz var ama hiçbir şey tam yok" sözü kime aittir?', N'Jose Mourinho', N'Pep Guardiola', N'Dick Advocaat', N'Şota Arveladze', N'Dick Advocaat', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (3, N'Tarihçilerin Kutbu olarak bilinen dünyaca ünlü tarihçimiz kimdir?', N'Mehmet Fuat Köprülü', N'Fuat Köprülü', N'Halil İnalcık', N'İlber Ortaylı', N'Halil İnalcık', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (4, N'Fransız İhtilali kaç yılında gerçekleşmiştir?', N'1768-1787', N'1789-1799', N'1780-1789', N'1876-1889', N'1789-1799', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (5, N'Osmanlı’da Lale devri hangi padişah döneminde yaşamıştır?', N'IV. Murat', N'III. Murat', N'III. Selim', N'III. Ahmet', N'III. Ahmet', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (6, N'Hangi ünlü çöl Asya kıtasında değil, Amerika kıtasındadır?', N'Kızılkum', N'Karakum', N'Atakama', N'Taklamakan', N'Atakama', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (8, N'Hangisi Ay''ın yörüngesinde tur atmış ve canlı olarak Dünya''ya dönmüş ilk canlılardandır?', N'Köpek', N'İnsan', N'Salyangoz', N'Kaplumbağa', N'Kaplumbağa', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (9, N'"Tom Sawyer''ın Maceraları adlı kitabı okumadıysanız beni tanımazsanız ama ziyanı yok" cümlesiyle başlayan "Huckleberry Finn''in Maceraları" adlı romanın yazarı kimdir?', N'Jules Verne', N'Mark Twain', N'Jack London', N'Lewis Carroll', N'Mark Twain', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (10, N'2012''de Melbourne ve New York Üniversitesi''nden akademisyenlerin yayımladığı bir çalışmaya göre kimlerin iş hayatında arkadaş edinmesi, beğenilmesi veya terfi alması daha olasıdır?', N'Adı ve soyadında ulama olanların', N' Adı "A" harfiyle başlayanların', N'Adının telaffuzu kolay olanların', N'İki adı olanların', N'Adının telaffuzu kolay olanların', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (11, N'NBA''de şimdiye kadar forma giyen en uzun basketbolcu ile en kısa basketbolcu arasındaki boy farkı kaç santimetredir?', N'41', N'51', N'61', N'71', N'71', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (12, N'Başta Kanada olmak üzere 17. ve 18. yüzyıllarda birçok Fransız kolonisinde hangisi para olarak kullanılmıştır?', N'Posta pulu', N'Bitki tohumu', N'İskambil kağıdı', N'Cam boncuk', N'İskambil kağıdı', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (13, N'Hangisinde oluşan yara izleri genellikle çocukluk dönemini hatırlatır? ', N'Diz', N'Bilek', N'Burun', N'Dirsek', N'Diz', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (14, N'“İtalyancadan Türkçeye geçen “tavla” kelimesinin kökeninin anlamı nedir?', N'Şans', N'Pul', N'Tahta', N'Zar', N'Tahta', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (15, N'Hangisi TDK sözlüklerinde yer alan bir kelime değildir?', N'Varsız', N'Patırtısız', N'Yoksuz', N'Sırasız', N'Varsız', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (16, N'''Scoville ölçeği hangisini ölçer?''', N'Deniz tuzluluğunu', N'Çikolata tatlılığını', N' Limon ekşiliğini', N'Biber acılığını', N'Biber acılığını', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (17, N'Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu Tepesi nerededir?“', N'Hawai', N'Yeni Zelanda', N' Galler', N'Hindistan', N'Yeni Zelanda', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (18, N'İlk silikon meme hangisine takılmıştır?', N'İnek', N'Köpek', N'Fare', N'Maymun', N'Köpek', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (19, N'ABD başkanlarının besledikleri resmi hayvanları arasında hangisi yoktur?', N'Muhabbet Kuşu ', N'Zürefa', N'Sırtlan', N'Su aygırı', N'Zürefa', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (20, N' "Ağrı dağının yamacında,4200 metrede bir göl vardır..." cümlesiyle başlayan "Ağrı Efsanesi" kitabının yazarı kimdir?', N'Kemal Tahir', N'Yaşar Kemal', N'Orhan Kemal ', N'Fakir Boykurt', N'Yaşar Kemal', 1)
INSERT [dbo].[ZorSorular] ([ZorSoruId], [Soru], [a], [b], [c], [d], [DogruCevap], [SorularId]) VALUES (21, N'Ağustos 2010''da hangi şehirde yaşanan trafik sıkışıklığının açılması tam 10 gün sürmüştür?', N'Moskova ', N'Pekin ', N'Delhi ', N'Tokyo', N' Pekin', 1)
SET IDENTITY_INSERT [dbo].[ZorSorular] OFF
GO
ALTER TABLE [dbo].[Avm] ADD  CONSTRAINT [DF_Avm_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[Defacto] ADD  CONSTRAINT [DF_Defacto_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[DefactoReklam] ADD  CONSTRAINT [DF_DefactoReklam_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[DR] ADD  CONSTRAINT [DF_DR_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[DRReklam] ADD  CONSTRAINT [DF_DRReklam_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[Flo] ADD  CONSTRAINT [DF_Flo_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[FloReklam] ADD  CONSTRAINT [DF_FloReklam_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[LCW] ADD  CONSTRAINT [DF_LCW_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[LCWReklam] ADD  CONSTRAINT [DF_LCWReklam_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[Mavi] ADD  CONSTRAINT [DF_Mavi_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[MaviReklam] ADD  CONSTRAINT [DF_MaviReklam_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[Migros] ADD  CONSTRAINT [DF_Migros_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[MigrosReklam] ADD  CONSTRAINT [DF_MigrosReklam_sil]  DEFAULT ((0)) FOR [sil]
GO
ALTER TABLE [dbo].[Avm]  WITH CHECK ADD  CONSTRAINT [FK_Avm_Muhasebe] FOREIGN KEY([MuhasebeId])
REFERENCES [dbo].[Muhasebe] ([MuhasebeId])
GO
ALTER TABLE [dbo].[Avm] CHECK CONSTRAINT [FK_Avm_Muhasebe]
GO
ALTER TABLE [dbo].[DefactoReklam]  WITH CHECK ADD  CONSTRAINT [FK_DefactoReklam_Defacto] FOREIGN KEY([MagazaId])
REFERENCES [dbo].[Defacto] ([MagazaId])
GO
ALTER TABLE [dbo].[DefactoReklam] CHECK CONSTRAINT [FK_DefactoReklam_Defacto]
GO
ALTER TABLE [dbo].[DR]  WITH CHECK ADD  CONSTRAINT [FK_DR_Avm] FOREIGN KEY([AvmId])
REFERENCES [dbo].[Avm] ([AvmId])
GO
ALTER TABLE [dbo].[DR] CHECK CONSTRAINT [FK_DR_Avm]
GO
ALTER TABLE [dbo].[DR]  WITH CHECK ADD  CONSTRAINT [FK_DR_DRReklam] FOREIGN KEY([MagazaId])
REFERENCES [dbo].[DRReklam] ([MagazaId])
GO
ALTER TABLE [dbo].[DR] CHECK CONSTRAINT [FK_DR_DRReklam]
GO
ALTER TABLE [dbo].[Flo]  WITH CHECK ADD  CONSTRAINT [FK_Flo_Avm] FOREIGN KEY([AvmId])
REFERENCES [dbo].[Avm] ([AvmId])
GO
ALTER TABLE [dbo].[Flo] CHECK CONSTRAINT [FK_Flo_Avm]
GO
ALTER TABLE [dbo].[FloReklam]  WITH CHECK ADD  CONSTRAINT [FK_FloReklam_Flo] FOREIGN KEY([MagazaId])
REFERENCES [dbo].[Flo] ([MagazaId])
GO
ALTER TABLE [dbo].[FloReklam] CHECK CONSTRAINT [FK_FloReklam_Flo]
GO
ALTER TABLE [dbo].[KazanılanKuponBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_KazanılanKuponBilgisi_KuponluYarışmacıBilgisi] FOREIGN KEY([KuponluYId])
REFERENCES [dbo].[KuponluYarışmacıBilgisi] ([KuponluYId])
GO
ALTER TABLE [dbo].[KazanılanKuponBilgisi] CHECK CONSTRAINT [FK_KazanılanKuponBilgisi_KuponluYarışmacıBilgisi]
GO
ALTER TABLE [dbo].[KolaySorular]  WITH CHECK ADD  CONSTRAINT [FK_KolaySorular_Sorular] FOREIGN KEY([SorularId])
REFERENCES [dbo].[Sorular] ([SorularId])
GO
ALTER TABLE [dbo].[KolaySorular] CHECK CONSTRAINT [FK_KolaySorular_Sorular]
GO
ALTER TABLE [dbo].[KuponluYarışmacıBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_KuponluYarışmacıBilgisi_KuponluPuanTablosu] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[KuponluPuanTablosu] ([MusteriId])
GO
ALTER TABLE [dbo].[KuponluYarışmacıBilgisi] CHECK CONSTRAINT [FK_KuponluYarışmacıBilgisi_KuponluPuanTablosu]
GO
ALTER TABLE [dbo].[KuponluYarışmacıBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_KuponluYarışmacıBilgisi_PersonelDetay] FOREIGN KEY([PersonelDId])
REFERENCES [dbo].[PersonelDetay] ([PersonelDId])
GO
ALTER TABLE [dbo].[KuponluYarışmacıBilgisi] CHECK CONSTRAINT [FK_KuponluYarışmacıBilgisi_PersonelDetay]
GO
ALTER TABLE [dbo].[LCWReklam]  WITH CHECK ADD  CONSTRAINT [FK_LCWReklam_LCW] FOREIGN KEY([MagazaId])
REFERENCES [dbo].[LCW] ([MagazaId])
GO
ALTER TABLE [dbo].[LCWReklam] CHECK CONSTRAINT [FK_LCWReklam_LCW]
GO
ALTER TABLE [dbo].[Mavi]  WITH CHECK ADD  CONSTRAINT [FK_Mavi_MaviReklam] FOREIGN KEY([MagazaId])
REFERENCES [dbo].[MaviReklam] ([MagazaId])
GO
ALTER TABLE [dbo].[Mavi] CHECK CONSTRAINT [FK_Mavi_MaviReklam]
GO
ALTER TABLE [dbo].[MigrosReklam]  WITH CHECK ADD  CONSTRAINT [FK_MigrosReklam_Migros] FOREIGN KEY([MagazaId])
REFERENCES [dbo].[Migros] ([MagazaId])
GO
ALTER TABLE [dbo].[MigrosReklam] CHECK CONSTRAINT [FK_MigrosReklam_Migros]
GO
ALTER TABLE [dbo].[OrtaSorular]  WITH CHECK ADD  CONSTRAINT [FK_OrtaSorular_Sorular] FOREIGN KEY([SorularId])
REFERENCES [dbo].[Sorular] ([SorularId])
GO
ALTER TABLE [dbo].[OrtaSorular] CHECK CONSTRAINT [FK_OrtaSorular_Sorular]
GO
ALTER TABLE [dbo].[PersonelDetay]  WITH CHECK ADD  CONSTRAINT [FK_PersonelDetay_Muhasebe] FOREIGN KEY([MuhasebeId])
REFERENCES [dbo].[Muhasebe] ([MuhasebeId])
GO
ALTER TABLE [dbo].[PersonelDetay] CHECK CONSTRAINT [FK_PersonelDetay_Muhasebe]
GO
ALTER TABLE [dbo].[PersonelGirisBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_PersonelGirisBilgileri_PersonelDetay] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[PersonelDetay] ([PersonelDId])
GO
ALTER TABLE [dbo].[PersonelGirisBilgileri] CHECK CONSTRAINT [FK_PersonelGirisBilgileri_PersonelDetay]
GO
ALTER TABLE [dbo].[UcretliMusteriKayıt]  WITH CHECK ADD  CONSTRAINT [FK_UcretliMusteriKayıt_PersonelDetay] FOREIGN KEY([PersonelDId])
REFERENCES [dbo].[PersonelDetay] ([PersonelDId])
GO
ALTER TABLE [dbo].[UcretliMusteriKayıt] CHECK CONSTRAINT [FK_UcretliMusteriKayıt_PersonelDetay]
GO
ALTER TABLE [dbo].[UcretliMusteriKayıt]  WITH CHECK ADD  CONSTRAINT [FK_UcretliMusteriKayıt_UcretliPuanTablosu] FOREIGN KEY([UcretliPId])
REFERENCES [dbo].[UcretliPuanTablosu] ([UcretliPId])
GO
ALTER TABLE [dbo].[UcretliMusteriKayıt] CHECK CONSTRAINT [FK_UcretliMusteriKayıt_UcretliPuanTablosu]
GO
ALTER TABLE [dbo].[UcretliMusteriKayıt]  WITH CHECK ADD  CONSTRAINT [FK_UcretliMusteriKayıt_ÜcretliPuanTablosu] FOREIGN KEY([UcretliPId])
REFERENCES [dbo].[ÜcretliPuanTablosu] ([UcretliPId])
GO
ALTER TABLE [dbo].[UcretliMusteriKayıt] CHECK CONSTRAINT [FK_UcretliMusteriKayıt_ÜcretliPuanTablosu]
GO
ALTER TABLE [dbo].[ZorSorular]  WITH CHECK ADD  CONSTRAINT [FK_ZorSorular_Sorular] FOREIGN KEY([SorularId])
REFERENCES [dbo].[Sorular] ([SorularId])
GO
ALTER TABLE [dbo].[ZorSorular] CHECK CONSTRAINT [FK_ZorSorular_Sorular]
GO
/****** Object:  StoredProcedure [dbo].[ MigrosArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ MigrosArama]
@aramametni nvarchar(50)
as begin
select *from  Migros
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[AvmArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AvmArama]
@aramametni nvarchar(50)
as begin
select *from Avm
where (@aramametni = '' or AvmAd like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[DefactoArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DefactoArama]
@aramametni nvarchar(50)
as begin
select *from Defacto
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[DefactoReklamArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DefactoReklamArama]
@aramametni nvarchar(50)
as begin
select *from DefactoReklam
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[DRArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DRArama]
@aramametni nvarchar(50)
as begin
select *from DR
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[DRReklamArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[DRReklamArama]
@aramametni nvarchar(50)
as begin
select *from DRReklam
where (@aramametni = '' or MagazaId like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[FloArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FloArama]
@aramametni nvarchar(50)
as begin
select *from Flo
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[FloEkle]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[FloEkle]
				@KayıtID int,
				@YetkiliAd nvarchar(50),
				@YetkiliTelefon nvarchar(50),
				@AvmAdres nvarchar(50),
				@GenelMüdürlük nvarchar(50),
				@AvmId int ,
				@KuponKod nvarchar(50)

				as 
				begin
				if (@KayıtID =0)
				begin
				insert into Flo
				(YetkiliAd,YetkiliTelefon,AvmAdres,GenelMüdürlük,AvmId,KuponKod)
				values(@YetkiliAd ,@YetkiliTelefon,@AvmAdres,@GenelMüdürlük,@AvmId,@KuponKod)
				End
				End
GO
/****** Object:  StoredProcedure [dbo].[FloReklamArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[FloReklamArama]
@aramametni nvarchar(50)
as begin
select *from FloReklam
where (@aramametni = '' or MagazaId like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[KazanılanKuponBilgisiArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KazanılanKuponBilgisiArama]
@aramametni nvarchar(50)
as begin
select *from KazanılanKuponBilgisi
where (@aramametni = '' or Ad like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[KolaySorularArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KolaySorularArama]
@aramametni nvarchar(50)
as begin
select *from KolaySorular
where (@aramametni = '' or Soru like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[KuponluPuanlarTablosu]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KuponluPuanlarTablosu]
@aramametni nvarchar(50)
as begin
select *from KuponluPuanTablosu
where (@aramametni = '' or DogruCevap like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[LCWArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LCWArama]
@aramametni nvarchar(50)
as begin
select *from LCW
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[LCWReklamArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[LCWReklamArama]
@aramametni nvarchar(50)
as begin
select *from LCWReklam
where (@aramametni = '' or MagazaId like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[MaviArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MaviArama]
@aramametni nvarchar(50)
as begin
select *from Mavi
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[MaviReklamArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MaviReklamArama]
@aramametni nvarchar(50)
as begin
select *from MaviReklam
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[MigrosReklamArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MigrosReklamArama]
@aramametni nvarchar(50)
as begin
select *from MigrosReklam
where (@aramametni = '' or MagazaId like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[MuhasebeArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MuhasebeArama]
@aramametni nvarchar(50)
as begin
select *from Muhasebe
where (@aramametni = '' or ToplamGelir like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[MuhasebeEkle]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[MuhasebeEkle]
				@KayıtID int,
				@ToplamGelir int,
				@ToplamGider int,
				@NetKar int,
				@Faturalar int,
				@PersonelMaas int ,
				@AvmId int output

				as 
				insert into Muhasebe(MuhasebeId)
				values (@KayıtID);
				set @AvmId  = SCOPE_IDENTITY();
				begin
				if (@KayıtID =0)
				begin
				insert into Muhasebe
				(ToplamGelir,ToplamGider,NetKar,Faturalar,AvmId,PersonelMaas)
				values(@ToplamGelir ,@ToplamGider,@NetKar,@Faturalar,@AvmId,@PersonelMaas)
				End
				End
GO
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
			CREATE Proc [dbo].[MusteriEkle]
				@KayıtID int,
				@Adı nvarchar(50),
				@Soyadı nvarchar(50),
				@Sifre nvarchar(50),
				@Telefon nvarchar(50),
				@Eposta nvarchar(50)
				as 
				begin
				if (@KayıtID =0)
				begin
				insert into UcretliMusteriKayıt
				(Adı,Soyadı,Sifre,Telefon,Eposta)
				values(@Adı,@Soyadı,@Sifre,@Telefon,@Eposta)
				End
				End
GO
/****** Object:  StoredProcedure [dbo].[OrtaSorularArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OrtaSorularArama]
@aramametni nvarchar(50)
as begin
select *from OrtaSorular
where (@aramametni = '' or Soru like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PersonelArama]
@aramametni nvarchar(50)
as begin
select *from PersonelDetay
where (@aramametni = '' or Adı like'%' + @aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelDetayTEkle]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create Proc [dbo].[PersonelDetayTEkle]
				@KayıtID int,
				@Adı nvarchar(50),
				@Soyadı nvarchar(50),
				@Telefon nvarchar(50),
				@Adresi nvarchar(50),
				@Email nvarchar(50)
				as 
				begin
				if (@KayıtID =0)
				begin
				insert into PersonelDetay
				(Adı,Soyadı,Telefon,Adresi,Email)
				values(@Adı,@Soyadı,@Telefon,@Adresi,@Email)
				End
				End
GO
/****** Object:  StoredProcedure [dbo].[PersonelGiris]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PersonelGiris]
@aramametni nvarchar(50)
as begin
select *from PersonelGirisBilgileri
where (@aramametni = '' or Ad like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelGirisEkle]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[PersonelGirisEkle]
				@KayıtID int,
				@Ad nvarchar(50),
				@Soyad nvarchar(50),
				@Sifre int
				as 
				begin
				if (@KayıtID =0)
				begin
				insert into PersonelGirisBilgileri
				(Ad,Soyad,Sifre)
				values(@Ad,@Soyad,@Sifre)
				End
				End
GO
/****** Object:  StoredProcedure [dbo].[UcretliPuanAramaa]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[UcretliPuanAramaa]
@aramametni nvarchar(50)
as begin
select *from ÜcretliPuanTablosu
where (@aramametni = '' or DoğruCevap like'%' + @Aramametni + '%')
end
GO
/****** Object:  StoredProcedure [dbo].[ZorSorularArama]    Script Date: 30.03.2022 14:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ZorSorularArama]
@aramametni nvarchar(50)
as begin
select *from ZorSorular
where (@aramametni = '' or Soru like'%' + @Aramametni + '%')
end
GO
