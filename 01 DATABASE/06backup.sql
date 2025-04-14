-- Backup MySQL Database
-- MySQL mysqldump command can be used to take complete backup of a given database. This operation will be performed from command line and will require database user name and password, preferably admin privilege.
mysqldump -u username -p"password" -R databasename > databasename.sql

-- Restore MySQL Database
-- If we have a database dump then we can use the following two step process to restore our database. First step is to create our new database using mysqladmin prompt command as follows:
mysqladmin -u username -p"password" create tutorialsDB;

--The next step is to import old database into new database shown below :
mysql -u username -p"password" tutorialsDB < testDB.sql;

-- If you want to keep your database name same as the old one then you will have to drop old database and then re-create it before importing old data into this database, but make sure you don't have any data in this database which you do not want to loose.

-- Backup MS SQL Database
-- If you are working with MS SQL Server then to create a backup for an existing database, SQL provides us with a simple SQL BACKUP DATABASE command.

-- Syntax
-- Following is the syntax of the BACKUP DATABASE command in SQL −
BACKUP DATABASE database_name
TO DISK = 'filepath'
GO
-- Following is an example to create a backup file for the database testDB on D drive
BACKUP DATABASE testDB
TO DISK = 'D:\testDB.bak'
GO

-- The SQL BACKUP WITH DIFFERENTIAL Statement
-- A differential back up only backs up the parts of the database that have changed since the last full database backup.
BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;

-- Tip: A differential back up reduces the back up time (since only the changes are backed up).

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;
