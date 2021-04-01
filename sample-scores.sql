INSERT INTO scores (score_id, athlete_id, event_id, reps, duration_in_seconds, weight_in_kg)
VALUES
    -- First 3 males and females, events of 1st competition
    -- Males
    (1, 1, 1, null, 550, null),
    (2, 2, 1, null, 400, null),
    (3, 3, 1, null, 500, null),
    (4, 1, 2, null, 300, null),
    (5, 2, 2, null, 320, null),
    (6, 3, 2, null, 400, null),
    (7, 1, 3, null, null, 350),
    (8, 2, 3, null, null, 300),
    (9, 3, 3, null, null, 345),
    -- Females
    (10, 21, 1, null, 300, null),
    (11, 22, 1, null, 250, null),
    (12, 23, 1, null, 245, null),
    (13, 21, 2, null, 600, null),
    (14, 22, 2, null, 621, null),
    (15, 23, 2, null, 705, null),
    (16, 21, 3, null, null, 250),
    (17, 22, 3, null, null, 185),
    (18, 23, 3, null, null, 245),

    -- Next 3 males and females, event of 3rd competition
    -- Males
    (19, 4, 6, 300, null, null),
    (20, 5, 6, 322, null, null),
    (21, 6, 6, 287, null, null),
    -- Females
    (22, 24, 6, 206, null, null),
    (23, 25, 6, 194, null, null),
    (24, 26, 6, 214, null, null);