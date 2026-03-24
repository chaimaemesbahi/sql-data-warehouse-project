USE Master ;
GO

IF EXISTS (SELECT i FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE8USER WHITH ROLLBACK IMMEDIATE ;
  DROP DATABASE DataWarehouse ; 
End ; 

CREATE DATABASE DataWarehouse ; 
Use DataWarehouse ; 

CREATE SCHEMA bronze ;
GO
CREATE SCHEMA silver ;
GO
CREATE SCHEMA gold ;
GO
