CREATE TABLE dbo.Categories
(
    CategoryId INT IDENTITY(1,1) PRIMARY KEY,
    EventId INT NOT NULL,
    CategoryName NVARCHAR(100) NOT NULL,
    CategoryType NVARCHAR(20) NOT NULL,
    MinAge INT NULL,
    MaxAge INT NULL,
    DistanceKm DECIMAL(6,2) NULL,
    EntryFee DECIMAL(10,2) NOT NULL CONSTRAINT DF_Categories_EntryFee DEFAULT 0,

    CONSTRAINT FK_Categories_Events
        FOREIGN KEY (EventId) REFERENCES dbo.Events(EventId),

    CONSTRAINT UQ_Categories_Event_Name
        UNIQUE (EventId, CategoryName),

    CONSTRAINT CK_Categories_Type
        CHECK (CategoryType IN ('Age', 'Distance')),

    CONSTRAINT CK_Categories_Ages
        CHECK (
            (CategoryType = 'Age' AND MinAge IS NOT NULL)
            OR
            (CategoryType = 'Distance' AND DistanceKm IS NOT NULL)
        ),

    CONSTRAINT CK_Categories_AgeRange
        CHECK (MaxAge IS NULL OR MinAge IS NULL OR MaxAge >= MinAge),

    CONSTRAINT CK_Categories_Fee
        CHECK (EntryFee >= 0)
);
GO