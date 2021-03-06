if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_SelAttribut_pr]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[DA_SelAttribut_pr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_SelMallMetaData_pr]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[DA_SelMallMetaData_pr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_SelMall_pr]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[DA_SelMall_pr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_SelTaggar_pr]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[DA_SelTaggar_pr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_Attribut_tb]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DA_Attribut_tb]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_MallMetaData_tb]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DA_MallMetaData_tb]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_Mall_tb]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DA_Mall_tb]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DA_Tag_tb]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DA_Tag_tb]
GO

CREATE TABLE [dbo].[DA_Attribut_tb] (
	[Id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ElementId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Namn] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[StartPos] [int] NULL ,
	[Langd] [int] NULL ,
	[Metadata] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MDKolumnnamn] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DA_MallMetaData_tb] (
	[Id] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MallId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Kontaktperson] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Teckentabell] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Ovrigt] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Klassificering] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Bevarande] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Sekretess] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AntalMedia] [int] NULL ,
	[Mediatyp] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Mottagare] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DA_Mall_tb] (
	[Id] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Namn] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DA_Tag_tb] (
	[Id] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Namn] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MallId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Identifierare1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Parent] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M_S] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Bortlases] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure DA_SelAttribut_pr
/********************************************
 Beskrivning: Hämtar alla mallar för att presentera i trädet.
 Skapad.....: 2002-03-26 Av: Emma Ullberg
 Ändrad.....:	  	 Av:
**************************************************************/

@Id as varchar(32)

as

Select * from DA_Attribut_tb WHERE ElementId = @Id


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure DA_SelMallMetaData_pr
/*************************************************************
 Beskrivning: Hämtar metadata för en viss mall att presentera i trädet.
 Skapad.....: 2002-03-22 Av: Emma Ullberg
 Ändrad.....:	  	 Av:
**************************************************************/
@Id varchar(40)

as

Select * from DA_MallMetaData_tb WHERE MallId = @Id


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure DA_SelMall_pr
/*************************************************************
 Beskrivning: Hämtar alla mallar för att presentera i trädet.
 Skapad.....: 2002-03-15 Av: Emma Ullberg
 Ändrad.....:	  	 Av:
**************************************************************/

as

Select * from DA_Mall_tb



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure DA_SelTaggar_pr
/*************************************************************
 Beskrivning: Hämtar alla taggar för en mall att presentera i trädet.
 Skapad.....: 2002-03-15 Av: Emma Ullberg
 Ändrad.....:	  	 Av:
**************************************************************/
@Id as varchar(40)

as

Select * from DA_Tag_tb WHERE MallId = @Id



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

