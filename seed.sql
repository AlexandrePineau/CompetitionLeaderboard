-- Athletes
INSERT INTO athletes
    (athlete_id, email, full_name, birthday, is_male)
VALUES
    --Men
    (1, 'alexpineau@gmail.com', 'Alexandre Pineau', '2000-06-14', true),
    (2, 'robnaim@hotmail.com', 'Robert Naim', '1998-05-13', true),
    (3, 'poirrerof@outlook.com', 'Pierre Rofail', '1960-12-05', true),
    (4, 'pcaps44@gmail.com', 'Paolo Capua', '2001-06-21', true),
    (5, 'jswalez1@live.com', 'Jeremy Swales', '1968-06-12', true),
    (6, 'maxime@cogeco.ca', 'Maxime Vincent', '1998-02-20', true),
    (7, 'lazertagguy@gmail.com', 'Colin Courville', '2001-09-12', true),
    (8, 'hockeylife00@gmail.com', 'Zakary Gange', '1987-12-25', true),
    (9, 'papaphil@outlook.com', 'Philippe Richer', '1980-11-22', true),
    (10, 'greenman@uottawa.ca', 'John Callum', '2005-12-21', true),
    (11, 'duffbeerz@gmail.com', 'Alexander Duff', '2000-01-04', true),
    (12, 'balding007@gmail.com', 'Marklee Hunter', '1998-05-04', true),
    (13, 'matthewhunter@hotmail.com', 'Matthew Hunter', '1972-10-10', true),
    (14, 'dinnerfor6@uottawa.ca', 'Brock Golden', '2001-10-30', true),
    (15, 'animelover45@gmail.com', 'David Vejgman', '1999-12-20', true),
    (16, 'zaggotmaggot@yahoo.ca', 'Zachary Cantone', '2000-06-14', true),
    (17, 'jakecor@yahoo.ca', 'Jake Coriero', '1972-09-09', true),
    (18, 'pacomako@gmail.com', 'Pascal Vu-Norreau', '1979-03-20', true),
    (19, 'frederiqueee@outlook.com', 'Frederic Paul', '1988-08-18', true),
    (20, 'dutchoven31@outlook.com', 'Tyler Deloughry', '2000-09-17', true),

    --Women
    (21, 'caity@gmail.com', 'CaitLin McNaughton', '2001-07-28', false),
    (22, 'allygal20@outlook.com', 'Alyssa Rose', '1999-12-31', false),
    (23, 'michybeau@hotmail.com', 'Michelle Beaulieu', '1980-10-01', false),
    (24, 'bribri33@gmail.com', 'Brianne Grandmont', '1995-07-13', false),
    (25, 'emers00@gmail.com', 'Emilie Lafleur', '2000-02-02', false),
    (26, 'brycelawr@gmail.com', 'Bryce Lawrence', '1975-06-21', false),
    (27, 'hockeygirl00@gmail.com', 'Carolyn Hughes', '1983-03-25', false),
    (28, 'zoyboy@outlook.com', 'Zoya Lehman', '1999-10-14', false),
    (29, 'scarymary@outlook.com', 'Mary Gervais', '1991-04-30', false),
    (30, 'seseiscool@uottawa.ca', 'Sevane Paroyane', '2001-01-15', false),
    (31, 'sarbear7@outlook.com', 'Sarah Smith', '2000-06-14', false),
    (32, 'valgal@gmail.com', 'Valerie Metias', '1984-03-19', false),
    (33, 'marenayoussef@gmail.com', 'Marena Youssef', '1989-12-06', false),
    (34, 'nicolea4@gmail.com', 'Nicole Agaiby', '2000-06-20', false),
    (35, 'moisabro@uottawa.ca', 'Morea Haloftis', '1994-02-25', false),
    (36, 'chloegirl123@gmail.com', 'Chloe Whittaker', '2001-01-02', false),
    (37, 'billnaithesciguy@gmail.com', 'Naomi Kake', '1997-07-27', false),
    (38, 'rebekkatea@outlook.com', 'Rebekka Turene', '1968-09-05', false),
    (39, 'audreyaudrey@outlook.com', 'Audrey Blanchard', '1995-11-14', false),
    (40, 'juliarose@gmail.com', 'Julia-Rose Lamoureux', '2004-02-22', false);

-- Contacts
INSERT INTO contacts (contact_id, contact_name, contact_email, contact_phone_number)
VALUES
    (1, 'James Fleming', 'events@bp.ca', '647-123-4567'),
    (2, 'Maurice Richard', 'sponsorships@bauer.ca', '905-123-4567'),
    (3, 'Ken Dryden', 'events@bauer.ca', '906-123-4567'),
    (4, 'Bruce Brewer', 'publicities@moosehead.ca', '111-123-4567');

-- Competitions
INSERT INTO competitions
  (competition_id, competition_name, competition_address, start_time, end_time, days_long, number_of_events, max_males, max_females)
VALUES
  (1, 'Weight Lifting Contest', 'Ottawa', '2021-06-20 09:00:00', '2021-06-21 16:00:00', 2, 10, 30, 30),
  (2, 'Obstacle Course Races', 'Hamilton', '2021-08-01 08:00:00', '2021-08-01 17:30:00', 1, 3, 100, 100),
  (3, 'Pushup Marathon', 'Toronto', '2021-04-19 13:00:00', '2021-04-22 13:00:00', 4, 3, NULL, NULL),
  (4, 'Swim Until You Drown', 'Halifax', '2021-08-08 10:30:00', '2021-08-11 22:00:00', 3, 1, 50, 50),
  (5, 'Jumping Jacks For Joy', 'Montreal', '2021-10-02 06:00:00', '2021-10-02 16:00:00', 1, 5, 20, 20);

-- Registrations
INSERT INTO registrations
  (athlete_id, competition_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 2),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 1),
  (21, 1),
  (22, 1),
  (23, 1);

-- Partners
INSERT INTO partners (partner_id, company_name, company_address)
VALUES
    (1, 'Boston Pizza', '123 MacDonald Rd. Toronto, ON, A1B 2C3'),
    (2, 'Bauer Hockey', '456 Gretzky St. Brantford, ON, E4F 5G6'),
    (3, 'Moosehead Breweries', '789 Moose Ave. Moncton, NB, H7I 8J9');

-- Events
INSERT INTO events (event_id, competition_id, event_name, scoring, time_capped, tie_breaker)
VALUES
    (1, 1, '100kg Hold', 'Time DESC', 'No', 'Yes'),
    (2, 1, '1 Ton Run', 'Time ASC', 'No', 'No'),
    (3, 1, 'Biggest Lift', 'Weight', 'No', 'No'),
    (4, 2, '1 Km Race', 'Time', 'No', 'No'),
    (5, 2, '5 Km Race', 'Time', 'No', 'No'),
    (6, 3, 'Pushups', 'Reps', 'Yes', 'Yes'),
    (7, 4, '2Km Frontcrawl', 'Time', 'No', 'No'),
    (8, 4, '2Km Breaststroke', 'Time', 'No', 'No'),
    (9, 5, '1 Min Jumps', 'Reps', 'Yes', 'No'),
    (10, 5, '5 Min Jumps', 'Reps', 'Yes', 'No');

-- Hosts
INSERT INTO hosts (partner_id, competition_id, contact_id)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (2, 3, 3),
    (3, 4, 4),
    (3, 5, 4);
  
-- Scores
INSERT INTO scores (score_id, athlete_id, event_id, reps, duration_in_seconds, weight_in_kg)
VALUES
    -- First 3 males and females, events of 1st competition
    -- Males
    (1, 1, 1, null, 550, 100),
    (2, 2, 1, null, 400, 100),
    (3, 3, 1, null, 500, 100),
    (4, 1, 2, null, 300, 1000),
    (5, 2, 2, null, 320, 1000),
    (6, 3, 2, null, 400, 1000),
    (7, 1, 3, null, null, 350),
    (8, 2, 3, null, null, 300),
    (9, 3, 3, null, null, 345),
    --Females
    (10, 21, 1, null, 300, 100),
    (11, 22, 1, null, 250, 100),
    (12, 23, 1, null, 245, 100),
    (13, 21, 2, null, 600, 1000),
    (14, 22, 2, null, 621, 1000),
    (15, 23, 2, null, 705, 1000),
    (16, 21, 3, null, null, 250),
    (17, 22, 3, null, null, 185),
    (18, 23, 3, null, null, 245);
