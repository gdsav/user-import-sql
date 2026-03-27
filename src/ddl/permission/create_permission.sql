DROP TABLE IF EXISTS PERMISSION
;
create table dbo.PERMISSION (
    PermissionID INT PRIMARY KEY,
    PermissionName NVARCHAR(50) UNIQUE,
    PermissionDescription NVARCHAR(255),
    HigherPermissionID INT,
    CONSTRAINT FK_Higher FOREIGN KEY (HigherPermissionID) 
    REFERENCES PERMISSION(PermissionID)
 );


EXEC sp_columns 'PERMISSION';