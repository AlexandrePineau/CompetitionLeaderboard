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
  start_time datetime,
  end_time datetime,
  days_long int,
  PRIMARY KEY (competition_id)
);