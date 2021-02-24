CREATE TABLE competitions (
  competition_id int,
  competition_name varchar(128),
  venue varchar(128),
  start_time date,
  end_time date,
  days_long int,
  PRIMARY KEY (competition_id)
);