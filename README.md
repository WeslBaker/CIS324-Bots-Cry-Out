# CIS324-Bots-Cry-Out
Repo for the final project of CIS324 at Freed-Hardeman University, as implemented by Wesley Baker. Includes documentation, creation, and population scripts.  

## Files
### -QuickDBD-export.png
Image (courtesy of QuickDatabaseDiagrams.com) that visualizes the structure of the schema using an ER diagram. Arrows indicate relationships, primary keys are identified, database is normalized to avoid insertion and deletion anomalies. 
### -BCO-schema-only.sql
SQL script to create the schema design pictured, instantiating empty tables and creating the relatiomships and constraints between them.  
### -BCO-[tablename]-insert
Various SQL scripts to insert data into created tables. Unfortunately, due to my chosen method of exporting entities from MySQL, the simplest strategy seemed to be to export one per entity. Preferrably, of course, one script could insert all the data.
