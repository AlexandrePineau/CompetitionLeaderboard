-- Events
CREATE TABLE events (
  event_id int,
  competition_id int,
  event_name varchar(128),
  scoring varchar(128),
  time_capped varchar(128),
  tie_breaker varchar(128),
  PRIMARY KEY (event_id),
  FOREIGN KEY (competition_id) REFERENCES competitions
);