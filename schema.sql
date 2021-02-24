CREATE TABLE athletes (
  athlete_id int,
  full_name varchar(128),
  birthday date,
  is_male boolean,
  PRIMARY KEY (athlete_id)
);

CREATE TABLE competitions (
  competition_id int,
  competition_name varchar(128),
  venue varchar(128),
  start_time date,
  end_time date,
  days_long int,
  PRIMARY KEY (competition_id)
);

CREATE TABLE registrations (
  athlete_id int,
  competition_id int,
  FOREIGN KEY (athlete_id) REFERENCES athletes,
  FOREIGN KEY (competition_id) REFERENCES competitions
);