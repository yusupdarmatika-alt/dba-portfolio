# Database Administrator Portfolio

This repository contains SQL scripts and database administration tasks for learning and portfolio purposes.

## Features
- Database Backup & Restore
- Performance Monitoring
- Query Optimization
- User & Security Management
- Database Maintenance Automation

## Technologies
- SQL Server
- PostgreSQL
- MySQL

## Project Structure
- backup/
DECLARE @DatabaseName VARCHAR(100) = 'CompanyDB'
DECLARE @BackupPath VARCHAR(200)
DECLARE @Date VARCHAR(20)

SET @Date = CONVERT(VARCHAR, GETDATE(), 112)

SET @BackupPath =
'D:\Backup\' + @DatabaseName + '_' + @Date + '.bak'

BACKUP DATABASE CompanyDB
TO DISK = @BackupPath
WITH
    FORMAT,
    INIT,
    COMPRESSION,
    STATS = 10;
- monitoring/
SELECT
    database_name,
    backup_start_date,
    backup_finish_date,
    type
FROM msdb.dbo.backupset
ORDER BY backup_finish_date DESC;
- optimization/
CREATE PARTITION FUNCTION RangePartition (INT)
AS RANGE LEFT FOR VALUES (1000, 2000, 3000);
- security/
CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'StrongMasterKey123';

CREATE CERTIFICATE MyServerCert
WITH SUBJECT = 'Database Encryption';

CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE MyServerCert;

ALTER DATABASE CompanyDB
SET ENCRYPTION ON;
- automation/
-- Update Statistics
EXEC sp_updatestats;

-- Rebuild Index
EXEC sp_MSforeachtable
'ALTER INDEX ALL ON ? REBUILD';

-- Check Database Integrity
DBCC CHECKDB ('CompanyDB');

-- Backup Database
BACKUP DATABASE CompanyDB
TO DISK = 'D:\Backup\CompanyDB_Full.bak'
WITH COMPRESSION;
- documentation/
-- Database Name : CompanyDB
-- Author        : Yusup
-- Version       : 1.0
-- Description   : Employee Management Database
-- DBMS          : SQL Server
-- =============================================
-- Backup Script
-- Purpose : Full database backup
-- Schedule: Daily 23:00
-- =============================================

BACKUP DATABASE CompanyDB
TO DISK = 'D:\Backup\CompanyDB.bak'
WITH COMPRESSION;

- sample-database/
CREATE LOGIN readonly_user
WITH PASSWORD = 'StrongPassword123';

CREATE USER readonly_user
FOR LOGIN readonly_user;

ALTER ROLE db_datareader
ADD MEMBER readonly_user;


## Author
Yusup
