
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/22/2021 19:02:58
-- Generated from EDMX file: E:\Code\MVC\EF_Model_First\ExchangeModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MDS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tb_Exchange'
CREATE TABLE [dbo].[tb_Exchange] (
    [n_ExNo] int IDENTITY(1,1) NOT NULL,
    [s_ExCode] nvarchar(max)  NOT NULL,
    [s_ExName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tb_ExchangeAccountMappping'
CREATE TABLE [dbo].[tb_ExchangeAccountMappping] (
    [n_ExAccNo] int IDENTITY(1,1) NOT NULL,
    [s_ControlAcc] nvarchar(max)  NOT NULL,
    [dn_ExNo] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [n_ExNo] in table 'tb_Exchange'
ALTER TABLE [dbo].[tb_Exchange]
ADD CONSTRAINT [PK_tb_Exchange]
    PRIMARY KEY CLUSTERED ([n_ExNo] ASC);
GO

-- Creating primary key on [n_ExAccNo] in table 'tb_ExchangeAccountMappping'
ALTER TABLE [dbo].[tb_ExchangeAccountMappping]
ADD CONSTRAINT [PK_tb_ExchangeAccountMappping]
    PRIMARY KEY CLUSTERED ([n_ExAccNo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [dn_ExNo] in table 'tb_ExchangeAccountMappping'
ALTER TABLE [dbo].[tb_ExchangeAccountMappping]
ADD CONSTRAINT [FK_tb_Exchangetb_ExchangeAccountMappping]
    FOREIGN KEY ([dn_ExNo])
    REFERENCES [dbo].[tb_Exchange]
        ([n_ExNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_Exchangetb_ExchangeAccountMappping'
CREATE INDEX [IX_FK_tb_Exchangetb_ExchangeAccountMappping]
ON [dbo].[tb_ExchangeAccountMappping]
    ([dn_ExNo]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------