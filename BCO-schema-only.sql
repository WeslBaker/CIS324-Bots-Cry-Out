-- ﻿Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE `Prayers` (
    `id` int  NOT NULL AUTO_INCREMENT,
    `prompt` longtext  NOT NULL ,
    `body` text  NOT NULL ,
    `likes` int  NOT NULL DEFAULT 0,
    `saves` int  NOT NULL DEFAULT 0,
    `coverImage` text  NULL ,
    `audioRecitation` text  NULL ,
    `AICreator` text  NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `ScriptureReferences` (
    `prayerId` int  NOT NULL ,
    `scriptureId` int  NOT NULL 
);

CREATE TABLE `Scripture` (
    `id` int  NOT NULL ,
    `scripture` text  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `TagsReferences` (
    `prayerId` int  NOT NULL ,
    `tagId` int  NOT NULL 
);

CREATE TABLE `Tags` (
    `id` int  NOT NULL ,
    `tag` text  NOT NULL
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `CreatorReferences` (
    `prayerId` int  NOT NULL ,
    `creatorId` int  NOT NULL 
);

CREATE TABLE `Users` (
    `id` int  NOT NULL ,
    `firstName` text  NOT NULL ,
    `lastName` text  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `LikedReferences` (
    `userId` int  NOT NULL ,
    `prayerId` int  NOT NULL ,
    `likeTime` dateTime  NOT NULL 
);

CREATE TABLE `SavedReferences` (
    `userId` int  NOT NULL ,
    `prayerId` int  NOT NULL ,
    `saveTime` dateTime  NOT NULL 
);

ALTER TABLE `ScriptureReferences` ADD CONSTRAINT `fk_ScriptureReferences_prayerId` FOREIGN KEY(`prayerId`)
REFERENCES `Prayers` (`id`);

ALTER TABLE `ScriptureReferences` ADD CONSTRAINT `fk_ScriptureReferences_scriptureId` FOREIGN KEY(`scriptureId`)
REFERENCES `Scripture` (`id`);

ALTER TABLE `TagsReferences` ADD CONSTRAINT `fk_TagsReferences_prayerId` FOREIGN KEY(`prayerId`)
REFERENCES `Prayers` (`id`);

ALTER TABLE `TagsReferences` ADD CONSTRAINT `fk_TagsReferences_tagId` FOREIGN KEY(`tagId`)
REFERENCES `Tags` (`id`);

ALTER TABLE `CreatorReferences` ADD CONSTRAINT `fk_CreatorReferences_prayerId` FOREIGN KEY(`prayerId`)
REFERENCES `Prayers` (`id`);

ALTER TABLE `CreatorReferences` ADD CONSTRAINT `fk_CreatorReferences_creatorId` FOREIGN KEY(`creatorId`)
REFERENCES `Users` (`id`);

ALTER TABLE `LikedReferences` ADD CONSTRAINT `fk_LikedReferences_userId` FOREIGN KEY(`userId`)
REFERENCES `Users` (`id`);

ALTER TABLE `LikedReferences` ADD CONSTRAINT `fk_LikedReferences_prayerId` FOREIGN KEY(`prayerId`)
REFERENCES `Prayers` (`id`);

ALTER TABLE `SavedReferences` ADD CONSTRAINT `fk_SavedReferences_userId` FOREIGN KEY(`userId`)
REFERENCES `Users` (`id`);

ALTER TABLE `SavedReferences` ADD CONSTRAINT `fk_SavedReferences_prayerId` FOREIGN KEY(`prayerId`)
REFERENCES `Prayers` (`id`);

