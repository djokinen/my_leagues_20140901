/*
   September-11-1411:10:34 AM
   User: 
   Server: localhost
   Database: MyLeagues
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Season SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Season', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Season', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Season', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Game
	DROP CONSTRAINT FK_Game_Field
GO
ALTER TABLE dbo.Field SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Field', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Field', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Field', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Game
	DROP CONSTRAINT FK_Game_Team_Away
GO
ALTER TABLE dbo.Game
	DROP CONSTRAINT FK_Game_Team_Home
GO
ALTER TABLE dbo.Team SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Team', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Team', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Team', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Game
	DROP CONSTRAINT DF_Game_GameId
GO
ALTER TABLE dbo.Game
	DROP CONSTRAINT DF_Game_Created
GO
ALTER TABLE dbo.Game
	DROP CONSTRAINT DF_Game_Modified
GO
ALTER TABLE dbo.Game
	DROP CONSTRAINT DF_Game_Enabled
GO
CREATE TABLE dbo.Tmp_Game
	(
	ID uniqueidentifier NOT NULL ROWGUIDCOL,
	SeasonId uniqueidentifier NOT NULL,
	TeamIdHome uniqueidentifier NOT NULL,
	TeamIdAway uniqueidentifier NOT NULL,
	GameDateTime datetime NOT NULL,
	FieldId uniqueidentifier NOT NULL,
	Description text NULL,
	Created datetime NOT NULL,
	Modified datetime NOT NULL,
	Enabled bit NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Game SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE dbo.Tmp_Game ADD CONSTRAINT
	DF_Game_GameId DEFAULT (newid()) FOR ID
GO
ALTER TABLE dbo.Tmp_Game ADD CONSTRAINT
	DF_Game_Created DEFAULT (getdate()) FOR Created
GO
ALTER TABLE dbo.Tmp_Game ADD CONSTRAINT
	DF_Game_Modified DEFAULT (getdate()) FOR Modified
GO
ALTER TABLE dbo.Tmp_Game ADD CONSTRAINT
	DF_Game_Enabled DEFAULT ((1)) FOR Enabled
GO
IF EXISTS(SELECT * FROM dbo.Game)
	 EXEC('INSERT INTO dbo.Tmp_Game (ID, TeamIdHome, TeamIdAway, GameDateTime, FieldId, Description, Created, Modified, Enabled)
		SELECT ID, TeamIdHome, TeamIdAway, GameDateTime, FieldId, Description, Created, Modified, Enabled FROM dbo.Game WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.GameScore
	DROP CONSTRAINT FK_GameScore_Game
GO
DROP TABLE dbo.Game
GO
EXECUTE sp_rename N'dbo.Tmp_Game', N'Game', 'OBJECT' 
GO
ALTER TABLE dbo.Game ADD CONSTRAINT
	PK_Game PRIMARY KEY CLUSTERED 
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Game ADD CONSTRAINT
	IX_Game UNIQUE NONCLUSTERED 
	(
	GameDateTime DESC,
	TeamIdHome,
	TeamIdAway
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Game ADD CONSTRAINT
	FK_Game_Team_Away FOREIGN KEY
	(
	TeamIdAway
	) REFERENCES dbo.Team
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Game ADD CONSTRAINT
	FK_Game_Team_Home FOREIGN KEY
	(
	TeamIdHome
	) REFERENCES dbo.Team
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Game ADD CONSTRAINT
	FK_Game_Field FOREIGN KEY
	(
	FieldId
	) REFERENCES dbo.Field
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Game ADD CONSTRAINT
	FK_Game_Season FOREIGN KEY
	(
	SeasonId
	) REFERENCES dbo.Season
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Game', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Game', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Game', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.GameScore ADD CONSTRAINT
	FK_GameScore_Game FOREIGN KEY
	(
	GameId
	) REFERENCES dbo.Game
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.GameScore SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.GameScore', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.GameScore', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.GameScore', 'Object', 'CONTROL') as Contr_Per 