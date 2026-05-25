-- Create Login and User
CREATE LOGIN dba_user
WITH PASSWORD = 'StrongPassword123';

CREATE USER dba_user FOR LOGIN dba_user;

ALTER ROLE db_datareader ADD MEMBER dba_user;
