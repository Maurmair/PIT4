
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/23/2016 12:34:32
-- Generated from EDMX file: C:\Users\Maurmair\Source\Repos\PIT4\BU\DAL.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MovieDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FilmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FilmSet];
GO
IF OBJECT_ID(N'[dbo].[GebruikerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GebruikerSet];
GO
IF OBJECT_ID(N'[dbo].[RegisseurSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegisseurSet];
GO
IF OBJECT_ID(N'[dbo].[ReviewSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReviewSet];
GO
IF OBJECT_ID(N'[dbo].[RolSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RolSet];
GO
IF OBJECT_ID(N'[dbo].[ActeurSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActeurSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FilmSet'
CREATE TABLE [dbo].[FilmSet] (
    [FilmID] int IDENTITY(1,1) NOT NULL,
    [IMDBnummer] nvarchar(max)  NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [AndereNaam] nvarchar(max)  NOT NULL,
    [Versie] nvarchar(max)  NOT NULL,
    [AantalDisks] nvarchar(max)  NOT NULL,
    [Jaar] nvarchar(max)  NOT NULL,
    [Land] nvarchar(max)  NOT NULL,
    [Speelduur] nvarchar(max)  NOT NULL,
    [Kijkwijzer] nvarchar(max)  NOT NULL,
    [Gezien] nvarchar(max)  NOT NULL,
    [Wenslijst] nvarchar(max)  NOT NULL,
    [InBezit] nvarchar(max)  NOT NULL,
    [Kleur] nvarchar(max)  NOT NULL,
    [ZW] nvarchar(max)  NOT NULL,
    [KleurZW] nvarchar(max)  NOT NULL,
    [Toegevoegd] nvarchar(max)  NOT NULL,
    [Serie] nvarchar(max)  NOT NULL,
    [DrieD] nvarchar(max)  NOT NULL,
    [Verhaal] nvarchar(max)  NOT NULL,
    [IMDBRate] nvarchar(max)  NOT NULL,
    [PersRate] nvarchar(max)  NOT NULL,
    [Afbeelding] nvarchar(max)  NOT NULL,
    [KijkwijzerKlasse] nvarchar(max)  NOT NULL,
    [Taalnaam] nvarchar(max)  NOT NULL,
    [GenreNaam] nvarchar(max)  NOT NULL,
    [RegisseurRegID] int  NOT NULL
);
GO

-- Creating table 'GebruikerSet'
CREATE TABLE [dbo].[GebruikerSet] (
    [GebruikerID] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RegisseurSet'
CREATE TABLE [dbo].[RegisseurSet] (
    [RegID] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ReviewSet'
CREATE TABLE [dbo].[ReviewSet] (
    [ReviewID] int IDENTITY(1,1) NOT NULL,
    [FilmID] nvarchar(max)  NOT NULL,
    [ReviewTekst] nvarchar(max)  NOT NULL,
    [GebruikerGebruikerID] int  NOT NULL
);
GO

-- Creating table 'RolSet'
CREATE TABLE [dbo].[RolSet] (
    [RolID] int IDENTITY(1,1) NOT NULL,
    [Rolnaam] nvarchar(max)  NOT NULL,
    [ActeurActeurID] int  NOT NULL
);
GO

-- Creating table 'ActeurSet'
CREATE TABLE [dbo].[ActeurSet] (
    [ActeurID] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [Bio] nvarchar(max)  NOT NULL,
    [GebDatum] nvarchar(max)  NOT NULL,
    [GebPlaats] nvarchar(max)  NOT NULL,
    [Filmography] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActeurFilm'
CREATE TABLE [dbo].[ActeurFilm] (
    [Acteur_ActeurID] int  NOT NULL,
    [Film_FilmID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [FilmID] in table 'FilmSet'
ALTER TABLE [dbo].[FilmSet]
ADD CONSTRAINT [PK_FilmSet]
    PRIMARY KEY CLUSTERED ([FilmID] ASC);
GO

-- Creating primary key on [GebruikerID] in table 'GebruikerSet'
ALTER TABLE [dbo].[GebruikerSet]
ADD CONSTRAINT [PK_GebruikerSet]
    PRIMARY KEY CLUSTERED ([GebruikerID] ASC);
GO

-- Creating primary key on [RegID] in table 'RegisseurSet'
ALTER TABLE [dbo].[RegisseurSet]
ADD CONSTRAINT [PK_RegisseurSet]
    PRIMARY KEY CLUSTERED ([RegID] ASC);
GO

-- Creating primary key on [ReviewID] in table 'ReviewSet'
ALTER TABLE [dbo].[ReviewSet]
ADD CONSTRAINT [PK_ReviewSet]
    PRIMARY KEY CLUSTERED ([ReviewID] ASC);
GO

-- Creating primary key on [RolID] in table 'RolSet'
ALTER TABLE [dbo].[RolSet]
ADD CONSTRAINT [PK_RolSet]
    PRIMARY KEY CLUSTERED ([RolID] ASC);
GO

-- Creating primary key on [ActeurID] in table 'ActeurSet'
ALTER TABLE [dbo].[ActeurSet]
ADD CONSTRAINT [PK_ActeurSet]
    PRIMARY KEY CLUSTERED ([ActeurID] ASC);
GO

-- Creating primary key on [Acteur_ActeurID], [Film_FilmID] in table 'ActeurFilm'
ALTER TABLE [dbo].[ActeurFilm]
ADD CONSTRAINT [PK_ActeurFilm]
    PRIMARY KEY CLUSTERED ([Acteur_ActeurID], [Film_FilmID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RegisseurRegID] in table 'FilmSet'
ALTER TABLE [dbo].[FilmSet]
ADD CONSTRAINT [FK_RegisseurFilm]
    FOREIGN KEY ([RegisseurRegID])
    REFERENCES [dbo].[RegisseurSet]
        ([RegID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegisseurFilm'
CREATE INDEX [IX_FK_RegisseurFilm]
ON [dbo].[FilmSet]
    ([RegisseurRegID]);
GO

-- Creating foreign key on [ActeurActeurID] in table 'RolSet'
ALTER TABLE [dbo].[RolSet]
ADD CONSTRAINT [FK_RolActeur]
    FOREIGN KEY ([ActeurActeurID])
    REFERENCES [dbo].[ActeurSet]
        ([ActeurID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RolActeur'
CREATE INDEX [IX_FK_RolActeur]
ON [dbo].[RolSet]
    ([ActeurActeurID]);
GO

-- Creating foreign key on [Acteur_ActeurID] in table 'ActeurFilm'
ALTER TABLE [dbo].[ActeurFilm]
ADD CONSTRAINT [FK_ActeurFilm_Acteur]
    FOREIGN KEY ([Acteur_ActeurID])
    REFERENCES [dbo].[ActeurSet]
        ([ActeurID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Film_FilmID] in table 'ActeurFilm'
ALTER TABLE [dbo].[ActeurFilm]
ADD CONSTRAINT [FK_ActeurFilm_Film]
    FOREIGN KEY ([Film_FilmID])
    REFERENCES [dbo].[FilmSet]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActeurFilm_Film'
CREATE INDEX [IX_FK_ActeurFilm_Film]
ON [dbo].[ActeurFilm]
    ([Film_FilmID]);
GO

-- Creating foreign key on [GebruikerGebruikerID] in table 'ReviewSet'
ALTER TABLE [dbo].[ReviewSet]
ADD CONSTRAINT [FK_GebruikerReview]
    FOREIGN KEY ([GebruikerGebruikerID])
    REFERENCES [dbo].[GebruikerSet]
        ([GebruikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GebruikerReview'
CREATE INDEX [IX_FK_GebruikerReview]
ON [dbo].[ReviewSet]
    ([GebruikerGebruikerID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------