INSERT INTO events (event_id, competition_id, event_name, scoring, time_capped, tie_breaker)
VALUES
    (1, 1, '100kg Hold', 'Time DESC', 'No', 'Yes'),
    (2, 1, '1 Ton Run', 'Time ASC', 'No', 'No'),
    (3, 1, 'Biggest Lift', 'Weight', 'No', 'No'),
    (4, 2, '1 Km Race', 'Time', 'No', 'No'),
    (5, 2, '5 Km Race', 'Time', 'No', 'No'),
    (6, 3, 'Pushups', 'Reps', 'Yes', 'Yes'),
    (7, 4, '2Km Frontcrawl', 'Time', 'No', 'No'),
    (8, 4, '2Km Breaststroke', 'Time', 'No', 'No'),
    (9, 5, '1 Min Jumps', 'Reps', 'Yes', 'No'),
    (10, 5, '5 Min Jumps', 'Reps', 'Yes', 'No');