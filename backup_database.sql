-- Full Database Backup
BACKUP DATABASE CompanyDB
TO DISK = 'D:\Backup\CompanyDB.bak'
WITH FORMAT,
MEDIANAME = 'SQLServerBackups',
NAME = 'Full Backup of CompanyDB';
