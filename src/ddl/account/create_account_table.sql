DROP TABLE IF EXISTS ACCOUNT;

-- 2. Create the table with desired columns
CREATE TABLE ACCOUNT (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) UNIQUE,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    IsActive BIT DEFAULT 1,
    Department VARCHAR(50),
    City VARCHAR(50),
    StateOrProvince VARCHAR(50),
    UpdateDate DATETIME DEFAULT GETDATE()
);