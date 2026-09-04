INSERT INTO dbo.Events
(
    OrganiserUserId,
    Name,
    Description,
    EventDate,
    Location,
    DistanceKm,
    EventType
)
VALUES

(
    1,
    'Jozi Sunrise Run',
    'A morning road race through central Johannesburg.',
    '2026-10-17T06:00:00',
    'Johannesburg, Gauteng',
    10.00,
    'Run'
),

(
    2,
    'Cape Coastal Cycle',
    'A scenic road cycling challenge near the Atlantic coastline.',
    '2026-11-08T07:00:00',
    'Cape Town, Western Cape',
    42.00,
    'Cycle'
),

(
    1,
    'Durban Family Walk',
    'A community walking event for families and social walkers.',
    '2026-12-05T07:30:00',
    'Durban, KwaZulu-Natal',
    5.00,
    'Walk'
);

GO
