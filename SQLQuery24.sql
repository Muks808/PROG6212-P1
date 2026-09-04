CREATE TABLE dbo.EventImages
(
    EventImageId INT IDENTITY(1,1) PRIMARY KEY,
    EventId INT NOT NULL UNIQUE,
    ImageUrl NVARCHAR(500) NOT NULL,
    UploadedAt DATETIME2 NOT NULL CONSTRAINT DF_EventImages_UploadedAt DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_EventImages_Events
        FOREIGN KEY (EventId) REFERENCES dbo.Events(EventId)
);
GO