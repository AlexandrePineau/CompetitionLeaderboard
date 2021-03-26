-- Athletes
CREATE TABLE athletes (
  athlete_id int,
  email varchar(128),
  full_name varchar(128),
  birthday date,
  is_male boolean,
  PRIMARY KEY (athlete_id)
);

-- Contacts
CREATE TABLE contacts (
  contact_id int,
  contact_name varchar(128),
  contact_email varchar(128),
  contact_phone_number varchar(128),
  PRIMARY KEY (contact_id)
);

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

-- Registrations
CREATE TABLE registrations (
  athlete_id int,
  competition_id int,
  FOREIGN KEY (athlete_id) REFERENCES athletes,
  FOREIGN KEY (competition_id) REFERENCES competitions
);

-- Partners
CREATE TABLE partners (
  partner_id int,
  company_name varchar(128),
  company_address varchar(128),
  contact_id int,
  PRIMARY KEY (partner_id),
  FOREIGN KEY (contact_id) REFERENCES contacts
);

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

-- Hosts
CREATE TABLE hosts (
  partner_id int,
  competition_id int,
  FOREIGN KEY (partner_id) REFERENCES partners,
  FOREIGN KEY (competition_id) REFERENCES competitions
);