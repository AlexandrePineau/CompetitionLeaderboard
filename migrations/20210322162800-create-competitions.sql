-- Competitions
CREATE TABLE competitions (
  competition_id int,
  competition_name varchar(128),
  competition_address varchar(128),
  start_time date,
  end_time date,
  days_long int,
  number_of_events int,
  max_males int,
  max_females int,
  contact_id int,
  PRIMARY KEY (competition_id),
  FOREIGN KEY (contact_id) REFERENCES contacts
);