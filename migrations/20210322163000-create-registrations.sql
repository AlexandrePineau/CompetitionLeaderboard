-- Registrations
CREATE TABLE registrations (
  athlete_id int,
  competition_id int,
  FOREIGN KEY (athlete_id) REFERENCES athletes,
  FOREIGN KEY (competition_id) REFERENCES competitions
);