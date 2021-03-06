/****** Object:  ForeignKey [FK_DivisionSeason_Season]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DivisionSeason_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionSeason]'))
ALTER TABLE [dbo].[DivisionSeason] DROP CONSTRAINT [FK_DivisionSeason_Season]
GO
/****** Object:  ForeignKey [FK_Division_League]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Division_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
ALTER TABLE [dbo].[DivisionType] DROP CONSTRAINT [FK_Division_League]
GO
/****** Object:  ForeignKey [FK_Game_Field]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game] DROP CONSTRAINT [FK_Game_Field]
GO
/****** Object:  ForeignKey [FK_Game_Team_Away]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Team_Away]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game] DROP CONSTRAINT [FK_Game_Team_Away]
GO
/****** Object:  ForeignKey [FK_Game_Team_Home]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Team_Home]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game] DROP CONSTRAINT [FK_Game_Team_Home]
GO
/****** Object:  ForeignKey [FK_GameScore_Game]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GameScore_Game]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
ALTER TABLE [dbo].[GameScore] DROP CONSTRAINT [FK_GameScore_Game]
GO
/****** Object:  ForeignKey [FK_League_Association]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_League_Association]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
ALTER TABLE [dbo].[League] DROP CONSTRAINT [FK_League_Association]
GO
/****** Object:  ForeignKey [FK_Season_DivisionType]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Season_DivisionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
ALTER TABLE [dbo].[Season] DROP CONSTRAINT [FK_Season_DivisionType]
GO
/****** Object:  ForeignKey [FK_Season_SeasonType]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Season_SeasonType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
ALTER TABLE [dbo].[Season] DROP CONSTRAINT [FK_Season_SeasonType]
GO
/****** Object:  ForeignKey [FK_SeasonTeam_Season]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonTeam_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
ALTER TABLE [dbo].[SeasonTeam] DROP CONSTRAINT [FK_SeasonTeam_Season]
GO
/****** Object:  ForeignKey [FK_SeasonTeam_Team]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonTeam_Team]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
ALTER TABLE [dbo].[SeasonTeam] DROP CONSTRAINT [FK_SeasonTeam_Team]
GO
/****** Object:  ForeignKey [FK_SeasonType_League]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonType_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
ALTER TABLE [dbo].[SeasonType] DROP CONSTRAINT [FK_SeasonType_League]
GO
/****** Object:  ForeignKey [FK_Team_League]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Team_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
ALTER TABLE [dbo].[Team] DROP CONSTRAINT [FK_Team_League]
GO
/****** Object:  Table [dbo].[DivisionSeason]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DivisionSeason]') AND type in (N'U'))
DROP TABLE [dbo].[DivisionSeason]
GO
/****** Object:  Table [dbo].[GameScore]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GameScore]') AND type in (N'U'))
DROP TABLE [dbo].[GameScore]
GO
/****** Object:  Table [dbo].[SeasonTeam]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SeasonTeam]') AND type in (N'U'))
DROP TABLE [dbo].[SeasonTeam]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Game]') AND type in (N'U'))
DROP TABLE [dbo].[Game]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Season]') AND type in (N'U'))
DROP TABLE [dbo].[Season]
GO
/****** Object:  Table [dbo].[DivisionType]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DivisionType]') AND type in (N'U'))
DROP TABLE [dbo].[DivisionType]
GO
/****** Object:  Table [dbo].[SeasonType]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SeasonType]') AND type in (N'U'))
DROP TABLE [dbo].[SeasonType]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Team]') AND type in (N'U'))
DROP TABLE [dbo].[Team]
GO
/****** Object:  Table [dbo].[League]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[League]') AND type in (N'U'))
DROP TABLE [dbo].[League]
GO
/****** Object:  Table [dbo].[Field]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Field]') AND type in (N'U'))
DROP TABLE [dbo].[Field]
GO
/****** Object:  Table [dbo].[Association]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Association]') AND type in (N'U'))
DROP TABLE [dbo].[Association]
GO
/****** Object:  Default [DF_Association_AssociationId]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Association_AssociationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Association_AssociationId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] DROP CONSTRAINT [DF_Association_AssociationId]
END


End
GO
/****** Object:  Default [DF_Organization_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organization_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Organization_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] DROP CONSTRAINT [DF_Organization_Created]
END


End
GO
/****** Object:  Default [DF_Organization_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organization_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Organization_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] DROP CONSTRAINT [DF_Organization_Modified]
END


End
GO
/****** Object:  Default [DF_Organization_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organization_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Organization_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] DROP CONSTRAINT [DF_Organization_Enabled]
END


End
GO
/****** Object:  Default [DF_DivisionSeason_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DivisionSeason_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionSeason]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DivisionSeason_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionSeason] DROP CONSTRAINT [DF_DivisionSeason_Created]
END


End
GO
/****** Object:  Default [DF_DivisionType_DivisionTypeId]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DivisionType_DivisionTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DivisionType_DivisionTypeId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] DROP CONSTRAINT [DF_DivisionType_DivisionTypeId]
END


End
GO
/****** Object:  Default [DF_Division_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Division_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Division_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] DROP CONSTRAINT [DF_Division_Created]
END


End
GO
/****** Object:  Default [DF_Division_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Division_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Division_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] DROP CONSTRAINT [DF_Division_Modified]
END


End
GO
/****** Object:  Default [DF_Division_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Division_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Division_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] DROP CONSTRAINT [DF_Division_Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_TeamId]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_TeamId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_TeamId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] DROP CONSTRAINT [DF_Table_1_TeamId]
END


End
GO
/****** Object:  Default [DF_Field_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Field_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Field_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] DROP CONSTRAINT [DF_Field_Created]
END


End
GO
/****** Object:  Default [DF_Field_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Field_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Field_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] DROP CONSTRAINT [DF_Field_Modified]
END


End
GO
/****** Object:  Default [DF_Field_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Field_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Field_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] DROP CONSTRAINT [DF_Field_Enabled]
END


End
GO
/****** Object:  Default [DF_Game_GameId]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_GameId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_GameId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] DROP CONSTRAINT [DF_Game_GameId]
END


End
GO
/****** Object:  Default [DF_Game_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] DROP CONSTRAINT [DF_Game_Created]
END


End
GO
/****** Object:  Default [DF_Game_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] DROP CONSTRAINT [DF_Game_Modified]
END


End
GO
/****** Object:  Default [DF_Game_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] DROP CONSTRAINT [DF_Game_Enabled]
END


End
GO
/****** Object:  Default [DF_GameScore_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GameScore_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GameScore_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GameScore] DROP CONSTRAINT [DF_GameScore_Created]
END


End
GO
/****** Object:  Default [DF_GameScore_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GameScore_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GameScore_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GameScore] DROP CONSTRAINT [DF_GameScore_Modified]
END


End
GO
/****** Object:  Default [DF_GameScore_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GameScore_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GameScore_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GameScore] DROP CONSTRAINT [DF_GameScore_Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_LeagueId]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_LeagueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_LeagueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] DROP CONSTRAINT [DF_Table_1_LeagueId]
END


End
GO
/****** Object:  Default [DF_League_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_League_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_League_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] DROP CONSTRAINT [DF_League_Created]
END


End
GO
/****** Object:  Default [DF_League_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_League_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_League_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] DROP CONSTRAINT [DF_League_Modified]
END


End
GO
/****** Object:  Default [DF_League_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_League_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_League_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] DROP CONSTRAINT [DF_League_Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_DivisionId]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_DivisionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_DivisionId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] DROP CONSTRAINT [DF_Table_1_DivisionId]
END


End
GO
/****** Object:  Default [DF_Season_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Season_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Season_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] DROP CONSTRAINT [DF_Season_Created]
END


End
GO
/****** Object:  Default [DF_Season_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Season_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Season_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] DROP CONSTRAINT [DF_Season_Modified]
END


End
GO
/****** Object:  Default [DF_Season_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Season_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Season_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] DROP CONSTRAINT [DF_Season_Enabled]
END


End
GO
/****** Object:  Default [DF_SeasonTeam_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonTeam_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonTeam_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonTeam] DROP CONSTRAINT [DF_SeasonTeam_Created]
END


End
GO
/****** Object:  Default [DF_SeasonType_SeasonTypeId]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_SeasonTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_SeasonTypeId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] DROP CONSTRAINT [DF_SeasonType_SeasonTypeId]
END


End
GO
/****** Object:  Default [DF_SeasonType_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] DROP CONSTRAINT [DF_SeasonType_Created]
END


End
GO
/****** Object:  Default [DF_SeasonType_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] DROP CONSTRAINT [DF_SeasonType_Modified]
END


End
GO
/****** Object:  Default [DF_SeasonType_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] DROP CONSTRAINT [DF_SeasonType_Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_LeagueId_1]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_LeagueId_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_LeagueId_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] DROP CONSTRAINT [DF_Table_1_LeagueId_1]
END


End
GO
/****** Object:  Default [DF_Team_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Team_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Team_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] DROP CONSTRAINT [DF_Team_Created]
END


End
GO
/****** Object:  Default [DF_Team_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Team_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Team_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] DROP CONSTRAINT [DF_Team_Modified]
END


End
GO
/****** Object:  Default [DF_Team_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Team_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Team_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] DROP CONSTRAINT [DF_Team_Enabled]
END


End
GO
/****** Object:  Role [djokinen]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'djokinen')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'djokinen' AND type = 'R')
CREATE ROLE [djokinen]

END
GO
/****** Object:  Table [dbo].[Association]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Association]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Association](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Website] [varchar](1024) COLLATE Latin1_General_CI_AS NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Association] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Association]') AND name = N'IX_Association')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Association] ON [dbo].[Association] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[Association] ([ID], [Name], [Website], [Description], [Created], [Modified], [Enabled]) VALUES (N'd56fd183-5736-4bc3-89c8-2f8af59303cf', N'Hammertime Hale', N'http://hammertimehale.ca', N'Hammertime Sports', CAST(0x0000A39D00F452B8 AS DateTime), CAST(0x0000A39D00F452B8 AS DateTime), 1)
INSERT [dbo].[Association] ([ID], [Name], [Website], [Description], [Created], [Modified], [Enabled]) VALUES (N'c1030d81-31b5-41b0-84d5-c6aff4202dd6', N'Qsbl', N'http://qsbl.ca', N'Queen St Bar League', CAST(0x0000A39D00F40E63 AS DateTime), CAST(0x0000A39D00F40E63 AS DateTime), 1)
/****** Object:  Table [dbo].[Field]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Field]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Field](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Field] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Field] ([ID], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'21b8665b-63a5-4f58-8a2d-38db1aea45d3', N'Dentonia Park', NULL, CAST(0x0000A3A20101BDF9 AS DateTime), CAST(0x0000A3A20101BDF9 AS DateTime), 1)
INSERT [dbo].[Field] ([ID], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'74b23ba0-a2cd-4bfb-9f77-45a77de3ea89', N'McCleary Park', NULL, CAST(0x0000A3A20101D6CB AS DateTime), CAST(0x0000A3A20101D6CB AS DateTime), 1)
INSERT [dbo].[Field] ([ID], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'3edc3aa2-12fa-4465-8a10-7e0cb8caf95b', N'Kew Gardens', NULL, CAST(0x0000A3A20101E4D9 AS DateTime), CAST(0x0000A3A20101E4D9 AS DateTime), 1)
INSERT [dbo].[Field] ([ID], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'fd9f55ce-2638-4093-bbed-9918cad8e224', N'Blantyre Park', NULL, CAST(0x0000A3A20101C6B5 AS DateTime), CAST(0x0000A3A20101C6B5 AS DateTime), 1)
/****** Object:  Table [dbo].[League]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[League]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[League](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[AssociationId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Website] [varchar](1024) COLLATE Latin1_General_CI_AS NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_League] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[League]') AND name = N'IX_League')
CREATE UNIQUE NONCLUSTERED INDEX [IX_League] ON [dbo].[League] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[League] ([ID], [AssociationId], [Name], [Website], [Description], [Created], [Modified], [Enabled]) VALUES (N'36837f47-42c9-4b8d-b582-48611b2a7f17', N'd56fd183-5736-4bc3-89c8-2f8af59303cf', N'Beaches Mens League', N'http://ilovesports.ca/websites/leagues/softball/ontario/beachesmen/', N'mens', CAST(0x0000A39D00FA22D3 AS DateTime), CAST(0x0000A39D00FA22D3 AS DateTime), 1)
INSERT [dbo].[League] ([ID], [AssociationId], [Name], [Website], [Description], [Created], [Modified], [Enabled]) VALUES (N'72363784-94ec-40ac-b5be-89722b102469', N'c1030d81-31b5-41b0-84d5-c6aff4202dd6', N'Qsbl', N'http://qsbl.ca', N'Queen Street Bar League', CAST(0x0000A39D010241E8 AS DateTime), CAST(0x0000A39D010241E8 AS DateTime), 1)
/****** Object:  Table [dbo].[Team]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Team]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Team](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[LeagueId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [IX_Team] UNIQUE NONCLUSTERED 
(
	[LeagueId] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Team] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'c05584a0-043f-47a3-85a6-39c05e4a2c37', N'72363784-94ec-40ac-b5be-89722b102469', N'Crushers', NULL, CAST(0x0000A39D00D47411 AS DateTime), CAST(0x0000A39D00D47411 AS DateTime), 1)
INSERT [dbo].[Team] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'fb7b8b55-63bc-4ac1-9552-74a279c3e0ac', N'36837f47-42c9-4b8d-b582-48611b2a7f17', N'Old School', NULL, CAST(0x0000A3A200FE7BCE AS DateTime), CAST(0x0000A3A200FE7BCE AS DateTime), 1)
INSERT [dbo].[Team] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'6cfc3990-022d-4fed-90cc-b7171d56fa41', N'72363784-94ec-40ac-b5be-89722b102469', N'Batmen', NULL, CAST(0x0000A39D00D46C3E AS DateTime), CAST(0x0000A39D00D46C3E AS DateTime), 1)
INSERT [dbo].[Team] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'e0847cd7-7387-4cb4-84df-f2f11ac14f0a', N'36837f47-42c9-4b8d-b582-48611b2a7f17', N'Krap City', NULL, CAST(0x0000A3A201007030 AS DateTime), CAST(0x0000A3A201007030 AS DateTime), 1)
/****** Object:  Table [dbo].[SeasonType]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SeasonType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SeasonType](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[LeagueId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_SeasonType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SeasonType]') AND name = N'IX_SeasonType')
CREATE NONCLUSTERED INDEX [IX_SeasonType] ON [dbo].[SeasonType] 
(
	[LeagueId] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[SeasonType] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'12aa08a4-9a6f-434d-8c28-47382416ed6f', N'72363784-94ec-40ac-b5be-89722b102469', N'Regular', N'qsbl', CAST(0x0000A3A100D0B286 AS DateTime), CAST(0x0000A3A100D0B286 AS DateTime), 1)
INSERT [dbo].[SeasonType] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'22fe6d70-5f89-4676-9f25-af3eef81d57c', N'72363784-94ec-40ac-b5be-89722b102469', N'Play-Offs', N'qsbl', CAST(0x0000A3A100D0C76B AS DateTime), CAST(0x0000A3A100D0C76B AS DateTime), 1)
INSERT [dbo].[SeasonType] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'917bced7-c07a-40d2-bbc7-cd2f0d8c502d', N'36837f47-42c9-4b8d-b582-48611b2a7f17', N'Play-Offs', N'beaches', CAST(0x0000A3A100D059F3 AS DateTime), CAST(0x0000A3A100D059F3 AS DateTime), 1)
INSERT [dbo].[SeasonType] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'd0007f12-c89e-4c4a-841d-fd7fcbe3b373', N'36837f47-42c9-4b8d-b582-48611b2a7f17', N'Regular', N'beaches', CAST(0x0000A3A100D02718 AS DateTime), CAST(0x0000A3A100D02718 AS DateTime), 1)
/****** Object:  Table [dbo].[DivisionType]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DivisionType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DivisionType](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[LeagueId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_DivisionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DivisionType] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'5adea886-b53f-4771-be86-8b69f6323ca4', N'36837f47-42c9-4b8d-b582-48611b2a7f17', N'D', N'mens', CAST(0x0000A39D010561C4 AS DateTime), CAST(0x0000A39D010561C4 AS DateTime), 1)
INSERT [dbo].[DivisionType] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'64454836-43bc-40f7-93cf-90bfd1ccd456', N'36837f47-42c9-4b8d-b582-48611b2a7f17', N'C', N'mens', CAST(0x0000A39D01054A23 AS DateTime), CAST(0x0000A39D01054A23 AS DateTime), 1)
INSERT [dbo].[DivisionType] ([ID], [LeagueId], [Name], [Description], [Created], [Modified], [Enabled]) VALUES (N'231c9253-78d6-4898-bd20-c2d0f7ec24b4', N'72363784-94ec-40ac-b5be-89722b102469', N'qsbl coed', N'coed', CAST(0x0000A39D0106D8E4 AS DateTime), CAST(0x0000A39D0106D8E4 AS DateTime), 1)
/****** Object:  Table [dbo].[Season]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Season]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Season](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[DivisionTypeId] [uniqueidentifier] NOT NULL,
	[SeasonTypeId] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Season] ([ID], [DivisionTypeId], [SeasonTypeId], [StartDate], [EndDate], [Description], [Created], [Modified], [Enabled]) VALUES (N'c7d95582-8d0f-4d20-9f3d-171f117881f5', N'5adea886-b53f-4771-be86-8b69f6323ca4', N'd0007f12-c89e-4c4a-841d-fd7fcbe3b373', CAST(0x0000A31E00000000 AS DateTime), CAST(0x0000A39900000000 AS DateTime), N'2014 beaches > d> regular seaon', CAST(0x0000A3A10102115E AS DateTime), CAST(0x0000A3A10102115E AS DateTime), 1)
INSERT [dbo].[Season] ([ID], [DivisionTypeId], [SeasonTypeId], [StartDate], [EndDate], [Description], [Created], [Modified], [Enabled]) VALUES (N'33994c3e-aa21-43b0-a86a-527179d5578d', N'5adea886-b53f-4771-be86-8b69f6323ca4', N'917bced7-c07a-40d2-bbc7-cd2f0d8c502d', CAST(0x0000A22C00000000 AS DateTime), CAST(0x0000A24A00000000 AS DateTime), N'2013 beaches > d > playoffs', CAST(0x0000A3A10102C455 AS DateTime), CAST(0x0000A3A10102C455 AS DateTime), 1)
INSERT [dbo].[Season] ([ID], [DivisionTypeId], [SeasonTypeId], [StartDate], [EndDate], [Description], [Created], [Modified], [Enabled]) VALUES (N'3a2736c0-6186-4178-af92-661c2583153e', N'64454836-43bc-40f7-93cf-90bfd1ccd456', N'd0007f12-c89e-4c4a-841d-fd7fcbe3b373', CAST(0x0000A31E00000000 AS DateTime), CAST(0x0000A39900000000 AS DateTime), N'2014 beaches > c> regular season', CAST(0x0000A3A200FB857A AS DateTime), CAST(0x0000A3A200FB857A AS DateTime), 1)
INSERT [dbo].[Season] ([ID], [DivisionTypeId], [SeasonTypeId], [StartDate], [EndDate], [Description], [Created], [Modified], [Enabled]) VALUES (N'8d89241f-90e4-43e2-98e4-6b3a4ed86366', N'5adea886-b53f-4771-be86-8b69f6323ca4', N'917bced7-c07a-40d2-bbc7-cd2f0d8c502d', CAST(0x0000A39900000000 AS DateTime), CAST(0x0000A3B700000000 AS DateTime), N'2014 beaches > d > playoffs', CAST(0x0000A3A10102ED32 AS DateTime), CAST(0x0000A3A10102ED32 AS DateTime), 1)
INSERT [dbo].[Season] ([ID], [DivisionTypeId], [SeasonTypeId], [StartDate], [EndDate], [Description], [Created], [Modified], [Enabled]) VALUES (N'ce7a6206-2424-4d4a-962c-8b4c0f79f819', N'5adea886-b53f-4771-be86-8b69f6323ca4', N'd0007f12-c89e-4c4a-841d-fd7fcbe3b373', CAST(0x0000A1B100000000 AS DateTime), CAST(0x0000A22C00000000 AS DateTime), N'2013 beaches > d> regular seaon', CAST(0x0000A3A10101D386 AS DateTime), CAST(0x0000A3A10101D386 AS DateTime), 1)
INSERT [dbo].[Season] ([ID], [DivisionTypeId], [SeasonTypeId], [StartDate], [EndDate], [Description], [Created], [Modified], [Enabled]) VALUES (N'b97c17c4-65da-4abe-9a4c-f9e399ed9c4e', N'64454836-43bc-40f7-93cf-90bfd1ccd456', N'917bced7-c07a-40d2-bbc7-cd2f0d8c502d', CAST(0x0000A39900000000 AS DateTime), CAST(0x0000A3B700000000 AS DateTime), N'2014 beaches > c> play-offs', CAST(0x0000A3A200FBC28C AS DateTime), CAST(0x0000A3A200FBC28C AS DateTime), 1)
/****** Object:  Table [dbo].[Game]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Game]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Game](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[TeamIdHome] [uniqueidentifier] NOT NULL,
	[TeamIdAway] [uniqueidentifier] NOT NULL,
	[GameDateTime] [datetime] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [IX_Game] UNIQUE NONCLUSTERED 
(
	[GameDateTime] DESC,
	[TeamIdHome] ASC,
	[TeamIdAway] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Game] ([ID], [TeamIdHome], [TeamIdAway], [GameDateTime], [FieldId], [Description], [Created], [Modified], [Enabled]) VALUES (N'0c43e660-b0cd-47d8-af82-defcf7c253f4', N'e0847cd7-7387-4cb4-84df-f2f11ac14f0a', N'fb7b8b55-63bc-4ac1-9552-74a279c3e0ac', CAST(0x0000A38001624F20 AS DateTime), N'21b8665b-63a5-4f58-8a2d-38db1aea45d3', NULL, CAST(0x0000A3A201035006 AS DateTime), CAST(0x0000A3A201035006 AS DateTime), 1)
INSERT [dbo].[Game] ([ID], [TeamIdHome], [TeamIdAway], [GameDateTime], [FieldId], [Description], [Created], [Modified], [Enabled]) VALUES (N'b0c51ffb-efea-4ff2-9542-f7b014510bda', N'fb7b8b55-63bc-4ac1-9552-74a279c3e0ac', N'e0847cd7-7387-4cb4-84df-f2f11ac14f0a', CAST(0x0000A32A01499700 AS DateTime), N'74b23ba0-a2cd-4bfb-9f77-45a77de3ea89', NULL, CAST(0x0000A3A20102F8CA AS DateTime), CAST(0x0000A3A20102F8CA AS DateTime), 1)
/****** Object:  Table [dbo].[SeasonTeam]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SeasonTeam]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SeasonTeam](
	[SeasonId] [uniqueidentifier] NOT NULL,
	[TeamId] [uniqueidentifier] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_SeasonTeam] PRIMARY KEY CLUSTERED 
(
	[SeasonId] ASC,
	[TeamId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[SeasonTeam] ([SeasonId], [TeamId], [Created]) VALUES (N'3a2736c0-6186-4178-af92-661c2583153e', N'fb7b8b55-63bc-4ac1-9552-74a279c3e0ac', CAST(0x0000A3A201005231 AS DateTime))
INSERT [dbo].[SeasonTeam] ([SeasonId], [TeamId], [Created]) VALUES (N'3a2736c0-6186-4178-af92-661c2583153e', N'e0847cd7-7387-4cb4-84df-f2f11ac14f0a', CAST(0x0000A3A201008A00 AS DateTime))
/****** Object:  Table [dbo].[GameScore]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GameScore]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GameScore](
	[GameId] [uniqueidentifier] NOT NULL,
	[ScoreHome] [int] NOT NULL,
	[ScoreAway] [int] NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_GameScore] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[GameScore] ([GameId], [ScoreHome], [ScoreAway], [Description], [Created], [Modified], [Enabled]) VALUES (N'0c43e660-b0cd-47d8-af82-defcf7c253f4', 8, 7, NULL, CAST(0x0000A3A20107CAB7 AS DateTime), CAST(0x0000A3A20107CAB7 AS DateTime), 1)
INSERT [dbo].[GameScore] ([GameId], [ScoreHome], [ScoreAway], [Description], [Created], [Modified], [Enabled]) VALUES (N'b0c51ffb-efea-4ff2-9542-f7b014510bda', 13, 9, NULL, CAST(0x0000A3A20107E2BA AS DateTime), CAST(0x0000A3A20107E2BA AS DateTime), 1)
/****** Object:  Table [dbo].[DivisionSeason]    Script Date: 09/11/2014 00:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DivisionSeason]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DivisionSeason](
	[DivisionId] [uniqueidentifier] NOT NULL,
	[SeasonId] [uniqueidentifier] NOT NULL,
	[Description] [text] COLLATE Latin1_General_CI_AS NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_DivisionSeason] PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC,
	[SeasonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Default [DF_Association_AssociationId]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Association_AssociationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Association_AssociationId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] ADD  CONSTRAINT [DF_Association_AssociationId]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_Organization_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organization_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Organization_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] ADD  CONSTRAINT [DF_Organization_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_Organization_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organization_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Organization_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] ADD  CONSTRAINT [DF_Organization_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_Organization_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organization_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Association]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Organization_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Association] ADD  CONSTRAINT [DF_Organization_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_DivisionSeason_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DivisionSeason_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionSeason]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DivisionSeason_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionSeason] ADD  CONSTRAINT [DF_DivisionSeason_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_DivisionType_DivisionTypeId]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DivisionType_DivisionTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DivisionType_DivisionTypeId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] ADD  CONSTRAINT [DF_DivisionType_DivisionTypeId]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_Division_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Division_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Division_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] ADD  CONSTRAINT [DF_Division_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_Division_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Division_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Division_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] ADD  CONSTRAINT [DF_Division_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_Division_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Division_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Division_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DivisionType] ADD  CONSTRAINT [DF_Division_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_TeamId]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_TeamId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_TeamId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] ADD  CONSTRAINT [DF_Table_1_TeamId]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_Field_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Field_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Field_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] ADD  CONSTRAINT [DF_Field_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_Field_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Field_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Field_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] ADD  CONSTRAINT [DF_Field_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_Field_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Field_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Field_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Field] ADD  CONSTRAINT [DF_Field_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_Game_GameId]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_GameId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_GameId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] ADD  CONSTRAINT [DF_Game_GameId]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_Game_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] ADD  CONSTRAINT [DF_Game_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_Game_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] ADD  CONSTRAINT [DF_Game_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_Game_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Game_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Game_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Game] ADD  CONSTRAINT [DF_Game_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_GameScore_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GameScore_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GameScore_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GameScore] ADD  CONSTRAINT [DF_GameScore_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_GameScore_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GameScore_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GameScore_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GameScore] ADD  CONSTRAINT [DF_GameScore_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_GameScore_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_GameScore_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_GameScore_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GameScore] ADD  CONSTRAINT [DF_GameScore_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_LeagueId]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_LeagueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_LeagueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] ADD  CONSTRAINT [DF_Table_1_LeagueId]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_League_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_League_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_League_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] ADD  CONSTRAINT [DF_League_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_League_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_League_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_League_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] ADD  CONSTRAINT [DF_League_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_League_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_League_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_League_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[League] ADD  CONSTRAINT [DF_League_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_DivisionId]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_DivisionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_DivisionId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] ADD  CONSTRAINT [DF_Table_1_DivisionId]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_Season_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Season_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Season_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] ADD  CONSTRAINT [DF_Season_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_Season_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Season_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Season_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] ADD  CONSTRAINT [DF_Season_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_Season_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Season_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Season_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Season] ADD  CONSTRAINT [DF_Season_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_SeasonTeam_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonTeam_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonTeam_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonTeam] ADD  CONSTRAINT [DF_SeasonTeam_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_SeasonType_SeasonTypeId]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_SeasonTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_SeasonTypeId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] ADD  CONSTRAINT [DF_SeasonType_SeasonTypeId]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_SeasonType_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] ADD  CONSTRAINT [DF_SeasonType_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_SeasonType_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] ADD  CONSTRAINT [DF_SeasonType_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_SeasonType_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SeasonType_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SeasonType_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SeasonType] ADD  CONSTRAINT [DF_SeasonType_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  Default [DF_Table_1_LeagueId_1]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_LeagueId_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Table_1_LeagueId_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Table_1_LeagueId_1]  DEFAULT (newid()) FOR [ID]
END


End
GO
/****** Object:  Default [DF_Team_Created]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Team_Created]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Team_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Team_Created]  DEFAULT (getdate()) FOR [Created]
END


End
GO
/****** Object:  Default [DF_Team_Modified]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Team_Modified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Team_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Team_Modified]  DEFAULT (getdate()) FOR [Modified]
END


End
GO
/****** Object:  Default [DF_Team_Enabled]    Script Date: 09/11/2014 00:50:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Team_Enabled]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Team_Enabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Team_Enabled]  DEFAULT ((1)) FOR [Enabled]
END


End
GO
/****** Object:  ForeignKey [FK_DivisionSeason_Season]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DivisionSeason_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionSeason]'))
ALTER TABLE [dbo].[DivisionSeason]  WITH CHECK ADD  CONSTRAINT [FK_DivisionSeason_Season] FOREIGN KEY([SeasonId])
REFERENCES [dbo].[Season] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DivisionSeason_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionSeason]'))
ALTER TABLE [dbo].[DivisionSeason] CHECK CONSTRAINT [FK_DivisionSeason_Season]
GO
/****** Object:  ForeignKey [FK_Division_League]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Division_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
ALTER TABLE [dbo].[DivisionType]  WITH CHECK ADD  CONSTRAINT [FK_Division_League] FOREIGN KEY([LeagueId])
REFERENCES [dbo].[League] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Division_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[DivisionType]'))
ALTER TABLE [dbo].[DivisionType] CHECK CONSTRAINT [FK_Division_League]
GO
/****** Object:  ForeignKey [FK_Game_Field]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Field] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Field] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Field]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Field]
GO
/****** Object:  ForeignKey [FK_Game_Team_Away]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Team_Away]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Team_Away] FOREIGN KEY([TeamIdAway])
REFERENCES [dbo].[Team] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Team_Away]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Team_Away]
GO
/****** Object:  ForeignKey [FK_Game_Team_Home]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Team_Home]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Team_Home] FOREIGN KEY([TeamIdHome])
REFERENCES [dbo].[Team] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Game_Team_Home]') AND parent_object_id = OBJECT_ID(N'[dbo].[Game]'))
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Team_Home]
GO
/****** Object:  ForeignKey [FK_GameScore_Game]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GameScore_Game]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
ALTER TABLE [dbo].[GameScore]  WITH CHECK ADD  CONSTRAINT [FK_GameScore_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GameScore_Game]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameScore]'))
ALTER TABLE [dbo].[GameScore] CHECK CONSTRAINT [FK_GameScore_Game]
GO
/****** Object:  ForeignKey [FK_League_Association]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_League_Association]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
ALTER TABLE [dbo].[League]  WITH CHECK ADD  CONSTRAINT [FK_League_Association] FOREIGN KEY([AssociationId])
REFERENCES [dbo].[Association] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_League_Association]') AND parent_object_id = OBJECT_ID(N'[dbo].[League]'))
ALTER TABLE [dbo].[League] CHECK CONSTRAINT [FK_League_Association]
GO
/****** Object:  ForeignKey [FK_Season_DivisionType]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Season_DivisionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
ALTER TABLE [dbo].[Season]  WITH CHECK ADD  CONSTRAINT [FK_Season_DivisionType] FOREIGN KEY([DivisionTypeId])
REFERENCES [dbo].[DivisionType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Season_DivisionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
ALTER TABLE [dbo].[Season] CHECK CONSTRAINT [FK_Season_DivisionType]
GO
/****** Object:  ForeignKey [FK_Season_SeasonType]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Season_SeasonType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
ALTER TABLE [dbo].[Season]  WITH CHECK ADD  CONSTRAINT [FK_Season_SeasonType] FOREIGN KEY([SeasonTypeId])
REFERENCES [dbo].[SeasonType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Season_SeasonType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Season]'))
ALTER TABLE [dbo].[Season] CHECK CONSTRAINT [FK_Season_SeasonType]
GO
/****** Object:  ForeignKey [FK_SeasonTeam_Season]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonTeam_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
ALTER TABLE [dbo].[SeasonTeam]  WITH CHECK ADD  CONSTRAINT [FK_SeasonTeam_Season] FOREIGN KEY([SeasonId])
REFERENCES [dbo].[Season] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonTeam_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
ALTER TABLE [dbo].[SeasonTeam] CHECK CONSTRAINT [FK_SeasonTeam_Season]
GO
/****** Object:  ForeignKey [FK_SeasonTeam_Team]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonTeam_Team]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
ALTER TABLE [dbo].[SeasonTeam]  WITH CHECK ADD  CONSTRAINT [FK_SeasonTeam_Team] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonTeam_Team]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonTeam]'))
ALTER TABLE [dbo].[SeasonTeam] CHECK CONSTRAINT [FK_SeasonTeam_Team]
GO
/****** Object:  ForeignKey [FK_SeasonType_League]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonType_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
ALTER TABLE [dbo].[SeasonType]  WITH CHECK ADD  CONSTRAINT [FK_SeasonType_League] FOREIGN KEY([LeagueId])
REFERENCES [dbo].[League] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeasonType_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeasonType]'))
ALTER TABLE [dbo].[SeasonType] CHECK CONSTRAINT [FK_SeasonType_League]
GO
/****** Object:  ForeignKey [FK_Team_League]    Script Date: 09/11/2014 00:50:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Team_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_League] FOREIGN KEY([LeagueId])
REFERENCES [dbo].[League] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Team_League]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_League]
GO
