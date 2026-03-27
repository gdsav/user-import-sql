DROP TABLE IF EXISTS ROLE
;

-- 2. Create the table with desired columns
CREATE TABLE ROLE (
    ID INT PRIMARY KEY IDENTITY(1,1),
    RoleName NVARCHAR(50),
    RoleDescription NVARCHAR(50),
);

EXEC sp_columns 'ROLE';