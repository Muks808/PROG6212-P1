CREATE TABLE dbo.ProfileImages
(
    ProfileImageId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL UNIQUE,
    ImageUrl NVARCHAR(500) NOT NULL,
    UploadedAt DATETIME2 NOT NULL CONSTRAINT DF_ProfileImages_UploadedAt DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_ProfileImages_Users
        FOREIGN KEY (UserId) REFERENCES dbo.Users(UserId)
);
GO