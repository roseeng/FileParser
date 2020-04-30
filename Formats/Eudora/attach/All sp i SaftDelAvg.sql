if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DatumTillStrDatum_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[DatumTillStrDatum_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GE_BehandlKod_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[GE_BehandlKod_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GE_Pris_FindNamdVardtypKST_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[GE_Pris_FindNamdVardtypKST_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GE_Sjukresor_getKonteringsstrang_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[GE_Sjukresor_getKonteringsstrang_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GE_getPrositKundnr]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[GE_getPrositKundnr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GE_getPrositLandstingsnr_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[GE_getPrositLandstingsnr_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_BehandlKod_FindByBehandlKod_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_BehandlKod_FindByBehandlKod_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_BehandlKod_FindByKey_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_BehandlKod_FindByKey_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_BehandlKod_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_BehandlKod_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_BehandlKod_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_BehandlKod_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Behandlkod_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Behandlkod_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientavg_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientavg_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientavg_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientavg_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientavg_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientavg_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientavg_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientavg_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientkategori_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientkategori_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientkategori_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientkategori_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientkategori_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientkategori_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_Patientkategori_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_Patientkategori_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_UtskrKod_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_UtskrKod_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_UtskrKod_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_UtskrKod_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_UtskrKod_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_UtskrKod_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Dv_UtskrKod_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Dv_UtskrKod_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilFel_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilFel_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilFel_FindByDatum_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilFel_FindByDatum_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilFel_FindByFilnamn_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilFel_FindByFilnamn_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilFel_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilFel_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilFel_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilFel_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_ConfByDate_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_ConfByDate_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_ConfByFileDate_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_ConfByFileDate_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_FindByFilDatum_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_FindByFilDatum_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_FindByFilnamnFildatum_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_FindByFilnamnFildatum_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_ListFildatumDistinct_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_ListFildatumDistinct_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_RensaToDatum_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_RensaToDatum_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_ReverseDayByDate_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_ReverseDayByDate_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_ReverseFileByFileDate_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_ReverseFileByFileDate_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_FilStatus_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_FilStatus_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Filnamn_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Filnamn_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Filnamn_FindByFilnamn_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Filnamn_FindByFilnamn_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Filnamn_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Filnamn_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Filnamn_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Filnamn_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Filnamn_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Filnamn_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Konto_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Konto_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Konto_FindByBenamningNamd_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Konto_FindByBenamningNamd_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Konto_FindByVaniaKSTNamd_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Konto_FindByVaniaKSTNamd_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Konto_FindByVaniaKST_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Konto_FindByVaniaKST_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Konto_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Konto_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Konto_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Konto_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Konto_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Konto_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Kundnr_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Kundnr_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Kundnr_FindByKundPnr_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Kundnr_FindByKundPnr_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Kundnr_FindByVaniaKundnr_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Kundnr_FindByVaniaKundnr_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Kundnr_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Kundnr_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Kundnr_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Kundnr_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Landsting_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Landsting_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Landsting_FindByLandstingKundnr_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Landsting_FindByLandstingKundnr_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Landsting_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Landsting_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Landsting_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Landsting_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Landsting_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Landsting_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_FindAvgTypVaniaKSTDat_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_FindAvgTypVaniaKSTDat_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_FindBenamningDat_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_FindBenamningDat_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_FindLatestByAllValues_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_FindLatestByAllValues_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_FindVardtypVaniaKSTDat_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_FindVardtypVaniaKSTDat_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ge_Pris_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ge_Pris_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GetPrositKundnr]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[GetPrositKundnr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HogerStall_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[HogerStall_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IN_Kund_VA_Kund_UT_Find]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[IN_Kund_VA_Kund_UT_Find]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IN_SjukresorFel_InsById_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[IN_SjukresorFel_InsById_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IN_Sjukresor_DelByFilnamn_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[IN_Sjukresor_DelByFilnamn_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IN_Sjukresor_Ins_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[IN_Sjukresor_Ins_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_KundFel_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_KundFel_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_KundFel_FindByFilnamnFildatum_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_KundFel_FindByFilnamnFildatum_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_KundFel_FindByFilnamn_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_KundFel_FindByFilnamn_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_KundFel_FindByPatPnr_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_KundFel_FindByPatPnr_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_KundFel_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_KundFel_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_KundFel_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_KundFel_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_Kund_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_Kund_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_Kund_FindByInfilnamn_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_Kund_FindByInfilnamn_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_Kund_FindByKostnStalle_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_Kund_FindByKostnStalle_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_Kund_FindByLandstingsId_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_Kund_FindByLandstingsId_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_Kund_FindByPatPnr_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_Kund_FindByPatPnr_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_Kund_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_Kund_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[In_Kund_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[In_Kund_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[KontrollDelVardAvg_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[KontrollDelVardAvg_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RedVarde_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[RedVarde_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sjukresor_Angra_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sjukresor_Angra_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sjukresor_Bearbeta_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sjukresor_Bearbeta_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sjukresor_Bekrafta_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sjukresor_Bekrafta_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sjukresor_Export_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sjukresor_Export_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sjukresor_Import_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sjukresor_Import_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SkapaPrositFilhuv_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SkapaPrositFilhuv_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UT_SjukresorFaktpost_Ins_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UT_SjukresorFaktpost_Ins_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UT_SjukresorFilhuvud_Ins_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UT_SjukresorFilhuvud_Ins_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UT_SjukresorLevpost_Ins_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UT_SjukresorLevpost_Ins_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UT_SjukresorTextpost_Ins_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UT_SjukresorTextpost_Ins_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UT_Sjukresor_DelAll_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UT_Sjukresor_DelAll_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktHuv_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktHuv_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktHuv_FindByKundId_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktHuv_FindByKundId_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktHuv_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktHuv_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktHuv_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktHuv_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadBel_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadBel_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadBel_FindByFaktHuvId_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadBel_FindByFaktHuvId_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadBel_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadBel_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadBel_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadBel_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadText_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadText_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadText_FindByFaktHuvId_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadText_FindByFaktHuvId_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadText_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadText_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_FaktRadText_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_FaktRadText_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_Kund_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_Kund_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_Kund_FindByKundId_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_Kund_FindByKundId_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_Kund_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_Kund_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_Kund_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_Kund_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_Kund_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_Kund_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_PrositFilHuv_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_PrositFilHuv_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_PrositFilHuv_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_PrositFilHuv_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ut_PrositFilHuv_ListAll_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ut_PrositFilHuv_ListAll_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VA_Sjukresor_InsById_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[VA_Sjukresor_InsById_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VA_Sjukresor_UpdById_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[VA_Sjukresor_UpdById_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_DeleteToFildatum_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_DeleteToFildatum_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_Delete_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_Delete_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_FindByKostnStalle_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_FindByKostnStalle_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_FindByLandstingsId_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_FindByLandstingsId_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_FindByPatPnr_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_FindByPatPnr_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_Insert_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_Insert_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_ListFildatumDistinct_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_ListFildatumDistinct_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Va_Kund_Update_Sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Va_Kund_Update_Sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VanteTillUtFELHANTERING_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[VanteTillUtFELHANTERING_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VanteTillUtLandstingKredit_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[VanteTillUtLandstingKredit_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VanteTillUtLandsting_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[VanteTillUtLandsting_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VanteTillUtPrivat_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[VanteTillUtPrivat_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VanteTillUt_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[VanteTillUt_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ge_KodForFortsattPeriod_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ge_KodForFortsattPeriod_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ge_TextPrisOchBel_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ge_TextPrisOchBel_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ge_listaAllaPosterIPeriod_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ge_listaAllaPosterIPeriod_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ge_listaPosterIPeriod_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ge_listaPosterIPeriod_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ge_listaVAPosterIPeriod_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ge_listaVAPosterIPeriod_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ge_rabattSkala_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ge_rabattSkala_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getBehandlKod_Text_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getBehandlKod_Text_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getBehandling_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getBehandling_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getBenamning_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getBenamning_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getKonteringUlan_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getKonteringUlan_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getKonteringsstrang_SP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getKonteringsstrang_SP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getPris]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getPris]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[litenProc_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[litenProc_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ut_dv_70dagarsregel_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ut_dv_70dagarsregel_sp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[va_dv_privatKorr_sp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[va_dv_privatKorr_sp]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





/****** Object:  Stored Procedure dbo.proc_DatumTillStrDatum    Script Date: 1998-10-14 11:32:48 ******/
/****** Object:  Stored Procedure dbo.proc_DatumTillStrDatum    Script Date: 1998-05-27 00:18:14 ******/
CREATE PROCEDURE DatumTillStrDatum_SP
/****************************************************************************************/
/* Namn: proc_DatumTillStrDatum                                                         */
/*                                                                                      */
/* Inparam: @Datum datetime			                                        */
/*	    @Style integer vilket format datumet ska returneras pÜ			*/
/* Utparam: @StrDatum varchar(30) pÜ ett format enligt style				*/
/*                                                                                      */
/* Beskrivning: Konverterar ett datum till en datum-strÑng, enligt @style		*/
/*	        Style 1 = èèèè-MM-DD							*/
/*		Style 2 = èèèèMMDD							*/
/*                                                                                      */
/* Datum: 980210                                                                        */
/* Signatur: Ulla Nilsson, Oopera Konsult AB                                            */
/* ------------------------------------------------------------------------------------ */
/*                                FôRéNDRINGAR                                          */
/* Datum:      98-08-01                                                                 */
/* Signatur:   Christer Dahl - OOPERA                                                   */
/* Felrapport:                    							*/
/* ètgÑrdat till version:          				 			*/
/* FîrÑndrat:  Lagt till style 2 - èèèèMMDD                                             */
/****************************************************************************************/
	@Datum		datetime,
	@Style		integer,
	@StrDatum	varchar(30) OUTPUT
AS
	

	/* èèèè-MM-DD */
	IF @Style = 1
	BEGIN
		DECLARE @ar		char(4),
			@manad		char(2),
			@manad_int	integer,
			@manad_1tkn	char(1),
			@dag		char(2),
			@dag_int	integer,
			@dag_1tkn	char(1)
		DECLARE @bindestreck 	char(1),
			@nolla		char(1)
	END
	
	
	SELECT @bindestreck = '-'
	SELECT @nolla = '0'
	
	/* èr */
	SELECT @ar = CONVERT(char(4),DATEPART(yy, @Datum))

	/* MÜnad */
	SELECT @manad_int = DATEPART(mm, @Datum)
	IF @manad_int < 10
	BEGIN
		SELECT @manad_1tkn = CONVERT(char(1),@manad_int)
		SELECT @manad = @nolla + @manad_1tkn
	END
	ELSE
		SELECT @manad = CONVERT(char(2), @manad_int)

	/* Dag */
	SELECT @dag_int = DATEPART(dd, @Datum)
	IF @dag_int < 10
	BEGIN
		SELECT @dag_1tkn = CONVERT(char(1),@dag_int)
		SELECT @dag = @nolla + @dag_1tkn
	END
	ELSE
		SELECT @dag = CONVERT(char(2), @dag_int)
	
	/* SÑtt ihop strÑngen och returnera */

	IF @Style = 1 /* èèèè-MM-DD */
	BEGIN
		SELECT @StrDatum = @ar + @bindestreck + @manad + @bindestreck + @dag	
	END

	IF @Style = 2 /* èèèèMMDD */
	BEGIN
		SELECT @StrDatum = @ar + @manad + @dag	
	END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [GE_BehandlKod_Insert_Sp]
	(@Behandlkod	[char](1),
	 @Txt	 	[varchar](50),
	 @FromDat 	[datetime])

AS INSERT INTO [Ge_BehandlKod_Text_TB] 
	 	(Behandlkod,
	 	 Txt,
	 	 FromDat) 
VALUES 
		(@Behandlkod,
		 @Txt,
		 @FromDat)








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE GE_Pris_FindNamdVardtypKST_SP
/**********************************************************************************************/
/* H‰mtar pris frÂn pristabellen                                                              */
/**********************************************************************************************/
	@Namd CHAR(02),	/* N‰mnd fˆr vilken priss‰ttningen ska ske */
	@Vardtyp CHAR(02),	/* Den vÂrdtyp, SV, KV eller OV, som ska priss‰ttas */
	@VaniaKST CHAR(04)	/* Kostnadsst‰llet ur vaniafilen = priss‰ttningsnyckel */
AS

/* Konvertera vÂrdtypen */
	IF @Vardtyp = "KV"
		SET @Vardtyp = "SV"

	IF @Vardtyp = "SV"
	BEGIN
		/* Provl‰s om det finns nÂgot pris fˆr denna kombination */
		SELECT pris
		FROM GE_Pris_TB
		WHERE Namd = @Namd
		  AND Vardtyp = @Vardtyp
		  AND VaniaKST = @VaniaKST
	END
	ELSE
	BEGIN
		/* En fuling fˆr att lˆsa problemet med OV */
		SELECT 1
	END













GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE GE_Sjukresor_getKonteringsstrang_SP
/****************************************************************************************/
/* H‰mtar delarna till en konteringsstr‰ng och bygger upp densamma			*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
 	@KostnStalle	  CHAR(11),	  /* Kostnadsst‰lle */
 	@Fardsatt   	  CHAR(5), 	  /* buss,bil,tÂg,taxi,flygU,flyg÷ */
	@Konteringsstrang CHAR(60) OUTPUT /* Den sammanslagna konteringsstr‰ngen */
AS
	DECLARE @Konto		  CHAR(04)	/* Konto */
	DECLARE @PrositKst	  CHAR(04)	/* Kostnadsst‰lle */
	DECLARE @Andamal	  CHAR(04)	/* ƒndamÂl */
	DECLARE @Objekt		  CHAR(04)	/* Objekt - Tills vidare alltid blankt */
	DECLARE @Projekt	  CHAR(04)	/* Projekt - Tills vidare alltid blankt */
	DECLARE @Artikel	  CHAR(04)	/* Artikel - Tills vidare alltid blankt */
	DECLARE @Aktivitet	  CHAR(04)	/* Aktivitet - Tills vidare alltid blankt */
	DECLARE @Avtal		  CHAR(04)	/* Avtal - Tills vidare alltid blankt */
	DECLARE @Cupp		  CHAR(04)	/* Cupp - Vad det nu ‰r ? -Men blankt tills vidare */
	

	/* Kontrollera F‰rds‰ttet */
	IF @Fardsatt = "flygU" or @Fardsatt = "flyg÷"
	SELECT @Fardsatt = "flyg"

	/* H‰mta v‰rden */
	SELECT  @Konto = PrositKto,
 		@PrositKst = PrositKst,
		@Andamal = Andamal,
		@Objekt = SPACE(04),
	 	@Projekt = SPACE(04),
		@Artikel = SPACE(04),
		@Aktivitet = SPACE(04),
		@Avtal = SPACE(04),
		@Cupp = SPACE(04)
	FROM GE_SjukreseKonto_TB
	WHERE RoyalKST = @KostnStalle
  	  AND Restyp = @Fardsatt

	/* S‰tt ihop konteringsstr‰ngen */
	SELECT @Konteringsstrang =  ISNULL(@Konto, SPACE(04)) + ISNULL(@PrositKst, SPACE(04)) + ISNULL(@Andamal, SPACE(04)) + ISNULL(@Objekt, SPACE(04)) + ISNULL(@Projekt, SPACE(04)) + ISNULL(@Artikel, SPACE(04)) + ISNULL(@Aktivitet, SPACE(04)) + ISNULL(@Avtal, SPACE(04)) + ISNULL(@Cupp, SPACE(04))
RETURN 0






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE GE_getPrositKundnr
/****************************************************************************************/
/* H‰mtar ett gammalt kundnr, eller skapar ett nytt 				 	*/
/*                                                                                      */
/* Ulla Nilsson, OOPERA Konsult AB                                                 	*/
/* 2000-03-23                                                                        	*/
/*											*/
/* 2000-03-23 Ulla Nilsson, OOPERA Konsult AB: Detta ‰r en variant pÂ getPrositKundnr.  */ 
/*	      Anv‰nder tabellen GE_KundNrNy_TB ist‰llet fˆr GE_KundNr_TB.		*/
/*	      S‰tter ett S (som i Saft) fˆre kundnr fˆr att de inte ska blandas ihop med*/
/*            de gamla kundnr.								*/
/*	      PatientPersonnr ‰r 12 tkn lÂngt (SS≈≈MMDDNNNN)				*/
/****************************************************************************************/
	@PatPnr CHAR(12), 
	@VaniaKundnr CHAR(12),
	@PrositKundnr CHAR(8) OUTPUT, 
	@PrositAndringstyp CHAR(01) OUTPUT
AS
	IF @PatPnr = "" OR @PatPnr IS NULL
	BEGIN
		/* H‰mta senast anv‰nda identitet - addera 1 fˆr att fÂ ett nytt kundnr */
		SELECT @PrositKundnr = MAX(PrositKundnr) + 1 FROM Ge_KundnrNy_TB
	
		INSERT INTO Ge_KundnrNy_TB (KundPnr, VaniaKundnr, PrositKundnr, RegDat)
		VALUES ("xxxxxxxxxx", @VaniaKundnr, @PrositKundnr, GETDATE())

		SELECT @PrositAndringstyp = "I"
				
	END

	ELSE
	BEGIN
		SELECT @PrositKundnr = PrositKundnr
		FROM Ge_KundnrNy_TB
		WHERE KundPnr = @PatPnr

		IF @@rowcount = 0
		BEGIN
			/* H‰mta senast anv‰nda identitet - addera 1 fˆr att fÂ ett nytt kundnr */
			SELECT @PrositKundnr = MAX(PrositKundnr) + 1 FROM Ge_KundnrNy_TB
	
			INSERT INTO Ge_KundnrNy_TB (KundPnr, VaniaKundnr, PrositKundnr, RegDat)
			VALUES (@PatPnr, @VaniaKundnr, @PrositKundnr, GETDATE())

			SELECT @PrositAndringstyp = "I"
		END
		ELSE
		BEGIN
			/* Kundnumret har vi redan fÂtt in i detta fall */
			SELECT @PrositAndringstyp = "U"
		END

	END

	SELECT @PrositKundnr = "S" + CONVERT(char(8), @PrositKundnr)

RETURN 0









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE GE_getPrositLandstingsnr_SP
/****************************************************************************************/
/* H‰mtar ett Landstingsnummer fˆr Prosit, samt anger om numret finns eller ej		*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
	@VaniaLandstingsnr CHAR(10), 
	@PrositLandstingsnr CHAR(08) OUTPUT, 
	@PrositAndringstyp CHAR(01) OUTPUT
AS

	/* H‰mta posten */
	SELECT @PrositLandstingsnr = PrositLandstingsnr
	FROM Ge_Landsting_TB
	WHERE VaniaLandstingsnr = @VaniaLandstingsnr

	/* S‰tt ‰ndringstypen */
	IF @PrositLandstingsnr IS  NULL
		SELECT @PrositAndringstyp = "I"
	ELSE 
		SELECT @PrositAndringstyp = "U"

RETURN 0









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_BehandlKod_FindByBehandlKod_Sp]
		@BehandlKod		[char](1)
AS 
SELECT 	BehandlKod,
		Txt,
		Fromdat
FROM		Ge_BehandlKod_Text_TB
WHERE 	[BehandlKod] = @BehandlKod







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_BehandlKod_FindByKey_Sp]
		@Ge_BehandlKod_TextId		[int]
AS 
SELECT		Ge_BehandlKod_TextId,
 		BehandlKod,
		Txt,
		Fromdat
FROM		Ge_BehandlKod_Text_TB
WHERE 	[Ge_BehandlKod_TextId] = @Ge_BehandlKod_TextId





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_BehandlKod_ListAll_Sp] 
AS
SELECT 	GE_BehandlKod_TextId,
		BehandlKod,
		Txt,
		FromDat
FROM 		Ge_BehandlKod_Text_TB



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_BehandlKod_Update_Sp]
	(@Ge_BehandlKod_TextId	[integer],
	 @Behandlkod	[char](1),
	 @Txt	 	[varchar](50),
	 @FromDat 	[datetime])

AS UPDATE [Ge_BehandlKod_Text_TB] 

SET  	[Behandlkod]	 = @Behandlkod,
	[Txt]		 = @Txt ,
	[FromDat]	 = @FromDat
WHERE 
	([Ge_BehandlKod_TextId]	 = @Ge_BehandlKod_TextId)







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Behandlkod_Delete_Sp]
	(@Ge_BehandlKod_TextId 	[int])

AS DELETE [Ge_BehandlKod_Text_TB] 

WHERE 
	( [Ge_BehandlKod_TextId]	 = @Ge_BehandlKod_TextId)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_PatientAvg_Delete_Sp
@Ge_Dv_PatientAvgId int
AS
  DELETE FROM ge_dv_patientAvg_tb
  WHERE ge_dv_patientAvgId = @Ge_Dv_PatientAvgId

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_Patientavg_Insert_Sp
  @KatKodText 	varchar(30),
  @AvgiftKr	int,
  @FromDagNr	int,  @GiltigFrom	datetime
AS 
  DECLARE @ge_dv_patientkategoriId int

  SELECT @ge_dv_patientkategoriId = ge_dv_patientkategoriId
  FROM ge_dv_patientkategori_tb
  WHERE katKodText = @KatKodText

  INSERT INTO ge_dv_patientAvg_tb 
	(ge_dv_patientkategoriId,
	 avgiftKr,
	 fromDagNr,	 giltigFrom)
  VALUES 
	(@ge_dv_patientkategoriId,
	 @AvgiftKr,
	 @FromDagNr,	 @GiltigFrom)


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_Patientavg_ListAll_Sp AS
  SELECT pa.ge_dv_patientAvgId, pk.katKodText, pa.avgiftKr, pa.fromDagNr, pa.giltigFrom 
  FROM ge_dv_patientkategori_tb pk, ge_dv_patientAvg_tb pa
  WHERE pk.ge_dv_patientkategoriId = pa.ge_dv_patientkategoriId



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_Patientavg_Update_Sp
  @Ge_Dv_PatientAvgId int,
  @KatKodText 	varchar(30),
  @AvgiftKr	int,
  @FromDagNr	int,
  @GiltigFrom	datetime
AS 
  DECLARE @ge_dv_patientkategoriId int

  SELECT @ge_dv_patientkategoriId = ge_dv_patientkategoriId
  FROM ge_dv_patientkategori_tb
  WHERE katKodText = @KatKodText

  UPDATE ge_dv_patientAvg_tb 
  SET  ge_dv_patientkategoriId = @ge_dv_patientkategoriId,
	 avgiftKr = @AvgiftKr,
	 fromDagNr = @FromDagNr,
	 giltigFrom = @GiltigFrom
  WHERE  ge_dv_patientAvgID = @Ge_Dv_PatientAvgId

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_Patientkategori_Delete_Sp
@Ge_Dv_PatientKatId int
AS
  DELETE FROM ge_dv_patientkategori_tb
  WHERE ge_dv_patientkategoriId = @Ge_Dv_PatientKatId


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_Patientkategori_Insert_Sp
  @PatientKatKod 	char(4),
  @KatKodText 		varchar(30),
  @GiltigFrom		datetime
AS 

  INSERT INTO ge_dv_patientkategori_tb 
	(patientKatKod,
	 katKodText,	 giltigFrom)
  VALUES 
	(@PatientKatKod,
	 @KatKodText,
	 @GiltigFrom)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_Patientkategori_ListAll_Sp AS
  SELECT * FROM ge_dv_patientkategori_tb
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_Patientkategori_Update_Sp
  @Ge_Dv_PatientkategoriId int,
  @KatKod 	char(4),
  @KatKodText 	varchar(30),
  @GiltigFrom	datetime
AS 

  UPDATE ge_dv_patientkategori_tb 
  SET	patientKatKod = @KatKod,
	katKodText = @KatKodText,
	 giltigFrom = @GiltigFrom
  WHERE  ge_dv_patientkategoriID = @Ge_Dv_PatientkategoriId


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE Ge_Dv_UtskrKod_Delete_Sp
@Ge_Dv_UtskrKodId int
AS
  DELETE FROM ge_dv_utskrKod_tb
  WHERE ge_dv_utskrKodId = @Ge_Dv_UtskrKodId






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_UtskrKod_Insert_Sp
  @UtskrKod 	char(4),
  @UtskrKodText	varchar(50),  @GiltigFrom	datetime
AS 

  INSERT INTO ge_dv_utskrKod_tb 
	(utskrKod,
	 utskrKodText,	 giltigFrom)
  VALUES 
	(@UtskrKod,
	 @UtskrKodText,	 @GiltigFrom)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_UtskrKod_ListAll_Sp AS
  SELECT * FROM ge_dv_utskrKod_tb

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Ge_Dv_UtskrKod_Update_Sp
  @Ge_dv_UtskrKodId int,
  @UtskrKod 	char(4),
  @UtskrKodText	varchar(50),  @GiltigFrom	datetime
AS 

  UPDATE ge_dv_utskrKod_tb 
  SET    utskrKod = @UtskrKod,
	 utskrKodText = @UtskrKodText,	 giltigFrom = @GiltigFrom
  WHERE  ge_dv_UtskrKodId = @Ge_dv_UtskrKodId


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilFel_Delete_Sp]
	(@Ge_FilFelId 	[int])

AS DELETE [Ge_FilFel_TB] 

WHERE 
	( [Ge_FilFelId]	 = @Ge_FilFelId)







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilFel_FindByDatum_Sp]
		@Fildatum	datetime

AS Select
		Ge_FilFelId,
	 	Filnamn,
		Fildatum,
		Kommentar

>From Ge_FilFel_TB

WHERE 
	 [Fildatum]	 = @Fildatum




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilFel_FindByFilnamn_Sp]
		@Filnamn	[char](20)

AS Select 	Filnamn,
		Fildatum,
		Kommentar

>From Ge_FilFel_TB

WHERE 
	 [Filnamn]	 = @Filnamn






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilFel_Insert_Sp]
	( @Filnamn 	[char](20),
	 @Fildatum 	[datetime],
	 @Kommentar 	[Varchar](255))

AS INSERT INTO [Ge_FilFel_TB] 
	 ( [Filnamn],
	 [Fildatum],
	 [Kommentar]) 
 
VALUES 
	(@Filnamn,
	 @Fildatum,
	 @Kommentar)








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilFel_Update_Sp]
	(@Ge_FilFelId	[integer],
	 @Filnamn	[char](20),
	 @Fildatum 	[datetime],
	 @Kommentar 	[varchar](255))

AS UPDATE [Ge_FilFel_TB] 

SET  	[Filnamn]	 = @Filnamn,
	[Fildatum]	 = @Fildatum, 
	[Kommentar]	 = @Kommentar
WHERE 
	([GE_FilFelId]	 = @Ge_FilFelId )






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [Ge_FilStatus_ConfByDate_Sp]
	(@ConfDatum	[Datetime],
	@StatusDatum	[Datetime])
As

BEGIN TRANSACTION

INSERT INTO Va_Kund_TB 
			(AvstGrupp,Fildatum, AvsandarId, Vardtyp, Rakningsnr, Kundnr, 
			PatNamn, PatGatuadress, PatPostnr, PatPostadress,InskrivnDat, Namd, KostnStalle,
			BehandlKod, AntDagar, Avgift, Reseersattning, AnnanBetPnr, AnnanBetNamn, AnnanBetGatuadr,
			AnnanBetPostNr, AnnanBetPostAdr, PatPnr, UtskrivnDat, AmbulansAvgift, OppenvardsAvgift,
			Avdelningsnamn, Avdelningstelefon, Landstingskundnr, utskrKod, PatientKatKod, InFilnamn, HistFilnamn)

SELECT 	Avstgrupp, Fildatum, AvsandarId, Vardtyp, Rakningsnr, Kundnr, 
	PatNamn, PatGatuadress, PatPostnr, PatPostadress, InskrivnDat, Namd, KostnStalle,
	BehandlKod, AntDagar, Avgift, Reseersattning, AnnanBetPnr, AnnanBetNamn, AnnanBetGatuadr,
	AnnanBetPostNr, AnnanBetPostAdr, PatPnr, UtskrivnDat, AmbulansAvgift, OppenvardsAvgift,
	Avdelningsnamn, Avdelningstelefon, Landstingskundnr, utskrKod, PatientKatKod, Infilnamn, HistFilnamn
FROM In_Kund_TB
WHERE Infilnamn In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum)
AND Infilnamn Not In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "V" and Fildatum = @ConfDatum)

DELETE In_Kund_TB
WHERE Infilnamn In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum)
AND Infilnamn Not In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "V" and Fildatum = @ConfDatum)


INSERT INTO Ge_FilStatus_TB (Filnamn, Fildatum, Status, Statusdatum)
SELECT Filnamn, Fildatum, "V", @StatusDatum
FROM Ge_FilStatus_TB WHERE Status = "I" and Fildatum = @ConfDatum
AND Filnamn Not In
(SELECT Filnamn FROM Ge_FilStatus_Tb 
WHERE (Status = "V" and Fildatum = @ConfDatum)
OR (Status = "B" and Fildatum = @ConfDatum))


IF @@Error = 0 
	Commit transaction
Else
	RollBack Transaction





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [Ge_FilStatus_ConfByFileDate_Sp]
	(@ConfDatum	[Datetime],
	@StatusDatum	[Datetime],
	@Filnamn	[Char](20))
As

DECLARE @MaxId Integer

BEGIN TRANSACTION

INSERT INTO Va_Kund_TB 
			(AvstGrupp,Fildatum, AvsandarId, Vardtyp, Rakningsnr, Kundnr, 
			PatNamn, PatGatuadress, PatPostnr, PatPostadress,InskrivnDat, Namd, KostnStalle,
			BehandlKod, AntDagar, Avgift, Reseersattning, AnnanBetPnr, AnnanBetNamn, AnnanBetGatuadr,
			AnnanBetPostNr, AnnanBetPostAdr, PatPnr, UtskrivnDat, AmbulansAvgift, OppenvardsAvgift,
			Avdelningsnamn, Avdelningstelefon, Landstingskundnr, utskrKod, patientKatkod, InFilnamn, HistFilnamn)

SELECT 	Avstgrupp, Fildatum, AvsandarId, Vardtyp, Rakningsnr, Kundnr, 
	PatNamn, PatGatuadress, PatPostnr, PatPostadress, InskrivnDat, Namd, KostnStalle,
	BehandlKod, AntDagar, Avgift, Reseersattning, AnnanBetPnr, AnnanBetNamn, AnnanBetGatuadr,
	AnnanBetPostNr, AnnanBetPostAdr, PatPnr, UtskrivnDat, AmbulansAvgift, OppenvardsAvgift,
	Avdelningsnamn, Avdelningstelefon, Landstingskundnr, utskrKod, patientKatkod, Infilnamn, HistFilnamn
FROM In_Kund_TB
WHERE Infilnamn In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status ="I" and Fildatum = @ConfDatum and Filnamn = @Filnamn)

DELETE In_Kund_TB
WHERE Infilnamn In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status ="I" and Fildatum = @ConfDatum and Filnamn = @Filnamn)

SELECT @MaxId=Max(GE_FilstatusId) FROM Ge_Filstatus_TB
	WHERE Status = "I" and Fildatum = @ConfDatum  and Filnamn = @Filnamn	

INSERT INTO Ge_FilStatus_TB (Filnamn, Fildatum, Status, Statusdatum)
SELECT Filnamn, Fildatum, "V", @StatusDatum
	FROM Ge_FilStatus_TB 
	WHERE Status = "I" and Fildatum = @ConfDatum  and Filnamn = @Filnamn and Ge_FilstatusId = @MaxId

IF @@Error = 0 
	Commit transaction
Else
	RollBack Transaction















GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilStatus_Delete_Sp]
	(@Ge_StatusId 	[int])

AS DELETE  [Ge_FilStatus_TB] 

WHERE 
	( [Ge_FilStatusId]	 = @Ge_StatusId)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilStatus_FindByFilDatum_Sp]
	@FilDatum	[Datetime]

AS Select 	Ge_FilStatusId,
		Filnamn,
		Status,
		Statusdatum

>From 		Ge_FilStatus_TB
WHERE 	[Fildatum]	 = @Fildatum
Order BY	Filnamn, Statusdatum, Ge_FilStatusId









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilStatus_FindByFilnamnFildatum_Sp]
	(@Filnamn 	[char](20),
	@FilDatum	[Datetime])

AS Select 	Status,
		Statusdatum

>From Ge_FilStatus_TB

WHERE 
	( [Filnamn]	 = @Filnamn AND
	 [Fildatum]	 = @Fildatum)
ORDER BY	Ge_FilStatusId DESC








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilStatus_Insert_Sp]
	( @Filnamn 	[char](20),
	 @Fildatum 	[datetime],
	 @Status 	[char](1),
	 @Statusdatum 	[datetime])

AS INSERT INTO [Ge_FilStatus_TB] 
	 ( [Filnamn],
	 [Fildatum],
	 [Status],
	 [Statusdatum]) 
 
VALUES 
	( @Filnamn,
	 @Fildatum,
	 @Status,
	 @Statusdatum)







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE Ge_FilStatus_ListFildatumDistinct_Sp
	 @Fildatum 	[datetime]
AS 

	SELECT DISTINCT	Fildatum
	FROM		Ge_Filstatus_TB 
	Where		Fildatum Between DATEADD(mm, -11, @Fildatum)AND @Fildatum
	ORDER BY 	Fildatum ASC




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ge_FilStatus_RensaToDatum_Sp
	@Fildatum Datetime

AS 	DELETE 	GE_Filstatus_TB
	WHERE	Fildatum <= @Fildatum
	AND	Filnamn Not In
		(SELECT InFilnamn 
		 FROM	In_KundFel_TB
		 WHERE	Fildatum = GE_Filstatus_TB.Fildatum)
	 





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE [Ge_FilStatus_ReverseDayByDate_Sp]
	(@ConfDatum	[Datetime],
	@StatusDatum	[Datetime])

As

BEGIN TRANSACTION

DELETE FROM In_Kund_TB
WHERE Infilnamn In 
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum)
AND Infilnamn Not In 
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum)


DELETE FROM In_KundFel_TB
WHERE Infilnamn In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum)
AND Infilnamn Not In 
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum)

INSERT INTO Ge_FilStatus_TB (Filnamn, Fildatum, Status, Statusdatum)
SELECT Filnamn, Fildatum, "B", @Statusdatum
FROM Ge_FilStatus_TB WHERE Status = "I" and Fildatum = @ConfDatum
AND Filnamn Not In 
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum)


IF @@Error = 0 
	Commit transaction
Else
	RollBack Transaction










GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilStatus_ReverseFileByFileDate_Sp]
	(@ConfDatum	[Datetime],
	@StatusDatum	[Datetime],
	@Filnamn	[Char](20))
As

DECLARE	@MaxId	Integer

BEGIN TRANSACTION

DELETE FROM In_Kund_TB
WHERE Infilnamn In 
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum and Filnamn = @Filnamn)

DELETE FROM In_KundFel_TB
WHERE Infilnamn In
(SELECT Filnamn FROM Ge_FilStatus_Tb WHERE Status = "I" and Fildatum = @ConfDatum and Filnamn = @Filnamn)

Select @MaxId = Max(Ge_FilStatusId) from  Ge_FilStatus_TB WHERE Status = "I" and Fildatum = @ConfDatum and Filnamn = @Filnamn

INSERT INTO Ge_FilStatus_TB (Filnamn, Fildatum, Status, Statusdatum)
SELECT Filnamn, Fildatum, "B", @Statusdatum
FROM Ge_FilStatus_TB WHERE Status = "I" and Fildatum = @ConfDatum and Filnamn = @Filnamn and Ge_FilStatusId = @MaxId

IF @@Error = 0 
	Commit transaction
Else
	RollBack Transaction




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_FilStatus_Update_Sp]
	(@Filnamn 	[char](20),
	 @Fildatum 	[datetime],
	 @Status 	[char](1),
	 @Statusdatum	[datetime])

AS UPDATE [Ge_FilStatus_TB] 

SET  [Status]	 = @Status,
	 [Statusdatum]	 = @Statusdatum 

WHERE 
	( [Filnamn]	 = @Filnamn AND
	 [Fildatum]	 = @Fildatum)








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Filnamn_Delete_Sp]
	(@Klinik 	[char](20),
	 @Avstgrp	[char](5),
	 @Vardtyp	[char](2))

AS DELETE [Ge_Filnamn_TB] 

WHERE 
	(Klinik = @Klinik
AND	 Avstgrp = @Avstgrp
AND	 Vardtyp = @Vardtyp)










GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Filnamn_FindByFilnamn_Sp]
		(@Filnamn 	[char](10))

AS
Select	Klinik,
	Avstgrp,
	Vardtyp,
	Kommentar
From	Ge_Filnamn_TB
WHERE 	@Filnamn = Klinik + IsNull(Avstgrp,'') + Vardtyp









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Filnamn_Insert_Sp]
	( @Klinik 	[char](20),
	 @AvstGrp 	[char](5),
	 @VardTyp	[char](2),
	 @Kommentar 	[varchar](255))

AS INSERT INTO [Ge_Filnamn_TB] 
	( [Klinik],
	 [Avstgrp],
	 [VardTyp],
	 [Kommentar]) 
 
VALUES 
	( RTRIM(@Klinik),
	  RTRIM(@AvstGrp),
	  RTRIM(@VardTyp),
	  RTRIM(@Kommentar))









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Filnamn_ListAll_Sp]
AS Select 	
		GE_FilnamnId,
		Klinik,
		Avstgrp,
		Vardtyp,
		Kommentar
>From 		Ge_Filnamn_TB

ORDER BY Klinik







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Filnamn_Update_Sp]
	(@FilnamnId	Int,
	@Klinik 	[Varchar](20),
	 @Avstgrp 	[Varchar](5),
	 @Vardtyp 	[Varchar](2),
	 @Kommentar	[Varchar](255))

AS UPDATE [Ge_Filnamn_TB] 

SET  	[Klinik]	 = @Klinik,
	[Avstgrp]	 = @Avstgrp,
	[Vardtyp]	 = @Vardtyp,
	[Kommentar]	 = @Kommentar

WHERE 
	@FilnamnId = Ge_FilnamnId
--       ([Klinik]	 = @Klinik AND
--	[Avstgrp]	 = @Avstgrp AND
--	[Vardtyp]	 = @Vardtyp)









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Konto_Delete_Sp]
	(@Ge_KontoId 	[int])

AS DELETE  [Ge_Konto_TB] 

WHERE 
	( [Ge_KontoId]	 = @Ge_KontoId)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Konto_FindByBenamningNamd_Sp]
	@Benamning	[varchar](35),
	@Namd		[char](2)

AS 
SELECT 	Benamning,
	Namd,
	Andamal,
	VaniaKST,
	PrositKonto,
	PrositKST
FROM	Ge_Konto_TB
WHERE 
	Benamning	= @Benamning and
	Namd	 	= @Namd








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Konto_FindByVaniaKSTNamd_Sp]
	@VaniaKST	[char](3),
	@Namd		[char](2)

AS 
SELECT 	Benamning,
	Namd,
	Andamal,
	VaniaKST,
	PrositKonto,
	PrositKST
FROM	Ge_Konto_TB
WHERE 
	VaniaKST	= @VaniaKST and
	Namd	 	= @Namd






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Konto_FindByVaniaKST_Sp]
	@VaniaKST	[char](3)

AS Select 	Benamning,
		Namd,
		Andamal,
		VaniaKST,
		PrositKonto,
		PrositKST
>From Ge_Konto_TB

WHERE 
	 [VaniaKST]	 = @VaniaKST







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE [Ge_Konto_Insert_Sp]
	( @Benamning 	[varchar](35),
	 @Namd 	[char](2),	@Vardtyp	[char](2),
	 @Andamal 	[char](3),
	 @VaniaKST 	[char](3),
	@BehandlKod	[char](1),
	 @PrositKonto 	[char](4),
	 @PrositKST	[char](4),
	@Objekt	[char](4),
	@Projekt	[char](4),
	@Aktivitet	[char](4),
	@ULanPrositKto 	[char](4),
	@ULanPrositKst 	[char](4),
	@ULanAndamal		[char](3),
	@ULanObjekt	 	[char](4),
	@ULanProjekt 	[char](4),
	@ULanAktivitet 	[char](4))

AS INSERT INTO [Ge_Konto_TB] 
	(Benamning,
	 Namd,	Vardtyp,
	 Andamal,
	 VaniaKST,
	BehandlKod,
	 PrositKonto,
	 PrositKST,
	Objekt,
	Projekt,
	Aktivitet	,
	ULanPrositKto,
	ULanPrositKst,
	ULanAndamal,
	ULanObjekt,
	ULanProjekt,
	ULanAktivitet)
 
VALUES 
	( @Benamning ,
	 @Namd ,	@Vardtyp,
	 @Andamal,
	 @VaniaKST,
	@BehandlKod,
	 @PrositKonto,
	 @PrositKST,
	@Objekt,
	@Projekt,
	@Aktivitet,
	@ULanPrositKto,
	@ULanPrositKst,
	@ULanAndamal,
	@ULanObjekt,
	@ULanProjekt,
	@ULanAktivitet)








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE [Ge_Konto_ListAll_Sp]

AS Select 	GE_KontoId,
		Benamning,
		Namd,
		Vardtyp,
		Andamal,
		VaniaKST,
		Behandlkod,
		PrositKonto,
		PrositKST,
		Objekt,
		Projekt,
		Aktivitet,
		ULanPrositKto,
		ULanPrositKst,
		ULanAndamal,
		ULanObjekt,
		ULanProjekt,
		ULanAktivitet
>From 		Ge_Konto_TB









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE [Ge_Konto_Update_Sp]
	(@GE_KontoId	[int],
	 @Benamning 	[varchar](35),
	 @Namd 	[char](2),	@Vardtyp	[char](2),
	 @Andamal 	[char](3),
	 @VaniaKST 	[char](3),
	@BehandlKod	[char](1),
	 @PrositKonto 	[char](4),
	 @PrositKST	[char](4),
	@Objekt	[char](4),
	@Projekt	[char](4),
	@Aktivitet	[char](4),
	@ULanPrositKto 	[char](4),
	@ULanPrositKst 	[char](4),
	@ULanAndamal		[char](3),
	@ULanObjekt	 	[char](4),
	@ULanProjekt 	[char](4),
	@ULanAktivitet 	[char](4))

AS 

UPDATE [Ge_Konto_TB] 

SET  	Benamning= @Benamning ,
	 Namd=@Namd ,	Vardtyp=@Vardtyp,
	 Andamal=@Andamal,
	 VaniaKST=@VaniaKST,
	BehandlKod=@BehandlKod,
	PrositKonto= @PrositKonto,
	PrositKST= @PrositKST,
	Objekt=@Objekt,
	Projekt=@Projekt,
	Aktivitet=@Aktivitet,
	ULanPrositKto=@ULanPrositKto,
	ULanPrositKst=@ULanPrositKst,
	ULanAndamal=@ULanAndamal,
	ULanObjekt=@ULanObjekt,
	ULanProjekt=@ULanProjekt,
	ULanAktivitet=@ULanAktivitet

WHERE 
	( GE_KontoId	 = @GE_KontoId)











GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Kundnr_Delete_Sp]
	(@Ge_KundnrId_1 	[int])

AS DELETE  [Ge_Kundnr_TB]

WHERE 
	( [Ge_KundnrId]	 = @Ge_KundnrId_1)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ge_Kundnr_FindByKundPnr_Sp
	@KundPnr	[char]
 AS
	SELECT	KundPnr,
			VaniaKundnr,
			PrositKundnr,
			RegDat
	FROM		Ge_Kundnr_TB
	WHERE	KundPnr LIKE @KundPnr






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ge_Kundnr_FindByVaniaKundnr_Sp
	@VaniaKundnr	[char](10)
 AS
	SELECT	KundPnr,
			VaniaKundnr,
			PrositKundnr,
			RegDat
	FROM		Ge_Kundnr_TB
	WHERE	VaniaKundnr LIKE @VaniaKundnr








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Kundnr_Insert_Sp]
	( @KundPnr 	[char](10),
	 @VaniaKundnr 	[char](10),
	 @PrositKundnr 	[char](10),
	 @RegDat	[datetime])

AS INSERT INTO [Ge_Kundnr_TB] 
	 ( [KundPnr],
	 [VaniaKundnr],
	 [PrositKundnr],
	 [RegDat]) 
 
VALUES 
	( @KundPnr,
	 @VaniaKundnr,
	 @PrositKundnr,
	 @RegDat)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Kundnr_Update_Sp]
	(@Ge_KundnrId [Int],
	@KundPnr	[char](10),
	 @VaniaKundnr 	[char](10),
	 @PrositKundnr 	[char](10),
	 @RegDat 	[datetime])

AS UPDATE [Ge_Kundnr_TB] 

SET 	[KundPnr]	 = @KundPnr,
 	 [VaniaKundnr]	 = @VaniaKundnr,
	 [PrositKundnr]	 = @PrositKundnr,
	 [RegDat]	 = @RegDat 

WHERE 
	(Ge_KundnrId =  @Ge_KundnrId)







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE Ge_Landsting_Delete_Sp
	
	@Ge_Landsting_TBId 	integer
	
AS DELETE Ge_Landsting_TB

WHERE Ge_Landsting_TBId  =  @Ge_Landsting_TBId





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ge_Landsting_FindByLandstingKundnr_Sp
		@VaniaLandstingsnr	char(10)
 AS
	SELECT	VaniaLandstingsnr,
			PrositLandstingsnr,
			Landstingsnamn,
			Postadress,
			Postnummer,
			Ort,
			Motpart
	FROM		Ge_Landsting_TB
	WHERE	VaniaLandstingsnr = @VaniaLandstingsnr






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ge_Landsting_Insert_Sp
	@VaniaLandstingsnr	[char](10),
	@PrositLandstingsnr	[char](8),
	@Landstingsnamn	[varchar](35),
	@Postadress		[varchar](35),
	@Postnummer		[char](5),
	@Ort			[varchar](35),
	@Motpart		[char](4)

AS INSERT INTO [Ge_Landsting_TB] 

	([VaniaLandstingsnr],
	[PrositLandstingsnr],
	[Landstingsnamn],
	[Postadress],
	[Postnummer],
	[Ort],
	[Motpart])

VALUES
 	(@VaniaLandstingsnr,
	@PrositLandstingsnr,
	@Landstingsnamn,
	@Postadress,
	@Postnummer,
	@Ort,
	@Motpart)








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ge_Landsting_ListAll_Sp
	

AS SELECT
	GE_Landsting_TBId,
	VaniaLandstingsnr,
	PrositLandstingsnr,
	Landstingsnamn,
	Postadress,
	Postnummer,
	Ort,
	Motpart
FROM  Ge_Landsting_TB

ORDER BY Landstingsnamn
	


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





CREATE PROCEDURE Ge_Landsting_Update_Sp
	
	@Ge_Landsting_TBId 	integer,
	@VaniaLandstingsnr       char (10),
	@PrositLandstingsnr	char (8),
             @Landstingsnamn	varchar (35),
             @Postadress		varchar (35),
             @Postnummer		char(5),
	@Ort			varchar (35),
             @Motpart		char(4)

AS 

UPDATE  Ge_Landsting_TB
	SET
	VaniaLandstingsnr     = 	@VaniaLandstingsnr,
	PrositLandstingsnr    =    @PrositLandstingsnr,
             Landstingsnamn       =	@Landstingsnamn,
             Postadress	        =    @Postadress,	
             Postnummer              =    @Postnummer,		
	Ort                             =    @Ort,			
             Motpart                      =    @Motpart	
WHERE Ge_Landsting_TBId  =  @Ge_Landsting_TBId





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Pris_Delete_Sp]
	(@Ge_PrisId 	[int])

AS DELETE [Ge_Pris_TB] 

WHERE 
	( [Ge_PrisId]	 = @Ge_PrisId)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE Procedure [Ge_Pris_FindAvgTypVaniaKSTDat_Sp] 
	 @Avgiftstyp 	[char](2),
	 @VaniaKST 	[char](4),
	 @FromDat 	[datetime]
As
Select 	Namd,
	Vardtyp,
	Avgiftstyp,
	Benamning,
	VaniaKST,
	Pris,
	FromDat
>From 	Ge_Pris_TB 
Where 	Avgiftstyp =  @Avgiftstyp  and
	VaniaKST =  @VaniaKST  and
	FromDat <=   @FromDat
	and FromDat =
	(Select max(FromDat)
	from 	ge_pris_tb
	where  	Avgiftstyp =  @Avgiftstyp and
		VaniaKST = @VaniaKST and
		FromDat <=  @FromDat)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE Procedure [Ge_Pris_FindBenamningDat_Sp] 
	 @Benamning 	[varchar](35),
	 @FromDat 	[datetime]
As
Select 	Namd,
	Vardtyp,
	Avgiftstyp,
	Benamning,
	VaniaKST,
	Pris,
	FromDat
>From 	Ge_Pris_TB 
Where 	Benamning =  @Benamning  and
	FromDat <=   @FromDat
	and FromDat =
	(Select max(FromDat)
	from 	ge_pris_tb
	where  	Benamning =  @Benamning and
		FromDat <=  @FromDat)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE Procedure [Ge_Pris_FindLatestByAllValues_Sp] 
	 @Namd	[Char](2),
	 @Vardtyp 	[char](2),
	 @Avgiftstyp 	[char](2),
	 @VaniaKST 	[char](4),
	 @FromDat 	[datetime]
As

Select pris from ge_pris_tb 
where  	Namd = @Namd and
	Vardtyp = @Vardtyp and
	Avgiftstyp =  @Avgiftstyp  and
	VaniaKST =  @VaniaKST  and
	FromDat <=   @FromDat
	and FromDat =
	(Select max(FromDat)
	from 	ge_pris_tb
	where  	Namd = @Namd and
		Vardtyp = @Vardtyp and
		Avgiftstyp =  @Avgiftstyp and
		VaniaKST = @VaniaKST and
		FromDat <=  @FromDat)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE Procedure [Ge_Pris_FindVardtypVaniaKSTDat_Sp] 
	 @Vardtyp	[char](2),
	 @VaniaKST	[char](4),	
	 @FromDat 	[datetime]
As
Select 	Namd,
	Vardtyp,
	Avgiftstyp,
	Benamning,
	VaniaKST,
	Pris,
	FromDat
>From 	Ge_Pris_TB 
Where 	Vardtyp =  @Vardtyp  and
	VaniaKST = @VaniaKST and
	FromDat <=   @FromDat
	and FromDat =
	(Select max(FromDat)
	from 	ge_pris_tb
	where  	Vardtyp =  @Vardtyp  and
		VaniaKST = @VaniaKST and
		FromDat <=  @FromDat)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Pris_Insert_Sp]
	(@Namd	[char](2),
	 @Vardtyp 	[char](2),
	 @Avgiftstyp 	[char](2),
	 @Benamning	[varchar](35),
	 @VaniaKST 	[char](4),
	 @Pris 		[decimal],
	 @FromDat 	[datetime])

AS INSERT INTO [Ge_Pris_TB] 
	 ( [Namd],
	   [Vardtyp],
	   [Avgiftstyp],
	   [Benamning],
	   [VaniaKST],
	   [Pris],
	   [FromDat]) 
 
VALUES 
	(@Namd, 
	 @Vardtyp,
	 @Avgiftstyp,
	 @Benamning,
	 @VaniaKST,
	 @Pris,
	 @FromDat)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Pris_ListAll_Sp]

AS 

SELECT  	[GE_PrisId],
		[Namd],
		[Vardtyp],
		[Avgiftstyp],
		[Benamning],
		[VaniaKST],
		[Pris],
		[FromDat]
FROM 		[Ge_Pris_TB] 







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ge_Pris_Update_Sp]
	(@Ge_PrisId 	[int],
	 @Namd	[char](2),
	 @Vardtyp 	[char](2),
	 @Avgiftstyp 	[char](2),
	 @Benamning	[varchar](35),
	 @VaniaKST 	[char](4),
	 @Pris 		[decimal],
	 @FromDat 	[datetime])

AS UPDATE [Ge_Pris_TB] 

SET  	[Namd]	= @Namd,
	[Vardtyp]	= @Vardtyp,
	[Avgiftstyp]	= @Avgiftstyp,
	[Benamning]	= @Benamning,
	[VaniaKST]	= @VaniaKST,
	[Pris]	 	= @Pris,
	[FromDat]	= @FromDat 

WHERE 
	( [Ge_PrisId]	 = @Ge_PrisId)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE GetPrositKundnr
/****************************************************************************************/
/* H‰mtar ett gammalt kundnr, eller skapar ett nytt 				 	*/
/*                                                                                      */
/* Christer Dahl, OOPERA Konsult AB                                                 	*/
/* 1999-12                                                                        	*/
/*											*/
/* 2000-03-01 Ulla Nilsson, OOPERA Konsult AB: Lagt till kod fˆr att Patpnr kan vara 	*/
/*            tomt, dvs det ska generera n‰sta mˆjliga PrositKundnr och Patnr/KundPnr	*/
/*            s‰tts till xxxxxxxxxx                                                     */ 
/****************************************************************************************/
	@PatPnr CHAR(10), 
	@VaniaKundnr CHAR(10),
	@FaktOmgang INT,
	@PrositKundnr CHAR(08) OUTPUT, 
	@PrositAndringstyp CHAR(01) OUTPUT
AS
	/* Ny kod 2000-03-01 Ulla Nilsson */
	IF @PatPnr = "" OR @PatPnr IS NULL
	BEGIN
		/* H‰mta senast anv‰nda identitet - addera 1 fˆr att fÂ ett nytt kundnr */
		SELECT @PrositKundnr = CONVERT(CHAR(10), MAX(PrositKundnr) + 1) FROM Ge_Kundnr_TB
	
		INSERT INTO Ge_Kundnr_TB (KundPnr, VaniaKundnr, PrositKundnr, RegDat, faktomgang)
		VALUES ("xxxxxxxxxx", @VaniaKundnr, @PrositKundnr, GETDATE(), @FaktOmgang)

		SELECT @PrositAndringstyp = "I"
				
	END

	/* Kod frÂn 1999-12 Christer Dahl */
	ELSE
	BEGIN
		SELECT @PrositKundnr = PrositKundnr
		FROM Ge_Kundnr_TB
		WHERE KundPnr = @PatPnr

		IF @@rowcount = 0
		BEGIN
			/* H‰mta senast anv‰nda identitet - addera 1 fˆr att fÂ ett nytt kundnr */
			/*SELECT @PrositKundnr = CONVERT(CHAR(10), MAX(Ge_KundnrId) + 1) FROM Ge_Kundnr_TB*/
			SELECT @PrositKundnr = CONVERT(CHAR(10), MAX(PrositKundnr) + 1) FROM Ge_Kundnr_TB
	
			INSERT INTO Ge_Kundnr_TB (KundPnr, VaniaKundnr,	PrositKundnr, RegDat, faktomgang)
			VALUES (@PatPnr, @VaniaKundnr, @PrositKundnr, GETDATE(), @FaktOmgang)

			SELECT @PrositAndringstyp = "I"
		END
		ELSE
		BEGIN
			/* Kundnumret har vi redan fÂtt in i detta fall */
			SELECT @PrositAndringstyp = "U"
		END
	END
RETURN 0




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





/****** Object:  Stored Procedure dbo.proc_HogerStalla    Script Date: 1998-10-14 11:32:48 ******/
/****** Object:  Stored Procedure dbo.proc_HogerStalla    Script Date: 1998-05-27 00:18:15 ******/
CREATE PROCEDURE HogerStall_SP
/****************************************************************************************/
/* Namn: proc_HogerStalla	                                                        */
/*                                                                                      */
/* Inparam: @inStr	varchar(255),		strÑng som Ñr vÑnsterstÑlld 		*/
/*	    @strLen	integer,		storleken pÜ den hîgerstÑllda strÑngen 	*/
/*	    @utStr	varchar(255) OUTPUT	den hîgerstÑllda strÑngen 		*/
/* Utparam: @utStr	varchar(255) OUTPUT	den hîgerstÑllda strÑngen 		*/
/*                                                                                      */
/* Beskrivning: HîgerstÑller texten/siffrorna i en strÑng.				*/
/*                                                                                      */
/* Datum: 980227                                                                        */
/* Signatur: Ulla Nilsson, Oopera Konsult AB                                            */
/* ------------------------------------------------------------------------------------ */
/*                                FôRéNDRINGAR                                          */
/* Datum:                                                                               */
/* Signatur:                                                                            */
/* Felrapport:                    							*/
/* ètgÑrdat till version:          				 			*/
/* FîrÑndrat:                                                                           */
/****************************************************************************************/
	@inStr	varchar(255),		/* strÑng som Ñr vÑnsterstÑlld */
	@strLen	integer,		/* storleken pÜ den hîgerstÑllda strÑngen */
	@utStr	varchar(255) OUTPUT	/* den hîgerstÑllda strÑngen */
AS
DECLARE @strTrim	varchar(255),
	@strTrimLen	integer

	/* Tar bort eventuella avslutande blanka */
	SELECT @strTrim = RTRIM(@inStr)

	/* Hur lÜng Ñr strÑngen med text/siffror ? */
	SELECT @strTrimLen = DATALENGTH(@strTrim)

	/* SÑtter ihop strÑngen med blanka + texten/siffrorna */
	SELECT @utStr = SPACE(@strLen-@strTrimLen) + @strTrim







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE procedure IN_Kund_VA_Kund_UT_Find @sStatus char(3), @dDate datetime
AS	
	/*Declare @sSQLSats VARCHAR(1024)*/
	/*Declare @strDate CHAR(10)*/
	Declare @Date As datetime
	SELECT @Date = @dDate
/*--------------------------------------*/
CREATE TABLE [#Kund_TB] (
	[Status] [char] (9) NULL,
	[Avstgrupp] [varchar] (20) NULL ,
	[Fildatum] [datetime] NULL ,
	[AvsandarId] [char] (10) NULL ,
	[Vardtyp] [char] (2) NULL ,
	[Rakningsnr] [char] (8) NULL ,
	[Kundnr] [char] (10) NULL ,
	[PatNamn] [char] (30) NULL ,
	[PatGatuadress] [char] (20) NULL ,
	[PatPostnr] [char] (5) NULL ,
	[PatPostadress] [char] (15) NULL ,
	[InskrivnDat] [datetime] NULL ,
	[Namd] [char] (2) NULL ,
	[KostnStalle] [char] (3) NULL ,
	[BehandlKod] [char] (1) NULL ,
	[AntDagar] [char] (4) NULL ,
	[Avgift] [char] (10) NULL ,
	[Reseersattning] [char] (10) NULL ,
	[AnnanBetPnr] [char] (10) NULL ,
	[AnnanBetNamn] [char] (30) NULL ,
	[AnnanBetGatuadr] [char] (20) NULL ,
	[AnnanBetPostNr] [char] (5) NULL ,
	[AnnanBetPostAdr] [char] (15) NULL ,
	[PatPnr] [char] (10) NULL ,
	[UtskrivnDat] [datetime] NULL ,
	[AmbulansAvgift] [char] (8) NULL ,
	[OppenvardsAvgift] [char] (9) NULL ,
	[Avdelningsnamn] [char] (30) NULL ,
	[Avdelningstelefon] [char] (12) NULL ,
	[Landstingskundnr] [char] (10) NULL ,
	[FaktDat] [datetime] NULL,
	[Infilnamn] [char] (20) NULL ,
	[HistFilnamn] [char] (20) NULL ,
	[Kommentar] [varchar] (255) NULL )
/*---------------------------------------*/
	/* Bˆrja med att gˆra en str‰ng av datumet 
	SELECT @strDate = CONVERT(CHAR(4),DATEPART(yy,@dDate)) +"-"+ CONVERT(CHAR(2),DATEPART(mm, @dDate))+"-"+CONVERT(CHAR(2),DATEPART(dd, @dDate))

	SELECT @sSQLSats = "Tom"
	if Left(@sStatus,1) = "1" 
		SELECT @sSQLSats = "Select fildatum, AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr, PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr,InFilnamn,HistFilnamn FROM IN_Kund_TB WHERE Fildatum="+@strDate

	if SUBSTRING(@sStatus,2,1) = "1" 
	BEGIN
		IF @sSQLSats = "Tom"
		BEGIN
			SELECT @sSQLSats = "SELECT fildatum, AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr, PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr,InFilnamn,HistFilnamn FROM VA_Kund_TB WHERE Fildatum="+@strDate
		END
		ELSE
		BEGIN
			SELECT @sSQLSats = @sSQLSats + " UNION ALL SELECT fildatum, AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr, PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr,InFilnamn,HistFilnamn FROM VA_Kund_TB WHERE Fildatum="+@strDate
		END
	END

	if SUBSTRING(@sStatus,3,1) = "1" 
	BEGIN
		IF @sSQLSats = "Tom"
		BEGIN
			SELECT @sSQLSats = "SELECT fildatum, AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr, PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr,InFilnamn,HistFilnamn FROM UT_FelKund_TB WHERE Fildatum="+@strDate
		END
		ELSE
		BEGIN
			SELECT @sSQLSats = @sSQLSats + " UNION ALL SELECT fildatum, AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr, PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr,InFilnamn,HistFilnamn FROM IN_KundFel_TB WHERE Fildatum="+@strDate
		END
	END

	EXECUTE(@sSQLSats)	"Felaktig" AS Status*/

IF  Left(@sStatus,1) = '1'
BEGIN
	INSERT INTO #Kund_TB 
		SELECT  'Felaktig ', AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr,Kundnr, PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr, " " ,InFilnamn,HistFilnamn,Kommentar  
		FROM IN_KundFel_TB 
		WHERE fildatum = @Date

	
END
IF SUBSTRING(@sStatus,2,1) = '1'
BEGIN
	INSERT INTO #Kund_TB  
		SELECT 'Bekr‰ftad' , AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr," ", PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr,FaktDat,InFilnamn,HistFilnamn ," " 
		FROM VA_Kund_TB
		WHERE fildatum = @Date

END
if SUBSTRING(@sStatus,3,1) = '1'
BEGIN
INSERT INTO #Kund_TB  
		SELECT 'Inl‰st',  AvstGrupp, Fildatum,AvsandarId,Vardtyp,Rakningsnr,Kundnr, PatNamn,PatGatuadress, PatPostnr,PatPostadress, InskrivnDat, Namd,KostnStalle,BehandlKod,AntDagar,Avgift, Reseersattning,AnnanBetPnr,AnnanBetNamn,AnnanBetGatuadr,AnnanBetPostNr,AnnanBetPostAdr,PatPnr,UtskrivnDat,AmbulansAvgift,OppenvardsAvgift,Avdelningsnamn,Avdelningstelefon,Landstingskundnr," ",InFilnamn,HistFilnamn," " 
		FROM IN_Kund_TB
		WHERE fildatum = @Date

END
	

SELECT * FROM #Kund_TB

DROP TABLE #Kund_TB









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE IN_SjukresorFel_InsById_SP
/****************************************************************************************/
/* L‰gger in en post i IN-fel tabellen. Posten ‰r lika som IN tabellen med till‰gg av 	*/
/* en kommenter										*/
/*                                                                                      */
/* Ulla Nilsson, OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
	@SjukreseId integer,
	@Kommentar  varchar(50)

AS 

	INSERT INTO IN_SjukresorFel_TB
		(IN_SjukreseId,
		 Fildatum,
		 AvsandarId,
		 Sjukresa,
		 Vernr,
		 PatNamn,
		 PatGatuadress,
		 PatPostnr,
		 PatOrt,
		 ReseDatum,
		 Namd,
		 Fardsatt,
		 KostnStalle,
		 Egenavgift,
		 Totalkostnad,
		 Resebidrag,
		 Moms,
		 AnnanMottNr,
		 AnnanMottNamn,
		 AnnanMottGatuadr,
		 AnnanMottPostNr,
		 AnnanMottOrt,
		 PatPnr,
		 EmefteSjukresor,
		 AvdelningsTelefon,
		 Postgiro,
		 Bankgiro,
		 Infilnamn,
		 Histfilnamn,
		 Kommentar) 
	SELECT 	@SjukreseId,
		Fildatum,
		AvsandarId,
		Sjukresa,
		Vernr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatOrt,
		ReseDatum,
		Namd,
		Fardsatt,
		KostnStalle,
		Egenavgift,
		Totalkostnad,
		Resebidrag,
		Moms,
		AnnanMottNr,
		AnnanMottNamn,
		AnnanMottGatuadr,
		AnnanMottPostNr,
		AnnanMottOrt,
		PatPnr,
		EmefteSjukresor,
		AvdelningsTelefon,
		Postgiro,
		Bankgiro,
		Infilnamn,
		Histfilnamn,
		@Kommentar
	FROM IN_Sjukresor_TB
	WHERE IN_SjukreseID = @SjukreseId






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE IN_Sjukresor_DelByFilnamn_SP
/****************************************************************************************/
/* Tar bort alla poster i IN tabellen som har det angivna filnamnet			*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
	@Filnamn char(20)

AS 

	DELETE FROM IN_Sjukresor_TB
	WHERE Infilnamn = @Filnamn





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE IN_Sjukresor_Ins_SP
/****************************************************************************************/
/* L‰gger in posten i IN tabellen							*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
	 @Fildatum 	datetime,
	 @AvsandarId 	char(10),
	 @Sjukresa	char(8),
	 @Vernr 	integer,
	 @PatNamn 	char(34),
	 @PatGatuadress char(20),
	 @PatPostnr	char(5),
	 @PatOrt 	char(15),
	 @ReseDatum 	datetime,
	 @Namd		char(2),
	 @Fardsatt	char(5),
	 @KostnStalle 	char(11),
	 @Egenavgift	decimal(6,2),
	 @Totalkostnad	decimal(12,2),
	 @Resebidrag	decimal(10,2),
	 @Moms		decimal(7,2),
	 @AnnanMottNr 	char(13),
	 @AnnanMottNamn char(30),
	 @AnnanMottGatuadr char(20),
	 @AnnanMottPostNr  char(5),
	 @AnnanMottOrt 	char(15),
	 @PatPnr 	char(13),
	 @EmefteSjukresor   char(16),
	 @AvdelningsTelefon char(23),
	 @Postgiro char(11),
	 @Bankgiro char(15),
	 @Infilnamn 	char(20),
	 @Histfilnamn 	char(20)

AS 

	INSERT INTO IN_Sjukresor_TB
		(Fildatum,
		 AvsandarId,
		 Sjukresa,
		 Vernr,
		 PatNamn,
		 PatGatuadress,
		 PatPostnr,
		 PatOrt,
		 ReseDatum,
		 Namd,
		 Fardsatt,
		 KostnStalle,
		 Egenavgift,
		 Totalkostnad,
		 Resebidrag,
		 Moms,
		 AnnanMottNr,
		 AnnanMottNamn,
		 AnnanMottGatuadr,
		 AnnanMottPostNr,
		 AnnanMottOrt,
		 PatPnr,
		 EmefteSjukresor,
		 AvdelningsTelefon,
		 Postgiro,
		 Bankgiro,
		 Infilnamn,
		 Histfilnamn) 
	VALUES 
		(@Fildatum,
		 @AvsandarId,
		 @Sjukresa,
		 @Vernr,
		 @PatNamn,
		 @PatGatuadress,
		 @PatPostnr,
		 @PatOrt,
		 @ReseDatum,
		 @Namd,
		 @Fardsatt,
		 @KostnStalle,
		 @Egenavgift,
		 @Totalkostnad,
		 @Resebidrag,
		 @Moms,
		 @AnnanMottNr,
		 @AnnanMottNamn,
		 @AnnanMottGatuadr,
		 @AnnanMottPostNr,
		 @AnnanMottOrt,
		 @PatPnr,
		 @EmefteSjukresor,
		 @AvdelningsTelefon,
		 @Postgiro,
		 @Bankgiro,
		 @Infilnamn,
		 @Histfilnamn) 









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [In_KundFel_Delete_Sp]
	(@In_KundFelId_1 	[int])

AS DELETE [In_KundFel_TB] 

WHERE 
	( [In_KundFelId]	 = @In_KundFelId_1)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [In_KundFel_FindByFilnamnFildatum_Sp]
	@Filnamn	[char](20),
	@FilDatum	Datetime
AS
	SELECT	In_KundFelId,
		Avstgrupp,
	 	Fildatum,
	 	AvsandarId,
		Vardtyp,
		Rakningsnr,
		Kundnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,
		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,	
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		utskrKod,
		patientKatkod,
		Infilnamn,
		Histfilnamn,
		Kommentar
	
	FROM	In_KundFel_TB

	WHERE 
		Infilnamn = @Filnamn
	AND	Fildatum = @Fildatum









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [In_KundFel_FindByFilnamn_Sp]
	@Filnamn	[char](20)
AS
	SELECT	In_KundFelId,
		Avstgrupp,
	 	Fildatum,
	 	AvsandarId,
		Vardtyp,
		Rakningsnr,
		Kundnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,
		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,	
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		Infilnamn,
		Histfilnamn,
		Kommentar
	
	FROM	In_KundFel_TB

	WHERE 
		Infilnamn = @Filnamn







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [In_KundFel_FindByPatPnr_Sp]
	@PatPnr	[char](10)
AS
	SELECT	Avstgrupp,
	 	Fildatum,
	 	AvsandarId,
		Vardtyp,
		Rakningsnr,
		Kundnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,
		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,	
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		Infilnamn,
		Histfilnamn,
		Kommentar
	
	FROM	In_KundFel_TB

	WHERE 
		PatPnr = @PatPnr





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [In_KundFel_Insert_Sp]
	( @AvstGrupp	[varchar](20),
	 @Fildatum 	[datetime],
	 @AvsandarId 	[char](10),
	 @Vardtyp	[char](2),
	 @Rakningsnr 	[char](8),
	 @Kundnr	[char](10),
	 @PatNamn 	[char](30),
	 @PatGatuadress 	[char](20),
	 @PatPostnr	[char](5),
	 @PatPostadress 	[char](15),
	 @InskrivnDat 	[datetime],
	 @Namd	[char](2),
	 @KostnStalle 	[char](3),
	 @BehandlKod 	[char](1),
	 @AntDagar 	[char](4),
	 @Avgift 	[char](10),
	 @Reseersattning 	[char](10),
	 @AnnanBetPnr 	[char](10),
	 @AnnanBetNamn 	[char](30),
	 @AnnanBetGatuadr 	[char](20),
	 @AnnanBetPostNr	[char](5),
	 @AnnanBetPostAdr 	[char](15),
	 @PatPnr 	[char](10),
	 @UtskrivnDat 	[datetime],
	 @AmbulansAvgift 	[char](8),
	 @OppenvardsAvgift 	[char](9),
	 @Avdelningsnamn 	[char](30),
	 @Avdelningstelefon 	[char](12),
	 @Landstingskundnr 	[char](10),
	 @PatientKatkod 	[char](4),
	 @UtskrKod		[char](4),	 
	 @Infilnamn 	[char](20),
	 @Histfilnamn 	[char](20),
	@Kommentar	[varchar](255))

AS INSERT INTO [In_KundFel_TB] 
	 ( [AvstGrupp],
	 [Fildatum],
	 [AvsandarId],
	 [Vardtyp],
	 [Rakningsnr],
	 [Kundnr],
	 [PatNamn],
	 [PatGatuadress],
	 [PatPostnr],
	 [PatPostadress],
	 [InskrivnDat],
	 [Namd],
	 [KostnStalle],
	 [BehandlKod],
	 [AntDagar],
	 [Avgift],
	 [Reseersattning],
	 [AnnanBetPnr],
	 [AnnanBetNamn],
	 [AnnanBetGatuadr],
	 [AnnanBetPostNr],
	 [AnnanBetPostAdr],
	 [PatPnr],
	 [UtskrivnDat],
	 [AmbulansAvgift],
	 [OppenvardsAvgift],
	 [Avdelningsnamn],
	 [Avdelningstelefon],
	 [Landstingskundnr],
	[PatientKatKod],
	[Utskrkod],
	[InFilnamn],
	[HistFilnamn], 
	[Kommentar]) 
 
VALUES 
	( @Avstgrupp,
	 @Fildatum,
	 @AvsandarId,
	 @Vardtyp,
	 @Rakningsnr,
	 @Kundnr,
	 @PatNamn,
	 @PatGatuadress,
	 @PatPostnr,
	 @PatPostadress,
	 @InskrivnDat,
	 @Namd,
	 @KostnStalle,
	 @BehandlKod,
	 @AntDagar,
	 @Avgift,
	 @Reseersattning,
	 @AnnanBetPnr,
	 @AnnanBetNamn,
	 @AnnanBetGatuadr,
	 @AnnanBetPostNr,
	 @AnnanBetPostAdr,
	 @PatPnr,
	 @UtskrivnDat,
	 @AmbulansAvgift,
	 @OppenvardsAvgift,
	 @Avdelningsnamn,
	 @Avdelningstelefon,
	 @Landstingskundnr,
	@PatientKatKod,
	@UtskrKod,
	@Infilnamn,
	@HistFilnamn,
	@Kommentar)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [In_KundFel_Update_Sp]
	 @In_KundFelId 		[Integer],
	 @Avstgrupp		[varchar](10),
	 @Fildatum 		[datetime],
	 @AvsandarId 		[char](10),
	 @Vardtyp 		[char](2),
	 @Rakningsnr 		[char](8),
	 @Kundnr		[char](10),
	 @PatNamn 		[char](30),
	 @PatGatuadress 	[char](20),
	 @PatPostnr		[char](5),
	 @PatPostadress 	[char](15),
	 @InskrivnDat 		[datetime],
	 @Namd			[char](2),
	 @KostnStalle 		[char](3),
	 @BehandlKod 		[char](1),
	 @AntDagar 		[char](4), /* Christer 2000-11-09. Tidigare = char(03) */
	 @Avgift 		[char](10),
	 @Reseersattning 	[char](10),
	 @AnnanBetPnr 		[char](10),
	 @AnnanBetNamn 		[char](30),
	 @AnnanBetGatuadr 	[char](20),
	 @AnnanBetPostNr 	[char](5),
	 @AnnanBetPostAdr 	[char](15),
	 @PatPnr		[char](10),
	 @UtskrivnDat 		[datetime],
	 @AmbulansAvgift 	[char](8),
	 @OppenvardsAvgift 	[char](9),
	 @Avdelningsnamn 	[char](30),
	 @Avdelningstelefon 	[char](12),
	 @Landstingskundnr 	[char](10),
	 @PatientKatkod 	[char](4),
	 @UtskrKod		[char](4),
	 @Infilnamn 		[char](20),
	 @Histfilnamn 		[char](20),
	 @Kommentar		[varchar](255)


AS UPDATE [In_KundFel_TB] 

SET  [Avstgrupp]	 	= @AvstGrupp,
	 [Fildatum]	 	= @Fildatum,
	 [AvsandarId]	 	= @AvsandarId,
	 [Vardtyp]	 	= @Vardtyp,
	 [Rakningsnr]	 	= @Rakningsnr,
	 [PatNamn]	 	= @PatNamn,
	 [PatGatuadress]	= @PatGatuadress,
	 [PatPostnr]	 	= @PatPostnr,
	 [PatPostadress]	= @PatPostadress,
	 [InskrivnDat]	 	= @InskrivnDat,
	 [Namd]	 		= @Namd,
	 [KostnStalle]		= @KostnStalle,
	 [BehandlKod]	 	= @BehandlKod,
	 [AntDagar]	 	= @AntDagar,
	 [Avgift]	 	= @Avgift,
	 [Reseersattning]	= @Reseersattning,
	 [AnnanBetPnr]	 	= @AnnanBetPnr,
	 [AnnanBetNamn]	 	= @AnnanBetNamn,
	 [AnnanBetGatuadr]	= @AnnanBetGatuadr,
	 [AnnanBetPostNr]	= @AnnanBetPostNr,
	 [AnnanBetPostAdr]	= @AnnanBetPostAdr,
	 [PatPnr]	 	= @PatPnr,
	 [UtskrivnDat]	 	= @UtskrivnDat,
	 [AmbulansAvgift]	= @AmbulansAvgift,
	 [OppenvardsAvgift]	= @OppenvardsAvgift,
	 [Avdelningsnamn]	= @Avdelningsnamn,
	 [Avdelningstelefon]	= @Avdelningstelefon,
	 [Landstingskundnr]	= @Landstingskundnr, 
	 [UtSkrkod]		= @UtSkrKod,
	 [PatientKatKod]	= @PatientKatkod,
	 [Infilnamn]		= @Infilnamn,
	 [Histfilnamn]		= @Histfilnamn,
	 [Kommentar]		= @Kommentar
WHERE 
	( [In_KundfelId]	 = @In_KundFelId)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [In_Kund_Delete_Sp]
	(@In_KundId_1 	[int])

AS DELETE [In_Kund_TB] 

WHERE 
	( [In_KundId]	 = @In_KundId_1)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE In_Kund_FindByInfilnamn_Sp
	@Infilnamn [Char](20)
AS

SELECT 	In_KundId,
	Avstgrupp,
	Fildatum,
	AvsandarId,
	Vardtyp,
	Rakningsnr,
	Kundnr,
	PatNamn,
	PatGatuadress,
        	PatPostnr,
	PatPostadress,
	InskrivnDat,
	Namd,
	KostnStalle,
	BehandlKod,
	AntDagar,
	Avgift,
	Reseersattning,
	AnnanBetPnr,
	AnnanBetNamn,
	AnnanBetGatuadr,
	AnnanBetPostNr,
	AnnanBetPostAdr,
	PatPnr,
	UtskrivnDat,
	AmbulansAvgift,
	OppenvardsAvgift,
	Avdelningsnamn,
	Avdelningstelefon,
	Landstingskundnr,
	Utskrkod,
	PatientKatKod,
	Infilnamn,
        HistFilnamn
FROM IN_Kund_TB
WHERE Infilnamn = @Infilnamn






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [In_Kund_FindByKostnStalle_Sp]
	@KostnStalle	[char](3)
AS
	SELECT	Kundnr
	
	FROM	In_Kund_TB

	WHERE 
		KostnStalle = @KostnStalle








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [In_Kund_FindByLandstingsId_Sp]
	@LandstingsId	[char](10)
AS
	SELECT	Kundnr
	
	FROM	In_Kund_TB

	WHERE 
		LandstingsKundnr = @LandstingsId









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [In_Kund_FindByPatPnr_Sp]
	@PatPnr	[char](10)
AS
	SELECT	Avstgrupp,
	 	Fildatum,
	 	AvsandarId,
		Vardtyp,
		Rakningsnr,
		Kundnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,
		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,	
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		Utskrkod,
		PatientKatKod,
		Infilnamn,
		Histfilnamn
	
	FROM	In_Kund_TB

	WHERE 
		PatPnr = @PatPnr










GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [In_Kund_Insert_Sp]
	( @AvstGrupp		[varchar](20),
	 @Fildatum 		[datetime],
	 @AvsandarId 		[char](10),
	 @Vardtyp		[char](2),
	 @Rakningsnr 		[char](8),
	 @Kundnr		[char](10),
	 @PatNamn 		[char](30),
	 @PatGatuadress 	[char](20),
	 @PatPostnr		[char](5),
	 @PatPostadress 	[char](15),
	 @InskrivnDat 		[datetime],
	 @Namd			[char](2),
	 @KostnStalle 		[char](3),
	 @BehandlKod 		[char](1),
	 @AntDagar 		[char](4),
	 @Avgift 		[char](10),
	 @Reseersattning 	[char](10),
	 @AnnanBetPnr 		[char](10),
	 @AnnanBetNamn 		[char](30),
	 @AnnanBetGatuadr 	[char](20),
	 @AnnanBetPostNr	[char](5),
	 @AnnanBetPostAdr 	[char](15),
	 @PatPnr 		[char](10),
	 @UtskrivnDat 		[datetime],
	 @AmbulansAvgift 	[char](8),
	 @OppenvardsAvgift 	[char](9),
	 @Avdelningsnamn 	[char](30),
	 @Avdelningstelefon 	[char](12),
	 @Landstingskundnr 	[char](10),
	 @PatientKatkod 	[char](4),
	 @UtskrKod		[char](4),
	 @Infilnamn 		[char](20),
	 @Histfilnamn 		[char](20))

AS INSERT INTO [In_Kund_TB] 
	 ( [AvstGrupp],
	 [Fildatum],
	 [AvsandarId],
	 [Vardtyp],
	 [Rakningsnr],
	 [Kundnr],
	 [PatNamn],
	 [PatGatuadress],
	 [PatPostnr],
	 [PatPostadress],
	 [InskrivnDat],
	 [Namd],
	 [KostnStalle],
	 [BehandlKod],
	 [AntDagar],
	 [Avgift],
	 [Reseersattning],
	 [AnnanBetPnr],
	 [AnnanBetNamn],
	 [AnnanBetGatuadr],
	 [AnnanBetPostNr],
	 [AnnanBetPostAdr],
	 [PatPnr],
	 [UtskrivnDat],
	 [AmbulansAvgift],
	 [OppenvardsAvgift],
	 [Avdelningsnamn],
	 [Avdelningstelefon],
	 [Landstingskundnr],
	 [patientKatKod],	 [utskrKod],
	 [InFilnamn],
	 [HistFilnamn])  
VALUES 
	( @Avstgrupp,
	 @Fildatum,
	 @AvsandarId,
	 @Vardtyp,
	 @Rakningsnr,
	 @Kundnr,
	 @PatNamn,
	 @PatGatuadress,
	 @PatPostnr,
	 @PatPostadress,
	 @InskrivnDat,
	 @Namd,
	 @KostnStalle,
	 @BehandlKod,
	 @AntDagar,
	 @Avgift,
	 @Reseersattning,
	 @AnnanBetPnr,
	 @AnnanBetNamn,
	 @AnnanBetGatuadr,
	 @AnnanBetPostNr,
	 @AnnanBetPostAdr,
	 @PatPnr,
	 @UtskrivnDat,
	 @AmbulansAvgift,
	 @OppenvardsAvgift,
	 @Avdelningsnamn,
	 @Avdelningstelefon,
	 @Landstingskundnr,
	 @PatientKatkod,
	 @UtskrKod,
	 @Infilnamn,
	 @HistFilnamn)















GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [In_Kund_Update_Sp]
	(@In_KundId 	[Int],
	 @Avstgrupp	[varchar](10),
	 @Fildatum 	[datetime],
	 @AvsandarId 	[char](10),
	 @Vardtyp 	[char](2),
	 @Rakningsnr 	[char](8),
	 @Kundnr 	[char],
	 @PatNamn 	[char](30),
	 @PatGatuadress 	[char](20),
	 @PatPostnr	[char](5),
	 @PatPostadress 	[char](15),
	 @InskrivnDat 	[datetime],
	 @Namd	[char](2),
	 @KostnStalle 	[char](3),
	 @BehandlKod 	[char](1),
	 @AntDagar 	[char](4), /* Christer 2000-11-09. Tidigare = char(03) */
	 @Avgift 	[char](10),
	 @Reseersattning 	[char](10),
	 @AnnanBetPnr 	[char](10),
	 @AnnanBetNamn 	[char](30),
	 @AnnanBetGatuadr 	[char](20),
	 @AnnanBetPostNr 	[char](5),
	 @AnnanBetPostAdr 	[char](15),
	 @PatPnr	[char](10),
	 @UtskrivnDat 	[datetime],
	 @AmbulansAvgift 	[char](8),
	 @OppenvardsAvgift 	[char](9),
	 @Avdelningsnamn 	[char](30),
	 @Avdelningstelefon 	[char](12),
	 @Landstingskundnr 	[char](10),
	 @UtskrKod		[char](4),
	 @PatientKatkod 	[char](4),
	 @Infilnamn 		[char](20),	
	 @Histfilnamn 		[char](20))

AS UPDATE [In_Kund_TB] 

SET      [Avstgrupp]	 	= @AvstGrupp,
	 [Fildatum]	 	= @Fildatum,
	 [AvsandarId]	 	= @AvsandarId,
	 [Vardtyp]	 	= @Vardtyp,
	 [Kundnr]		= @Kundnr,
	 [Rakningsnr]	 	= @Rakningsnr,
	 [PatNamn]	 	= @PatNamn,
	 [PatGatuadress]	= @PatGatuadress,
	 [PatPostnr]	 	= @PatPostnr,
	 [PatPostadress]	= @PatPostadress,
	 [InskrivnDat]	 	= @InskrivnDat,
	 [Namd]	 		= @Namd,
	 [KostnStalle]	 	= @KostnStalle,
	 [BehandlKod]	 	= @BehandlKod,
	 [AntDagar]	 	= @AntDagar,
	 [Avgift]	 	= @Avgift,
	 [Reseersattning]	= @Reseersattning,
	 [AnnanBetPnr]	 	= @AnnanBetPnr,
	 [AnnanBetNamn]	 	= @AnnanBetNamn,
	 [AnnanBetGatuadr]	= @AnnanBetGatuadr,
	 [AnnanBetPostNr]	= @AnnanBetPostNr,
	 [AnnanBetPostAdr]	= @AnnanBetPostAdr,
	 [PatPnr]	 	= @PatPnr,
	 [UtskrivnDat]	 	= @UtskrivnDat,
	 [AmbulansAvgift]	= @AmbulansAvgift,
	 [OppenvardsAvgift]	= @OppenvardsAvgift,
	 [Avdelningsnamn]	= @Avdelningsnamn,
	 [Avdelningstelefon]	= @Avdelningstelefon,
	 [Landstingskundnr]	= @Landstingskundnr, 
	 [utskrKod]		= @UtskrKod,
	 [patientKatKod]        	= @PatientKatkod,
	 [Infilnamn]		= @Infilnamn,
	 [Histfilnamn]		= @Histfilnamn
WHERE 
	(In_KundId		=@In_KundId)














GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROC KontrollDelVardAvg_SP
	@Patpnr	 CHAR(10),
	@Utskrkod CHAR(04),
	@InskrDat DATETIME,
	@UtskrDat DATETIME,
	@PatKatKod CHAR(04)
AS
 /* Skapa en temptbell fˆr att kunna lagra de perioder som finns */

CREATE TABLE #TmpKund_tb
	(Tabell varchar(20) Null,
	Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL)


/* Fyll temptabellen med perioder.  */

INSERT INTO #TmpKund_tb EXEC ge_listaAllaPosterIPeriod_sp @Patpnr, @Utskrkod, @InskrDat, @UtskrDat

-- TESTER
--EXEC ge_listaAllaPosterIPeriod_sp '1003258231', '0003', '2001-01-22', '2001-05-10'
--EXEC ge_listaAllaPosterIPeriod_sp '1003258231', '0003', '2000-11-29', '2001-01-16'

/* Kontrollera att samtliga rader har samma PatKategori */
SELECT * FROM #TmpKund_tb
WHERE patientKatKod <> @PatKatKod

/* Om del finns andra patientkategorier sÂ ‰r det fel! */

If @@Rowcount > 0
	Return 100
ELSE
	Return 0






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





/****** Object:  Stored Procedure dbo.proc_RedVarde    Script Date: 1998-10-14 11:32:48 ******/
/****** Object:  Stored Procedure dbo.proc_RedVarde    Script Date: 1998-05-27 00:18:15 ******/
CREATE PROCEDURE RedVarde_SP
/****************************************************************************************/
/* Namn: proc_RedVarde		                                                        */
/*                                                                                      */
/* Inparam: @style	 varchar(10)		BELOPP, OCRBEL				*/
/*	    @inVarde	 decimal(19)		varde som ska redigeras			*/
/*							belopp (i îre) 			*/
/*	    @utVardeStr  char(14) OUTPUT	det redigerade vÑrdet,beloppet		*/
/* Utparam: @utVardeStr  char(14) OUTPUT	det redigerade vÑrdet,beloppet		*/
/*                                                                                      */
/* Beskrivning: Redigerar ett vÑrde eller belopp, samt hîgerstÑller det. 		*/
/*		Style BELOPP: 1.234.567:90-     (plustecken Ñr blank)			*/
/*		      OCRBEL: 1234567 90	(om negativt ******* **)		*/
/*                                                                                      */
/* Datum: 980227                                                                        */
/* Signatur: Ulla Nilsson, Oopera Konsult AB                                            */
/* ------------------------------------------------------------------------------------ */
/*                                FôRéNDRINGAR                                          */
/* Datum: 980303                                                                        */
/* Signatur: Ulla Nilsson, OOPERA Konsult AB                                            */
/* Felrapport:                    							*/
/* ètgÑrdat till version:          				 			*/
/* FîrÑndrat: Lagt till kod fîr olika Style, dvs OCRBEL och PROC. Samt Ñndrat namnet pÜ	*/
/*		pÜ proceduren frÜn proc_RedigeraBelopp till nuvarande                   */
/*                                                                                      */
/* Datum: 980516                                                                        */
/* Signatur: Ulla Nilsson, OOPERA Konsult AB                                            */
/* Felrapport:                    							*/
/* ètgÑrdat till version:          				 			*/
/* FîrÑndrat: Splittat upp redVarde i RedVarde fîr belopp och redProcent fîr procent.	*/
/****************************************************************************************/
	@style		varchar(10),
	@inVarde	decimal(19),
	@utVardeStr	char(14)	OUTPUT
AS	
DECLARE @inVardeStr	varchar(19),
	@inVardeLen	integer,
	@redLen		integer,
	@utVardeStrLen	integer
DECLARE	@kommaTkn	char(1),
	@punktTkn	char(1),
	@kolonTkn	char(1),
	@minusTkn	char(1),
	@procentTkn	char(1),
	@blankTkn	char(1),
	@plusMinusTkn	char(1)
DECLARE	@BELOPPdecimalTkn char(1),
	@BELOPPtusenTkn	char(1),
	@BELOPPplusTkn	char(1),
	@BELOPPminusTkn	char(1),
	@OCRdecimalTkn	char(1)

	/* Initierar vÑrden */
	SELECT @kolonTkn = ':'
	SELECT @punktTkn = '.'
	SELECT @kommaTkn = ','
	SELECT @minusTkn = '-'
	SELECT @blankTkn = ' '

	SELECT @BELOPPdecimalTkn = @kolonTkn
	SELECT @BELOPPtusenTkn = @punktTkn
	SELECT @BELOPPplusTkn = @blankTkn
	SELECT @BELOPPminusTkn = @minusTkn
	SELECT @OCRdecimalTkn = @blankTkn


	/* Om 0 eller NULL */
	IF @inVarde = 0 OR @inVarde IS NULL
	BEGIN
		IF @style = "BELOPP"
			SELECT @utVardeStr = "         0:00 "
		ELSE IF @style = "OCRBEL"
			SELECT @utVardeStr = "          0 00"

	END

	/* Om inte 0 eller NULL */
	ELSE
	BEGIN

		/* Konverter beloppet til en strÑng och ta lÑngden pÜ strÑngen */
		SELECT @inVardeStr = CONVERT(varchar(19),ABS(@inVarde))
		SELECT @inVardeLen = DATALENGTH(@inVardeStr)


		/* Ta fram tecknet pÜ vÑrdet,beloppet */
		IF @inVarde > 0				/* positivt */
			SELECT @plusMinusTkn = @BELOPPplusTkn
		ELSE IF @inVarde < 0			/* negativt */
			SELECT @plusMinusTkn = @BELOPPminusTkn


		/** BELOPP **/
		IF @style = "BELOPP"
		BEGIN

			/* Om beloppet endast bestÜr av îren */
			IF @inVardeLen < 3
			BEGIN
				IF @inVardeLen = 1
					SELECT @utVardeStr = "0"+ @BELOPPdecimalTkn + "0" +
							SUBSTRING(@inVardeStr,1,@inVardeLen)
				ELSE IF @inVardeLen = 2
					SELECT @utVardeStr = "0"+ @BELOPPdecimalTkn + 
							SUBSTRING(@inVardeStr,1,@inVardeLen)
			END
			ELSE
			BEGIN

				/* ôren */
				SELECT @utVardeStr = @BELOPPdecimalTkn + 
							SUBSTRING(@inVardeStr,@inVardeLen-2+1,2)
				SELECT @redLen = 2
 	
				/* Kronor */
				WHILE ((@inVardeLen - @redLen) > 3)
				BEGIN
					SELECT @utVardeStr =  @BELOPPtusenTkn + 
							SUBSTRING(@inVardeStr,@inVardeLen-@redLen-3+1,3) + 
							@utVardeStr
					SELECT @redLen = @redLen + 3
				END
	
				/* Resten */
				IF @inVardeLen > @redLen
				BEGIN
					SELECT @utVardeStr = SUBSTRING(@inVardeStr,1,@inVardeLen-@redLen) + 
							@utVardeStr
					SELECT @redLen = @redLen + (@inVardeLen-@redLen)
				END

			END

		END


		/** OCRBEL **/
		ELSE IF @style = "OCRBEL"
		BEGIN
			/* Negativt belopp */
			IF @inVarde < 0
				SELECT @utVardeStr = "******** **"
			/* Positivt belopp */
			ELSE
			BEGIN
				/* ôren */
				SELECT @utVardeStr = @OCRdecimalTkn + 
					SUBSTRING(@inVardeStr,@inVardeLen-2+1,2)

				/* Kronor */														
				SELECT @utVardeStr = SUBSTRING(@inVardeStr,1,@inVardeLen-2) +
							@utVardeStr
			END
		END



		/* Hur lÜng Ñr strÑngen med text/siffror ? */
		SELECT @utVardeStrLen = DATALENGTH(RTRIM(@utVardeStr))


		/* SÑtter ihop strÑngen med blanka, texten/siffrorna, tecknet */
		IF @style = "BELOPP"
			SELECT @utVardeStr = SPACE(14-1-@utVardeStrLen) + @plusMinusTkn + @utVardeStr 
		ELSE IF @style = "OCRBEL"
			SELECT @utVardeStr = SPACE(14-@utVardeStrLen) + @utVardeStr

	END






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Sjukresor_Angra_SP
/****************************************************************************************/
/* ≈ngrar inl‰sningen av en fil dvs tar bort posterna fˆr angiven fil i IN tabellen 	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-11                                                                        	*/
/****************************************************************************************/
	@Filnamn   char(20)
AS
	/* Tar bort posterna */
	EXEC IN_Sjukresor_DelByFilnamn_SP @Filnamn




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Sjukresor_Bearbeta_SP
/****************************************************************************************/
/* Bearbetar posterna i VA och l‰gger dem i UT tabellerna			 	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-14                                                                        	*/
/*									*/
/* 2000-03-23 Ulla Nilsson, OOPERA Konsult AB: ƒndrat fˆr att patientpnr	*/
/*	       ska vara 12 tkn n‰r manska h‰mta ett nut tPrositkundnr       */
/****************************************************************************************/
	@Urvalsdatum   datetime			/* = fildatum i tabellen */
AS

	DECLARE @SjukreseId 	int
	DECLARE @Mottnr	    	char(13)
	DECLARE @MottNamn	char(30)
	DECLARE @MottGatuadr char(20)
	DECLARE @MottPostnr  char(5)
	DECLARE @MottOrt	char(15)
	DECLARE @PatPnr		char(13)
	DECLARE @PatNamn	char(34)
	DECLARE @PatGatuadr	char(20)
	DECLARE @PatPostnr	char(5)
	DECLARE @PatOrt		char(15)
	DECLARE @Postgiro	char(11)
	DECLARE @Bankgiro	char(15)
	DECLARE @KostnStalle	char(11)
	DECLARE @Fardsatt	char(5)
	DECLARE @HelAdress		char(40)
	DECLARE @PatPnr12	char(12)		/*20000323 Ulla Nilsson */

	DECLARE @ForstaTkn	char(1)
	DECLARE @PrositNr 	char(8)
	DECLARE @PrositAndrTyp	char(1)
	DECLARE @KundTyp	char(6)		/* Mott, MottFL, MottP, Pat*/
	DECLARE @Utbetalningsform char(2)	/* P1=postgiro, B1=bankgiro, Ma=manuell*/
	DECLARE @Konteringsstrang char(60)

	DECLARE @LevId		char(8)
	DECLARE @AndrTyp	char(1)
	DECLARE @LevidNr 	int

	DECLARE @OldLevId	char(8)
	DECLARE @TotAndrTyp	char(1)
	DECLARE @OldUtbetform	char(2)
	DECLARE @OldKontstrang	char(60)
	DECLARE @OldPatPnr		char(13)
	DECLARE @OldHelAdress		char(40)

	DECLARE @FilAntalLev	int
	DECLARE @FilAntalFakt	int
	DECLARE @FilTotbelopp 	decimal(10,2)
	DECLARE @NastaFaktId		int

	DECLARE @Fildatum	datetime
	DECLARE @Egenavgift	decimal(6,2)
	DECLARE @Totalkostnad	decimal(12,2)
	DECLARE @Resebidrag	decimal(10,2)
	DECLARE @Moms		decimal(7,2)
	DECLARE @AvdelningsTel	char(23)

	DECLARE @Namn		char(30)
	DECLARE @Gatuadr 	char(20)
	DECLARE @Postnr  	char(5)
	DECLARE @Ort		char(15)
	DECLARE @Motpart 	char(4)
	DECLARE @SumTotkostnad	decimal(12,2)
	DECLARE @SumEgenavg	decimal(6,2)
	DECLARE @SumResebidrag 	decimal(10,2)
	DECLARE @SumMoms	decimal(7,2)
	DECLARE @Referens	char(27)


	CREATE TABLE tempVA_Sjukresor_TB
		(SjukreseId int,
		 LevId 		char(11),
		AndrTyp	char(1),
		KundTyp	char(6),
		Utbetalningsform  char(2),
		Konteringsstrang char(60),
		PatPnr char(13),
		HelAdress char(40))

	/* Decklarerar cursor fˆr TEMP */
	DECLARE TEMP_sjukresor_cursor CURSOR FOR 
		SELECT 	SjukreseId,
			LevId,
			AndrTyp,
			KundTyp,
			Utbetalningsform,
			Konteringsstrang,
			Patpnr,
			HelAdress
		FROM tempVA_Sjukresor_TB
		ORDER BY LevId, Utbetalningsform, Konteringsstrang, Patpnr, Heladress, SjukreseId


	DECLARE VA_sjukresor_cursor CURSOR FOR 
		SELECT 	VA_SjukreseId,
			AnnanMottNr,
			AnnanMottNamn,
			AnnanMottGatuadr,
			AnnanMottPostnr,
			AnnanMottOrt,
			SUBSTRING(PatPnr,1,8) + SUBSTRING(PatPnr,10,4),		/* 20000323 Ulla Nilsson */
			Patpnr,								
			PatGatuadress,
			PatPostnr,
			PatOrt,
			Postgiro,
			Bankgiro,
			KostnStalle,
			Fardsatt
		FROM VA_Sjukresor_TB
		WHERE Fildatum = @Urvalsdatum
		  AND BearbetningsDatum IS NULL
		ORDER BY VA_SjukreseId



	/**************************************************/
	/* GÂ igenom alla VA poster och skapa kundr/levid */
	/* l‰gg posterna i tempVA_sjukresor              */
	/**************************************************/

	/* ÷ppna cursorn och h‰mta fˆrsta posten */
	OPEN VA_sjukresor_cursor
	FETCH NEXT FROM VA_sjukresor_cursor INTO @SjukreseId, 
		 			              @MottNr,
						 @MottNamn,
					              @MottGatuadr,
						 @MottPostnr,
						 @MottOrt,
						 @Patpnr12,			/* 20000323 Ulla Nilsson */
						 @Patpnr,
						 @PatGatuadr,
						 @PatPostnr,
						 @PatOrt,
						 @Postgiro,
						 @Bankgiro,
						 @KostnStalle,
						 @Fardsatt

	/* GÂ igenom alla poster, post fˆr post */	
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		/* Kod som inte anv‰nds just nu */
		/*
			/* Fˆrsta tecknet i Mottagn.nr */
			SELECT @ForstaTkn = SUBSTRING(@Mottnr,1,1)

			/* H‰mta PrositLandstingsnr istf Landstings/fˆretagsnummer */
			IF @ForstaTkn = "F" OR @ForstaTkn = "L"
			BEGIN
				EXEC GE_getPrositLandstingsnr_SP @Mottnr, @PrositNr OUTPUT, @PrositAndrTyp OUTPUT
				SELECT @Kundtyp = "MottFL"
			END

			/* H‰mta PrositKundnr istf Mottagn.nr */
			IF @ForstaTkn != ""		/* dvs personnr */
			BEGIN
				EXEC getPrositKundnr @Mottnr, "", @PrositNr OUTPUT, @PrositAndrTyp OUTPUT
				SELECT @KundTyp = "MottP"
			END
		*/

		/* Annan mottagare: h‰mta PrositKundnr istf mottnr, fixa en adress */
		IF @MottNamn != ""
		BEGIN
			/*EXEC getPrositKundnr @Mottnr, "", @PrositNr OUTPUT, @PrositAndrTyp OUTPUT	20000308 Ulla Nilsson */
			/*EXEC getPrositKundnr @Patpnr, "", @PrositNr OUTPUT, @PrositAndrTyp OUTPUT	20000323 Ulla Nilsson */
			EXEC GE_getPrositKundnr @Patpnr12, "", @PrositNr OUTPUT, @PrositAndrTyp OUTPUT	/* 20000323 Ulla Nilsson */

			/* Adress */
			SELECT @HelAdress = RTRIM(@MottGatuadr) + RTRIM(@MottPostnr) + RTRIM(@MottOrt)

			SELECT @KundTyp = "Mott"
		END

		/* Patient: H‰mta PrositKundnr istf personnummer, fixa en adress */
		ELSE 
		BEGIN
			/*EXEC getPrositKundnr @Patpnr, "", @PrositNr OUTPUT, @PrositAndrTyp OUTPUT	20000323 Ulla Nilsson */
			EXEC GE_getPrositKundnr @Patpnr12, "", @PrositNr OUTPUT, @PrositAndrTyp OUTPUT	/* 20000323 Ulla Nilsson */

			/* Adress */
			SELECT @HelAdress = RTRIM(@PatGatuadr) + RTRIM(@PatPostnr) + RTRIM(@PatOrt)

			SELECT @KundTyp = "Pat"
		END


		/* Utbetalningsform */
		IF @Postgiro != "" AND (@Bankgiro = "" OR @Bankgiro IS NULL)
			SELECT @Utbetalningsform = "P1"
		ELSE IF @Bankgiro != "" AND (@Postgiro = "" OR @Postgiro IS NULL)
			SELECT @Utbetalningsform = "B1"
			/*ELSE	SELECT @Utbetalningsform = "Ma" 	2000-03-07 Ulla*/
			/*ELSE SELECT @Utbetalningsform = "MA"	2000-03-20 Ulla*/
		ELSE SELECT @Utbetalningsform = "P1"			/*2000-03-20 Ulla*/
		

		/* Konteringsstr‰ng */
		EXEC GE_Sjukresor_getKonteringsstrang_SP @KostnStalle, @Fardsatt, @Konteringsstrang OUTPUT		

		/* Skapa en post i tempVA_sjukresor */
		INSERT INTO tempVA_sjukresor_TB
		 	(SjukreseId,
			LevId,
			AndrTyp,
			KundTyp,
			Utbetalningsform,
			Konteringsstrang,
			Patpnr,
			HelAdress)
		VALUES
			( @SjukreseId,
			  @PrositNr,
			  @PrositAndrTyp,
			  @KundTyp,
			  @Utbetalningsform,
			  @Konteringsstrang,
			  @Patpnr,
			  @HelAdress)


		/* H‰mta n‰sta post */	
		FETCH NEXT FROM VA_sjukresor_cursor INTO @SjukreseId, 
			 			              @MottNr,
							 @MottNamn,
						              @MottGatuadr,
							 @MottPostnr,
							 @MottOrt,
							 @Patpnr12,
							 @Patpnr,
							 @PatGatuadr,
							 @PatPostnr,
							 @PatOrt,
							 @Postgiro,
							 @Bankgiro,
							 @KostnStalle,
							 @Fardsatt
	END

	/* St‰ng cursor */
	CLOSE VA_sjukresor_cursor
	DEALLOCATE VA_sjukresor_cursor



	/**************************************************/
	/* Tar bort gamla poster i UT tabellerna          */
	/**************************************************/
	EXEC UT_Sjukresor_DelAll_SP 


	/**************************************************/
	/* GÂ igenom alla VA poster och skapa UT poster	  */
	/**************************************************/

	/* ÷ppna cursorn och h‰mta fˆrsta posten */
	OPEN TEMP_sjukresor_cursor
	FETCH NEXT FROM TEMP_sjukresor_cursor INTO @SjukreseId, 
		 		 	           @LevId,
					           @AndrTyp,
						   @KundTyp,
						   @Utbetalningsform,
						   @Konteringsstrang,
						   @Patpnr,
						   @HelAdress


	/* Anv‰nds fˆr att se om det ‰r ny lev resp ny utbetform/kontstrang */
	SELECT @OldLevId = @LevId
	SELECT @TotAndrtyp = @AndrTyp
	SELECT @OldUtbetForm = @Utbetalningsform
	SELECT @OldKontStrang = @KonteringsStrang
	SELECT @OldPatpnr = @Patpnr
	SELECT @OldHelAdress = @HelAdress

	/* Anv‰nds i filhuvudet */
	SELECT @FilAntalLev = 0
	SELECT @FilAntalFakt = 0
	SELECT @FilTotbelopp = 0

	/* Anv‰nds i faktura- och taxtposten */
	SELECT @NastaFaktId = 1
	SELECT @LevidNr = 1

	/* Anv‰ndas fˆr textposterna */
	SELECT @SumTotkostnad = 0
	SELECT @SumEgenavg = 0
	SELECT @SumResebidrag = 0
	SELECT @SumMoms = 0

	SELECT @Referens = SPACE(27)

	/* GÂ igenom alla poster, post fˆr post */	
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		/* Om det ska vara en ny faktura */
		IF @OldUtbetForm != @Utbetalningsform OR @OldKontStrang != @Konteringsstrang OR @OldLevid != @LevId OR @OldPatpnr != @Patpnr OR (@OldLevId = @LevId AND @OldHelAdress != @HelAdress)
		BEGIN

			/* Fakturapost */
			EXEC UT_SjukresorFaktpost_Ins_SP @OldLevId, @LevidNr, @NastaFaktId, @Motpart, 
							 @OldUtbetForm, 
							 @SumResebidrag, @SumMoms,
							 @Referens, 
							 @OldKontStrang,
 							 @OldPatpnr

			/* Textposterna rad 1-5 */
			EXEC UT_SjukresorTextpost_Ins_SP @OldLevId, @LevidNr, @NastaFaktId,
							@Urvalsdatum,
							@SumTotKostnad, @SumEgenavg, @SumResebidrag,
							@AvdelningsTel

			SELECT @NastaFaktId = @NastaFaktId + 1
			SELECT @FilAntalFakt = @FilAntalFakt + 1
			SELECT @SumTotkostnad = 0
			SELECT @SumEgenavg = 0
			SELECT @SumResebidrag = 0
			SELECT @SumMoms = 0
			
		END


		/* Om ny leverantˆr */
		IF @OldLevId != @LevId  OR (@OldLevId = @LevId AND @OldHelAdress != @HelAdress)
		BEGIN


			/* Leverantˆrspost */
			EXEC UT_SjukresorLevpost_Ins_SP @TotAndrTyp, @OldLevId, @LevidNr,
							@Namn, @Gatuadr, @Postnr, @Ort, 
							@Postgiro, @Bankgiro, "P1"
			
			SELECT @NastaFaktId = 1
			SELECT @FilAntalLev = @FilAntalLev + 1

			/* Eftersom samma leverantˆr kan fˆrekomma fler gÂnger */
			IF @OldLevId != @LevId
				SELECT @LevidNr = 1
			ELSE 
				SELECT @LevidNr = @LevidNr + 1

			SELECT @TotAndrTyp = @AndrTyp
		END
		
		/* Om inte ny leverantˆr */
		ELSE
		BEGIN
			IF @TotAndrtyp = "U" AND @AndrTyp = "I"
				SELECT @TotAndrtyp = @AndrTyp
		END

		/* H‰mtar en VA post */		
		SELECT 	@Fildatum = va.Fildatum,
			/*@PatPnr = PatPnr,*/
			@PatNamn = va.PatNamn,		
			@PatGatuadr = va.PatGatuadress,	
			@PatPostnr = va.PatPostnr,		
			@PatOrt = va.PatOrt,			
			@Fardsatt = va.Fardsatt,
			@KostnStalle = va.KostnStalle,
			@Egenavgift = va.Egenavgift,
			@Totalkostnad = va.Totalkostnad,
			@Resebidrag = va.Resebidrag,
			@Moms = va.Moms,
			@Mottnr = AnnanMottnr,		
			@MottNamn = AnnanMottNamn,		
			@MottGatuadr = va.AnnanMottGatuadr,
			@MottPostnr = va.AnnanMottPostnr,	
			@MottOrt = va.AnnanMottOrt,	
			@AvdelningsTel = va.AvdelningsTelefon,
			@Postgiro = va.Postgiro,
			@Bankgiro = va.Bankgiro
		FROM VA_sjukresor_TB va
		WHERE va.VA_SjukreseId = @SjukreseId


		/* Namn och Adress */
		IF @KundTyp = "Mott" 
		BEGIN
			SELECT @Namn = @MottNamn
			SELECT @Gatuadr = @MottGatuadr
			SELECT @Postnr = @MottPostnr
			SELECT @Ort = @MottOrt
		END
		ELSE
		BEGIN
			SELECT @Namn = @PatNamn
			SELECT @Gatuadr = @PatGatuadr
			SELECT @Postnr = @PatPostnr
			SELECT @Ort = @PatOrt
		END

		/* Motpart */
		IF @KundTyp = "MottFL"
		BEGIN
			SELECT @Motpart = motpart
			FROM GE_Landsting_TB
			WHERE VaniaLandstingsnr = @Mottnr
		END
		ELSE
			SELECT @Motpart = "0990"


		/* S‰tter att posten ‰r bearbetad */
		EXEC VA_Sjukresor_UpdById_SP @SjukreseId


		/* Summerar fˆr textposterna */
		SELECT @SumTotkostnad = @SumTotKostnad + @Totalkostnad
		SELECT @SumEgenavg = @SumEgenavg + @Egenavgift
		SELECT @SumResebidrag = @SumResebidrag + @Resebidrag		/* =fakturabelopp, att erhÂlla */
		SELECT @SumMoms = @SumMoms + @Moms

		/* Summa fˆr filen */
		SELECT @FilTotbelopp = @FilTotbelopp + @Resebidrag

		/* S‰tter "gamla" id */
		SELECT @OldLevId = @LevId		
		SELECT @OldUtbetForm = @Utbetalningsform
		SELECT @OldKontStrang = @KonteringsStrang
		SELECT @OldPatPnr = @Patpnr
		SELECT @OldHelAdress = @HelAdress
 
		/* H‰mta n‰sta post */	
		FETCH NEXT FROM TEMP_sjukresor_cursor INTO @SjukreseId, 
			 		 	           @LevId,
						           @AndrTyp,
							   @KundTyp,
							   @Utbetalningsform,
							   @Konteringsstrang,
							   @Patpnr,
							   @HelAdress

	END

	/* St‰ng cursor */
	CLOSE TEMP_sjukresor_cursor
	DEALLOCATE TEMP_sjukresor_cursor


	/* Fˆr sista fakturan Fakturapost */
	EXEC UT_SjukresorFaktpost_Ins_SP @OldLevId, @LevidNr, @NastaFaktId, @Motpart, 
					 @OldUtbetForm, 
					 @SumResebidrag, @SumMoms,
					 @Referens, 
					 @OldKontStrang,
					 @OldPatPnr

	SELECT @FilAntalFakt = @FilAntalFakt + 1

	/* Fˆr sista fakturan Textposterna rad 1-5 */
	EXEC UT_SjukresorTextpost_Ins_SP @OldLevId, @LevidNr, @NastaFaktId,
					@Urvalsdatum,
					@SumTotKostnad, @SumEgenavg, @SumResebidrag,
					@AvdelningsTel

	/* Leverantˆrspost */
	EXEC UT_SjukresorLevpost_Ins_SP @TotAndrTyp, @OldLevId, @LevidNr,
					@Namn, @Gatuadr, @Postnr, @Ort, 
					@Postgiro, @Bankgiro, "P1"
	SELECT @FilAntalLev = @FilAntalLev + 1

	/* Skapa filhuvud */
	EXEC UT_SjukresorFilhuvud_Ins_SP @FilAntalFakt, @FilAntalLev, @FilTotbelopp


	/* Ta bort TEMP tabellen */
	DROP TABLE tempVA_sjukresor_TB































GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Sjukresor_Bekrafta_SP
/****************************************************************************************/
/* Bekr‰fta alla poster i en angiven fil, dvs ˆverfˆr posterna frÂn IN till VA. 	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-11                                                                        	*/
/****************************************************************************************/
	@Filnamn   char(20)
AS

	DECLARE @SjukreseId 	int
	DECLARE	@Mottnr	    	char(13)
	DECLARE @PrositNr 	char(8)
	DECLARE @PrositAndrTyp	char(1)

	DECLARE IN_cursor CURSOR FOR 
		SELECT 	IN_SjukreseId,
			AnnanMottNr
		FROM IN_Sjukresor_TB
		WHERE Infilnamn = @Filnamn
		ORDER BY IN_SjukreseId

	/* ÷ppna cursorn och h‰mta fˆrsta posten */
	OPEN IN_cursor
	FETCH NEXT FROM IN_cursor INTO @SjukreseId, 
				       @MottNr

	/* GÂ igenom alla poster, post fˆr post */	
	WHILE (@@FETCH_STATUS = 0)
	BEGIN

	/* Kod som inte anv‰nds just nu */
		/* Kontrollera om landstingsnr finns */
	/*	IF SUBSTRING(@Mottnr,1,1) = "F" OR SUBSTRING(@Mottnr,1,1) = "L"
		BEGIN
			SELECT @PrositNr = NULL
			SELECT @PrositAndrTyp = NULL			

			EXEC GE_getPrositLandstingsnr_SP @Mottnr, @PrositNr OUTPUT, @PrositAndrTyp OUTPUT

			IF @PrositAndrTyp = "I"
				EXEC IN_SjukresorFel_InsById_SP @SjukreseId, "Landstingsnummer saknas"

			ELSE
				EXEC VA_Sjukresor_InsById_SP @SjukreseId

		END
		ELSE
		BEGIN
	*/
		/* L‰gg in posten i VA tabellen */
			EXEC VA_Sjukresor_InsById_SP @SjukreseId
	/*	END */

		/* H‰mta n‰sta post */	
		FETCH NEXT FROM IN_cursor INTO @SjukreseId, 
					       @MottNr

	END

	/* St‰ng cursor */
	CLOSE IN_cursor
	DEALLOCATE IN_cursor

	/* Ta bort posterna frÂn IN tabellen */
	EXEC IN_Sjukresor_DelByFilnamn_SP @Filnamn














GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE Sjukresor_Export_SP
/****************************************************************************************/
/* Skapar en fil av Ut posterna							 	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-14                                                                        	*/
/*								*/
/* 2000-04-18: Ulla Nilsson, OOPERA, ƒndrat storleken pÂ biblioteket	*/
/*		och filnamnet frÂn totalt 55 till 44 (31+1+12)		*/
/****************************************************************************************/
	@filnamn   char(12),
	@bibliotek char(31), 		/* fullst‰ndig sˆkv‰g */
	@fildatum  datetime
AS	DECLARE @ret		integer
	DECLARE @Filpekare	integer
	DECLARE @FilnamnLangd	integer
	DECLARE @FilnamnFull	char(44)			/* bilbliotek + \ + filnamn (31+1+12) */
	DECLARE @EndOfLine 	int

	DECLARE @LevpostLevid	char(11)
	DECLARE @FaktpostLevid	char(11)
	DECLARE @TextpostLevid	char(11)
	DECLARE @FaktpostFaktId	char(6)
	DECLARE @TextpostFaktId	char(6)
	DECLARE @TextpostRadnr	char(3)
	DECLARE @LevpostLevidNr	int
	DECLARE @FaktpostLevidNr	int
	DECLARE @TextpostLevidNr	int
	DECLARE @Filhuvud	char(37)
	DECLARE @Levpost 	char(181)
	DECLARE @Faktpost	char(178)
	DECLARE @Textpost	char(51)
	DECLARE @FilhuvudLen	int
	DECLARE @LevpostLen	int
	DECLARE @FaktpostLen	int
	DECLARE @TextpostLen	int
	DECLARE @HittatLevpost	bit
	DECLARE @HittatFaktpost	bit
	DECLARE @HittatTextpost	bit
	DECLARE @InomSammaLevpost bit
	DECLARE @InomSammaFaktpost bit
	DECLARE @NyLevpost bit
	DECLARE @NyFaktpost bit

	DECLARE UT_SjukresorLevpost_cursor CURSOR FOR 
		SELECT 	Levid,
			LevidNr,
			Levpost = Posttyp + Andringstyp + Levid + Namn + Adress2 + Postadress + PostnrOrt + Postgiro + Bankgiro + Utbetalningsform
		FROM UT_SjukresorLevpost_TB
		ORDER BY Levid, LevidNr

	DECLARE UT_SjukresorFaktpost_cursor CURSOR FOR 
		SELECT 	Levid,
			LevidNr,
			FaktId,
			Faktpost = Posttyp + Levid + FaktId + Motpart + Utbetform + Filler1 + Filler2 + FaktBelopp + Moms + Referens + KontStrang + PatPnr
		FROM UT_SjukresorFaktpost_TB
		ORDER BY Levid, LevidNr, FaktId

	DECLARE UT_SjukresorTextpost_cursor CURSOR FOR 
		SELECT 	Levid,
			LevidNr,
			FaktId,
			Radnr,
			Textpost = Posttyp + LevId + FaktId + Radnr + Textrad
		FROM UT_SjukresorTextpost_TB
		ORDER BY Levid, LevidNr, FaktId, Radnr


	/* Initierar v‰rden */
	SELECT @FilnamnLangd = 44
	SELECT @FilnamnFull = RTRIM(@Bibliotek) + "\" + @Filnamn
	SELECT @FilhuvudLen = 37
	SELECT @LevpostLen = 181
	SELECT @FaktpostLen = 178
	SELECT @TextpostLen = 51
	SELECT @EndOfLine = 1
	

	/* ÷ppna filen */
	EXEC @ret = master..xp_openFile @FilnamnLangd, @FilnamnFull, "w", @Filpekare OUTPUT

	/* ÷ppna alla cursors */
	OPEN UT_SjukresorLevpost_cursor
	OPEN UT_SjukresorFaktpost_cursor
	OPEN UT_SjukresorTextpost_cursor


	/**************************/
	/*      Filhuvud          */
	/**************************/
	/* H‰mta Filhuvud */
	SELECT @Filhuvud = Posttyp + Korningsdatum + AntalFakt + AntalLev + TotBelopp
	FROM UT_SjukresorFilhuvud_TB

	/* Skriv ut Filhuvud */
	EXEC @ret = master..xp_writeFile @Filpekare, @FilhuvudLen, @Filhuvud, @EndOfLine


	/**************************/
	/*   Fˆrsta posterna      */
	/**************************/
	/* Levposten */
	FETCH NEXT FROM UT_SjukresorLevpost_cursor INTO  @LevpostLevId, 
								@LevpostLevidNr,
			 			         @Levpost

	IF (@@FETCH_STATUS = 0) 
		SELECT @HittatLevpost = 1
	ELSE 
		SELECT @HittatLevpost = 0

	/* Faktposten */
	FETCH NEXT FROM UT_SjukresorFaktpost_cursor INTO @FaktpostLevId, 
								@FaktpostLevidNr,
							 @FaktpostFaktId,
						         @Faktpost

	IF (@@FETCH_STATUS = 0) 
		SELECT @HittatFaktpost = 1
	ELSE 
		SELECT @HittatFaktpost = 0

	/* Textposten */
	FETCH NEXT FROM UT_SjukresorTextpost_cursor INTO @TextpostLevId, 
							@TextpostlevidNr,
							 @TextpostFaktId,
							 @TextpostRadnr,
							 @Textpost


	IF (@@FETCH_STATUS = 0) 
		SELECT @HittatTextpost = 1
	ELSE 
		SELECT @HittatTextpost = 0


	/**************************/
	/*       Levpost          */
	/**************************/
	WHILE @HittatLevpost = 1
	BEGIN

		/* Skriv ut Levpost */
		EXEC @ret = master..xp_writeFile @Filpekare, @LevpostLen, @Levpost, @EndOfLine

		/**************************/
		/*      Faktpost          */
		/**************************/
		WHILE @HittatFaktpost = 1 AND (@LevpostLevid = @FaktpostLevId) AND (@LevpostLevidNr = @FaktpostLevidNr)
		BEGIN

			/* Skriv ut Faktpost */
			EXEC @ret = master..xp_writeFile @Filpekare, @FaktpostLen, @Faktpost, @EndOfLine

			
			/**************************/
			/*      Textpost          */
			/**************************/
			WHILE @HittatTextpost = 1 AND (@FaktpostFaktId = @TextpostFaktId) AND(@LevpostLevId = @TextpostLevId) AND (@LevpostLevidNr = @TextpostLevidNr)
			BEGIN

				/* Skriv ut Textpost */
				EXEC @ret = master..xp_writeFile @Filpekare, @TextpostLen, @Textpost, @EndOfLine

				/* L‰st n‰sta Textpost */
				FETCH NEXT FROM UT_SjukresorTextpost_cursor INTO @TextpostLevId, 
										@TextpostLevidNr,
										 @TextpostFaktId,
										 @TextpostRadnr,
										 @Textpost
				IF (@@FETCH_STATUS = 0) 
					SELECT @HittatTextpost = 1
				ELSE 
					SELECT @HittatTextpost = 0

			END

			/* H‰mta n‰sta Faktpost */
			FETCH NEXT FROM UT_SjukresorFaktpost_cursor INTO @FaktpostLevId, 
									@FaktpostLevidNr,
									 @FaktpostFaktId,
								         @Faktpost
			IF (@@FETCH_STATUS = 0) 
				SELECT @HittatFaktpost = 1
			ELSE 
				SELECT @HittatFaktpost = 0

		END

		/* H‰mta n‰sta Levposten */
		FETCH NEXT FROM UT_SjukresorLevpost_cursor INTO  @LevpostLevId, 
								@LevpostLevidNr,
			 				         @Levpost
		IF (@@FETCH_STATUS = 0) 
			SELECT @HittatLevpost = 1
		ELSE 
			SELECT @HittatLevpost = 0

	END


	/* St‰ng filen */
	EXEC @ret = master..xp_CloseFile @Filpekare

	
	/* St‰ng samtliga cursors */
	CLOSE UT_SjukresorLevpost_cursor
	DEALLOCATE UT_SjukresorLevpost_cursor

	CLOSE UT_SjukresorFaktpost_cursor
	DEALLOCATE UT_SjukresorFaktpost_cursor

	CLOSE UT_SjukresorTextpost_cursor
	DEALLOCATE UT_SjukresorTextpost_cursor














GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Sjukresor_Import_SP
/****************************************************************************************/
/* Importerar alla poster i en angiven fil till IN tabellen				*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
	@filnamn   char(14),
	@bibliotek char(35), 		/* fullst‰ndig sˆkv‰g */
	@fildatum  datetime
AS
	DECLARE @ret		integer
	DECLARE @Filpekare	integer
	DECLARE @FilnamnLangd	integer
	DECLARE @FilnamnFull	char(50)			/* bibliotek + \ + filnamn (35+1+14) */
	DECLARE @InledningspostDel1	varchar(255)
	DECLARE @InledningspostDel2	varchar(255)
	DECLARE @KundpostDel1	varchar(255)
	DECLARE @KundpostDel2	varchar(255)
	DECLARE @Radstatus 	integer		/* 1=EndOfLine, 0=NotEndOfLine, -1=EndOfFile */
	DECLARE @AntalTkn	integer

	DECLARE 	@AvsId		char(10),
			@Sjukresa	char(8),
			@Vernr		integer,
			@PatNamn	char(34),
			@PatGatuadress	char(20),
			@PatPostnr	char(5),
			@PatOrt		char(15),
			@Resedatum	datetime,
			@Namd		char(2),
			@Fardsatt	char(5),
			@KostStalle	char(11),
			@Egenavgift	decimal(6,2),
			@Totkostnad	decimal(12,2),
			@Resebidrag	decimal(10,2),
			@Moms		decimal(7,2),
			@AnnanmottNr	char(13),
			@AnnanmottNamn	char(30),
			@AnnanmottGatuadr char(20),
			@AnnanmottPostnr  char(5),
			@AnnanmottOrt	  char(15),
			@PatPnr		char(13),
			@EmefteSR	char(16),
			@AvdTel		char(23),
			@PG		char(11),
			@BG		char(15)

	SELECT @FilnamnLangd = 50
	SELECT @FilnamnFull = RTRIM(@Bibliotek) + "\" + @Filnamn

	/* ÷ppna filen */
	EXEC @ret = master..xp_openFile @FilnamnLangd, @FilnamnFull, "r", @Filpekare OUTPUT

	/* L‰s del1 i fˆrsta raden */
	EXEC @ret = master..xp_ReadFile @Filpekare, @InledningspostDel1 OUTPUT, @Radstatus OUTPUT, @AntalTkn OUTPUT

	/* L‰s del2 i fˆrsta raden */
	EXEC @ret = master..xp_ReadFile @Filpekare, @InledningspostDel2 OUTPUT, @Radstatus OUTPUT, @AntalTkn OUTPUT

	/* L‰s del 1 i n‰sta rad */
	EXEC @ret = master..xp_ReadFile @Filpekare, @KundpostDel1 OUTPUT, @Radstatus OUTPUT, @AntalTkn OUTPUT

	/* L‰s alla poster och l‰gg dem i IN_Sjukresor_TB */
	WHILE @Radstatus <> -1
	BEGIN
		/* L‰s del 2 i samma rad */
		EXEC @ret = master..xp_ReadFile @Filpekare, @KundpostDel2 OUTPUT, @Radstatus OUTPUT, @AntalTkn OUTPUT

		IF SUBSTRING(@KundpostDel1,1,1) = "2"
		BEGIN
		
			/* Splittra upp posten i kolumner */
			SELECT @AvsId = CONVERT(char(10),SUBSTRING(@InledningspostDel1,2,4))		/* Avs‰ndarIdentitet */
			SELECT @Sjukresa = SUBSTRING(@InledningspostDel1,30,8)	/* Sjukresa */
			SELECT @Vernr = CONVERT(integer,SUBSTRING(@KundpostDel1,2,6))		/* Verifikationsnr */
			SELECT @PatNamn = SUBSTRING(@KundpostDel1,8,34)		/* Patientnamn */
			SELECT @PatGatuadress = SUBSTRING(@KundpostDel1,42,20)	/* Patient Gatuadress */
			SELECT @PatPostnr = SUBSTRING(@KundpostDel1,62,5)	/* Patient Postnr */
			SELECT @PatOrt = SUBSTRING(@KundpostDel1,67,15)		/* Patient Ort */
			SELECT @Resedatum = CONVERT(datetime,SUBSTRING(@KundpostDel1,82,6))	/* Resedatum */
			SELECT @Namd = SUBSTRING(@KundpostDel1,88,2) 		/* N‰md */
			SELECT @Fardsatt = SUBSTRING(@KundpostDel1,90,5) 	/* F‰rds‰tt */
			SELECT @KostStalle = SUBSTRING(@KundpostDel1,95,11) 	/* Kostands st‰lle */
			SELECT @Egenavgift = CONVERT(decimal(6,2),SUBSTRING(@KundpostDel1,106,6)) 	/* Egenavgift */
			SELECT @Totkostnad = CONVERT(decimal(12,2),SUBSTRING(@KundpostDel1,112,12)) 	/* Totalkostnad */
			SELECT @Resebidrag = CONVERT(decimal(10,2),SUBSTRING(@KundpostDel1,124,10)) 	/* Resebidrag */
			SELECT @Moms = CONVERT(decimal(7,2),SUBSTRING(@KundpostDel1,134,7)) 		/* Moms */
			SELECT @AnnanmottNr = SUBSTRING(@KundpostDel1,141,13) 	/* Annan mottagare Nr */
			SELECT @AnnanmottNamn = SUBSTRING(@KundpostDel1,154,30) /* Annan mottagare Namn */
			SELECT @AnnanmottGatuadr = SUBSTRING(@KundpostDel1,184,20)  /* Annan mottagare Gatuadress */
			SELECT @AnnanmottPostnr = SUBSTRING(@KundpostDel1,204,5)    /* Annan mottagare Postnr */
			SELECT @AnnanmottOrt = SUBSTRING(@KundpostDel1,209,15) 	/* Annan mottagare Ort */
			SELECT @PatPnr = SUBSTRING(@KundpostDel1,224,13) 	/* Patientens personnummer */
			SELECT @EmefteSR = SUBSTRING(@KundpostDel1,237,16) 	/* Emefte sjukresor */
			SELECT @AvdTel = SUBSTRING(@KundpostDel1,253,3) + SUBSTRING(@KundpostDel2,1,20)  /* Avdelningstelefon */
			SELECT @BG = SUBSTRING(@KundpostDel2,21,15)		/* Bankgiro */	
			SELECT @PG = SUBSTRING(@KundpostDel2,36,11)		/* Postgiro */

			/* L‰gg in posten i tabellen */
			EXEC IN_Sjukresor_Ins_SP @Fildatum,
						 @AvsId,
						 @Sjukresa,
						 @Vernr,
						 @PatNamn,
						 @PatGatuadress,
						 @PatPostnr,
						 @PatOrt,
						 @Resedatum,
						 @Namd,
						 @Fardsatt,
						 @KostStalle,
						 @Egenavgift,
						 @Totkostnad,
						 @Resebidrag,
						 @Moms,
						 @AnnanmottNr,
						 @AnnanmottNamn,
						 @AnnanmottGatuadr,
						 @AnnanmottPostnr,
						 @AnnanmottOrt,
						 @PatPnr,
						 @EmefteSR,
						 @AvdTel,
						 @PG,
						 @BG,
						 @Filnamn,
						 NULL
		END			
 
		/* L‰s del 1 i n‰sta rad */
		EXEC @ret = master..xp_ReadFile @Filpekare, @KundpostDel1 OUTPUT, @Radstatus OUTPUT, @AntalTkn OUTPUT
	END

	/* St‰ng filen */
	EXEC @ret = master..xp_CloseFile @Filpekare
	
	





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE SkapaPrositFilhuv_SP
	@Urvalsdat DATETIME
AS 
	DECLARE @TotSummaTxt 	CHAR(14)  /* Totalt fakturerat belopp */
	DECLARE @TotSummaDec    DECIMAL(19)
	DECLARE @UrvalDatTxt 	CHAR(10)  /* Urvalsdatum redigerat som text */
	DECLARE @KornDatTxt   	CHAR(10)  /* Kˆrningsdatum redigerat som text */
	DECLARE @KornDat 	DATETIME
	DECLARE @AntKundTxt	CHAR(06)
	DECLARE @AntFaktTxt	CHAR(06)

	/* NÂla fast och redigera kˆrningsdatum */
	SELECT @KornDat = GETDATE()
	EXECUTE	DatumTillStrDatum_SP @KornDat, 1, @KornDatTxt OUTPUT

	/* Redigera urvalsdatumet */
	EXECUTE	DatumTillStrDatum_SP @Urvalsdat, 1, @UrvalDatTxt OUTPUT	

	/* Tag reda pÂ antalet kunder */
	SELECT @AntKundTxt = CONVERT(CHAR(06), COUNT(*)) FROM UT_Kund_TB
	EXECUTE HogerStall_SP @AntKundTxt, 6, @AntKundTxt OUTPUT	

	/* Tag reda pÂ antalet fakturor */
	SELECT @AntFaktTxt = CONVERT(CHAR(06), COUNT(*)) FROM UT_FaktRadBel_TB
	EXECUTE HogerStall_SP @AntFaktTxt, 6, @AntFaktTxt OUTPUT	

	SELECT @TotSummaDec = SUM(CONVERT(DECIMAL(14),BELOPP)) from UT_FaktRadBel_TB
	EXECUTE RedVarde_SP "BELOPP", @TotSummaDec, @TotSummaTxt OUTPUT
	EXECUTE HogerStall_SP @TotSummaTxt, 14, @TotSummaTxt OUTPUT

	INSERT INTO UT_PrositFilHuv_TB(Posttyp,
					Urvaldat,
					Korningsdat,
					AntKund,
					AntFakt,
					SummaFaktBel)
				VALUES("0",
					@UrvalDatTxt,
					@KornDatTxt,
					@AntKundTxt,
					@AntFaktTxt,
					@TotSummaTxt) 
	




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE UT_SjukresorFaktpost_Ins_SP
/****************************************************************************************/
/* L‰gger in en post i UT_SjukresorFaktpost_TB. Formatterar f‰lten till r‰tt utseende.	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-16                                                                        	*/
/****************************************************************************************/
	@LevId		char(8), 
	@LevidNr	int,
	@FaktId		int,
	@Motpart	char(4),
	@Utbetform	char(2),
	@Faktbelopp	decimal(10,2), 		/* =Resebidrag */
	@Moms		decimal(7,2),
	@Referens	char(27),
	@KontStrang	char(60),
	@PatPnr	char(13)

AS
	DECLARE @FaktbeloppOreStr char(14)
	DECLARE @MomsOreStr char(14)
	/* Formattera f‰lt */
	SELECT @FaktbeloppOreStr = CONVERT(char(14),CONVERT(decimal(14),(@Faktbelopp * 100)))	EXEC HogerStall_SP @FaktbeloppOreStr, 14, @FaktbeloppOreStr OUTPUT

	SELECT @MomsOreStr = CONVERT(char(14), CONVERT(decimal(14),(@Moms * 100)))	EXEC HogerStall_SP @MomsOreStr, 14, @MomsOreStr OUTPUT
	
	/* L‰gg in posten */
	INSERT INTO UT_SjukresorFaktpost_TB
		(Posttyp,
		 LevId,
		 LevidNr,
		 FaktId,
		 Motpart,
		 Utbetform,
		 Filler1,
		 Filler2,
		 Faktbelopp,
		 Moms,
		 Referens,
		 KontStrang,
		 PatPnr)
	VALUES ("2",
		CONVERT(char(11),@LevId),
		@LevidNr,
		CONVERT(char(6), @FaktId),
		@Motpart,
		@Utbetform,
		SPACE(11),
		SPACE(15),		@FaktbeloppOreStr,
		@MomsOreStr,
		@Referens,
		@Kontstrang,
		@PatPnr)


		














GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE UT_SjukresorFilhuvud_Ins_SP
/****************************************************************************************/
/* L‰gger in en post i UT_SjukresorFilhuvud_TB. Formatterar f‰lten till r‰tt utseende.	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-16                                                                        	*/
/****************************************************************************************/
	@AntalFakt	int,
	@AntalLev	int,
	@Totkostnad	decimal(10,2)

AS
	DECLARE @DagensDatum	datetime
	DECLARE @Korningsdatum	char(10)
	DECLARE	@TotBeloppOre	char(14)
	DECLARE @AntalFaktStr	char(6)
	DECLARE @AntalLevStr		char(6)
	DECLARE @TotBeloppOreStr	char(14)
		/* Formattera f‰lt */
	SELECT @DagensDatum = GETDATE()
	EXEC DatumTillStrDatum_SP @DagensDatum, 1, @KorningsDatum OUTPUT

	SELECT @AntalFaktStr = CONVERT(char(6), @AntalFakt)
	EXEC HogerStall_SP @AntalFaktStr, 6, @AntalFaktStr OUTPUT

	SELECT  @AntalLevStr = CONVERT(char(6), @AntalLev)
	EXEC HogerStall_SP @AntalLevStr, 6, @AntalLevStr OUTPUT

	SELECT @TotBeloppOreStr = CONVERT(char(14), CONVERT(decimal(14),(@Totkostnad * 100)))
	EXEC HogerStall_SP @TotBeloppOreStr, 14, @TotBeloppOreStr OUTPUT

	/* L‰gg in posten */
	INSERT INTO UT_SjukresorFilhuvud_TB
		(Posttyp,
		 KorningsDatum,
		 AntalFakt,
		 AntalLev,
		 TotBelopp)
	VALUES ("0",
		@KorningsDatum,
		@AntalFaktStr,
		@AntalLevStr,
		@TotBeloppOreStr)
		







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE UT_SjukresorLevpost_Ins_SP
/****************************************************************************************/
/* L‰gger in en post i UT_SjukresorLevpost_TB. Formatterar f‰lten till r‰tt utseende.	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-16                                                                        	*/
/****************************************************************************************/
	@AndrTyp	char(1), 
	@LevId		char(8), 	@LevidNr	int,
	@Namn		char(30), 
	@Gatuadr	char(20), 
	@Postnr		char(5), 
	@Ort		char(15),
	@Postgiro	char(11), 
	@Bankgiro	char(15), 
	@Utbetform	char(2)


AS
		/* Formattera f‰lt */
	IF @Namn IS NULL SELECT @Namn = SPACE(35)
	IF @Gatuadr IS NULL SELECT @Gatuadr = SPACE(35)
	IF @Postnr IS NULL SELECT @Postnr = SPACE(5)
	IF @Ort IS NULL SELECT @Ort = SPACE(15)
	IF @Postgiro IS NULL SELECT @Postgiro = SPACE(11)
	IF @Bankgiro IS NULL SELECT @Bankgiro = SPACE(15)
		

	/* L‰gg in posten */
	INSERT INTO UT_SjukresorLevpost_TB
		(Posttyp,
		 Andringstyp,
		 LevId,
		 LevidNr,
		 Namn,
		 Adress2,
	  	 Postadress,
		 PostnrOrt,
		 Postgiro,
		 Bankgiro,
		 Utbetalningsform)
	VALUES ("1",
		@AndrTyp,
		CONVERT(char(11),@LevId),
		@LevidNr,
		CONVERT(char(35),@Namn),
		SPACE(35),
		CONVERT(char(35),@Gatuadr),
		CONVERT(char(35),(@Postnr + " " + @Ort)),
		@Postgiro,
		@Bankgiro,
		@Utbetform)
		




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE UT_SjukresorTextpost_Ins_SP
/****************************************************************************************/
/* L‰gger in en post i UT_SjukresorTextpost_TB. Formatterar f‰lten till r‰tt utseende.	*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-16                                                                        	*/
/****************************************************************************************/
	@LevId		char(8), 
	@LevidNr	int,
	@FaktId		int,
	@Datum		datetime,
	@Totkostnad	decimal(12,2),
	@Egenavgift	decimal(6,2),
	@Resebidrag	decimal(10,2),
	@AvdelningsTel	char(23)

AS
	DECLARE @Rad1		char(30)
	DECLARE @Rad2		char(30)
	DECLARE @Rad3		char(30)
	DECLARE @Rad4		char(30)
	DECLARE @TomDatum 	char(10)
	DECLARE @TotkostnOre	decimal(14)
	DECLARE @EgenavgOre	decimal(12)
	DECLARE @ResebidragOre	decimal(8)
	DECLARE @StrTotkostn 	char(14)
	DECLARE @StrEgenavg 	char(14)
	DECLARE @StrResebidrag 	char(14)
	
	/* Formattera f‰lt */
	EXEC DatumTillStrDatum_SP @Datum, 1, @TomDatum OUTPUT
	SELECT @TotKostnOre = @Totkostnad * 100
	SELECT @EgenavgOre = @Egenavgift * 100
	SELECT @ResebidragOre = @Resebidrag * 100
	EXEC RedVarde_SP "BELOPP", @TotkostnOre, @StrTotkostn OUTPUT
	EXEC RedVarde_SP "BELOPP", @EgenavgOre, @StrEgenavg OUTPUT
	EXEC RedVarde_SP "BELOPP", @resebidragOre, @StrResebidrag OUTPUT
	SELECT @Rad1 = CONVERT(char(30), "Resebidrag t o m " + @TomDatum)
	SELECT @Rad2 = CONVERT(char(30), "Totalkostnad " + LTRIM(@StrTotkostn))
	SELECT @Rad3 = CONVERT(char(30), "Egenavgift " + LTRIM(@StrEgenavg))
	SELECT @Rad4 = CONVERT(char(30), "Att erhÂlla " + LTRIM(@StrResebidrag))
	IF @AvdelningsTel IS NULL SELECT @AvdelningsTel = SPACE(30)

	/* L‰gg in rad1 */
	INSERT INTO UT_SjukresorTextpost_TB
		(Posttyp,
		 LevId,
		 LevidNr,
		 FaktId,
		 Radnr,
		 Textrad)
	VALUES ("3",
		CONVERT(char(11),@LevId),
		@LevidNr,
		CONVERT(char(6),@FaktId),
		"11 ",
		@Rad1)

	/* L‰gg in rad2 */
	INSERT INTO UT_SjukresorTextpost_TB
		(Posttyp,
		 LevId,
		 LevidNr,
		 FaktId,
		 Radnr,
		 Textrad)
	VALUES ("3",
		CONVERT(char(11),@LevId),
		@LevidNr,
		CONVERT(char(6),@FaktId),
		"12 ",
		@Rad2)

	/* L‰gg in rad3 */
	INSERT INTO UT_SjukresorTextpost_TB
		(Posttyp,
		 LevId,
		 LevidNr,
		 FaktId,
		 Radnr,
		 Textrad)
	VALUES ("3",
		CONVERT(char(11),@LevId),
		@LevidNr,
		CONVERT(char(6),@FaktId),
		"13 ",
		@Rad3)

	/* L‰gg in rad4 */
	INSERT INTO UT_SjukresorTextpost_TB
		(Posttyp,
		 LevId,
		 LevidNr,
		 FaktId,
		 Radnr,
		 Textrad)
	VALUES ("3",
		CONVERT(char(11),@LevId),
		@LevidNr,
		CONVERT(char(6),@FaktId),
		"14 ",
		@Rad4)

	/* L‰gg in rad5 */
	INSERT INTO UT_SjukresorTextpost_TB
		(Posttyp,
		 LevId,
		 LevidNr,
		 FaktId,
		 Radnr,
		 Textrad)
	VALUES ("3",
		CONVERT(char(11),@LevId),
		@LevidNr,
		CONVERT(char(6),@FaktId),
		"15 ",
		CONVERT(char(30),@AvdelningsTel))
	
		









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE UT_Sjukresor_DelAll_SP
/****************************************************************************************/
/* Tar bort alla poster som finns i UT tabellerna				 	*/
/*                                                                                      */
/* Ulla Nilsson, OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
AS 

	DELETE FROM UT_SjukresorFilhuvud_TB
	DELETE FROM UT_SjukresorLevpost_TB
	DELETE FROM UT_SjukresorFaktpost_TB
	DELETE FROM UT_SjukresorTextpost_TB




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktHuv_Delete_Sp]
	(@UT_FaktHuvId_1 	[int])

AS DELETE [UT_FaktHuv_TB] 

WHERE 
	( [Ut_FaktHuvId]	 = @UT_FaktHuvId_1)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE Ut_FaktHuv_FindByKundId_Sp
	@KundId	[char](8)
 AS
/* 99-07-29 SELECT 	Ut_FaktHuvId,
	Posttyp,
	Kundid,
	Forvaltning, 
	Landkod, 
	Valuta, 
	Sprakkod, 	
	Momskod ,
	Kst
FROM ut_fakthuv_tb
WHERE KundId = @KundId */

SELECT 	Ut_FaktHuvId,
	Posttyp,
	Kundid,
	Forvaltning, 
	Landkod, 
	Valuta, 
	Sprakkod, 	
	Momskod ,
	Kst
FROM ut_fakthuv_tb
WHERE UT_KundId = CONVERT(INTEGER, @KundId)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktHuv_Insert_Sp]
	(@Posttyp 	[char](1),
	 @Kundid 	[char](8),
	 @Forvaltning 	[char](2),
	 @Landkod 	[char](2),
	 @Valuta 	[char](3),
	 @Sprakkod 	[char](1),
	 @Momskod 	[char](2))

AS INSERT INTO [UT_FaktHuv_TB] 
	 ( [Posttyp],
	 [Kundid],
	 [Forvaltning],
	 [Landkod],
	 [Valuta],
	 [Sprakkod],
	 [Momskod]) 
 
VALUES 
	( @Posttyp,
	 @Kundid,
	 @Forvaltning,
	 @Landkod,
	 @Valuta,
	 @Sprakkod,
	 @Momskod)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktHuv_Update_Sp]
	(@UT_FaktHuvId 	[int],
	 @Posttyp 	[char](1),
	 @Kundid 	[char](8),
	 @Forvaltning 	[char](2),
	 @Landkod 	[char](2),
	 @Valuta 	[char](3),
	 @Sprakkod 	[char](1),
	 @Momskod 	[char](2))

AS UPDATE [UT_FaktHuv_TB] 

SET  [Posttyp]	 = @Posttyp,
	 [Kundid]	 = @Kundid,
	 [Forvaltning]	 = @Forvaltning,
	 [Landkod]	 = @Landkod,
	 [Valuta]	 = @Valuta,
	 [Sprakkod]	 = @Sprakkod,
	 [Momskod]	 = @Momskod 

WHERE 
	( [UT_FaktHuvId]	 = @UT_FaktHuvId)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktRadBel_Delete_Sp]
	(@UT_FaktRadBelId_1 	[int])

AS DELETE [UT_FaktRadBel_TB] 

WHERE 
	( [UT_FaktRadBelId]	 = @UT_FaktRadBelId_1)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ut_FaktRadBel_FindByFaktHuvId_Sp
		@FaktHuvId [Char](8)
AS
SELECT 	Posttyp,
		FaktText,
		Momskod1,
		Konteringsstrang,
		Belopp,
		Momskod2,
		KundId,
		Valuta,
		FaktHuvId,
		Lopnr
FROM 		ut_faktRadbel_tb
WHERE 	FaktHuvId = @FaktHuvID
ORDER BY	Lopnr







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktRadBel_Insert_Sp]
	(@Posttyp 	[char](1),
	 @FaktText 	[char](50),
	 @Momskod1 	[char](2),
	 @Konteringsstrang 	[char](60),
	 @Belopp 	[char](15),
	 @Momskod2 	[char](2),
	 @FaktHuvId 	[int],
	 @Lopnr	[int])

AS INSERT INTO [UT_FaktRadBel_TB] 
	 ( [Posttyp],
	 [FaktText],
	 [Momskod1],
	 [Konteringsstrang],
	 [Belopp],
	 [Momskod2],
	 [FaktHuvId],
	 [Lopnr])  
VALUES 
	(@Posttyp,
	 @FaktText,
	 @Momskod1,
	 @Konteringsstrang,
	 @Belopp,
	 @Momskod2,
	 @FaktHuvId,
	 @Lopnr)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktRadBel_Update_Sp]
	(@UT_FaktRadBelId 	[int],
	 @Posttyp	[char](1),
	 @FaktText 	[char](50),
	 @Momskod1 	[char](2),
	 @Konteringsstrang 	[char](60),
	 @Belopp	[char](15),
	 @Momskod2 	[char](2),
	 @FaktHuvId 	[int],
	 @Lopnr	[int])

AS UPDATE [UT_FaktRadBel_TB] 

SET  	[Posttyp]	 = @Posttyp,
	[FaktText]	 = @FaktText,
	[Momskod1]	 = @Momskod1,
	[Konteringsstrang]	 = @Konteringsstrang,
	[Belopp]	 = @Belopp,
	[Momskod2]	 = @Momskod2,
	[FaktHuvId]	 = @FaktHuvId,
	[Lopnr]		 = @Lopnr

WHERE 
	( [UT_FaktRadBelId]	 = @UT_FaktRadBelId)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktRadText_Delete_Sp]
	(@UT_FaktRadTextId_1 	[int])

AS DELETE [UT_FaktRadText_TB] 

WHERE 
	( [UT_FaktRadTextId]	 = @UT_FaktRadTextId_1)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ut_FaktRadText_FindByFaktHuvId_Sp
	@FaktHuvId [char](8),
	@BelLopnr [int]
AS
SELECT 	Posttyp,
	FaktText,
	Momskod,
	FaktHuvId,	BelLopnr,
	Lopnr
FROM UT_FaktRadText_TB
WHERE 	FaktHuvId = @FaktHuvId
AND		BelLopnr = @BelLopnr
ORDER by lopnr








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktRadText_Insert_Sp]
	(@Posttyp	[char](1),
	 @FaktText 	[char](50),
	 @Momskod 	[char](2),
	 @FaktHuvId 	[int],
	 @BelLopnr	[int],
	 @Lopnr	[int])

AS INSERT INTO [UT_FaktRadText_TB] 
	 ( [Posttyp],
	 [FaktText],
	 [Momskod],
	 [FaktHuvId],
	 [BelLopnr],
	 [Lopnr]) 
 
VALUES 
	( @Posttyp,
	 @FaktText,
	 @Momskod,
	 @FaktHuvId,
	 @BelLopnr,
	 @Lopnr)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_FaktRadText_Update_Sp]
	(@UT_FaktRadTextId	[int],
	 @Posttyp	[char](1),
	 @FaktText 	[char](50),
	 @Momskod 	[char](2),
	 @FaktHuvId 	[int],
 	 @BelLopnr	[int],
	 @Lopnr	[int])

AS UPDATE [UT_FaktRadText_TB] 

SET  	 [Posttyp]	 = @Posttyp,
	 [FaktText]	 = @FaktText,
	 [Momskod]	 = @Momskod,
	 [FaktHuvId]	 = @FaktHuvId,
	 [BelLopnr]	 = @BelLopnr,
	 [Lopnr]	 = @Lopnr 

WHERE 
	( [UT_FaktRadTextId]	 = @UT_FaktRadTextId)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_Kund_Delete_Sp]
	(@UT_KundId_1 	[int])

AS DELETE [UT_Kund_TB] 

WHERE 
	( [UT_KundId]	 = @UT_KundId_1)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Ut_Kund_FindByKundId_Sp
	@KundId	[char](8)
 AS
SELECT	Posttyp,
	Andringstyp,
	Kundid, 
	Kundnamn, 
	Namn2,
	Postadress, 
	OrtOchOpostnr,
	Momsregnr,
	Landkod,	
	Valuta, 
	Sprakkod,
	Momskod
FROM Ut_KUND_TB
WHERE KundId = @KundId





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_Kund_Insert_Sp]
	(@Posttyp 	[char](1),
	 @Andringstyp 	[char](1),
	 @Kundid 	[char](8),
	 @Kundnamn 	[char](35),
	 @Namn2 	[char](35),
	 @Postadress 	[char](35),
	 @OrtOchOpostnr 	[char](35),
	 @Momsregnr	[char](20),
	 @Landkod 	[char](2),
	 @Valuta 	[char](3),
	 @Sprakkod 	[char](1),
	 @Momskod 	[char](2))

AS INSERT INTO [UT_Kund_TB] 
	 ( [Posttyp],
	 [Andringstyp],
	 [Kundid],
	 [Kundnamn],
	 [Namn2],
	 [Postadress],
	 [OrtOchOpostnr],
	 [Momsregnr],
	 [Landkod],
	 [Valuta],
	 [Sprakkod],
	 [Momskod]) 
 
VALUES 
	( @Posttyp,
	 @Andringstyp,
	 @Kundid,
	 @Kundnamn,
	 @Namn2,
	 @Postadress,
	 @OrtOchOpostnr,
	 @Momsregnr,
	 @Landkod,
	 @Valuta,
	 @Sprakkod,
	 @Momskod)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [Ut_Kund_ListAll_Sp]
AS
SELECT	Posttyp,
		Andringstyp,
		Kundid, 
		Kundnamn, 
		Namn2,
		Postadress, 
		OrtOchOpostnr,
		Momsregnr,
		Landkod,	
		Valuta, 
		Sprakkod,
		Momskod,
		Motpart,
		UT_KundId
FROM 		Ut_KUND_TB


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_Kund_Update_Sp]
	(@UT_KundId 	[int],
	 @Posttyp	[char](1),
	 @Andringstyp 	[char](1),
	 @Kundid	[char](8),
	 @Kundnamn 	[char](35),
	 @Namn2	[char](35),
	 @Postadress 	[char](35),
	 @OrtOchOpostnr 	[char](35),
	 @Momsregnr	[char](20),
	 @Landkod 	[char](2),
	 @Valuta 	[char](3),
	 @Sprakkod 	[char](1),
	 @Momskod 	[char](2))

AS UPDATE [UT_Kund_TB] 

SET  [Posttyp]	 	= @Posttyp,
	 [Andringstyp]	 = @Andringstyp,
	 [Kundid]	 = @Kundid,
	 [Kundnamn]	 = @Kundnamn,
	 [Namn2]	 = @Namn2,
	 [Postadress]	 = @Postadress,
	 [OrtOchOpostnr] = @OrtOchOpostnr,
	 [Momsregnr]	 = @Momsregnr,
	 [Landkod]	 = @Landkod,
	 [Valuta]	 	= @Valuta,
	 [Sprakkod]	 = @Sprakkod,
	 [Momskod]	 = @Momskod 

WHERE 
	( [UT_KundId]	 = @UT_KundId)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_PrositFilHuv_Delete_Sp]
/* Det kommer alltid att enbart finnas en post i denna tabell sÂ en delete plockar bort denna, dvs alla. */

AS DELETE [Ge_PrositFilHuv_TB] 






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_PrositFilHuv_Insert_Sp]
	(@Posttyp	CHAR(01),
	 @Urvaldat	CHAR(10),
	 @Korningsdat	CHAR(10),
	 @AntKund	CHAR(06),
	 @AntFakt	CHAR(06),
	 @SummaFaktBel   CHAR(14))

AS INSERT INTO [Ut_PrositFilHuv_TB] 
	(Posttyp,
	 Urvaldat,
	 Korningsdat,
	 AntKund,
	 AntFakt,
	 SummaFaktBel) 
VALUES 
	(@Posttyp,
	 @Urvaldat,
	 @Korningsdat,
	 @AntKund,
	 @AntFakt,
	 @SummaFaktBel)







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Ut_PrositFilHuv_ListAll_Sp]
/* Vi kˆr en ListAll ‰ven om det bara kommer att vara en post i taget i denna tabell. */
AS 
SELECT	Posttyp,
		Urvaldat,
		Korningsdat,
		AntKund,
		AntFakt,
		SummaFaktBel
FROM  		[Ut_PrositFilHuv_TB] 






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE VA_Sjukresor_InsById_SP
/****************************************************************************************/
/* L‰gger in en post i VA tabellen							*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-11                                                                        	*/
/****************************************************************************************/
	@SjukreseId int

AS 

	INSERT INTO VA_Sjukresor_TB
		(Fildatum,
		 AvsandarId,
		 Sjukresa,
		 Vernr,
		 PatNamn,
		 PatGatuadress,
		 PatPostnr,
		 PatOrt,
		 ReseDatum,
		 Namd,
		 Fardsatt,
		 KostnStalle,
		 Egenavgift,
		 Totalkostnad,
		 Resebidrag,
		 Moms,
		 AnnanMottNr,
		 AnnanMottNamn,
		 AnnanMottGatuadr,
		 AnnanMottPostNr,
		 AnnanMottOrt,
		 PatPnr,
		 EmefteSjukresor,
		 AvdelningsTelefon,
		 Postgiro,
		 Bankgiro,
		 Infilnamn,
		 Histfilnamn) 
	SELECT 	Fildatum,
		AvsandarId,
		Sjukresa,
		Vernr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatOrt,
		ReseDatum,
		Namd,
		Fardsatt,
		KostnStalle,
		Egenavgift,
		Totalkostnad,
		Resebidrag,
		Moms,
		AnnanMottNr,
		AnnanMottNamn,
		AnnanMottGatuadr,
		AnnanMottPostNr,
		AnnanMottOrt,
		PatPnr,
		EmefteSjukresor,
		AvdelningsTelefon,
		Postgiro,
		Bankgiro,
		Infilnamn,
		Histfilnamn
	FROM IN_Sjukresor_TB
	WHERE IN_SjukreseId = @SjukreseId











GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE VA_Sjukresor_UpdById_SP
/****************************************************************************************/
/* Uppdaterar en VA post med bearbetningsdatum						*/
/*                                                                                      */
/* Ulla Nilsson - OOPERA Konsult AB                                                 	*/
/* 2000-02-10                                                                        	*/
/****************************************************************************************/
	@SjukreseId int 
AS

	/* Uppdatera posten */
	UPDATE VA_Sjukresor_TB
	SET BearbetningsDatum = GETDATE()
	WHERE VA_SjukreseId = @SjukreseId




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Va_Kund_DeleteToFildatum_Sp
	@Fildatum 	datetime

AS 
	DELETE	Va_Kund_TB
	WHERE	Fildatum <= @Fildatum
	AND	(FaktDat Is Not Null
	AND	FaktDat != '')




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Va_Kund_Delete_Sp]
	(@Va_KundId_1 	[int])

AS DELETE [Va_Kund_TB] 

WHERE 
	( [Va_KundId]	 = @Va_KundId_1)





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Va_Kund_FindByKostnStalle_Sp]
	@KostnStalle	[char](3)
AS
	SELECT	Kundnr
	
	FROM	Va_Kund_TB

	WHERE 
		KostnStalle = @KostnStalle








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Va_Kund_FindByLandstingsId_Sp]
	@LandstingsId	[char](10)
AS
	SELECT	Kundnr
	
	FROM	Va_Kund_TB

	WHERE 
		Landstingskundnr = @LandstingsId









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Va_Kund_FindByPatPnr_Sp]
	@PatPnr	[char](10)
AS
	SELECT	
	 	Avstgrupp,
		Fildatum,
	 	AvsandarId,
		Vardtyp,
		Rakningsnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,
		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,	
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		FaktDat,
		Infilnamn,
		HistFilnamn
	
	FROM	Va_Kund_TB

	WHERE 
		PatPnr = @PatPnr









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Va_Kund_Insert_Sp]
	(@AvstGrupp 	[varchar](10),
	 @Fildatum 	[datetime],
	 @AvsandarId 	[char](10),
	 @Vardtyp 	[char](2),
	 @Rakningsnr 	[char](8),
	 @Kundnr	[char](10),
	 @PatNamn 	[char](30),
	 @PatGatuadress 	[char](20),
	 @PatPostnr	[char](5),
	 @PatPostadress 	[char](15),
	 @InskrivnDat 	[datetime],
	 @Namd	[char](2),
	 @KostnStalle 	[char](3),
	 @BehandlKod 	[char](1),
	 @AntDagar 	[char](4), /* Christer 2000-11-09. Tidigare = char(03) */
	 @Avgift 	[char](10),
	 @Reseersattning 	[char](10),
	 @AnnanBetPnr 	[char](10),
	 @AnnanBetNamn 	[char](30),
	 @AnnanBetGatuadr 	[char](20),
	 @AnnanBetPostNr 	[char](5),
	 @AnnanBetPostAdr 	[char](15),
	 @PatPnr	[char](10),
	 @UtskrivnDat 	[datetime],
	 @AmbulansAvgift 	[char](8),
	 @OppenvardsAvgift 	[char](9),
	 @Avdelningsnamn 	[char](30),
	 @Avdelningstelefon 	[char](12),
	 @Landstingskundnr 	[char](10),
	 @FaktDat 	[datetime],
	@Infilnamn	[char](20),
	@HistFilnamn	[char](20))

AS INSERT INTO [Va_Kund_TB] 
	 ( [Avstgrupp],
	 [Fildatum],
	 [AvsandarId],
	 [Vardtyp],
	 [Rakningsnr],
	 [Kundnr],
	 [PatNamn],
	 [PatGatuadress],
	 [PatPostnr],
	 [PatPostadress],
	 [InskrivnDat],
	 [Namd],
	 [KostnStalle],
	 [BehandlKod],
	 [AntDagar],
	 [Avgift],
	 [Reseersattning],
	 [AnnanBetPnr],
	 [AnnanBetNamn],
	 [AnnanBetGatuadr],
	 [AnnanBetPostNr],
	 [AnnanBetPostAdr],
	 [PatPnr],
	 [UtskrivnDat],
	 [AmbulansAvgift],
	 [OppenvardsAvgift],
	 [Avdelningsnamn],
	 [Avdelningstelefon],
	 [Landstingskundnr],
	 [FaktDat],
	[Infilnamn],
	[HistFilnamn]) 
 
VALUES 
	( @AvstGrupp,
	 @Fildatum,
	 @AvsandarId,
	 @Vardtyp,
	 @Rakningsnr,
	 @Kundnr,
	 @PatNamn,
	 @PatGatuadress,
	 @PatPostnr,
	 @PatPostadress,
	 @InskrivnDat,
	 @Namd,
	 @KostnStalle,
	 @BehandlKod,
	 @AntDagar,
	 @Avgift,
	 @Reseersattning,
	 @AnnanBetPnr,
	 @AnnanBetNamn,
	 @AnnanBetGatuadr,
	 @AnnanBetPostNr,
	 @AnnanBetPostAdr,
	 @PatPnr,
	 @UtskrivnDat,
	 @AmbulansAvgift,
	 @OppenvardsAvgift,
	 @Avdelningsnamn,
	 @Avdelningstelefon,
	 @Landstingskundnr,
	 @FaktDat,
	@Infilnamn,
	@HistFIlnamn)









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE Va_Kund_ListFildatumDistinct_Sp	
AS
	SELECT	DISTINCT Fildatum	
	FROM		 Va_Kund_TB
	ORDER BY 	 Fildatum ASC





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE [Va_Kund_Update_Sp]
	(@VA_KundId	[char],
	 @Avstgrupp 	[char](10),
	 @Fildatum 	[datetime],
	 @AvsandarId 	[char](10),
	 @Vardtyp	[char](2),
	 @Rakningsnr 	[char](8),
	@KundNr	[char](10),
	 @PatNamn 	[char](30),
	 @PatGatuadress 	[char](20),
	 @PatPostnr	[char](5),
	 @PatPostadress 	[char](15),
	 @InskrivnDat 	[datetime],
	 @Namd 	[char](2),
	 @KostnStalle 	[char](3),
	 @BehandlKod 	[char](1),
	 @AntDagar 	[char](4), /* Christer 2000-11-09. Tidigare = char(03) */
	 @Avgift 	[char](10),
	 @Reseersattning 	[char](10),
	 @AnnanBetPnr 	[char](10),
	 @AnnanBetNamn 	[char](30),
	 @AnnanBetGatuadr 	[char](20),
	 @AnnanBetPostNr 	[char](5),
	 @AnnanBetPostAdr 	[char](15),
	 @PatPnr	[char](10),
	 @UtskrivnDat 	[datetime],
	 @AmbulansAvgift 	[char](8),
	 @OppenvardsAvgift 	[char](9),
	 @Avdelningsnamn 	[char](30),
	 @Avdelningstelefon 	[char](12),
	 @Landstingskundnr 	[char](10),
	 @FaktDat 	[datetime],
	@Infilnamn	[char](20),
	@HistFilnamn	[char](20))

AS UPDATE [Va_Kund_TB] 

SET  	 [Avstgrupp]	 = @Avstgrupp,
	 [Fildatum]	 = @Fildatum,
	 [AvsandarId]	 = @AvsandarId,
	 [Vardtyp]	 = @Vardtyp,
	 [Rakningsnr]	 = @Rakningsnr,
	[KundNr]	=@KundNr,
	 [PatNamn]	 = @PatNamn,
	 [PatGatuadress]	 = @PatGatuadress,
	 [PatPostnr]	 = @PatPostnr,
	 [PatPostadress]	 = @PatPostadress,
	 [InskrivnDat]	 = @InskrivnDat,
	 [Namd]	 = @Namd,
	 [KostnStalle]	 = @KostnStalle,
	 [BehandlKod]	 = @BehandlKod,
	 [AntDagar]	 = @AntDagar,
	 [Avgift]	 = @Avgift,
	 [Reseersattning]	 = @Reseersattning,
	 [AnnanBetPnr]	 = @AnnanBetPnr,
	 [AnnanBetNamn]	 = @AnnanBetNamn,
	 [AnnanBetGatuadr]	 = @AnnanBetGatuadr,
	 [AnnanBetPostNr]	 = @AnnanBetPostNr,
	 [AnnanBetPostAdr]	 = @AnnanBetPostAdr,
	 [PatPnr]	 = @PatPnr,
	 [UtskrivnDat]	 = @UtskrivnDat,
	 [AmbulansAvgift]	 = @AmbulansAvgift,
	 [OppenvardsAvgift]	 = @OppenvardsAvgift,
	 [Avdelningsnamn]	 = @Avdelningsnamn,
	 [Avdelningstelefon]	 = @Avdelningstelefon,
	 [Landstingskundnr]	 = @Landstingskundnr,
	 [FaktDat]	 = @FaktDat, 
	[Infilnamn]	=@Infilnamn,
	[HistFilnamn]	=@HistFilnamn

WHERE 
	( [Va_KundId]	 = @VA_KundId	)









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE VanteTillUtFELHANTERING_SP
/**********************************************************************************************/
/* Plockar undan belopp som ej kan konteras */
/**********************************************************************************************/
AS


/* Bˆrja med fakturatexter till de belopp som har konteringsproblem */

INSERT INTO UT_FELFaktRadText_TB
	select t.* 
	from ut_faktradbel_tb b, ut_faktradtext_tb t
	where b.konteringsstrang LIKE "?%"
	and t.FaktHuvId = b.FaktHuvId
	and t.BelLopnr = b.Lopnr

/* Kopiera sedan ˆver alla beloppen */
INSERT INTO UT_FELFaktRadBel_TB
	select * from ut_faktradbel_tb where konteringsstrang LIKE "?%"	

/* SÂ rensar vi upp motsvarande frÂn ursprungstabellerna */
delete from UT_FaktRadText_TB
where UT_FaktRadTextId IN(SELECT UT_FaktRadTextId FROM UT_FELFaktRadText_TB)

delete from UT_FaktRadBel_TB
where UT_FaktRadBelId IN (select UT_FaktRadBelId from UT_FELFaktRadBel_TB)

/* Blev det nÂgon faktura utan rader nu ? */
INSERT INTO Ut_FELFaktHuv_TB
	select *
	from ut_fakthuv_tb
	where UT_FaktHuvId not in (SELECT DISTINCT FaktHuvId from ut_faktradbel_tb)

/* SÂ raderar vi dessa fakturor */
DELETE FROM Ut_FaktHuv_TB
	WHERE UT_FaktHuvId IN (SELECT UT_FaktHuvId FROM ut_FELFaktHuv_tb)

/* Blev det nÂgon kund utan faktura nu ?*/
INSERT INTO Ut_FELKund_TB
	select * from ut_kund_tb
	where Kundid not in (SELECT distinct Kundid from ut_fakthuv_tb)

DELETE FROM Ut_Kund_TB
	WHERE Kundid not in (SELECT distinct Kundid from ut_fakthuv_tb)
/* 990720 Tag ‰ven bort landsting som inte l‰ngre finns */

INSERT INTO Ut_RaderadKund_TB
	select * from ut_kund_tb
	WHERE Kundnamn LIKE "?%"

DELETE FROM UT_Kund_TB WHERE Kundnamn LIKE "?%"


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



CREATE PROCEDURE VanteTillUtLandstingKredit_SP
/**********************************************************************************************/
/* Pris- och texts‰ttning gentemot andra landsting - kreditfakturor                           */
/*                                                                                            */
/*                                                                                            */
/* Christer Dahl - OOPERA Konsult AB                                                          */
/* Version 0.0 1999-04-26                                                                     */
/*                                                                                            */
/**********************************************************************************************/
 	@Urvalsdat	  DATETIME,	  /* De poster som ska faktureras ska vara inl‰sta fˆre detta datum */
 	@Omfakturering	  BIT,	 	  /* Om = 0 ‰r det EJ omfakturering, om = 1 ska poster som redan fakturerats tas med */
	@FaktOmgang 	  INT		  /* Anger lˆpnummer fˆr faktureringsomgÂngen */
AS
/* Variabler fˆr att ta emot data frÂn cursorn */
	DECLARE @Va_KundId		INTEGER
	DECLARE @AvstGrupp 		varchar(50)
	DECLARE @Fildatum 		datetime
	DECLARE @AvsandarId 		char(10)
	DECLARE @Vardtyp 		char(2)
	DECLARE @Rakningsnr 		char(8)
	DECLARE @Kundnr 		char(10)
	DECLARE @PatNamn 		char(30)
	DECLARE @PatGatuadress 		char(20)
	DECLARE @PatPostnr 		char(5)
	DECLARE @PatPostadress 		char(15)
	DECLARE @InskrivnDat 		datetime
	DECLARE @Namd 			char(2)
	DECLARE @KostnStalle 		char(3)
	DECLARE @BehandlKod 		char(1)
	DECLARE @AntDagar 		char(4)
	DECLARE @Avgift 		char(10)
	DECLARE @Reseersattning 	char(10)
	DECLARE @AnnanBetPnr 		char(10)
	DECLARE @AnnanBetNamn 		char(30)
	DECLARE @AnnanBetGatuadr 	char(20)
	DECLARE @AnnanBetPostNr 	char(5)
	DECLARE @AnnanBetPostAdr 	char(15)
	DECLARE @PatPnr 		char(10)
	DECLARE @UtskrivnDat 		datetime
	DECLARE @AmbulansAvgift 	char(8)
	DECLARE @OppenvardsAvgift 	char(9)
	DECLARE @Avdelningsnamn 	char(30)
	DECLARE @Avdelningstelefon 	char(12)
	DECLARE @Landstingskundnr 	char(10)
	DECLARE @FaktDat 		datetime
	DECLARE @InFilnamn 		char(20)
	DECLARE @HistFilnamn 		char(20)

/* Variabler fˆr att l‰gga till information till Prosit */
	DECLARE @PrositKundnr 		CHAR(08) 
	DECLARE @PrositAndringstyp 	CHAR(01) /* I eller U beroende pÂ om kunn ‰r ny mot Prosit eller ej */
	DECLARE @Kundnamn		CHAR(35) /* Namn pÂ kund som ska l‰ggas ut i Prosit. Kan vara pat eller annan betalare */
	DECLARE	@Postadress		CHAR(35)
	DECLARE	@OrtOchOpostnr		CHAR(35)
	
/* Variabler fˆr att hÂlla reda pÂ n‰rmast fˆregÂende v‰rde av viss typ */
	DECLARE @ForegPatPnr 		CHAR(10) /* Fˆr att hÂlla reda pÂ vilket personnr som behandlades senast */
	DECLARE @ForegLandsting   	CHAR(10) /* Fˆr att hÂlla reda pÂ vilken vÂrdtyp som behandlades senast */
	DECLARE @ForegNamd      	CHAR(02) /* Fˆr att hÂlla reda pÂ vilken n‰md som behandlades senast */

	DECLARE @Summa          	DECIMAL(14) /* Summering per kund */
	DECLARE @FaktHuvId		INT	 /* Identitet fˆr fakturahuvud */

	DECLARE @SenasteBelLopnr	INT	/* Senaste beloppsradlˆpnummer inom faktura */
	DECLARE @SenasteTxtLopnr	INT	/* Senaste textlˆpnummer inom beloppsrad */

	DECLARE	@Konteringsstrang       CHAR(60) /* Den sammanslagna konteringsstr‰ngen */
	DECLARE @FaktText		CHAR(50) /* Text som ska visas pÂ fakturan */
	
	DECLARE @Belopp			DECIMAL(15) /* Belopp att fakturera */
	DECLARE @PerDagBel		DECIMAL(15)
	DECLARE @KundBelopp		DECIMAL(15) /* Belopp att fakturera */
	DECLARE @KundBelPerDag		DECIMAL(15)
	DECLARE @Belopp19		DECIMAL(19)
	DECLARE @RedBel15		CHAR(15)
	DECLARE @RedBel14		CHAR(14)

	DECLARE @RedDatStr		CHAR(10)
	DECLARE @TomDat			DATETIME

	DECLARE @APrisAntalTxt		CHAR(28)

	DECLARE @Motpart		CHAR(04)
	DECLARE @FaktKst		CHAR(04)
	DECLARE @UT_KundId 		INTEGER

/* Fˆrst en cursor fˆr alla kunder */
	DECLARE KundCursor CURSOR
	FOR SELECT Va_KundId,
		AvstGrupp,
		Fildatum,
		AvsandarId,
		Vardtyp,
		Rakningsnr,
		Kundnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		InFilnamn,
		HistFilnamn 
	FROM Va_Kund_TB
	WHERE Fildatum <= @Urvalsdat
	AND Landstingskundnr <> " "
	AND substring(AntDagar,1,1) = "-"
/* Fˆre CDs ‰ndring AND (FaktDat IS NULL OR FaktDat = @Urvalsdat) */
	AND (FaktDat IS NULL OR FaktOmgang = @FaktOmgang)
	ORDER BY Landstingskundnr, Namd, PatPnr
  
	OPEN KundCursor
  
	FETCH NEXT FROM KundCursor 
	INTO @Va_KundId,
		@AvstGrupp,
		@Fildatum,
		@AvsandarId,
		@Vardtyp,
		@Rakningsnr,
		@Kundnr,
		@PatNamn,
		@PatGatuadress,
		@PatPostnr,
		@PatPostadress,
		@InskrivnDat,
		@Namd,
		@KostnStalle,
		@BehandlKod,
		@AntDagar,
		@Avgift,
		@Reseersattning,
		@AnnanBetPnr,
		@AnnanBetNamn,
		@AnnanBetGatuadr,
		@AnnanBetPostNr,
		@AnnanBetPostAdr,
		@PatPnr,
		@UtskrivnDat,
		@AmbulansAvgift,
		@OppenvardsAvgift,
		@Avdelningsnamn,
		@Avdelningstelefon,
		@Landstingskundnr,
		@InFilnamn,
		@HistFilnamn 
  
	/* Initiera alla foreg och senaste-variabler */
	SELECT @ForegPatPnr = "0000000000"
	SELECT @ForegLandsting = "  "
	SELECT @ForegNamd = "  "
	SELECT @SenasteBelLopnr = 0
	SELECT @SenasteTxtLopnr = 0

	/* Initiera Summeringen */
	SELECT @Summa = 0

	/* Inled en transaktion fˆr bearbetningen */
	BEGIN TRANSACTION

	/* Loopa ˆver alla rader i cursorn */
	WHILE @@FETCH_STATUS = 0
	BEGIN

	/* Avgˆr innehÂllet i variabler som ska ut till prosit */
		if exists (SELECT * FROM GE_Landsting_TB WHERE VaniaLandstingsnr = @Landstingskundnr)
		BEGIN
			SELECT @Kundnamn = Landstingsnamn,
				@Postadress = Postadress,
				@OrtOchOpostnr = Postnummer + Ort,
				@PrositKundnr = PrositLandstingsnr,
				@PrositAndringstyp = "U",
				@Motpart = Motpart
			FROM GE_Landsting_TB
			WHERE VaniaLandstingsnr = @Landstingskundnr
		END
		ELSE
		BEGIN
			SELECT @Kundnamn = "???? - SAKNAS !!!",
				@Postadress = "??? - SAKNAS !!!",
				@OrtOchOpostnr = "???",
				@PrositKundnr = RIGHT(@Landstingskundnr, 8),
				@PrositAndringstyp = "?",
				@Motpart = "???"
		END
	
		INSERT INTO UT_Kund_TB (Posttyp,
				Andringstyp,
				Kundid,
				Kundnamn,
				Namn2,
				Postadress,
				OrtOchOpostnr,
				Momsregnr,
				Landkod,
				Valuta,
				Sprakkod,
				Momskod,
				Motpart)
		VALUES ("1",
				@PrositAndringstyp,
				@PrositKundnr,
				@Kundnamn,
				SPACE(35), /* Kan vara t ex C/O Adress. Plockas ur vanias kundnamn */
				@Postadress,
				@OrtOchOpostnr,
				SPACE(20),
				"SE",
				"SEK",
				"S",
				"MF",
				@Motpart)
/* 99-07-29 */
	  /* Tag genast reda pÂ vad som blev den nya kundidentiteten */
	  SELECT @UT_KundId = MAX(UT_KundId) FROM UT_Kund_TB
/* --------- */

	  /* SELECT @ForegLandsting = @Landstingskundnr */

	/*   WHILE  @@FETCH_STATUS = 0
   	   BEGIN*/
   	/* Skriv ett nytt fakturahuvud */
		SELECT @FaktKst = "    "
		IF @Namd = "10"
		BEGIN
			SELECT @FaktKst = "1000"
		END
	
		IF @Namd = "13"
		BEGIN
			SELECT @FaktKst = "2500"
		END

      		INSERT INTO UT_FaktHuv_TB(Posttyp,
						Kundid,
						Forvaltning,
						Landkod,
						Valuta,
						Sprakkod,
						Momskod,
						Kst, 
						UT_KundId)
      					VALUES("2",
						@PrositKundnr,
						@Namd,
						"SE",
						"SEK",
						"S",
						"MF",
						@FaktKst,
						@UT_KundId)

		/* Vilket idnr fick fakturahuvudet? */
		SELECT @FaktHuvId = MAX(UT_FaktHuvId) FROM UT_FaktHuv_TB

		/* Initiera per faktura */
		SELECT @SenasteBelLopnr = 0
		SELECT @SenasteTxtLopnr = 0
 
/*	        SELECT @ForegNamd = @Namd

	        WHILE @ForegNamd = @Namd 
		      AND @ForegLandsting = @Landstingskundnr
		      AND @@FETCH_STATUS = 0
	        BEGIN
*/	        	

/* H‰r fel ----> */
				IF @Vardtyp = "OV"
				BEGIN
					SELECT @Belopp = CONVERT(DECIMAL(15), @Oppenvardsavgift)*100
					SELECT @PerDagBel = @Belopp / 100
					/*SELECT @PerDagAvgift = @Belopp*/ /* Tveksamt om detta behˆvs vid kreditering */
				END
				ELSE
				BEGIN

					EXECUTE getPris	@Namd,	@Vardtyp, NULL, NULL, @KostnStalle, @Urvalsdat, @Belopp OUTPUT
					/* Gˆr om till negativt (krediterat) belopp */
					/*SELECT @Belopp = @Belopp * -1*/

					/*SELECT @PerDagAvgift = @Belopp*/ /* Tveksamt om detta behˆvs vid kreditering */

					/*SELECT @Belopp = CONVERT(DECIMAL(15), @Oppenvardsavgift)*100*/
					/* Multiplicera med antalet dagar */
					IF @AntDagar = "+" OR @AntDagar = "-"
					BEGIN	
						SELECT @Belopp = @Belopp * -1
						SELECT @PerDagBel = @Belopp / 100
					END
					ELSE
					BEGIN
						SELECT @PerDagBel = (@Belopp / 100) * -1
						SELECT @Belopp = @Belopp * CONVERT(INT, @AntDagar)
					END
				END
/* 99-07-30 */ 

				/* Tag reda pÂ vad som finns inom kundposten fˆr landstinget att betala */
				/*SELECT @Belopp = CONVERT(DECIMAL(15), @Oppenvardsavgift)*100*/

				SELECT @KundBelopp = 0

				/*/* Hur mycket har kunden betalat sj‰lv ? */
				IF @Avgift <> "0.00"
				BEGIN
				/* Ber‰kna beloppet */
					IF @AntDagar = "+" OR @AntDagar = "-"
					BEGIN	
						SELECT @KundBelopp = CONVERT(DECIMAL(15), @Avgift) * 100
					END
					ELSE
					BEGIN
						/* 99-07-31 SELECT @KundBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)* CONVERT(INT, @AntDagar) */
						SELECT @KundBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)
												
					END
				END*/

/*___________*/
/* Ber‰kna beloppet */
					IF @AntDagar = "+" OR @AntDagar = "-"
					BEGIN	
						/* H‰r behˆver vi inte nÂgot a pris och belopp */
						SELECT @APrisAntalTxt = " "
					   	SELECT @KundBelopp = CONVERT(DECIMAL(15), @Avgift) * 100
					END
					ELSE
					BEGIN


						/* Skapa en text fˆr · pris och belopp */
						SELECT @RedBel14 = SUBSTRING(@AntDagar,2,3)
						EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
						SELECT @APrisAntalTxt = @RedBel14

						/* 99-07-31 Ber‰kna fˆrst per dag beloppet */
						/* SELECT @KundBelopp = @KundBelopp / CONVERT(INT, @AntDagar)*/
						
						/*EXECUTE HogerStall_SP @Avgift, 14, @RedBel14 OUTPUT */
						/* 99-08-02 EXECUTE HogerStall_SP @KundBelopp, 14, @RedBel14 OUTPUT */
						SELECT @KundBelPerDag = CONVERT(VARCHAR(100),CONVERT(DECIMAL(8,0),@Avgift)/CONVERT(INTEGER,SUBSTRING(@AntDagar,2,3)))

						SELECT @PerDagBel = @PerDagBel - @KundBelPerDag
						EXECUTE HogerStall_SP @PerDagBel, 14, @RedBel14 OUTPUT
						/* ------ 99-07-31 ------*/

						SELECT @APrisAntalTxt = SUBSTRING(@APrisAntalTxt,1,14) + @RedBel14
						/* 99-07-31 SELECT @KundBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)* CONVERT(INT, @AntDagar) */
						SELECT @KundBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)
					END
/*___________*/

				/* Vad blir dÂ kvar fˆr landstinget att betala ?*/
				SELECT @Belopp = @Belopp - @Kundbelopp

					/* Som fˆrsta text l‰gger vi ut Patientens namnoch personnr */
					SELECT @FaktText = RTRIM(@PatNamn) + " "+ SUBSTRING(@PatPnr,1,6)+"-"+SUBSTRING(@PatPnr,7,4)
/* Kontering ??????????????????????????????????????????*/
					/* Best‰m vilken konteringsstr‰ng vi ska ha */

					/* Original 99-06-22 EXECUTE getKonteringsstrang_SP NULL, @Namd, @KostnStalle, @Vardtyp, @BehandlKod, @Konteringsstrang OUTPUT*/
					EXECUTE getKonteringUlan_SP NULL, @Namd, @KostnStalle, @Vardtyp, @BehandlKod, @Konteringsstrang OUTPUT

					/* Hˆgerst‰ll beloppet */
					SELECT @RedBel15 = CONVERT(CHAR(15),@Belopp)
					EXECUTE HogerStall_SP @RedBel15, 15, @RedBel15 OUTPUT					

					/* Skriv beloppsposten till tabellen */
					SELECT @SenasteBelLopnr = @SenasteBelLopnr + 1

					INSERT INTO UT_FaktRadBel_TB (
						Posttyp,
						FaktText,
						Momskod1,
						Konteringsstrang,
						Belopp,
						Momskod2,
						KundId,
						Valuta,
						FaktHuvId,
						Lopnr,
						Va_KundId)
					VALUES("3",
						@FaktText,
						"MF",
						@Konteringsstrang,
						@RedBel15,
						"MF",
						@PrositKundnr,
						"SEK",
						@FaktHuvId,
						@SenasteBelLopnr,
						@Va_KundId)

/*---------------------- 990720 -----------------------------------*/
				/* Ska ‰ven l‰gga ut PatAdress */
			
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
					SELECT @FaktText = RTRIM(@PatGatuadress) + ", " + RTRIM(@PatPostnr) + ", " + RTRIM(@PatPostadress)
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ("4",
						@FaktText,
						"MF",
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)
/*------------------------------------------------------------------------*/
		
				/* Best‰m vilken behandlingstext det g‰ller */
					/*EXECUTE getBenamning_SP @Namd, @KostnStalle, @FaktText OUTPUT*/
					EXECUTE getBehandling_SP @BehandlKod, @Urvalsdat, @FaktText OUTPUT
				
				/* SÂ l‰gger vi pÂ vilken period */
					EXECUTE	DatumTillStrDatum_SP @InskrivnDat, 1, @RedDatStr OUTPUT
					SELECT @FaktText = RTRIM(@FaktText) + " " + @RedDatStr

				/* Om SV eller KV ska vi ocksÂ l‰gga pÂ ett T.o.m datum */
					IF @Vardtyp = "SV" OR @Vardtyp = "KV"
					BEGIN
						IF (@UtskrivnDat IS NOT NULL) AND (@UtskrivnDat > '1900-01-02')
						BEGIN
							SELECT @TomDat = @UtskrivnDat
						END
						ELSE
						BEGIN
							SELECT @TomDat = @Fildatum
						END

						EXECUTE	DatumTillStrDatum_SP @TomDat, 1, @RedDatStr OUTPUT
						SELECT @FaktText = RTRIM(@FaktText) + " - " + @RedDatStr
					END

				/* Skriv textposten till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ("4",
						@FaktText,
						"MF",
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

				/* Tala om vilken avdelning pat varit pÂ */
					SELECT @FaktText = @Avdelningsnamn + "Tel: " + @Avdelningstelefon

				/* Skriv textposten till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ("4",
						@FaktText,
						"MF",
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

					/* Slutligen l‰gger vi pÂ vilket belopp det var */
					SELECT @Belopp19 = CONVERT(DECIMAL(19), @Belopp)

					EXECUTE RedVarde_SP "BELOPP", @Belopp19, @RedBel14 OUTPUT
					EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
					SELECT @FaktText = + SPACE(8) + @APrisAntalTxt + @RedBel14

				SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1

					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ("4",
						@FaktText,
						"MF",
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

				/* -------------END /* IF @Avgift <> "0.00" */---------------*/
/* Ambulans */

/* Reseers‰ttning */      	

				/* S‰tt ett faktureringsdatum pÂ VA_Kund-posten */
				UPDATE VA_Kund_TB
					SET FaktDat = @Urvalsdat,
					    FaktOmgang = @FaktOmgang
					WHERE Va_KundId = @Va_KundId

	         		/* Klart att h‰mta n‰sta post och se vad det ‰r */
 				FETCH NEXT FROM KundCursor 
				INTO @Va_KundId,
					@AvstGrupp,
					@Fildatum,
					@AvsandarId,
					@Vardtyp,
					@Rakningsnr,
					@Kundnr,
					@PatNamn,
					@PatGatuadress,
					@PatPostnr,
					@PatPostadress,
					@InskrivnDat,
					@Namd,
					@KostnStalle,
					@BehandlKod,
					@AntDagar,
					@Avgift,
					@Reseersattning,
					@AnnanBetPnr,
					@AnnanBetNamn,
					@AnnanBetGatuadr,
					@AnnanBetPostNr,
					@AnnanBetPostAdr,
					@PatPnr,
					@UtskrivnDat,
					@AmbulansAvgift,
					@OppenvardsAvgift,
					@Avdelningsnamn,
					@Avdelningstelefon,
					@Landstingskundnr,
					@InFilnamn,
					@HistFilnamn 

/*      		END /* N‰md */*/
      
  	/*END /* Persnr */*/

END /* FetchStatus */

	/* Avsluta transaktionen */
	COMMIT TRANSACTION 

	/* St‰da upp cursorn */
	CLOSE KundCursor
	DEALLOCATE KundCursor

RETURN 0










GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE VanteTillUtLandsting_SP
/**********************************************************************************************/
/* Pris- och texts‰ttning gentemot andra landsting                                            */
/*                                                                                            */
/*                                                                                            */
/* Christer Dahl - OOPERA Konsult AB                                                          */
/* Version 0.0 1999-04-26                                                                     */
/*                                                                                            */
/**********************************************************************************************/
 	@Urvalsdat	  DATETIME,	  /* De poster som ska faktureras ska vara inl‰sta fˆre detta datum */
 	@Omfakturering	  BIT,	 	  /* Om = 0 ‰r det EJ omfakturering, om = 1 ska poster som redan fakturerats tas med */
	@FaktOmgang 	  INT		  /* Anger lˆpnummer fˆr faktureringsomgÂngen */
AS
/* Variabler fˆr att ta emot data frÂn cursorn */
declare @a varchar(255)
	DECLARE @Va_KundId		INTEGER
	DECLARE @AvstGrupp 		varchar(50)
	DECLARE @Fildatum 		datetime
	DECLARE @AvsandarId 		char(10)
	DECLARE @Vardtyp 		char(2)
	DECLARE @Rakningsnr 		char(8)
	DECLARE @Kundnr 		char(10)
	DECLARE @PatNamn 		char(30)
	DECLARE @PatGatuadress 		char(20)
	DECLARE @PatPostnr 		char(5)
	DECLARE @PatPostadress 		char(15)
	DECLARE @InskrivnDat 		datetime
	DECLARE @Namd 			char(2)
	DECLARE @KostnStalle 		char(3)
	DECLARE @BehandlKod 		char(1)
	DECLARE @AntDagar 		char(4)
	DECLARE @Avgift 		char(10)
	DECLARE @Reseersattning 	char(10)
	DECLARE @AnnanBetPnr 		char(10)
	DECLARE @AnnanBetNamn 		char(30)
	DECLARE @AnnanBetGatuadr 	char(20)
	DECLARE @AnnanBetPostNr 	char(5)
	DECLARE @AnnanBetPostAdr 	char(15)
	DECLARE @PatPnr 		char(10)
	DECLARE @UtskrivnDat 		datetime
	DECLARE @AmbulansAvgift 	char(8)
	DECLARE @OppenvardsAvgift 	char(9)
	DECLARE @Avdelningsnamn 	char(30)
	DECLARE @Avdelningstelefon 	char(12)
	DECLARE @Landstingskundnr 	char(10)
	DECLARE @FaktDat 		datetime
	DECLARE @InFilnamn 		char(20)
	DECLARE @HistFilnamn 		char(20)

/* Variabler fˆr att l‰gga till information till Prosit */
	DECLARE @PrositKundnr 		CHAR(08) 
	DECLARE @PrositAndringstyp 	CHAR(01) /* I eller U beroende pÂ om kunn ‰r ny mot Prosit eller ej */
	DECLARE @Kundnamn		CHAR(35) /* Namn pÂ kund som ska l‰ggas ut i Prosit. Kan vara pat eller annan betalare */
	DECLARE	@Postadress		CHAR(35)
	DECLARE	@OrtOchOpostnr		CHAR(35)
	
/* Variabler fˆr att hÂlla reda pÂ n‰rmast fˆregÂende v‰rde av viss typ */
	DECLARE @ForegPatPnr 		CHAR(10) /* Fˆr att hÂlla reda pÂ vilket personnr som behandlades senast */
	DECLARE @ForegLandsting   	CHAR(10) /* Fˆr att hÂlla reda pÂ vilken vÂrdtyp som behandlades senast */
	DECLARE @ForegNamd      	CHAR(02) /* Fˆr att hÂlla reda pÂ vilken n‰md som behandlades senast */

	DECLARE @Summa          	DECIMAL(14) /* Summering per kund */
	DECLARE @FaktHuvId		INT	 /* Identitet fˆr fakturahuvud */

	DECLARE @SenasteBelLopnr	INT	/* Senaste beloppsradlˆpnummer inom faktura */
	DECLARE @SenasteTxtLopnr	INT	/* Senaste textlˆpnummer inom beloppsrad */

	DECLARE	@Konteringsstrang       CHAR(60) /* Den sammanslagna konteringsstr‰ngen */
	DECLARE @FaktText		CHAR(50) /* Text som ska visas pÂ fakturan */
	
	DECLARE @Belopp			DECIMAL(15) /* Belopp att fakturera */
	DECLARE @KundBelopp		DECIMAL(15) /* Belopp att fakturera */
	DECLARE @KundDagBelopp		DECIMAL(15)
	DECLARE @Belopp19		DECIMAL(19)
	DECLARE @RedBel15		CHAR(15)
	DECLARE @RedBel14		CHAR(14)

	DECLARE @RedDatStr		CHAR(10)
	DECLARE @TomDat			DATETIME

	DECLARE @APrisAntalTxt		CHAR(36)

	DECLARE @Motpart		CHAR(04)
	DECLARE @FaktKst		CHAR(04)
	DECLARE @PerDagAvgift	DECIMAL(15)
	DECLARE @PerDagAvgiftTxt	CHAR(10)
	DECLARE @KommaPos               INTEGER
	DECLARE @Manadsnr		INTEGER
	DECLARE @UT_KundId 		INTEGER

/* Fˆrst en cursor fˆr alla kunder */
	DECLARE KundCursor CURSOR
	FOR SELECT Va_KundId,
		AvstGrupp,
		Fildatum,
		AvsandarId,
		Vardtyp,
		Rakningsnr,
		Kundnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,
		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		InFilnamn,
		HistFilnamn 
	FROM Va_Kund_TB
	WHERE Fildatum <= @Urvalsdat
	AND Landstingskundnr <> ' '
	AND substring(AntDagar,1,1) = '+'
	AND AntDagar <> '+  0'
	/* Fˆre CDs ‰ndring AND (FaktDat IS NULL OR FaktDat = @Urvalsdat) */
	AND (FaktDat IS NULL OR FaktOmgang = @FaktOmgang)
/* (FaktDat IS NULL OR FaktDat = @Urvalsdat)*/
	/*AND FaktOmgang = @FaktOmgang*/
	ORDER BY Landstingskundnr, Namd, PatPnr
  
	OPEN KundCursor
/*print 'VanteTillUtLandsting_SP  '*/
	FETCH NEXT FROM KundCursor 
	INTO @Va_KundId,
		@AvstGrupp,
		@Fildatum,
		@AvsandarId,
		@Vardtyp,
		@Rakningsnr,
		@Kundnr,
		@PatNamn,
		@PatGatuadress,
		@PatPostnr,
		@PatPostadress,
		@InskrivnDat,
		@Namd,
		@KostnStalle,
		@BehandlKod,
		@AntDagar,
		@Avgift,
		@Reseersattning,
		@AnnanBetPnr,
		@AnnanBetNamn,
		@AnnanBetGatuadr,
		@AnnanBetPostNr,
		@AnnanBetPostAdr,
		@PatPnr,
		@UtskrivnDat,
		@AmbulansAvgift,
		@OppenvardsAvgift,
		@Avdelningsnamn,
		@Avdelningstelefon,
		@Landstingskundnr,
		@InFilnamn,
		@HistFilnamn 

/*INSERT INTO TestTJ values (@Va_KundId, @AntDagar, 'cursor')*/
  
	/* Initiera alla foreg och senaste-variabler */
	SELECT @ForegPatPnr = '0000000000'
	SELECT @ForegLandsting = '  '
	SELECT @ForegNamd = '  '
	SELECT @SenasteBelLopnr = 0
	SELECT @SenasteTxtLopnr = 0

	/* Initiera Summeringen */
	SELECT @Summa = 0

	/* Inled en transaktion fˆr bearbetningen */
	BEGIN TRANSACTION

	/* Loopa ˆver alla rader i cursorn */
	WHILE @@FETCH_STATUS = 0
	BEGIN

	/* Avgˆr innehÂllet i variabler som ska ut till prosit */
		if exists (SELECT * FROM GE_Landsting_TB WHERE VaniaLandstingsnr = @Landstingskundnr)
		BEGIN
			SELECT @Kundnamn = Landstingsnamn,
				@Postadress = Postadress,
				@OrtOchOpostnr = Postnummer + Ort,
				@PrositKundnr = PrositLandstingsnr,
				@PrositAndringstyp = 'U',
				@Motpart = Motpart
			FROM GE_Landsting_TB
			WHERE VaniaLandstingsnr = @Landstingskundnr
		END
		ELSE
		BEGIN
			SELECT @Kundnamn = '???? - SAKNAS !!!',
				@Postadress = '??? - SAKNAS !!!',
				@OrtOchOpostnr = '???',
				@PrositKundnr = RIGHT(@Landstingskundnr, 8),
				@PrositAndringstyp = '?',
				@Motpart = '???'
		END

		INSERT INTO UT_Kund_TB (Posttyp,
				Andringstyp,
				Kundid,
				Kundnamn,
				Namn2,
				Postadress,
				OrtOchOpostnr,
				Momsregnr,
				Landkod,
				Valuta,
				Sprakkod,
				Momskod,
				Motpart)
		VALUES ('1',
				@PrositAndringstyp,
				@PrositKundnr,
				@Kundnamn,
				SPACE(35), /* Kan vara t ex C/O Adress. Plockas ur vanias kundnamn */
				@Postadress,
				@OrtOchOpostnr,
				SPACE(20),
				'SE',
				'SEK',
				'S',
				'MF',
				@Motpart)
/* 99-07-29 */
	  /* Tag genast reda pÂ vad som blev den nya kundidentiteten */
	  SELECT @UT_KundId = MAX(UT_KundId) FROM UT_Kund_TB
/* --------- */

	   SELECT @ForegLandsting = @Landstingskundnr



	   WHILE @ForegLandsting = @Landstingskundnr AND @@FETCH_STATUS = 0
   	   BEGIN
   	/* Skriv ett nytt fakturahuvud */
		SELECT @FaktKst = '    '
		IF @Namd = '10'
		BEGIN
			SELECT @FaktKst = '1000'
		END
	
		IF @Namd = '13'
		BEGIN
			SELECT @FaktKst = '2500'
		END

      		INSERT INTO UT_FaktHuv_TB(Posttyp,
						Kundid,
						Forvaltning,
						Landkod,
						Valuta,
						Sprakkod,
						Momskod,
						Kst, 
						UT_KundId)
      					VALUES('2',
						@PrositKundnr,
						@Namd,
						'SE',
						'SEK',
						'S',
						'MF',
						@FaktKst,
						@UT_KundId)

		/* Vilket idnr fick fakturahuvudet? */
		SELECT @FaktHuvId = MAX(UT_FaktHuvId) FROM UT_FaktHuv_TB


		/* Initiera per faktura */
		SELECT @SenasteBelLopnr = 0
		SELECT @SenasteTxtLopnr = 0
 
	        SELECT @ForegNamd = @Namd

	        WHILE @ForegNamd = @Namd 
		      AND @ForegLandsting = @Landstingskundnr
		      AND @@FETCH_STATUS = 0
	        BEGIN
	        	
				/* Tag reda pÂ vad som finns inom kundposten fˆr landstinget att betala */
				IF @Vardtyp = 'OV'
				BEGIN
					SELECT @Belopp = CONVERT(DECIMAL(15), @Oppenvardsavgift)*100
					SELECT @PerDagAvgift = @Belopp
				END
				ELSE
				BEGIN

					EXECUTE getPris	@Namd,	@Vardtyp, NULL, NULL, @KostnStalle, @Urvalsdat, @Belopp OUTPUT

					SELECT @PerDagAvgift = @Belopp

					/*SELECT @Belopp = CONVERT(DECIMAL(15), @Oppenvardsavgift)*100*/
					/* Multiplicera med antalet dagar */
					IF @AntDagar = '+' OR @AntDagar = '-'
					BEGIN	
						SELECT @Belopp = @Belopp
					END
					ELSE
					BEGIN
						SELECT @Belopp = @Belopp * CONVERT(INT, @AntDagar)
					END
				END

				SELECT @KundBelopp = 0

			--	/*/* Hur mycket har kunden betalat sj‰lv ? */
			--	IF @Avgift <> '0.00'
			--	BEGIN
			--	/* Ber‰kna beloppet */
			--		IF @AntDagar = '+' OR @AntDagar = '-'
			--		BEGIN	
			--			SELECT @KundBelopp = CONVERT(DECIMAL(15), @Avgift) * 100
			--		END
			--		ELSE
			--		BEGIN
			--			SELECT @KundBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)
			--		END
			--	END*/

/*___________*/
/* Ber‰kna beloppet */
					IF @AntDagar = '+' OR @AntDagar = '-'
					BEGIN	
						/* H‰r behˆver vi inte nÂgot a pris och belopp */
						SELECT @APrisAntalTxt = ' '
					   	SELECT @KundBelopp = CONVERT(DECIMAL(15), @Avgift) * 100
					END
					ELSE
					BEGIN
						/* Skapa en text fˆr · pris och belopp */
						-- Bˆrja med att visa hur mÂnga dagar
						--SELECT @RedBel14 = SUBSTRING(@AntDagar,2,3)
						--EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
						--SELECT @APrisAntalTxt = @RedBel14
						SET @APrisAntalTxt = SUBSTRING(@AntDagar,2,3) + ' *'

						-- EJ REL: Vilken ‰r kundens avgift per dag
						SELECT @KundDagBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)/ CONVERT(INT, @AntDagar)

						-- Per dag avgift ‰r landstingets fulla kostnad
						-- dock: It ain't that simple!
						-- org: SELECT @PerDagAvgiftTxt = CONVERT(CHAR(10),1000*(@PerDagAvgift - @KundDagBelopp))
						SET @PerDagAvgiftTxt = CONVERT(CHAR(10),1000*@PerDagAvgift)
						EXECUTE RedVarde_SP 'BELOPP', @PerDagAvgiftTxt, @PerDagAvgiftTxt OUTPUT
						EXECUTE HogerStall_SP @PerDagAvgiftTxt, 14, @RedBel14 OUTPUT
						-- ORG: SELECT @APrisAntalTxt = SUBSTRING(@APrisAntalTxt,1,14) + @RedBel14
						SET @APrisAntalTxt = RTRIM(@APrisAntalTxt)+' ' + ltrim(SUBSTRING(@RedBel14,1,11))

						--SELECT @KundBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)
						-- L‰s upp kundbeloppet
						SELECT @KundBelopp = uttagenAvgift
						FROM va_dv_DebAvgift_tb
						WHERE va_kundID = @va_kundID
						AND faktomgang = @faktomgang
			
						-- Gˆr snygg text av kundbeloppet
						SET @RedBel14 = CONVERT(CHAR(14), @KundBelopp)
						EXECUTE RedVarde_SP 'BELOPP', @RedBel14, @RedBel14 OUTPUT
						
						-- L‰gg till kundbel i texten
						SET @APrisAntalTxt = RTRIM(@APrisAntalTxt)+'kr - patientavg ' + ltrim(@RedBel14)+'kr '

/*/* Plocka in avgiften per dag */		--SELECT @PerDagAvgift = CONVERT(VARCHAR(100),CONVERT(DECIMAL(8,0),@Avgift)/CONVERT(INTEGER,SUBSTRING(@AntDagar,2,3)))
						--SELECT @KommaPos = PATINDEX('%.%',@PerDagAvgift)
						--SELECT @PerDagAvgift = SUBSTRING(@PerDagAvgift,1,DATALENGTH(@PerDagAvgift)-(DATALENGTH(@PerDagAvgift)-@KommaPos)-1)
 						--EXECUTE HogerStall_SP @PerDagAvgift, 14, @RedBel14 OUTPUT
/*----------------------------->*/		--SELECT @APrisAntalTxt = SUBSTRING(@APrisAntalTxt,1,14) + @RedBel14
/*----------------------------->*/		--SELECT @KundBelopp = (CONVERT(DECIMAL(15), @Avgift)*100)*/

					END
/*___________*/

				/* Vad blir dÂ kvar fˆr landstinget att betala ?*/
				SELECT @Belopp = @Belopp - @Kundbelopp

					/* Som fˆrsta text l‰gger vi ut Patientens namn och personnr */
					SELECT @FaktText = RTRIM(@PatNamn) + ' '+ SUBSTRING(@PatPnr,1,6)+'-'+SUBSTRING(@PatPnr,7,4)
/* Kontering ??????????????????????????????????????????*/
					/* Best‰m vilken konteringsstr‰ng vi ska ha */

					/* Original 99-06-22 EXECUTE getKonteringsstrang_SP NULL, @Namd, @KostnStalle, @Vardtyp, @BehandlKod, @Konteringsstrang OUTPUT */
					EXECUTE getKonteringUlan_SP NULL, @Namd, @KostnStalle, @Vardtyp, @BehandlKod, @Konteringsstrang OUTPUT
					
	/*SELECT @a = @Namd+' '+@KostnStalle+' '+@Vardtyp+' '+@BehandlKod
	print @a*/

					/* Hˆgerst‰ll beloppet */
					SELECT @RedBel15 = CONVERT(CHAR(15),@Belopp)
					EXECUTE HogerStall_SP @RedBel15, 15, @RedBel15 OUTPUT					

					/* Skriv beloppsposten till tabellen */
					SELECT @SenasteBelLopnr = @SenasteBelLopnr + 1

					INSERT INTO UT_FaktRadBel_TB (
						Posttyp,
						FaktText,
						Momskod1,
						Konteringsstrang,
						Belopp,
						Momskod2,
						KundId,
						Valuta,
						FaktHuvId,
						Lopnr,
						Va_KundId)
					VALUES('3',
						@FaktText,
						'MF',
						@Konteringsstrang,
						@RedBel15,
						'MF',
						@PrositKundnr,
						'SEK',
						@FaktHuvId,
						@SenasteBelLopnr,
						@Va_KundId)


/*					INSERT INTO TestTJ values (@Va_KundId, @AntDagar, 'InsRadBel')*/
/*---------------------- 990720 -----------------------------------*/
				/* Ska ‰ven l‰gga ut PatAdress */
			
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
					SELECT @FaktText = RTRIM(@PatGatuadress) + ', ' + RTRIM(@PatPostnr) + ', ' + RTRIM(@PatPostadress)
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)
/*------------------------------------------------------------------------*/
		
				/* Best‰m vilken behandlingstext det g‰ller */
					/*EXECUTE getBenamning_SP @Namd, @KostnStalle, @FaktText OUTPUT*/
					EXECUTE getBehandling_SP @BehandlKod, @Urvalsdat, @FaktText OUTPUT
				
				/* SÂ l‰gger vi pÂ vilken period */
					EXECUTE	DatumTillStrDatum_SP @InskrivnDat, 1, @RedDatStr OUTPUT
					SELECT @FaktText = RTRIM(@FaktText) + ' ' + @RedDatStr

				/* Om SV eller KV ska vi ocksÂ l‰gga pÂ ett T.o.m datum */
					IF @Vardtyp = 'SV' OR @Vardtyp = 'KV'
					BEGIN

						IF (@UtskrivnDat IS NOT NULL) AND (@UtskrivnDat > '1900-01-02')
						BEGIN
							SELECT @TomDat = @UtskrivnDat
							EXECUTE	DatumTillStrDatum_SP @TomDat, 1, @RedDatStr OUTPUT

						END
						ELSE
						BEGIN
							SELECT @TomDat = @Fildatum
							SELECT @RedDatStr = '          '
						END

						/*EXECUTE	DatumTillStrDatum_SP @TomDat, 1, @RedDatStr OUTPUT*/
						SELECT @FaktText = RTRIM(@FaktText) + ' - ' + @RedDatStr
					END


				/* Skriv textposten till tabellen */
			
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)


/* L‰gg ut en infotext om vilken mÂnade det gller */
					IF (@Vardtyp = 'SV' OR @Vardtyp = 'KV')  AND  ((@UtskrivnDat IS NOT NULL) AND (@UtskrivnDat < '1900-01-02'))
					BEGIN
						SELECT @Manadsnr = DATEPART(month, GETDATE())-1
		
						SELECT @FaktText = 'Avser perioden'
						IF @Manadsnr = 1
							SELECT @FaktText = RTRIM(@FaktText) + ' januari '
						IF @Manadsnr = 2
							SELECT @FaktText = RTRIM(@FaktText) + ' februari '
						IF @Manadsnr = 3
							SELECT @FaktText = RTRIM(@FaktText) + ' mars '
						IF @Manadsnr = 4
							SELECT @FaktText = RTRIM(@FaktText) + ' april '
						IF @Manadsnr = 5
							SELECT @FaktText = RTRIM(@FaktText) + ' maj '
						IF @Manadsnr = 6
							SELECT @FaktText = RTRIM(@FaktText) + ' juni '
						IF @Manadsnr = 7
							SELECT @FaktText = RTRIM(@FaktText) + ' juli '
						IF @Manadsnr = 8
							SELECT @FaktText = RTRIM(@FaktText) + ' augusti '
						IF @Manadsnr = 9
							SELECT @FaktText = RTRIM(@FaktText) + ' september '
						IF @Manadsnr = 10
							SELECT @FaktText = RTRIM(@FaktText) + ' oktober '
						IF @Manadsnr = 11
							SELECT @FaktText = RTRIM(@FaktText) + ' november '
						IF @Manadsnr = 12
						BEGIN
							SELECT @FaktText = RTRIM(@FaktText) + ' december'
							SELECT @FaktText = RTRIM(@FaktText) + ' ' + CONVERT(CHAR(04),DATEPART(year, GETDATE())-1)
						END
						ELSE
						BEGIN
							SELECT @FaktText = RTRIM(@FaktText) + ' ' + CONVERT(CHAR(04),DATEPART(year, GETDATE()))
						END
		
						/* Skriv textposten till tabellen */
							SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)
				END /* OM KV eller SV */
/*---------*/

				/* Tala om vilken avdelning pat varit pÂ */
					SELECT @FaktText = @Avdelningsnamn + 'Tel: ' + @Avdelningstelefon

				/* Skriv textposten till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1

					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

					/* Slutligen l‰gger vi pÂ vilket belopp det var */
					SELECT @Belopp19 = CONVERT(DECIMAL(19), @Belopp)

					EXECUTE RedVarde_SP 'BELOPP', @Belopp19, @RedBel14 OUTPUT
					EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
					-- ORG: SELECT @FaktText = + SPACE(8) + @APrisAntalTxt + @RedBel14
					--SET @APrisAntalTxt = @APrisAntalTxt + SPACE(20)
					SELECT @FaktText = + @APrisAntalTxt + @RedBel14

				SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
/*Print '1'*/
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

/*Print '2'*/
				/* -------------END /* IF @Avgift <> '0.00' */---------------*/
/* Ambulans */

/* Reseers‰ttning */      	

/*INSERT INTO TestTJ values (@Va_KundId, @AntDagar, 'InsRadBel')*/

				/* S‰tt ett faktureringsdatum pÂ VA_Kund-posten */
				UPDATE VA_Kund_TB
					SET FaktDat = @Urvalsdat,
					    FaktOmgang = @FaktOmgang
					WHERE Va_KundId = @Va_KundId

	         		/* Klart att h‰mta n‰sta post och se vad det ‰r */
 				FETCH NEXT FROM KundCursor 
				INTO @Va_KundId,
					@AvstGrupp,
					@Fildatum,
					@AvsandarId,
					@Vardtyp,
					@Rakningsnr,
					@Kundnr,
					@PatNamn,
					@PatGatuadress,
					@PatPostnr,
					@PatPostadress,
					@InskrivnDat,
					@Namd,
					@KostnStalle,
					@BehandlKod,
					@AntDagar,
					@Avgift,
					@Reseersattning,
					@AnnanBetPnr,
					@AnnanBetNamn,
					@AnnanBetGatuadr,
					@AnnanBetPostNr,
					@AnnanBetPostAdr,
					@PatPnr,
					@UtskrivnDat,
					@AmbulansAvgift,
					@OppenvardsAvgift,
					@Avdelningsnamn,
					@Avdelningstelefon,
					@Landstingskundnr,
					@InFilnamn,
					@HistFilnamn 

/*INSERT INTO TestTJ values (@Va_KundId, @AntDagar, 'cursorNXT')*/
  


      		END /* N‰md */
      
  	END /* Persnr */

END /* FetchStatus */


/*INSERT INTO TestTJ values (@Va_KundId, @AntDagar, 'InComm')*/

	/* Avsluta transaktionen */
	COMMIT TRANSACTION 

	/* St‰da upp cursorn */
	CLOSE KundCursor
	DEALLOCATE KundCursor

RETURN 0



















GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE VanteTillUtPrivat_SP
/**********************************************************************************************/
/* Proceduren lyfter ˆver kunderna frÂn v‰ntearean till utarean och pris- och texts‰tter      */
/* samtidigt posterna                                                                         */
/*                                                                                            */
/* Christer Dahl - OOPERA Konsult AB                                                          */
/* Version 0.0 1999-04-26                                                                     */
/*                                                                                            */
/* Grov beskrivning av bearbetningen 							      */
/* ---------------------------------                                                          */
/* 1) Fakturering direkt mot kund                                                             */
/*    De kunder som EJ betalat kontant ska faktureras. (Kontantbetalande kunder har ett K i   */
/*    f‰ltet fˆr r‰kningsnummer.)                                                             */
/*    a) Kunderna l‰ses upp i en cursor, sorterat pÂ patPersnr, n‰md och vÂrdtyp              */
/*    b) Kontroll sker om kunden rapporterats tidigare till prosit (anrop till proceduren     */
/*       getPrositKnr) Och kundnummer l‰ggs pÂ pÂ kunden				      */
/*    c) Kunden l‰ggs ner i ut arean i tabellen UT_Kund                                       */
/*    d) Fˆr varje n‰mnd och vÂrdtyp kunden har skapas ett nytt fakturahuvud i tabellen       */
/*       Ut_FaktHuv                                                                           */
/*    d) Fˆr varje rad som kunden har i VA_Kund priss‰tts och summeras de tj‰nster kunden     */
/*       fÂtt. Dessa l‰ggs ut i tabellen UT_FaktRadBel        			              */
/*    e) Samma rader texts‰tts och l‰ggs ut i tabellen UT_FaktRadText                         */
/*                                                                                            */
/* 2) Fakturering mot andra landsting                                                         */
/**********************************************************************************************/
 	@Urvalsdat	  DATETIME,	  /* De poster som ska faktureras ska vara inl‰sta fˆre detta datum */
 	@Omfakturering	  BIT,	 	  /* Om = 0 ‰r det EJ omfakturering, om = 1 ska poster som redan fakturerats tas med */
	@FaktOmgang 	  INT		  /* Anger lˆpnummer fˆr faktureringsomgÂngen */
AS
/* Variabler fˆr att ta emot data frÂn cursorn */
	declare @a varchar(255)
	DECLARE @Va_KundId		INTEGER
	DECLARE @AvstGrupp 		varchar(50)
	DECLARE @Fildatum 		datetime
	DECLARE @AvsandarId 		char(10)
	DECLARE @Vardtyp 		char(2)
	DECLARE @Rakningsnr 		char(8)
	DECLARE @Kundnr 		char(10)
	DECLARE @PatNamn 		char(30)
	DECLARE @PatGatuadress 		char(20)
	DECLARE @PatPostnr 		char(5)
	DECLARE @PatPostadress 		char(15)
	DECLARE @InskrivnDat 		datetime
	DECLARE @Namd 			char(2)
	DECLARE @KostnStalle 		char(3)
	DECLARE @BehandlKod 		char(1)
	DECLARE @AntDagar 		char(4)
	DECLARE @Avgift 		char(10)
	DECLARE @Reseersattning 	char(10)
	DECLARE @AnnanBetPnr 		char(10)
	DECLARE @AnnanBetNamn 		char(30)
	DECLARE @AnnanBetGatuadr 	char(20)
	DECLARE @AnnanBetPostNr 	char(5)
	DECLARE @AnnanBetPostAdr 	char(15)
	DECLARE @PatPnr 		char(10)
	DECLARE @UtskrivnDat 		datetime
	DECLARE @AmbulansAvgift 	char(8)
	DECLARE @OppenvardsAvgift 	char(9)
	DECLARE @Avdelningsnamn 	char(30)
	DECLARE @Avdelningstelefon 	char(12)
	DECLARE @Landstingskundnr 	char(8)
	DECLARE @FaktDat 		datetime
	DECLARE @InFilnamn 		char(20)
	DECLARE @HistFilnamn 		char(20)
	DECLARE @UtskrKod		CHAR(04)

/* Variabler fˆr att l‰gga till information till Prosit */
	DECLARE @PrositKundnr 		CHAR(08) 
	DECLARE @PrositAndringstyp 	CHAR(01) /* I eller U beroende pÂ om kunn ‰r ny mot Prosit eller ej */
	DECLARE @Kundnamn		CHAR(35) /* Namn pÂ kund som ska l‰ggas ut i Prosit. Kan vara pat eller annan betalare */
	DECLARE	@Postadress		CHAR(35)
	DECLARE	@OrtOchOpostnr		CHAR(35)
	DECLARE @KundPnr		CHAR(10)
	
/* Variabler fˆr att hÂlla reda pÂ n‰rmast fˆregÂende v‰rde av viss typ */
	DECLARE @ForegPatPnr 		CHAR(10) /* Fˆr att hÂlla reda pÂ vilket personnr som behandlades senast */
	DECLARE @ForegVardtyp   	CHAR(02) /* Fˆr att hÂlla reda pÂ vilken vÂrdtyp som behandlades senast */
	DECLARE @ForegNamd      	CHAR(02) /* Fˆr att hÂlla reda pÂ vilken n‰md som behandlades senast */
	DECLARE @ForegAnnan 		char(10)

	DECLARE @Summa          	DECIMAL(14) /* Summering per kund */
	DECLARE @FaktHuvId		INT	 /* Identitet fˆr fakturahuvud */

	DECLARE @SenasteBelLopnr	INT	/* Senaste beloppsradlˆpnummer inom faktura */
	DECLARE @SenasteTxtLopnr	INT	/* Senaste textlˆpnummer inom beloppsrad */

	DECLARE	@Konteringsstrang       CHAR(60) /* Den sammanslagna konteringsstr‰ngen */
	DECLARE @FaktText		CHAR(50) /* Text som ska visas pÂ fakturan */
	DECLARE @PatTxt			CHAR(50)
	
	DECLARE @Belopp			DECIMAL(15) /* Belopp att fakturera */
	DECLARE @Belopp19		DECIMAL(19)
	DECLARE @RedBel15		CHAR(15)
	DECLARE @RedBel14		CHAR(14)

	DECLARE @RedDatStr		CHAR(10)
	DECLARE @TomDat			DATETIME

	DECLARE @APrisAntalTxt		CHAR(28)
	DECLARE @FaktKst		CHAR(04)
	DECLARE @PerDagAvgift		CHAR(10)
	DECLARE @KommaPos         	INTEGER
	DECLARE @Manadsnr 		INTEGER
	DECLARE @UT_KundId 		INTEGER


/* 1 - Fakturering mot kund */

/* Fˆrst en cursor fˆr alla privatkunder */
	DECLARE KundCursor CURSOR
	FOR SELECT Va_KundId,
		AvstGrupp,
		Fildatum,
		AvsandarId,
		Vardtyp,
		Rakningsnr,
		Kundnr,
		PatNamn,
		PatGatuadress,
		PatPostnr,
		PatPostadress,
		InskrivnDat,
		Namd,
		KostnStalle,
		BehandlKod,
		AntDagar,
		Avgift,
		Reseersattning,
		AnnanBetPnr,
		AnnanBetNamn,
		AnnanBetGatuadr,
		AnnanBetPostNr,
		AnnanBetPostAdr,
		PatPnr,
		UtskrivnDat,
		AmbulansAvgift,
		OppenvardsAvgift,
		Avdelningsnamn,
		Avdelningstelefon,
		Landstingskundnr,
		InFilnamn,
		HistFilnamn,
		UtskrKod 
	FROM Va_Kund_TB
	WHERE Fildatum <= @Urvalsdat
	AND KundNr = ' '
	AND FaktDat IS NULL
	AND Rakningsnr <> 'K'
	AND (Avgift <> '0.00' OR Reseersattning <> '0.00' OR AmbulansAvgift <> '0.00')
	ORDER BY PatPnr, Namd 
  
	OPEN KundCursor
/*print 'VanteTillUtPrivat_SP  '*/
	FETCH NEXT FROM KundCursor 
	INTO @Va_KundId,
		@AvstGrupp,
		@Fildatum,
		@AvsandarId,
		@Vardtyp,
		@Rakningsnr,
		@Kundnr,
		@PatNamn,
		@PatGatuadress,
		@PatPostnr,
		@PatPostadress,
		@InskrivnDat,
		@Namd,
		@KostnStalle,
		@BehandlKod,
		@AntDagar,
		@Avgift,
		@Reseersattning,
		@AnnanBetPnr,
		@AnnanBetNamn,
		@AnnanBetGatuadr,
		@AnnanBetPostNr,
		@AnnanBetPostAdr,
		@PatPnr,
		@UtskrivnDat,
		@AmbulansAvgift,
		@OppenvardsAvgift,
		@Avdelningsnamn,
		@Avdelningstelefon,
		@Landstingskundnr,
		@InFilnamn,
		@HistFilnamn,
		@UtskrKod 
  
	/* Initiera alla foreg och senaste-variabler */
	SET @ForegPatPnr = '0000000000'
	SET @ForegVardtyp = '  '
	SET @ForegNamd = '  '
	SET @ForegAnnan = 'Nissepisse'
	SET @SenasteBelLopnr = 0
	SET @SenasteTxtLopnr = 0

	/* Initiera Summeringen */
	SELECT @Summa = 0

	/* Inled en transaktion fˆr bearbetningen */
	BEGIN TRANSACTION

	/* Loopa ˆver alla rader i cursorn */
	WHILE @@FETCH_STATUS = 0
	BEGIN

	/* Blanka ut kundpnr */
	SELECT @KundPnr = SPACE(10)

	/*  b) Kontroll sker om kunden rapporterats tidigare till prosit (anrop till proceduren     */
	/*     getPrositKnr) Och kundnummer l‰ggs pÂ pÂ kunden				            */
		IF @AnnanBetPnr IS NULL OR @AnnanBetPnr = '          '
		BEGIN
			EXECUTE GetPrositkundnr @PatPnr, @Kundnr, @FaktOmgang, @PrositKundnr OUTPUT, @PrositAndringstyp OUTPUT
			SELECT @KundPnr = @PatPnr
		END
		ELSE
			IF SUBSTRING(@AnnanBetPnr,1,1) <>'L' AND SUBSTRING(@AnnanBetPnr,1,1) <>'F' 
			BEGIN
				EXECUTE GetPrositkundnr @AnnanBetPnr, @Kundnr, @FaktOmgang, @PrositKundnr OUTPUT, @PrositAndringstyp OUTPUT
			END
			

	/* Avgˆr innehÂllet i variabler som ska ut till prosit */
		/*IF @AnnanBetNamn IS NULL OR @AnnanBetNamn = '                                   '*/
		IF @AnnanBetPnr IS NULL OR @AnnanBetPnr = '          '
		BEGIN
			SELECT @Kundnamn = @PatNamn
			SELECT @Postadress = @PatGatuadress
			SELECT @OrtOchOpostnr = @PatPostnr + @PatPostadress
		END
		ELSE
		BEGIN

		IF SUBSTRING(@AnnanBetPnr,1,1) ='L' OR SUBSTRING(@AnnanBetPnr,1,1) ='F'
		BEGIN

			if exists (SELECT * FROM GE_Landsting_TB WHERE VaniaLandstingsnr = @AnnanBetPnr)
			BEGIN
					SELECT @Kundnamn = Landstingsnamn,
						@Postadress = Postadress,
						@OrtOchOpostnr = Postnummer + Ort,
						@PrositKundnr = PrositLandstingsnr,
						@PrositAndringstyp = 'U'
						/*@Motpart = Motpart*/
					FROM GE_Landsting_TB
					WHERE VaniaLandstingsnr = @AnnanBetPnr
			END
			ELSE
			BEGIN
					SELECT @Kundnamn = '???? - SAKNAS !!!',
						@Postadress = '??? - SAKNAS !!!',
						@OrtOchOpostnr = '???',
						@PrositKundnr = RIGHT(@Landstingskundnr, 8),
						@PrositAndringstyp = '?'
						/*@Motpart = '???'*/
			END
		END	
		ELSE
			SELECT @Kundnamn = @AnnanBetNamn
			SELECT @Postadress = @AnnanBetGatuadr
			SELECT @OrtOchOpostnr = @AnnanBetPostNr + @AnnanBetPostAdr	
			SELECT @KundPnr = @AnnanBetPnr
		END

		INSERT INTO UT_Kund_TB (Posttyp,
				Andringstyp,
				Kundid,
				Kundnamn,
				Namn2,
				Postadress,
				OrtOchOpostnr,
				Momsregnr,
				Landkod,
				Valuta,
				Sprakkod,
				Momskod,
				Motpart)
		VALUES ('1',
				@PrositAndringstyp,
				@PrositKundnr,
				@Kundnamn,
				SPACE(35), /* Kan vara t ex C/O Adress. Plockas ur vanias kundnamn */
				@Postadress,
				@OrtOchOpostnr,
				@KundPnr + SPACE(10),
				'SE',
				'SEK',
				'S',
				'MF',
				'0990')

/* 99-07-29 */
	  /* Tag genast reda pÂ vad som blev den nya kundidentiteten */
	  SELECT @UT_KundId = MAX(UT_KundId) FROM UT_Kund_TB
/* --------- */

/* CD 2000-08-15 - tag h‰nsyn till annan betalare */
/* Fˆre ‰ndring: 	   SELECT @ForegPatPnr = @PatPnr */
		SET @ForegAnnan = @AnnanBetPnr
		SET @ForegPatPnr = @PatPnr


	   WHILE (@ForegPatPnr = @PatPnr) AND (@ForegAnnan = @AnnanBetPnr) AND @@FETCH_STATUS = 0
   	   BEGIN
   	/* Skriv ett nytt fakturahuvud */
		SELECT @FaktKst = '    '
		IF @Namd = '10'
		BEGIN
			SELECT @FaktKst = '1000'
		END
	
		IF @Namd = '13'
		BEGIN
			SELECT @FaktKst = '2500'
		END

      		INSERT INTO UT_FaktHuv_TB(Posttyp,
						Kundid,
						Forvaltning,
						Landkod,
						Valuta,
						Sprakkod,
						Momskod,
						Kst, 
						UT_KundId)
      					VALUES('2',
						@PrositKundnr,
						@Namd,
						'SE',
						'SEK',
						'S',
						'MF',
						@FaktKst,
						@UT_KundId)

		/* Vilket idnr fick fakturahuvudet? */
		SELECT @FaktHuvId = MAX(UT_FaktHuvId) FROM UT_FaktHuv_TB

		/* Initiera per faktura */
		SELECT @SenasteBelLopnr = 0
		SELECT @SenasteTxtLopnr = 0
 
	        SELECT @ForegNamd = @Namd

	        WHILE @ForegNamd = @Namd 
		      AND @ForegPatPnr = @PatPnr
		      AND @ForegAnnan = @AnnanBetPnr
		      AND @@FETCH_STATUS = 0
	        BEGIN
	        	
				/* Tag reda pÂ vad som finns inom kundposten fˆr patienten att betala */
				IF @Avgift <> '0.00'
				BEGIN
					/* Som fˆrsta text l‰gger vi ut Patientens namnoch personnr */
					SELECT @FaktText = RTRIM(@PatNamn) + ' '+ SUBSTRING(@PatPnr,1,6)+'-'+SUBSTRING(@PatPnr,7,4)
					SET @PatTxt = @FaktText

					/* Best‰m vilken konteringsstr‰ng vi ska ha */
/*Print @Vardtyp
print @BehandlKod*/


/* H‰r kan t‰nkas kr‰vas en kontroll pÂ annan betalasres kundnr om konteringen ska skilja fˆr detta */

					EXECUTE getKonteringsstrang_SP NULL, @Namd, @KostnStalle, @Vardtyp, @BehandlKod, @Konteringsstrang OUTPUT
	/*SELECT @a = @Namd+' '+@KostnStalle+' '+@Vardtyp+' '+@BehandlKod
	print @a*/
					/* Ber‰kna beloppet */
					IF @AntDagar = '+' OR @AntDagar = '-'
					BEGIN	
						/* H‰r behˆver vi inte nÂgot a pris och belopp */
						SELECT @APrisAntalTxt = ' '
					   	SELECT @Belopp = CONVERT(DECIMAL(15), @Avgift) * 100
					END
					ELSE
					BEGIN
						/* Om utskrkod inte ‰r satt - priss‰tt enligt gamla principen */
						IF @Utskrkod IS NULL 
						BEGIN
						/* Skapa en text fˆr · pris och belopp */
							SELECT @RedBel14 = SUBSTRING(@AntDagar,2,3)
							EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
							SELECT @APrisAntalTxt = @RedBel14
/* Plocka in avgiften per dag */			SELECT @PerDagAvgift = CONVERT(VARCHAR(100),CONVERT(DECIMAL(8,0),@Avgift)/CONVERT(INTEGER,SUBSTRING(@AntDagar,2,3)))
							SELECT @KommaPos = PATINDEX('%.%',@PerDagAvgift)
							SELECT @PerDagAvgift = SUBSTRING(@PerDagAvgift,1,DATALENGTH(@PerDagAvgift)-(DATALENGTH(@PerDagAvgift)-@KommaPos)-1)
 							EXECUTE HogerStall_SP @PerDagAvgift, 14, @RedBel14 OUTPUT
/*----------------------------->*/			SELECT @APrisAntalTxt = SUBSTRING(@APrisAntalTxt,1,14) + @RedBel14
/*----------------------------->*/			SELECT @Belopp = (CONVERT(DECIMAL(15), @Avgift)*100)
						END
						ELSE
						BEGIN
							/* Utskriftskod finns */
							EXECUTE ge_TextPrisOchBel_sp @Va_KundId, @FaktOmgang, @Patpnr, @Utskrkod, @InskrivnDat, @UtskrivnDat, @APrisAntalTxt OUTPUT, @Belopp OUTPUT
						END

					END
					
					/* Hˆgerst‰ll beloppet */
					SELECT @RedBel15 = CONVERT(CHAR(15),@Belopp)
					EXECUTE HogerStall_SP @RedBel15, 15, @RedBel15 OUTPUT					

					/* Skriv beloppsposten till tabellen */
					SELECT @SenasteBelLopnr = @SenasteBelLopnr + 1

					INSERT INTO UT_FaktRadBel_TB (
						Posttyp,
						FaktText,
						Momskod1,
						Konteringsstrang,
						Belopp,
						Momskod2,
						KundId,
						Valuta,
						FaktHuvId,
						Lopnr,
						Va_KundId)
					VALUES('3',
						@FaktText,
						'MF',
						@Konteringsstrang,
						@RedBel15,
						'MF',
						@PrositKundnr,
						'SEK',
						@FaktHuvId,
						@SenasteBelLopnr,
						@Va_KundId)
		
				/* Best‰m vilken behandlingstext det g‰ller */
					/*EXECUTE getBenamning_SP @Namd, @KostnStalle, @FaktText OUTPUT*/
					EXECUTE getBehandling_SP @BehandlKod, @Urvalsdat, @FaktText OUTPUT
				
				/* SÂ l‰gger vi pÂ vilken period */
					EXECUTE	DatumTillStrDatum_SP @InskrivnDat, 1, @RedDatStr OUTPUT
					SELECT @FaktText = RTRIM(@FaktText) + ' ' + @RedDatStr

				/* Om SV eller KV ska vi ocksÂ l‰gga pÂ ett T.o.m datum */
					IF @Vardtyp = 'SV' OR @Vardtyp = 'KV'
					BEGIN
						IF (@UtskrivnDat IS NOT NULL) AND (@UtskrivnDat > '1900-01-02')
						BEGIN
							SELECT @TomDat = @UtskrivnDat
							EXECUTE	DatumTillStrDatum_SP @TomDat, 1, @RedDatStr OUTPUT
						END
						ELSE
						BEGIN
							/*SELECT @TomDat = @Fildatum*/
							SELECT @RedDatStr  = '          '
						END

/*						EXECUTE	DatumTillStrDatum_SP @TomDat, 1, @RedDatStr OUTPUT*/
						SELECT @FaktText = RTRIM(@FaktText) + ' - ' + @RedDatStr
					END

				/* Skriv textposten till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

/* L‰gg ut en infotext om vilken mÂnade det gller */
					IF (@Vardtyp = 'SV' OR @Vardtyp = 'KV')  AND  ((@UtskrivnDat IS NOT NULL) AND (@UtskrivnDat < '1900-01-02'))
					BEGIN

						SELECT @Manadsnr = DATEPART(month, GETDATE())-1

						SELECT @FaktText = 'Avser perioden'
						IF @Manadsnr = 1
							SELECT @FaktText = RTRIM(@FaktText) + ' januari '
						IF @Manadsnr = 2
							SELECT @FaktText = RTRIM(@FaktText) + ' februari '
						IF @Manadsnr = 3
							SELECT @FaktText = RTRIM(@FaktText) + ' mars '
						IF @Manadsnr = 4
							SELECT @FaktText = RTRIM(@FaktText) + ' april '
						IF @Manadsnr = 5
							SELECT @FaktText = RTRIM(@FaktText) + ' maj '
						IF @Manadsnr = 6
							SELECT @FaktText = RTRIM(@FaktText) + ' juni '
						IF @Manadsnr = 7
							SELECT @FaktText = RTRIM(@FaktText) + ' juli '
						IF @Manadsnr = 8
							SELECT @FaktText = RTRIM(@FaktText) + ' augusti '
						IF @Manadsnr = 9
							SELECT @FaktText = RTRIM(@FaktText) + ' september '
						IF @Manadsnr = 10
							SELECT @FaktText = RTRIM(@FaktText) + ' oktober '
						IF @Manadsnr = 11
							SELECT @FaktText = RTRIM(@FaktText) + ' november '
						IF @Manadsnr = 12
						BEGIN
							SELECT @FaktText = RTRIM(@FaktText) + ' december'
							SELECT @FaktText = RTRIM(@FaktText) + ' ' + CONVERT(CHAR(04),DATEPART(year, GETDATE())-1)
						END
						ELSE
						BEGIN
							SELECT @FaktText = RTRIM(@FaktText) + ' ' + CONVERT(CHAR(04),DATEPART(year, GETDATE()))
						END

				/* Skriv textposten till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

				END

				/* Tala om vilken avdelning pat varit pÂ */
					SELECT @FaktText = @Avdelningsnamn + 'Tel: ' + @Avdelningstelefon
				
				/* Skriv textposten till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

					/* Slutligen l‰gger vi pÂ vilket belopp det var */
					SELECT @Belopp19 = CONVERT(DECIMAL(19),@Belopp)

					EXECUTE RedVarde_SP 'BELOPP', @Belopp19, @RedBel14 OUTPUT
					EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
					SELECT @FaktText = + SPACE(8) + @APrisAntalTxt + @RedBel14

				SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

				END /* IF @Avgift <> '0.00' */
      
      		   		/* L‰gg eventuellt ‰ven till Ambulans */
            			IF @AmbulansAvgift IS NOT NULL AND @AmbulansAvgift <> '0.00'
				BEGIN
					
					/* Tala om att det var ambulans*/
					SELECT @FaktText = 'Ambulans'

					/* Best‰m vilken konteringsstr‰ng vi ska ha */
					EXECUTE getKonteringsstrang_SP 'Ambulans', @Namd, NULL, @Vardtyp, @BehandlKod,@Konteringsstrang OUTPUT

					/* Vad kostar en ambulans idag ? */
					SELECT @Belopp = CONVERT(DECIMAL(15),@AmbulansAvgift)*100
					
					/* Hˆgerst‰ll detta */
					SELECT @RedBel15 = CONVERT(CHAR(15),@Belopp)
					EXECUTE HogerStall_SP @RedBel15, 15, @RedBel15 OUTPUT					

				/* SÂ l‰gger vi pÂ vilket datum */
					EXECUTE	DatumTillStrDatum_SP @InskrivnDat, 1, @RedDatStr OUTPUT
					SELECT @FaktText = RTRIM(@FaktText) + ' ' + @RedDatStr

				/* Slutligen l‰gger vi pÂ vilket belopp det var */

					SELECT @Belopp19 = CONVERT(DECIMAL(19),@Belopp)

					EXECUTE RedVarde_SP 'BELOPP', @Belopp19, @RedBel14 OUTPUT
					EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
					SELECT @FaktText = RTRIM(@FaktText) + SPACE(17) + @RedBel14

					/* Skriv beloppsposten till tabellen */
					SELECT @SenasteBelLopnr = @SenasteBelLopnr + 1

					INSERT INTO UT_FaktRadBel_TB (
						Posttyp,
						FaktText,
						Momskod1,
						Konteringsstrang,
						Belopp,
						Momskod2,						KundId,
						Valuta,
						FaktHuvId,
						Lopnr,
						Va_KundId)
					VALUES('3',
						@FaktText,
						'MF',
						@Konteringsstrang,
						@RedBel15,
						'MF',
						@PrositKundnr,
						'SEK',
						@FaktHuvId,
						@SenasteBelLopnr,
						@Va_KundId)

				/* Tala om vilken avdelning pat varit pÂ */
					SELECT @FaktText = @Avdelningsnamn + 'Tel: ' + @Avdelningstelefon

				/* Tala om vilken avdelning resan gick till */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)


				/* Skriv en blankrad till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						' ',
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

				END /* IF Ambulansavgift <> '0.00' */

				/* L‰gg eventuellt ‰ven till Reseers‰ttning */
            			IF @Reseersattning IS NOT NULL AND @Reseersattning <> '0.00'
				BEGIN
					
					/* Som text talar vi om att det ‰r en reseers‰ttning */
					SELECT @FaktText = 'Reseers‰ttning'

					/* Best‰m vilken konteringsstr‰ng vi ska ha */
					EXECUTE getKonteringsstrang_SP 'Reseers', @Namd, NULL, @Vardtyp, @BehandlKod, @Konteringsstrang OUTPUT

					/* Hur mycket var det? */
					SELECT @Belopp = CONVERT(DECIMAL(15),@Reseersattning)*-100
					
					/* Hˆgerst‰ll detta */
					SELECT @RedBel15 = CONVERT(CHAR(15),@Belopp)
					EXECUTE HogerStall_SP @RedBel15, 15, @RedBel15 OUTPUT

				/* SÂ l‰gger vi pÂ vilket datum */
					EXECUTE	DatumTillStrDatum_SP @InskrivnDat, 1, @RedDatStr OUTPUT
					SELECT @FaktText = RTRIM(@FaktText) + ' ' + @RedDatStr

				/* Slutligen l‰gger vi pÂ vilket belopp det var */

					SELECT @Belopp19 = CONVERT(DECIMAL(19),@Belopp)

					EXECUTE RedVarde_SP 'BELOPP', @Belopp19, @RedBel14 OUTPUT
					EXECUTE HogerStall_SP @RedBel14, 14, @RedBel14 OUTPUT
					SELECT @FaktText = RTRIM(@FaktText) + SPACE(11) + @RedBel14


					/* Skriv beloppsposten till tabellen */
					SELECT @SenasteBelLopnr = @SenasteBelLopnr + 1

					INSERT INTO UT_FaktRadBel_TB (
						Posttyp,
						FaktText,
						Momskod1,
						Konteringsstrang,
						Belopp,
						Momskod2,
						KundId,
						Valuta,
						FaktHuvId,
						Lopnr,
						Va_KundId)
					VALUES('3',
						@FaktText,
						'MF',
						@Konteringsstrang,
						@RedBel15,
						'MF',
						@PrositKundnr,
						'SEK',
						@FaktHuvId,
						@SenasteBelLopnr,
						@Va_KundId)

				
				/* Skriv en blankrad till tabellen */
					SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1
	
					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						' ',
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId)

				END /* IF Reseers‰ttning <> '0.00' */

/******************************* Till‰gg fˆr kompensationsposter ******/
				IF @UtskrKod IS NOT NULL
				BEGIN
				EXECUTE va_dv_privatKorr_sp @va_kundID, 
							@faktomgang,
							@PrositKundnr,	
							@FaktHuvId,
							@Namd, 
							@KostnStalle,	
							@Vardtyp,
							@BehandlKod,
							@PatTxt,
							@SenasteBelLopnr OUTPUT,
							@SenasteTxtLopnr OUTPUT
				END

/******************************************************************************/
				/* S‰tt ett faktureringsdatum pÂ VA_Kund-posten, s‰tt ‰ven faktureringsomgÂng */
				UPDATE VA_Kund_TB
					SET FaktDat = @Urvalsdat,
					    FaktOmgang = @FaktOmgang
					WHERE Va_KundId = @Va_KundId

	         		/* Klart att h‰mta n‰sta post och se vad det ‰r */
 				FETCH NEXT FROM KundCursor 
				INTO @Va_KundId,
					@AvstGrupp,
					@Fildatum,
					@AvsandarId,
					@Vardtyp,
					@Rakningsnr,
					@Kundnr,
					@PatNamn,
					@PatGatuadress,
					@PatPostnr,
					@PatPostadress,
					@InskrivnDat,
					@Namd,
					@KostnStalle,
					@BehandlKod,
					@AntDagar,
					@Avgift,
					@Reseersattning,
					@AnnanBetPnr,
					@AnnanBetNamn,
					@AnnanBetGatuadr,
					@AnnanBetPostNr,
					@AnnanBetPostAdr,
					@PatPnr,
					@UtskrivnDat,
					@AmbulansAvgift,
					@OppenvardsAvgift,
					@Avdelningsnamn,
					@Avdelningstelefon,
					@Landstingskundnr,
					@InFilnamn,
					@HistFilnamn,
					@UtskrKod 

      		END /* N‰md */
      
  	END /* Persnr */

END /* FetchStatus */

	/* Avsluta transaktionen */
	COMMIT TRANSACTION 

	/* St‰da upp cursorn */
	CLOSE KundCursor
	DEALLOCATE KundCursor

RETURN 0






















GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE VanteTillUt_SP
/**********************************************************************************************/
/* Huvudprocedure fˆr att lyfta ˆver kunder till utarean och samtidigt priss‰tta dem          */
/**********************************************************************************************/
 	@Urvalsdat	  DATETIME,	  /* De poster som ska faktureras ska vara inl‰sta fˆre detta datum */
 	@Omfakturering	  BIT	 	  /* Om = 0 ‰r det EJ omfakturering, om = 1 ska poster som redan fakturerats tas med */

AS
	DECLARE @FaktOmgang INT

	/* Bˆrja med att tˆmma befintligt innehÂll i tabellerna */	
	TRUNCATE TABLE UT_PrositFilHuv_TB
	TRUNCATE TABLE UT_Kund_TB
	TRUNCATE TABLE UT_FaktHuv_TB
	TRUNCATE TABLE UT_FaktRadBel_TB
	TRUNCATE TABLE UT_FaktRadText_TB

	/* Boka ett lˆpnr fˆr faktureringsomgÂngen */
	INSERT INTO Ge_FaktOmgang_tb (FaktDat, korningsdat) VALUES(@Urvalsdat, GETDATE())
	SELECT @FaktOmgang = MAX(Lopnr) FROM Ge_FaktOmgang_tb

	/* Behandla fˆrst privatkunderna */
	EXECUTE VanteTillUtPrivat_SP @Urvalsdat, @Omfakturering, @FaktOmgang

	/* Behandla sedan vad som ska faktureras mot landsting */
	EXECUTE VanteTillUtLandsting_SP @Urvalsdat, @Omfakturering, @FaktOmgang

	/* D‰refter kreditar mot landsting */
	EXECUTE VanteTillUtLandstingKredit_SP @Urvalsdat, @Omfakturering, @FaktOmgang

	/* Nu n‰r alla data samlats kan vi l‰gga ut ett filhuvud i UT_PrositFilHuv_TB */
	EXECUTE SkapaPrositFilhuv_SP @Urvalsdat

	/* Kolla om det ligger nÂgra poster som tillhˆr en vÂrdperiod som borde ha avslutats fˆr 70 dagar sedan*/
	EXECUTE ut_dv_70dagarsregel_sp


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE ge_KodForFortsattPeriod_sp
	@Utskrkod CHAR(04),
	@UtskrDat DATETIME,
	@KodArGallande	CHAR(01) OUTPUT
AS

DECLARE @AktUtskrKod	CHAR(04)

/* Initiera saker */
	SET @KodArGallande = 'N'

/* Har att gˆra med en g‰llande utskriftskod eller ej */

	/* Om koden ‰r 0 eller blank sÂ kan vi hoppa ˆver utredningen */
	IF @Utskrkod = '0000' OR @Utskrkod = ' ' OR @Utskrkod IS NULL
	BEGIN
		SET @KodArGallande = 'N'
		RETURN
	END
	ELSE
	BEGIN

/* Om utskrivningskoden finns med bland g‰llande koder i ge_dv_utskrKod_tb */
/* sÂ inneb‰r detta att vÂrdperioden forts‰tter */

	/* Dessa koder betyder fortsatt vÂrdperiod */

		DECLARE KodCursor CURSOR
		FOR SELECT utskrKod
			FROM ge_dv_utskrKod_tb
			WHERE giltigFrom <= @UtskrDat

		OPEN KodCursor
		FETCH NEXT FROM KodCursor 
		INTO @AktUtskrKod

		/* Bl‰ddra igenom alla koderna */
		WHILE @@FETCH_STATUS = 0
		BEGIN
			IF @AktUtskrKod = @Utskrkod
			BEGIN 
				SET @KodArGallande = 'J'
			END

			FETCH NEXT FROM KodCursor 
			INTO @AktUtskrKod
		END /* While @@Fetsc... */
	END

/* St‰da */
	CLOSE KodCursor
	DEALLOCATE KodCursor
RETURN
	

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE ge_TextPrisOchBel_sp
	@Va_KundId	INT,
	@faktomgang	INT,
	@Patpnr	 	CHAR(10),
	@Utskrkod 	CHAR(04),
	@InskrDat 	DATETIME,
	@UtskrDat 	DATETIME,
	@APrisAntalTxt	CHAR(30) OUTPUT,
	@Belopp		DECIMAL(15) OUTPUT
AS
	DECLARE @RedBel15	CHAR(15)
	DECLARE @RedBel14	CHAR(14)
	DECLARE @PerDagAvgift	CHAR(10)
	DECLARE @MinInskr	DATETIME
	DECLARE @MaxUtskr	DATETIME
	DECLARE @AntalDagarIPeriod	INT
	DECLARE @AntalDagarIDelPeriod INT
	DECLARE @Rabattgr‰ns	INT
	DECLARE @patientKatKod 	CHAR(04)
	DECLARE @AntalRader	INT
	DECLARE @StartDagNr	INT
	DECLARE @Slutdagnr	INT
	DECLARE @AntalDagar	INT
	DECLARE @AvgiftPerDag	INT
	DECLARE @TillDagNr	INT
	DECLARE @RedText	VARCHAR(30)
	DECLARE @OrgBel		DECIMAL(15)
	DECLARE @MaxTidigareUtskr DATETIME
	DECLARE	@APrisAntalTxt2	CHAR(30)
	DECLARE @Belopp2	DECIMAL(15)
	DECLARE @va_dv_DebAvgiftID INT
	DECLARE @OrgDeb		DECIMAL(15)
	DECLARE @TomDatStr	CHAR(10)
	DECLARE @FromDatStr	CHAR(10)


/* Skapa en temptabell som vi kan jobba med */
CREATE TABLE #TmpKundPris_tb
(Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL
)

/* Bˆrja med att ta reda pÂ hur vÂrdperioden ser ut som denna post ingÂr i */
	INSERT INTO #TmpKundPris_tb	
		EXEC ge_listaVAPosterIPeriod_sp @Patpnr, @Utskrkod, @InskrDat, @UtskrDat

/* Dessutom fyller vi pÂ arbetstabellen #TmpKundPris_tb med den post vi just hÂller pÂ att jobba med */	
	INSERT INTO #TmpKundPris_tb	
		SELECT Va_KundId, AvstGrupp, Fildatum,	AvsandarId, Vardtyp, Rakningsnr,
			Kundnr,	PatNamn, PatGatuadress,	PatPostnr, PatPostadress, InskrivnDat,
			Namd, KostnStalle, BehandlKod,	AntDagar, Avgift, Reseersattning,
			AnnanBetPnr, AnnanBetNamn, AnnanBetGatuadr, AnnanBetPostNr, AnnanBetPostAdr,
			PatPnr,	UtskrivnDat, AmbulansAvgift, OppenvardsAvgift,	Avdelningsnamn,
			Avdelningstelefon, Landstingskundnr, FaktDat, InFilnamn, HistFilnamn,
			FaktOmgang, utskrKod, patientKatKod
	FROM VA_Kund_tb where Va_KundId = @Va_KundId

/* Tag reda pÂ hur lÂng perioden ‰r frÂn fˆrsta inskrivningsdartum till sista utskrivningsdatum */
	SELECT @MinInskr = MIN(InskrivnDat)
	FROM #TmpKundPris_tb

	SELECT @MaxUtskr = MAX(UtskrivnDat)
	FROM #TmpKundPris_tb

/* Hur lÂng ‰r perioden ? */
	SET @AntalDagarIPeriod=DATEDIFF(dd, @MinInskr, @MaxUtskr)

/* Vilket ‰r startdagnummer respektive slutdagnummer fˆr den del av perioden vi hÂller pÂ med */
	SET @StartDagNr = DATEDIFF(dd, @MinInskr, @InskrDat)
	SET @AntalDagarIDelPeriod = DATEDIFF(dd, @InskrDat, @UtskrDat)
	SET @SlutDagNr = @StartDagNr + @AntalDagarIDelPeriod
	IF @StartDagNr = 0
	BEGIN
		SET @StartDagNr = 1
	END

/* Hur ser rabatt och prisskalan ut? */
	CREATE TABLE #Rabattskala_1
	(ge_dv_patientAvgID		INT,
	 ge_dv_patientkategoriId	INT,
	 avgiftKr			INT,
	 fromDagNr			INT,
	 giltigFrom			DATETIME)

	SELECT @patientKatKod = patientKatKod
	FROM #TmpKundPris_tb

	INSERT INTO #Rabattskala_1
		Exec ge_rabattSkala_sp @InskrDat, @patientKatKod

/* Ber‰kna hur mycket PAT skulle betala vid full avgift */
	SELECT @OrgBel = avgiftKr * @AntalDagarIDelPeriod *100
	FROM #Rabattskala_1
	WHERE fromDagNr = 1

/* DÂ s‰tter vi priset */
	SET @Belopp = 0
	SET @RedText = ''

	WHILE  @StartDagNr <= @SlutDagNr
	BEGIN
		/* Vilket pris g‰ller */
		SELECT @AvgiftPerDag = avgiftKr
		FROM #Rabattskala_1
		WHERE fromDagNr <= @StartDagNr

		/* Till vilket dagnummer g‰ller det priset */
		SET @TillDagNr = NULL

		SELECT @TillDagNr = fromDagNr
		FROM #Rabattskala_1
		WHERE fromDagNr > @StartDagNr

		IF @TillDagNr <= @SlutDagNr
		BEGIN
			SET @AntalDagar = @TilldagNr - @StartDagNr
		END
		ELSE
		BEGIN
			SET @AntalDagar = @SlutDagNr - @StartDagNr
			IF @MaxUtskr=@UtskrDat --(D v s sista delperiod)
			BEGIN
				SET @AntalDagar = @AntalDagar
			END
			ELSE
			BEGIN
				SET @AntalDagar = @AntalDagar + 1
			END
		END

		SET @Belopp = @Belopp + (@AntalDagar * @AvgiftPerDag)	
		
		SET @RedText = @RedText + LTRIM(STR(@AntalDagar)) 
		SET @RedText = @RedText + '*'+ LTRIM(STR(@AvgiftPerDag)) + 'kr ' 
		
		/* Flytta fram startdag */
		SET @StartDagNr = @StartDagNr + @AntalDagar
		IF @MaxUtskr=@UtskrDat --(D v s sista delperiod)
		BEGIN
			/* Fusk fˆr att bryta loopen*/
			SET @StartDagNr = @StartDagNr + 1
		END
	END /* WHILE */
	
	SET @APrisAntalTxt = @RedText
	set @belopp = @belopp * 100

	/* Logga vad vi debiterade pat fˆr denna post */
	INSERT INTO va_dv_DebAvgift_tb(va_kundID, faktomgang, uttagenAvgift, originalAvgift)
	VALUES (@Va_KundId, @faktomgang, @Belopp, @OrgBel)

/* Uppt‰cker vi nu att vi tidigare har tagit fˆr mycket betalt fˆr nÂgot ??? */
	SELECT @MaxTidigareUtskr = MAX(k.utskrivndat)
	FROM VA_Kund_tb k, va_dv_DebAvgift_tb d
	WHERE k.Va_KundId = d.Va_KundId

/* Om maxUtskr ‰r samma som utskrivningsdatum i vÂr period sÂ ‰r vÂr period den sista - och vi kan hoppa ut */
	IF @MaxTidigareUtskr = @UtskrDat
	BEGIN
		RETURN
	END

/* Dags att ta reda pÂ vad pat borde ha betalat fˆr Âterstoiden */

/* Tag reda pÂ hur n‰sta period ser ut och som redan ‰r debiterad */
	SELECT @va_dv_DebAvgiftID=da.va_dv_DebAvgiftID,
		@InskrDat = tk.InskrivnDat, 
		@UtskrDat = tk.UtskrivnDat, 
		@Va_KundId = tk.Va_KundId,
		@OrgDeb = da.uttagenAvgift
	FROM #TmpKundPris_tb tk, va_dv_DebAvgift_tb da
	WHERE tk.InskrivnDat IN (SELECT MIN(InskrivnDat) 
				FROM #TmpKundPris_tb 
				WHERE InskrivnDat >= @UtskrDat)
	AND da.Va_KundId = tk.Va_KundId

/* SÂ l‰nge det finns en n‰sta period sÂ bearbetar vi den */
	WHILE @InskrDat IS NOT NULL
	BEGIN

/* Vilket ‰r startdagnummer respektive slutdagnummer fˆr n‰sta del av perioden vi hÂller pÂ med */
		SET @StartDagNr = DATEDIFF(dd, @MinInskr, @InskrDat)
		SET @AntalDagarIDelPeriod = DATEDIFF(dd, @InskrDat, @UtskrDat)
		SET @SlutDagNr = @StartDagNr + @AntalDagarIDelPeriod
		IF @StartDagNr = 0
		BEGIN
			SET @StartDagNr = 1
		END

	/* DÂ s‰tter vi priset */
		SET @Belopp2 = 0
		SET @RedText = ''

		WHILE  @StartDagNr <= @SlutDagNr
		BEGIN
			/* Vilket pris g‰ller */
			SELECT @AvgiftPerDag = avgiftKr
			FROM #Rabattskala_1
			WHERE fromDagNr <= @StartDagNr
	
			/* Till vilket dagnummer g‰ller det priset */
			SET @TillDagNr = NULL

			SELECT @TillDagNr = fromDagNr
			FROM #Rabattskala_1
			WHERE fromDagNr > @StartDagNr

			IF @TillDagNr <= @SlutDagNr
			BEGIN
				SET @AntalDagar = @TilldagNr - @StartDagNr
			END
			ELSE
			BEGIN
				SET @AntalDagar = @SlutDagNr - @StartDagNr
				IF @MaxUtskr=@UtskrDat --(D v s sista delperiod)
				BEGIN
					SET @AntalDagar = @AntalDagar
				END
				ELSE
				BEGIN
					SET @AntalDagar = @AntalDagar + 1
				END

			END

			SET @Belopp2 = @Belopp2 + (@AntalDagar * @AvgiftPerDag)	
			
			--SET @RedText = @RedText + LTRIM(STR(@AntalDagar)) 
			--SET @RedText = @RedText + '*'+ LTRIM(STR(@AvgiftPerDag)) + 'kr ' 
			/* Redigera fram litet snygga datum */
			EXECUTE	DatumTillStrDatum_SP @InskrDat, 1, @FromDatStr OUTPUT
			EXECUTE	DatumTillStrDatum_SP @UtskrDat, 1, @TomDatStr OUTPUT

			SET @RedText = 'Avser: '+ @FromDatStr+ ' - ' + @TomDatStr
		
			/* Flytta fram startdag */
			SET @StartDagNr = @StartDagNr + @AntalDagar
			IF @MaxUtskr=@UtskrDat --(D v s sista delperiod)
			BEGIN
				/* Fusk fˆr att bryta loopen*/
				SET @StartDagNr = @StartDagNr + 1
			END

		END /* WHILE */
	
		SET @APrisAntalTxt2 = @RedText
		SET @Belopp2 = @belopp2 * 100		
	
		/* Om det nya beloppet blir l‰gre - Logga korrigeringen */		
		IF @Belopp2 < @OrgDeb
		BEGIN
			INSERT INTO va_dv_KorrAvgift_tb (va_dv_DebAvgiftID,
						 va_kundID,
						 faktomgang,
						 korrBel,
						 korrTxt)
			VALUES(@va_dv_DebAvgiftID,
				@Va_KundId, 
				@faktomgang, 
				@Belopp2-@OrgDeb,
				@APrisAntalTxt2)
		END /* Kreditering */

		/* S‰tt styrvariabeln */
		SET @InskrDat = NULL

		/* Tag reda pÂ hur n‰sta period ser ut */
		SELECT @va_dv_DebAvgiftID=da.va_dv_DebAvgiftID, 
			@InskrDat = tk.InskrivnDat, 
			@UtskrDat = tk.UtskrivnDat, 
			@Va_KundId = tk.Va_KundId,
			@OrgDeb = da.uttagenAvgift
		FROM #TmpKundPris_tb tk,va_dv_DebAvgift_tb da
		WHERE tk.InskrivnDat IN (SELECT MIN(InskrivnDat) 
				FROM #TmpKundPris_tb 
				WHERE InskrivnDat >= @UtskrDat)
		AND da.Va_KundId = tk.Va_KundId

	END /* While det finns fler perioder */

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE ge_listaAllaPosterIPeriod_sp
	@Patpnr	 CHAR(10),
	@Utskrkod CHAR(04),
	@InskrDat DATETIME,
	@UtskrDat DATETIME

AS

	DECLARE @KodArGallande	CHAR(01)

	DECLARE @Va_KundId_1 INT
	DECLARE	@InskrivnDat_1 DATETIME
	DECLARE	@PatPnr_1 CHAR(10)
	DECLARE	@UtskrivnDat_1 DATETIME
	DECLARE	@utskrKod_1 CHAR(4)

	DECLARE @Va_KundId_2 INT
	DECLARE	@InskrivnDat_2 DATETIME
	DECLARE	@PatPnr_2 CHAR(10)
	DECLARE	@UtskrivnDat_2 DATETIME
	DECLARE	@utskrKod_2 CHAR(4)

	DECLARE @Tabell_1 VARCHAR(20)
	DECLARE @Tabell_2 VARCHAR(20)


/* Bˆrja med att ta reda pÂ om vi har en utskriftskod som anger att 
vÂrdperioden forts‰tter */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT

/* Skapa en temptabell att l‰gga raderna i */
CREATE TABLE #TmpKund_tb
(Tabell	VARCHAR(20),
	Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL
)

/* Del 1 */
/* Oavsett utskriftskoden sÂ ska vi kolla om det finns tidiagre poster inom 
samma period */
	DECLARE KundCursor CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'va_kund_tb'
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT in_KundFelId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
  		'in_KundFel_tb'
	FROM in_kundFel_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT In_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'in_Kund_tb'
	FROM in_kund_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	OPEN KundCursor

	FETCH NEXT FROM KundCursor
	INTO @Va_KundId_1,
		@InskrivnDat_1,
		@UtskrivnDat_1,
		@utskrKod_1,
		@tabell_1

	/* Bl‰ddra igenom alla posterna och kolla om de hˆr ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM KundCursor
		INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2,
			@Tabell_2

		/* Om det fanns fler rader att h‰mta */
		IF @@FETCH_STATUS = 0
		BEGIN
			/* ƒr rad 1 och 2 del av samma vÂrdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
				/* Har ettan dessutom en g‰llande utskr-kod sÂ ska den sparas */
				EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
				IF @KodArGallande = 'J'
				BEGIN
					IF @Tabell_1 = 'va_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kund_tb
						WHERE in_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kundfel_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundfelId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kundfel_tb
						WHERE in_KundFelId = @Va_KundId_1
					END

				END /* Kod g‰llande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END

			/* DÂ tar vi och flyttar 2 -> 1 fˆr vidare j‰mfˆrelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2
			SET @Tabell_1 = @Tabell_2
		END /* det gick att h‰mta post 2 */

		END /* While @@Fetsc... */

/* Slut pÂ loopandet - dÂ ÂterstÂr bara att j‰mfˆra med inparametern */
		/* Det gick inte att h‰mta en andra post- j‰mfˆr dÂ med parametrarna */
		IF @UtskrivnDat_1 = @InskrDat
		BEGIN
			/* Har ettan dessutom en g‰llande utskr-kod sÂ ska den sparas */
			EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
			IF @KodArGallande = 'J'
			BEGIN
					IF @Tabell_1 = 'va_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kund_tb
						WHERE in_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kundfel_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundfelId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kundfel_tb
						WHERE in_KundFelId = @Va_KundId_1
					END
				END /* Kod g‰llande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END



/* St‰da */
	CLOSE KundCursor
	DEALLOCATE KundCursor

/* Del 2 */

/* Om posten vi hÂller pÂ med inte innehÂller nÂgon giltig utskrivningskod - 
sÂ ‰r vi klara */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT
	IF @KodArGallande = 'N'
	BEGIN
		SELECT * FROM #TmpKund_tb
		RETURN
	END

/* DÂ ska vi forts‰tta med att leta efterfˆljande delar av perioden */
	DECLARE KundCursor2 CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'va_kund_tb'
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT in_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'in_kund_tb'
	FROM in_kund_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT in_KundFelId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'in_kundfel_tb'
	FROM in_kundfel_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	/* Lyft ˆver parametrarna till v‰rdeupps‰ttning 1 */
	SET @InskrivnDat_1 = @InskrDat
	SET @UtskrivnDat_1 = @UtskrDat
	SET @utskrKod_1 = @Utskrkod

	OPEN KundCursor2

	FETCH NEXT FROM KundCursor2
	INTO @Va_KundId_2,
		@InskrivnDat_2,
		@UtskrivnDat_2,
		@utskrKod_2,
		@Tabell_2

	/* Bl‰ddra igenom alla posterna och kolla om de hˆr ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		/* ƒr rad 1 och 2 del av samma vÂrdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
		IF @Tabell_2 = 'va_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_2,
							Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_2
					END
					IF @Tabell_2 = 'in_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_2,
							in_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kund_tb
						WHERE in_KundId = @Va_KundId_2
					END
					IF @Tabell_2 = 'in_kundfel_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_2,
							in_KundfelId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kundfel_tb
						WHERE in_KundFelId = @Va_KundId_2
					END
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				SELECT * FROM #TmpKund_tb
				RETURN
			END

			/* DÂ tar vi och flyttar 2 -> 1 fˆr vidare j‰mfˆrelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2
			SET @Tabell_1 = @Tabell_2


		IF @@FETCH_STATUS = 0
			FETCH NEXT FROM KundCursor2
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2,
			@Tabell_2

		END /* While @@Fetsc... */

/*----------------------------------*/
	select * from #TmpKund_tb


	CLOSE KundCursor2
	DEALLOCATE KundCursor2



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE ge_listaPosterIPeriod_sp
	@Patpnr	 CHAR(10),
	@Utskrkod CHAR(04),
	@InskrDat DATETIME,
	@UtskrDat DATETIME
AS

	DECLARE @KodArGallande	CHAR(01)

	DECLARE @Va_KundId_1 INT
	DECLARE	@InskrivnDat_1 DATETIME
	DECLARE	@PatPnr_1 CHAR(10)
	DECLARE	@UtskrivnDat_1 DATETIME
	DECLARE	@utskrKod_1 CHAR(4)

	DECLARE @Va_KundId_2 INT
	DECLARE	@InskrivnDat_2 DATETIME
	DECLARE	@PatPnr_2 CHAR(10)
	DECLARE	@UtskrivnDat_2 DATETIME
	DECLARE	@utskrKod_2 CHAR(4)


/* Bˆrja med att ta reda pÂ om vi har en utskriftskod som anger att vÂrdperioden forts‰tter */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT

/* Skapa en temptabell att l‰gga raderna i */
CREATE TABLE #TmpKund_tb
(Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL
)

/* Del 1 */
/* Oavsett utskriftskoden sÂ ska vi kolla om det finns tidiagre poster inom samma period */
	DECLARE KundCursor CURSOR
	FOR SELECT Va_KundId, 
		InskrivnDat,
		UtskrivnDat,
		utskrKod
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	OPEN KundCursor

	FETCH NEXT FROM KundCursor 
	INTO @Va_KundId_1,
		@InskrivnDat_1,
		@UtskrivnDat_1,
		@utskrKod_1

	/* Bl‰ddra igenom alla posterna och kolla om de hˆr ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM KundCursor 
		INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2

		/* Om det fanns fler rader att h‰mta */
		IF @@FETCH_STATUS = 0
		BEGIN
			/* ƒr rad 1 och 2 del av samma vÂrdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN 
				/* Har ettan dessutom en g‰llande utskr-kod sÂ ska den sparas */
				EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, @KodArGallande OUTPUT
				IF @KodArGallande = 'J'
				BEGIN
					INSERT INTO #TmpKund_tb
						SELECT Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
 						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
				END /* Kod g‰llande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END
				
			/* DÂ tar vi och flyttar 2 -> 1 fˆr vidare j‰mfˆrelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2
		END /* det gick att h‰mta post 2 */
									
		/*IF @@FETCH_STATUS = 0	
			FETCH NEXT FROM KundCursor 
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2*/

		END /* While @@Fetsc... */

/* Slut pÂ loopandet - dÂ ÂterstÂr bara att j‰mfˆra med inparametern */
		/* Det gick inte att h‰mta en andra post- j‰mfˆr dÂ med parametrarna */
		IF @UtskrivnDat_1 = @InskrDat
		BEGIN 
			/* Har ettan dessutom en g‰llande utskr-kod sÂ ska den sparas */
			EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, @KodArGallande OUTPUT
			IF @KodArGallande = 'J'
			BEGIN
				INSERT INTO #TmpKund_tb
				SELECT Va_KundId,
					AvstGrupp,
						Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
 						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
				END /* Kod g‰llande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END
		


/* St‰da */
	CLOSE KundCursor
	DEALLOCATE KundCursor

/* Del 2 */

/* Om posten vi hÂller pÂ med inte innehÂller nÂgon giltig utskrivningskod - sÂ ‰r vi klara */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT
	IF @KodArGallande = 'N'
	BEGIN
		SELECT * FROM #TmpKund_tb
		RETURN
	END
	
/* DÂ ska vi forts‰tta med att leta efterfˆljande delar av perioden */
	DECLARE KundCursor2 CURSOR
	FOR SELECT Va_KundId, 
		InskrivnDat,
		UtskrivnDat,
		utskrKod
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	/* Lyft ˆver parametrarna till v‰rdeupps‰ttning 1 */
	SET @InskrivnDat_1 = @InskrDat
	SET @UtskrivnDat_1 = @UtskrDat
	SET @utskrKod_1 = @Utskrkod

	OPEN KundCursor2

	FETCH NEXT FROM KundCursor2 
	INTO @Va_KundId_2,
		@InskrivnDat_2,
		@UtskrivnDat_2,
		@utskrKod_2

	/* Bl‰ddra igenom alla posterna och kolla om de hˆr ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		/* ƒr rad 1 och 2 del av samma vÂrdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN 
				INSERT INTO #TmpKund_tb
					SELECT Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
 						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_2
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				SELECT * FROM #TmpKund_tb
				RETURN
			END
				
			/* DÂ tar vi och flyttar 2 -> 1 fˆr vidare j‰mfˆrelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2

									
		IF @@FETCH_STATUS = 0	
			FETCH NEXT FROM KundCursor2 
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2

		END /* While @@Fetsc... */

/*----------------------------------*/
	select * from #TmpKund_tb


	CLOSE KundCursor2
	DEALLOCATE KundCursor2


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE ge_listaVAPosterIPeriod_sp
	@Patpnr	 CHAR(10),
	@Utskrkod CHAR(04),
	@InskrDat DATETIME,
	@UtskrDat DATETIME
AS

	DECLARE @KodArGallande	CHAR(01)

	DECLARE @Va_KundId_1 INT
	DECLARE	@InskrivnDat_1 DATETIME
	DECLARE	@PatPnr_1 CHAR(10)
	DECLARE	@UtskrivnDat_1 DATETIME
	DECLARE	@utskrKod_1 CHAR(4)

	DECLARE @Va_KundId_2 INT
	DECLARE	@InskrivnDat_2 DATETIME
	DECLARE	@PatPnr_2 CHAR(10)
	DECLARE	@UtskrivnDat_2 DATETIME
	DECLARE	@utskrKod_2 CHAR(4)


/* Bˆrja med att ta reda pÂ om vi har en utskriftskod som anger att 
vÂrdperioden forts‰tter */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT

/* Skapa en temptabell att l‰gga raderna i */
CREATE TABLE #TmpKund_tb
(Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL
)

/* Del 1 */
/* Oavsett utskriftskoden sÂ ska vi kolla om det finns tidiagre poster inom 
samma period */
	DECLARE KundCursor_b CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	OPEN KundCursor_b

	FETCH NEXT FROM KundCursor_b
	INTO @Va_KundId_1,
		@InskrivnDat_1,
		@UtskrivnDat_1,
		@utskrKod_1

	/* Bl‰ddra igenom alla posterna och kolla om de hˆr ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM KundCursor_b
		INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2

		/* Om det fanns fler rader att h‰mta */
		IF @@FETCH_STATUS = 0
		BEGIN
			/* ƒr rad 1 och 2 del av samma vÂrdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
				/* Har ettan dessutom en g‰llande utskr-kod sÂ ska den sparas */
				EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
				IF @KodArGallande = 'J'
				BEGIN
					INSERT INTO #TmpKund_tb
						SELECT Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
				END /* Kod g‰llande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END

			/* DÂ tar vi och flyttar 2 -> 1 fˆr vidare j‰mfˆrelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2
		END /* det gick att h‰mta post 2 */

		/*IF @@FETCH_STATUS = 0
			FETCH NEXT FROM KundCursor_b
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2*/

		END /* While @@Fetsc... */

/* Slut pÂ loopandet - dÂ ÂterstÂr bara att j‰mfˆra med inparametern */
		/* Det gick inte att h‰mta en andra post- j‰mfˆr dÂ med parametrarna */
		IF @UtskrivnDat_1 = @InskrDat
		BEGIN
			/* Har ettan dessutom en g‰llande utskr-kod sÂ ska den sparas */
			EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
			IF @KodArGallande = 'J'
			BEGIN
				INSERT INTO #TmpKund_tb
				SELECT Va_KundId,
					AvstGrupp,
						Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
				END /* Kod g‰llande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END



/* St‰da */
	CLOSE KundCursor_b
	DEALLOCATE KundCursor_b

/* Del 2 */

/* Om posten vi hÂller pÂ med inte innehÂller nÂgon giltig utskrivningskod - 
sÂ ‰r vi klara */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT
	IF @KodArGallande = 'N'
	BEGIN
		SELECT * FROM #TmpKund_tb
		RETURN
	END

/* DÂ ska vi forts‰tta med att leta efterfˆljande delar av perioden */
	DECLARE KundCursor2 CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	/* Lyft ˆver parametrarna till v‰rdeupps‰ttning 1 */
	SET @InskrivnDat_1 = @InskrDat
	SET @UtskrivnDat_1 = @UtskrDat
	SET @utskrKod_1 = @Utskrkod

	OPEN KundCursor2

	FETCH NEXT FROM KundCursor2
	INTO @Va_KundId_2,
		@InskrivnDat_2,
		@UtskrivnDat_2,
		@utskrKod_2

	/* Bl‰ddra igenom alla posterna och kolla om de hˆr ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		/* ƒr rad 1 och 2 del av samma vÂrdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
				INSERT INTO #TmpKund_tb
					SELECT Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_2
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				SELECT * FROM #TmpKund_tb
				RETURN
			END

			/* DÂ tar vi och flyttar 2 -> 1 fˆr vidare j‰mfˆrelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2


		IF @@FETCH_STATUS = 0
			FETCH NEXT FROM KundCursor2
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2

		END /* While @@Fetsc... */

/*----------------------------------*/
	select * from #TmpKund_tb


	CLOSE KundCursor2
	DEALLOCATE KundCursor2



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE ge_rabattSkala_sp
@InskrDat		DATETIME,
@PatKatTxt		CHAR(04)
AS
	DECLARE @Dag	INT
	DECLARE @PatKat	INT

/* Tag reda pÂ koden fˆr patientkategorin */
	SELECT @PatKat = ge_dv_patientkategoriId
	FROM ge_dv_patientkategori_tb
	WHERE patientKatKod = @PatKatTxt
	
	CREATE TABLE #FromDag
	(FromDag	INT)

	INSERT INTO #FromDag
	SELECT DISTINCT fromDagNr
		FROM ge_dv_patientavg_tb
		WHERE ge_dv_patientkategoriId = @PatKat
		AND giltigFrom <=  @InskrDat
		ORDER BY fromDagNr

	CREATE TABLE #Rabattskala
	(ge_dv_patientAvgID		INT,
	 ge_dv_patientkategoriId	INT,
	 avgiftKr			INT,
	 fromDagNr			INT,
	 giltigFrom			DATETIME)

	SET @Dag = 0

	SELECT @Dag = MIN(fromDag)
	FROM #FromDag
	WHERE FromDag > @Dag

	/* Bl‰ddra igenom alla posterna och kolla om de hˆr ihop. */
	WHILE @Dag is not null
	BEGIN
		INSERT INTO #Rabattskala
		SELECT ge_dv_patientAvgID,
			 ge_dv_patientkategoriId,
	 		avgiftKr,
	 		fromDagNr,
	 		giltigFrom
		FROM ge_dv_patientavg_tb
		WHERE ge_dv_patientkategoriId = @PatKat
		AND giltigFrom IN (SELECT MAX(giltigFrom)
			FROM ge_dv_patientavg_tb
			WHERE ge_dv_patientkategoriId = @PatKat
			AND giltigFrom <= @InskrDat
			AND fromDagNr = @Dag)

		SELECT @Dag = MIN(fromDag)
		FROM #FromDag
		WHERE FromDag > @Dag

	END

	select * from #Rabattskala



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE getBehandlKod_Text_SP
	@BehandlKod	CHAR(01),
	@PerDat		DATETIME,
	@Txt		VARCHAR(50) OUTPUT
AS
	SELECT @Txt=Txt
	FROM GE_BehandlKod_Text_TB
	WHERE BehandlKod = @BehandlKod
	AND FromDat <= @Perdat

	IF @@ROWCOUNT = 0
		SELECT @Txt = SPACE(50)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE getBehandling_SP
	@BehandlKod CHAR(01),
	@Perdat DATETIME,
        @Txt VARCHAR(50) OUTPUT
AS
	SELECT @Txt = Txt
	FROM GE_BehandlKod_Text_TB
	WHERE BehandlKod = @BehandlKod
	AND FromDat <= @Perdat

	IF @@ROWCOUNT = 0
		SELECT @Txt = "Datum: "




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE getBenamning_SP
/**********************************************************************************************/
/* H‰mtar ben‰mningen som hˆr samman med ett VaniaaKST                                        */
/*                                                                                            */
/* Christer Dahl - OOPERA Konsult AB                                                          */
/* Version 0.0 1999-04-28                                                                     */
/**********************************************************************************************/
 	@Namd   	  CHAR(02), 	  /* 10 = L‰nssjukvÂrden, 13 = Lassarettet */
 	@VaniaKST	  CHAR(03), 	  /* Kostnadsst‰lle frÂn vaniafilen */	
	@Benamning	  VARCHAR(35) OUTPUT  /* En text, t ex Ambulans */
AS
	SELECT  @Benamning = Benamning
	FROM GE_Konto_TB
	WHERE Namd = @Namd
	  AND VaniaKST = @VaniaKST

	IF @@ROWCOUNT = 0
		SELECT @Benamning = " "




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE getKonteringUlan_SP
/**********************************************************************************************/
/* H‰mtar delarna till en konteringsstr‰ng och bygger upp densamma                            */
/*                                                                                            */
/* Christer Dahl - OOPERA Konsult AB                                                          */
/* Version 0.0 1999-04-26                                                                     */
/* Version 1.1 2000-06-29                                                                     */
/**********************************************************************************************/
 	@Benamning	  VARCHAR(35),	  /* En text, t ex Ambulans */
 	@Namd   	  CHAR(02), 	  /* 10 = L‰nssjukvÂrden, 13 = Lassarettet */
 	@VaniaKST	  CHAR(03), 	  /* Kostnadsst‰lle frÂn vaniafilen */	
	@Vardtyp	  CHAR(02),	  /* VÂrdtyp */
	@BehKod		  CHAR(01),	  /* Behandlingskod */
	@Konteringsstrang CHAR(60) OUTPUT /* Den sammanslagna konteringsstr‰ngen */
AS
	DECLARE @Konto		  CHAR(04)	/* Konto */
	DECLARE @PrositKst	  CHAR(04)	/* Kostnadsst‰lle */
	DECLARE @Andamal	  CHAR(04)	/* ƒndamÂl */
	DECLARE @Objekt		  CHAR(04)	/* Objekt - Tills vidare alltid blankt */
	DECLARE @Projekt	  CHAR(04)	/* Projekt - Tills vidare alltid blankt */
	DECLARE @Artikel	  CHAR(04)	/* Artikel - Tills vidare alltid blankt */
	DECLARE @Aktivitet	  CHAR(04)	/* Aktivitet - Tills vidare alltid blankt */
	DECLARE @Avtal		  CHAR(04)	/* Avtal - Tills vidare alltid blankt */
	DECLARE @Cupp		  CHAR(04)	/* Cupp - Vad det nu ‰r ? -Men blankt tills vidare */
	
	DECLARE @Print		VARCHAR(255)


/*	SELECT @Print =  "@Benamning="+@Benamning +" @Namd="+@Namd+" @VaniaKST="+@VaniaKST+" @Vardtyp="+@Vardtyp+" @BehKod="+@BehKod
print @Print*/
/*SELECT @Print =  "@Benamning="+@Benamning
print @print

SELECT @Print =  "@Namd="+@Namd
print @Print

SELECT @Print =  "@VaniaKST="+@VaniaKST
print @print

SELECT @Print =  "@Vardtyp="+@Vardtyp
print @print

SELECT @Print =  " @BehKod="+@BehKod
print @print*/

IF @Vardtyp = "KV"
	SELECT @Vardtyp = "SV"

/* Om bÂde Tj‰nst och VaniaKonto saknas ‰r det fel - meddela detta */
	IF @Benamning IS NULL AND @VaniaKST IS NULL
		RETURN 102

/* Om Tj‰nst saknas */

	IF @Benamning IS NULL
	BEGIN
		/* Behandlingskoden blank behandlas som  NULL */
		IF @BehKod = " "  OR @BehKod IS NULL
			SELECT  @Konto = ULanPrositKto,
	 			@PrositKst = ULanPrositKst,
		 		@Andamal = ULanAndamal,
				/*@Objekt = SPACE(04),*/
				@Objekt = ULanObjekt,
-- CD 2000-06-29	 	@Projekt = SPACE(04),
			 	@Projekt = ULanProjekt,
		 		@Artikel = SPACE(04),
-- CD 2000-06-29		@Aktivitet = SPACE(04),
				@Aktivitet = ULanAktivitet,
	 			@Avtal = SPACE(04),
	 			@Cupp = SPACE(04)
			FROM GE_Konto_TB
			WHERE Namd = @Namd
			  AND Vardtyp = @Vardtyp
			  AND (Behandlkod IS NULL OR Behandlkod = " ")
			  AND VaniaKST = @VaniaKST

		ELSE
			SELECT  @Konto = ULanPrositKto,
	 			@PrositKst = ULanPrositKst,
		 		@Andamal = ULanAndamal,
				/*@Objekt = SPACE(04),*/
				@Objekt = ULanObjekt,
-- CD 2000-06-29	 	@Projekt = SPACE(04),
			 	@Projekt = ULanProjekt,
		 		@Artikel = SPACE(04),
-- CD 2000-06-29		@Aktivitet = SPACE(04),
				@Aktivitet = ULanAktivitet,
	 			@Avtal = SPACE(04),
	 			@Cupp = SPACE(04)
			FROM GE_Konto_TB
			WHERE Namd = @Namd
			  AND Vardtyp = @Vardtyp
			  AND Behandlkod = @BehKod
			  AND VaniaKST = @VaniaKST
	
	END
	ELSE 
/* VaniaKST saknas */
		/* CD ƒndring 2000-06-29*/
		SELECT  @Konto = ULanPrositKto,
	 		@PrositKst = ULanPrositKst,
	 		@Andamal = ULanAndamal,
			/*@Objekt = SPACE(04),*/
			@Objekt = ULanObjekt,
-- CD 2000-06-29	@Projekt = SPACE(04),
		 	@Projekt = ULanProjekt,
	 		@Artikel = SPACE(04),
-- CD 2000-06-29	@Aktivitet = SPACE(04),
			@Aktivitet = ULanAktivitet,
	 		@Avtal = SPACE(04),
	 		@Cupp = SPACE(04)
		FROM GE_Konto_TB
		WHERE Namd = @Namd
		  AND Vardtyp = @Vardtyp
		/*  AND Behandlkod = @BehKod*/
		  AND Benamning = @Benamning

	IF @@rowcount > 0
	BEGIN
		SELECT @Konteringsstrang =  ISNULL(@Konto, SPACE(04)) + ISNULL(@PrositKst, SPACE(04)) + ISNULL(@Andamal, SPACE(04)) + ISNULL(@Objekt, SPACE(04)) + ISNULL(@Projekt, SPACE(04)) + ISNULL(@Artikel, SPACE(04)) + ISNULL(@Aktivitet, SPACE(04)) + ISNULL(@Avtal, SPACE(04)) + ISNULL(@Cupp, SPACE(04))
		RETURN 0
	END
	ELSE
		SELECT @Konteringsstrang = "???"
		INSERT INTO UT_FelKontering_TB VALUES( 	@Benamning,@Namd, @VaniaKST,@Vardtyp, @BehKod, "Utoml‰nare")
		RETURN 101






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE getKonteringsstrang_SP
/**********************************************************************************************/
/* H‰mtar delarna till en konteringsstr‰ng och bygger upp densamma                            */
/*                                                                                            */
/* Christer Dahl - OOPERA Konsult AB                                                          */
/* Version 0.0 1999-04-26                                                                     */
/**********************************************************************************************/
 	@Benamning	  VARCHAR(35),	  /* En text, t ex Ambulans */
 	@Namd   	  CHAR(02), 	  /* 10 = L‰nssjukvÂrden, 13 = Lassarettet */
 	@VaniaKST	  CHAR(03), 	  /* Kostnadsst‰lle frÂn vaniafilen */	
	@Vardtyp	  CHAR(02),	  /* VÂrdtyp */
	@BehKod		  CHAR(01),	  /* Behandlingskod */
	@Konteringsstrang CHAR(60) OUTPUT /* Den sammanslagna konteringsstr‰ngen */
AS
	DECLARE @Konto		  CHAR(04)	/* Konto */
	DECLARE @PrositKst	  CHAR(04)	/* Kostnadsst‰lle */
	DECLARE @Andamal	  CHAR(04)	/* ƒndamÂl */
	DECLARE @Objekt		  CHAR(04)	/* Objekt - Tills vidare alltid blankt */
	DECLARE @Projekt	  CHAR(04)	/* Projekt - Tills vidare alltid blankt */
	DECLARE @Artikel	  CHAR(04)	/* Artikel - Tills vidare alltid blankt */
	DECLARE @Aktivitet	  CHAR(04)	/* Aktivitet - Tills vidare alltid blankt */
	DECLARE @Avtal		  CHAR(04)	/* Avtal - Tills vidare alltid blankt */
	DECLARE @Cupp		  CHAR(04)	/* Cupp - Vad det nu ‰r ? -Men blankt tills vidare */
	
	DECLARE @Print		VARCHAR(255)

/*print "getKonteringsstrang_SP"*/
IF @Vardtyp = "KV"
	SELECT @Vardtyp = "SV"

/*SELECT @Print =  "@Benamning="+@Benamning +" @Namd="+@Namd+" @VaniaKST="+@VaniaKST+" @Vardtyp="+@Vardtyp+" @BehKod="+@BehKod*/
/*SELECT @Print =  "@Benamning="+@Benamning
print @print

SELECT @Print =  "@Namd="+@Namd
print @Print

SELECT @Print =  "@VaniaKST="+@VaniaKST
print @print

SELECT @Print =  "@Vardtyp="+@Vardtyp
print @print

SELECT @Print =  " @BehKod="+@BehKod+"X"
print @print */



/* Om bÂde Tj‰nst och VaniaKonto saknas ‰r det fel - meddela detta */
	IF @Benamning IS NULL AND @VaniaKST IS NULL
		RETURN 102

/* Behandlingskoden kan behˆva redigeras */
	SELECT  @BehKod = NULLIF(@BehKod, " ")

/* Om Tj‰nst saknas */
	IF @Benamning IS NULL
	BEGIN
		/* Behandlingskoden blank behandlas som  NULL */
		IF @BehKod = " "  OR @BehKod IS NULL
			SELECT  @Konto = PrositKonto,
		 		@PrositKst = PrositKst,
	 			@Andamal = Andamal,
				@Objekt = SPACE(04),
			 	@Projekt = SPACE(04),
		 		@Artikel = SPACE(04),
	 			@Aktivitet = SPACE(04),
	 			@Avtal = SPACE(04),
		 		@Cupp = SPACE(04)
			FROM GE_Konto_TB
			WHERE Namd = @Namd
			  AND Vardtyp = @Vardtyp
			  AND (Behandlkod IS NULL OR BehandlKod = " ")
			  AND VaniaKST = @VaniaKST

		ELSE
			SELECT  @Konto = PrositKonto,
		 		@PrositKst = PrositKst,
	 			@Andamal = Andamal,
				@Objekt = SPACE(04),
			 	@Projekt = SPACE(04),
		 		@Artikel = SPACE(04),
	 			@Aktivitet = SPACE(04),
	 			@Avtal = SPACE(04),
		 		@Cupp = SPACE(04)
			FROM GE_Konto_TB
			WHERE Namd = @Namd
			  AND Vardtyp = @Vardtyp
			  AND Behandlkod = @BehKod
			  AND VaniaKST = @VaniaKST

	END
	ELSE 
/* VaniaKST saknas */
		SELECT  @Konto = PrositKonto,
	 		@PrositKst = PrositKst,
	 		@Andamal = Andamal,
			@Objekt = SPACE(04),
		 	@Projekt = SPACE(04),
	 		@Artikel = SPACE(04),
	 		@Aktivitet = SPACE(04),
	 		@Avtal = SPACE(04),
	 		@Cupp = SPACE(04)
		FROM GE_Konto_TB
		WHERE Namd = @Namd
		  AND Vardtyp = @Vardtyp
		 /* AND Behandlkod = @BehKod*/
		  AND Benamning = @Benamning

	IF @@rowcount > 0
	BEGIN
		SELECT @Konteringsstrang =  ISNULL(@Konto, SPACE(04)) + ISNULL(@PrositKst, SPACE(04)) + ISNULL(@Andamal, SPACE(04)) + ISNULL(@Objekt, SPACE(04)) + ISNULL(@Projekt, SPACE(04)) + ISNULL(@Artikel, SPACE(04)) + ISNULL(@Aktivitet, SPACE(04)) + ISNULL(@Avtal, SPACE(04)) + ISNULL(@Cupp, SPACE(04))
		RETURN 0
	END
	ELSE
		INSERT INTO UT_FelKontering_TB VALUES( 	@Benamning,@Namd, @VaniaKST,@Vardtyp, @BehKod, "Inlol‰nare")
			
		SELECT @Konteringsstrang = "????"
		RETURN 101



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




CREATE PROCEDURE getPris
/**********************************************************************************************/
/* H‰mtar pris frÂn pristabellen                                                              */
/**********************************************************************************************/
	@Namnd CHAR(02),	/* N‰mnd fˆr vilken priss‰ttningen ska ske */
	@Vardtyp CHAR(02),	/* Den vÂrdtyp, SV eller OV, som ska priss‰ttas */
	@Avgiftstyp CHAR(02),	/* Kommande till‰gg i Vania - tills vidare = NULL */
	@Benamning VARCHAR(20), /* T ex "Ambulans" */
	@VaniaKST CHAR(04),	/* Kostnadsst‰llet ur vaniafilen = priss‰ttningsnyckel */
	@PrisDat DATETIME,	/* Det datum per vilket priset ska g‰lla */
	@UtPris	DECIMAL(14) OUTPUT  /* Det pris som ska returneras av proceduren */
AS

/* Konvertera vÂrdtypen */
	IF @Vardtyp = "KV"
		SELECT @Vardtyp = "SV"

/* Finns bÂde Avgiftstyp och kostnadsst‰lle - anv‰nd det */
	IF @Avgiftstyp IS NOT NULL AND @VaniaKST IS NOT NULL
	BEGIN
		SELECT @UtPris = pris
		FROM GE_Pris_TB
		WHERE Namd = @Namnd
		  AND Vardtyp = @Vardtyp
		  AND VaniaKST = @VaniaKST
/*		  AND Avgiftstyp = @Avgiftstyp*/
		  AND FromDat <= @Prisdat
	END
	ELSE
	BEGIN

/* Om Avgiftstyp och ben‰mning saknas */
		IF @Avgiftstyp IS NULL AND @Benamning IS NULL
			SELECT @UtPris = pris
			FROM GE_Pris_TB
			WHERE Namd = @Namnd
			  AND Vardtyp = @Vardtyp
			  AND VaniaKST = @VaniaKST
			  AND FromDat <= @Prisdat
		ELSE
			SELECT @UtPris = pris
			FROM GE_Pris_TB
			WHERE Namd = @Namnd
		  	  AND Vardtyp = @Vardtyp
			  AND Benamning = @Benamning
			  AND FromDat <= @Prisdat
	END

	IF @@rowcount > 0 
		RETURN 0
	ELSE
		RETURN 101









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


create procedure litenProc_sp
@EnText varchar(100)
as
	insert into christer values(@entext)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/* Skapa kontrollproceduren */
CREATE PROCEDURE ut_dv_70dagarsregel_sp
AS
	DECLARE @Utskrkod 	CHAR(04)
	DECLARE @KodArGallande  CHAR(01)

	DECLARE @Va_KundId	INT
	DECLARE @Fildatum	DATETIME
	DECLARE @InskrivnDat	DATETIME
	DECLARE @PatPnr		CHAR(10)
	DECLARE @UtskrivnDat	DATETIME

	DECLARE @Va_KundIdTmp	INT
	DECLARE @FildatumTmp	DATETIME

/* En snygg temptabell */
	CREATE TABLE #TmpPosterIPeriod_tb
	(Tabell	VARCHAR(20),
	Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL)

	DECLARE VaKundCursor CURSOR
	FOR SELECT Va_KundId,
		Fildatum,
		InskrivnDat,
		PatPnr,
		UtskrivnDat,
		Utskrkod
	FROM va_kund_tb
	WHERE utskrKod IS NOT NULL
	AND Kontroll70 IS NULL
	ORDER BY PatPnr

	OPEN VaKundCursor

	FETCH NEXT FROM VaKundCursor 
	INTO @Va_KundId,
		@Fildatum,
		@InskrivnDat,
		@PatPnr,
		@UtskrivnDat,
		@Utskrkod

	WHILE @@FETCH_STATUS = 0
	BEGIN
		/* Bˆrja med att ta reda pÂ om vi har en utskriftskod som anger att 
		vÂrdperioden forts‰tter */
		EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrivnDat, @KodArGallande OUTPUT
		
		IF @KodArGallande = 'J' 
		BEGIN
			TRUNCATE TABLE #TmpPosterIPeriod_tb

			INSERT INTO #TmpPosterIPeriod_tb
				EXEC ge_listaAllaPosterIPeriod_sp @PatPnr, @Utskrkod, @InskrivnDat, @UtskrivnDat

			/* L‰gg dessutom till den post vi hÂller pÂ med */
			INSERT INTO #TmpPosterIPeriod_tb(VA_KundID, UtskrivnDat, Utskrkod) VALUES(@VA_KundID, @UtskrivnDat, @Utskrkod)

			/* Det ‰r endast den sista posten i perioden som ‰r intressant att kontrollera */
			SELECT @Va_KundIdTmp = Va_KundId, 
				@FildatumTmp = Fildatum,
				@Utskrkod = Utskrkod,
				@UtskrivnDat = UtskrivnDat
			FROM #TmpPosterIPeriod_tb
			WHERE UtskrivnDat IN (SELECT MAX(UtskrivnDat)
						FROM #TmpPosterIPeriod_tb)

			IF DATEADD(dd,70,@FildatumTmp) < GETDATE()
			BEGIN
				/* Om sista posten har en kod fˆr fortsatt period sÂ ‰r det fel*/
				EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrivnDat, @KodArGallande OUTPUT
				
				IF @KodArGallande = 'J' 
				BEGIN

					/* Logga felet */
					INSERT INTO ut_dv_70DagarFel(Va_KundID) VALUES(@Va_KundIdTmp)
					
					/* Markera kontrollerade poster */
					UPDATE va_kund_tb
					SET Kontroll70 = 0
					WHERE va_kundid IN (SELECT va_kundID FROM #TmpPosterIPeriod_tb)

					/* Markera ‰ven den som var fel */
					UPDATE va_kund_tb
					SET Kontroll70 = 1
					WHERE va_kundid = @Va_KundIdTmp
				END
				ELSE
				BEGIN
				/* DÂ var det inte fel */
					UPDATE va_kund_tb
					SET Kontroll70 = 0
					WHERE va_kundid IN (SELECT va_kundID FROM #TmpPosterIPeriod_tb)
				END
			END
			ELSE
			BEGIN
				/* Inget fel att logga - bara markera kontrollerade psoter */
				UPDATE va_kund_tb
				SET Kontroll70 = 0
				WHERE va_kundid IN (SELECT va_kundID FROM #TmpPosterIPeriod_tb)
			END
			
		END /* Kod g‰llande */

		FETCH NEXT FROM VaKundCursor 
		INTO @Va_KundId,
			@Fildatum,
			@InskrivnDat,
			@PatPnr,
			@UtskrivnDat,
			@Utskrkod

	END /* WHILE */

	CLOSE VAKundCursor
	DEALLOCATE VAKundCursor


/* L‰gg in ett anrop i lilla banten */


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE va_dv_privatKorr_sp
	@va_kundID		INT,
	@faktomgang		INT,
	@PrositKundnr		CHAR(08),
	@FaktHuvId		INT,
	@Namd			CHAR(02), 
	@KostnStalle		CHAR(03), 
	@Vardtyp		CHAR(02), 
	@BehandlKod		CHAR(01), 
	@PatTxt			CHAR(50),
	@SenasteBelLopnr	INT OUTPUT,
	@SenasteTxtLopnr	INT OUTPUT
AS
	DECLARE @FaktText		CHAR(50)
	DECLARE @Belopp			DECIMAL(15)
	DECLARE @RedBel15		CHAR(15)
	DECLARE @Konteringsstrang	CHAR(60)
	DECLARE @va_dv_KorrAvgiftID	INT
	DECLARE @RedText		varCHAR(50)

/* Avdelning initieringar */
	SET @FaktText = NULL
	
/* Bˆrja med att kontrollera om det finns nÂgot att korrigera */
	SELECT @FaktText = korrTxt,
		@Belopp = korrBel,
		@va_dv_KorrAvgiftID = va_dv_KorrAvgiftID
	FROM va_dv_KorrAvgift_tb
	WHERE va_kundID = @va_kundID
	AND faktomgang = @faktomgang
	AND (fakturerad IS NULL OR fakturerad = 0)

/* Fanns det nÂgot att kompensera ? */
	IF @FaktText IS NULL
	BEGIN
		--print 'uthopp liksom'
		RETURN
	END

/* DÂ redigerar vi beloppet */
	SET @RedBel15 = CONVERT(CHAR(15),@Belopp)
	EXECUTE HogerStall_SP @RedBel15, 15, @RedBel15 OUTPUT

/* Skaffa en konteringsstr‰ng */
	EXECUTE getKonteringsstrang_SP NULL, 
					@Namd, 
					@KostnStalle, 
					@Vardtyp, 
					@BehandlKod, 
					@Konteringsstrang OUTPUT
/* Skapa en vettaig text */
	
	IF @Belopp<0
	BEGIN
		SET @RedBel15 = CONVERT(CHAR(15),@Belopp*-1)
	END
	ELSE
	BEGIN
		SET @RedBel15 = CONVERT(CHAR(15),@Belopp)
	END

	EXECUTE RedVarde_SP 'BELOPP', @RedBel15, @RedBel15 OUTPUT
	EXECUTE HogerStall_SP @RedBel15, 15, @RedBel15 OUTPUT					
	
	SET @RedText = 'Rabatt '+ LTRIM(@RedBel15) + ' kr'

/* Skriv en beloppspost pÂ korrigeringen */
	SET @SenasteBelLopnr = @SenasteBelLopnr + 1

	INSERT INTO UT_FaktRadBel_TB (
						Posttyp,
						FaktText,
						Momskod1,
						Konteringsstrang,
						Belopp,
						Momskod2,
						KundId,
						Valuta,
						FaktHuvId,
						Lopnr,
						Va_KundId)
					VALUES('3',
						@RedText,
						'MF',
						@Konteringsstrang,
						@Belopp,
						'MF',
						@PrositKundnr,
						'SEK',
						@FaktHuvId,
						@SenasteBelLopnr,
						@Va_KundId)

/* L‰gg ut en kommentar om vad korrigeringen avser */
			SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1

					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						@FaktText,
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId) 

/* L‰gg till en blankrad */
			SELECT @SenasteTxtLopnr = @SenasteTxtLopnr + 1

					INSERT INTO UT_FaktRadText_TB(
						Posttyp,
						FaktText,
						Momskod,
						FaktHuvId,
					        BelLopNr,
						Lopnr,
						Va_KundId)
					VALUES ('4',
						' ',
						'MF',
						@FaktHuvId,
					        @SenasteBelLopnr,
						@SenasteTxtLopnr,
						@Va_KundId) 


/* Markera att vi ‰r klara med korrigeringen */
	UPDATE va_dv_KorrAvgift_tb
	SET fakturerad = 1
	WHERE va_dv_KorrAvgiftID = @va_dv_KorrAvgiftID
	


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

