-- Athletes data
INSERT INTO athletes
  (athlete_id, full_name, birthday, is_male)
VALUES
  (1, 'Alexandre Pineau', '2000-06-14', true),
  (2, 'Robert Naim', '1998-05-13', true),
  (3, 'Pierre Rofail', '1960-12-05', true),
  (4, 'CaitLin McNaughton', '2001-07-28', false),
  (5, 'Alyssa Rose', '1999-12-31', false),
  (6, 'Michelle Beaulieu', '1980-10-01', false);

-- Competitions data
INSERT INTO competitions
  (competition_id, competition_name, venue, start_time, end_time, days_long)
VALUES
  (1, 'Weight Lifting Contest', 'Ottawa', '2021-06-20 09:00:00', '2021-06-21 16:00:00', 2),
  (2, 'Obstacle Course Races', 'Hamilton', '2021-08-01 08:00:00', '2021-08-01 17:30:00', 1),
  (3, 'Pushup Marathon', 'Toronto', '2021-04-19 13:00:00', '2021-04-22 13:00:00', 4);

-- Registrations data
INSERT INTO registrations
  (athlete_id, competition_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 2),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 1);
