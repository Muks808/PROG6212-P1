INSERT INTO dbo.Categories
(
    EventId,
    CategoryName,
    CategoryType,
    MinAge,
    MaxAge,
    DistanceKm,
    EntryFee
)
VALUES

(
    1,
    '10km Open',
    'Distance',
    NULL,
    NULL,
    10.00,
    180.00
),

(
    1,
    'Senior 40+',
    'Age',
    40,
    NULL,
    NULL,
    160.00
),

(
    2,
    '42km Challenge',
    'Distance',
    NULL,
    NULL,
    42.00,
    350.00
),

(
    2,
    'Under 20 Riders',
    'Age',
    16,
    19,
    NULL,
    250.00
),

(
    3,
    '5km Community Walk',
    'Distance',
    NULL,
    NULL,
    5.00,
    80.00
),

(
    3,
    'Senior Walkers',
    'Age',
    60,
    NULL,
    NULL,
    60.00
);

GO