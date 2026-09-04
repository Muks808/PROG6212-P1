CREATE TABLE dbo.Enrolments
(
    EnrolmentId INT IDENTITY(1,1) PRIMARY KEY,
    ParticipantUserId INT NOT NULL,
    EventId INT NOT NULL,
    CategoryId INT NOT NULL,
    EnrolmentDate DATETIME2 NOT NULL CONSTRAINT DF_Enrolments_Date DEFAULT SYSUTCDATETIME(),
    Status NVARCHAR(20) NOT NULL CONSTRAINT DF_Enrolments_Status DEFAULT 'Confirmed',

    CONSTRAINT FK_Enrolments_Users
        FOREIGN KEY (ParticipantUserId) REFERENCES dbo.Users(UserId),

    CONSTRAINT FK_Enrolments_Events
        FOREIGN KEY (EventId) REFERENCES dbo.Events(EventId),

    CONSTRAINT FK_Enrolments_Categories
        FOREIGN KEY (CategoryId) REFERENCES dbo.Categories(CategoryId),

    CONSTRAINT UQ_Enrolments_Participant_Event
        UNIQUE (ParticipantUserId, EventId),

    CONSTRAINT CK_Enrolments_Status
        CHECK (Status IN ('Pending', 'Confirmed', 'Cancelled'))
);
GO