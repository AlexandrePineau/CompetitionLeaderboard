-- Hosts
CREATE TABLE hosts (
  partner_id int,
  competition_id int,
  contact_id int,
  FOREIGN KEY (partner_id) REFERENCES partners,
  FOREIGN KEY (competition_id) REFERENCES competitions,
  FOREIGN KEY (contact_id) REFERENCES contacts
);