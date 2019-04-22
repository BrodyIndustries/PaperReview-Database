INSERT INTO AUTHOR(emailAddr, firstName, lastName) VALUES
('erin@gmail.com', 'erin', 'brody'),
('catherine@gmail.com', 'catherine', 'brody'),
('patrick@gmail.com', 'patrick', 'brody'),
('sarah@gmail.com', 'sarah', 'brody'),
('ciara@gmail.com', 'ciara', 'brody');

INSERT INTO PAPER(paperID,title, abstract, fileName, contactAuthorEmail) VALUES
(1, 'yes', NULL, NULL, 'erin@gmail.com'),
(2,'no', NULL, NULL, 'sarah@gmail.com'),
(3,'maybe', NULL, NULL, 'sarah@gmail.com'),
(4,'idk', NULL, NULL, 'patrick@gmail.com'),
(5,'possibly', NULL, NULL, 'ciara@gmail.com');

INSERT INTO REVIEWER(emailAddr,firstName,lastName,phoneNum,afiliation) VALUES
('alpha@gmail.com', 'alpha','smith',NULL,NULL),
('beta@gmail.com', 'beta','smith',NULL,NULL),
('gamma@gmail.com', 'gamma','smith',NULL,NULL),
('delta@gmail.com', 'delta','smith',NULL,NULL),
('sigma@gmail.com', 'sigma','smith',NULL,NULL);

INSERT INTO REVIEW(reviewID,paperID,recommendation,meritScore,readabilityScore,originalityScore,relevanceScore,reviewerEmailAddr,authorFeedback,committeeFeedback) VALUES
(1, 1,NULL,9,9,9, 9,'alpha@gmail.com',NULL,NULL),
(2,1,NULL,9,9,9,9,'gamma@gmail.com',NULL,NULL),
(3, 2,NULL,9,9,9,9,'delta@gmail.com',NULL,NULL),
(4, 2,NULL,9,9,9,9,'beta@gmail.com',NULL,NULL),
(5, 3,NULL,9,9,9,9,'sigma@gmail.com',NULL,NULL),
(6, 3,NULL,9,9,9,9,'beta@gmail.com',NULL,NULL),
(7,4,NULL,9,9,9,9,'delta@gmail.com',NULL,NULL),
(8,4,NULL,9,9,9,9,'sigma@gmail.com',NULL,NULL),
(9,5,NULL,9,9,9,9,'gamma@gmail.com',NULL,NULL),
(10,5,NULL,9,9,9,9,'alpha@gmail.com',NULL,NULL);


INSERT INTO TOPIC() VALUES
(1,'T1'),
(2,'T2'),
(3,'T3'),
(4,'T4'),
(5,'T5');
