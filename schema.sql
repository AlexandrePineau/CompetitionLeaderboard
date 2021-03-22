-- Athletes
CREATE TABLE athletes (
  athlete_id int,
  email varchar(128),
  full_name varchar(128),
  birthday date,
  is_male boolean,
  PRIMARY KEY (athlete_id)
);

-- Competitions
CREATE TABLE competitions (
  competition_id int,
  competition_name varchar(128),
  venue varchar(128),
  start_time date,
  end_time date,
  days_long int,
  PRIMARY KEY (competition_id)
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
  contact_name varchar(128),
  email varchar(128),
  phone_number varchar(128),
  PRIMARY KEY (partner_id)
);