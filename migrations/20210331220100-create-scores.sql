-- Scores
CREATE TABLE scores (
  score_id int,
  athlete_id int,
  event_id int,
  reps int,
  duration_in_seconds int,
  weight_in_kg int,
  PRIMARY KEY (score_id),
  FOREIGN KEY (athlete_id) REFERENCES athletes,
  FOREIGN KEY (event_id) REFERENCES events
);