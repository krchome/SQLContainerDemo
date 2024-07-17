CREATE DATABASE MyDatabase;
GO

USE MyDatabase;
GO

CREATE TABLE MyTable (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL
);
GO

INSERT INTO MyTable (Name) VALUES ('Record1'), ('Record2') ;
GO
