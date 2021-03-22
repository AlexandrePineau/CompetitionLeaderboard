-- Partners
CREATE TABLE partners (
  partner_id int,
  company_name varchar(128),
  company_address varchar(128),
  contact_id int,
  PRIMARY KEY (partner_id),
  FOREIGN KEY (contact_id) REFERENCES contacts
);