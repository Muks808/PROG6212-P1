-- =============================================
-- SAMPLE RESULTS
-- Uses actual EnrolmentId values
-- =============================================

DECLARE @FirstEnrolmentId INT;
DECLARE @SecondEnrolmentId INT;

SELECT TOP 1
    @FirstEnrolmentId = EnrolmentId
FROM dbo.Enrolments
WHERE Status = 'Confirmed'
ORDER BY EnrolmentId;

SELECT TOP 1
    @SecondEnrolmentId = EnrolmentId
FROM dbo.Enrolments
WHERE Status = 'Confirmed'
  AND EnrolmentId <> @FirstEnrolmentId
ORDER BY EnrolmentId;

INSERT INTO dbo.Results
(
    EnrolmentId,
    FinishTime,
    FinishingPosition
)
VALUES
(
    @FirstEnrolmentId,
    '00:54:18',
    47
),
(
    @SecondEnrolmentId,
    '01:02:31',
    83
);
GO