-- =============================================
-- SAMPLE ENROLMENTS
-- Uses the actual CategoryId values
-- =============================================

DECLARE @Category10kmOpen INT;
DECLARE @CategorySenior40 INT;
DECLARE @Category42km INT;
DECLARE @Category5kmWalk INT;

SELECT @Category10kmOpen = CategoryId
FROM dbo.Categories
WHERE CategoryName = '10km Open';

SELECT @CategorySenior40 = CategoryId
FROM dbo.Categories
WHERE CategoryName = 'Senior 40+';

SELECT @Category42km = CategoryId
FROM dbo.Categories
WHERE CategoryName = '42km Challenge';

SELECT @Category5kmWalk = CategoryId
FROM dbo.Categories
WHERE CategoryName = '5km Community Walk';


INSERT INTO dbo.Enrolments
(
    ParticipantUserId,
    EventId,
    CategoryId,
    Status
)
VALUES
(
    3,
    1,
    @Category10kmOpen,
    'Confirmed'
),
(
    4,
    1,
    @CategorySenior40,
    'Confirmed'
),
(
    3,
    2,
    @Category42km,
    'Pending'
),
(
    4,
    3,
    @Category5kmWalk,
    'Confirmed'
);
GO