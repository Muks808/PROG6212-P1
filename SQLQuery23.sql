CREATE TABLE dbo.Results
(
    ResultId INT IDENTITY(1,1) PRIMARY KEY,
    EnrolmentId INT NOT NULL UNIQUE,
    FinishTime TIME NOT NULL,
    FinishingPosition INT NOT NULL,
    PublishedAt DATETIME2 NOT NULL CONSTRAINT DF_Results_PublishedAt DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_Results_Enrolments
        FOREIGN KEY (EnrolmentId) REFERENCES dbo.Enrolments(EnrolmentId),

    CONSTRAINT CK_Results_Position
        CHECK (FinishingPosition > 0)
);
GO