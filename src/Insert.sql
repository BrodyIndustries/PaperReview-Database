INSERT INTO AUTHOR(emailAddr, firstName, lastName) VALUES
('erin@gmail.com', 'erin', 'brody'),
('kathy@gmail.com', 'kathy', 'brody'),
('patrick@gmail.com', 'patrick', 'brody'),
('sarah@gmail.com', 'sarah', 'brody'),
('ciara@gmail.com', 'ciara', 'brody');

INSERT INTO PAPER(paperID,title, abstract, fileName, contactAuthorEmail) VALUES
(1, 'how to say yes', 'Do not be a Debby Downer. In this book we find out how to actually say yes to activities.', 'yes.doc', 'erin@gmail.com'),
(2,'The answer could be no', 'Even if you think you know how someone will respond they could surprise you and tell you no. You will need to learn from this', 'no.doc', 'sarah@gmail.com'),
(3,'have you tried maybe', 'When in doubt you do not always have to give an answer. Telling someone maybe can be what is best for you', 'maybe.doc', 'sarah@gmail.com'),
(4,'the ending had me like idk', 'have you ever finished a book or movie and when you got to the end you had no idea what happened.  you are not alone sister. Let us here from other peoples testimonies', 'idk.doc', 'patrick@gmail.com'),
(5,'possibly the best story ever', 'I cannot even explain this to you without spoilers. just take my word and read this awesome story', 'ever.doc', 'ciara@gmail.com');

INSERT INTO REVIEWER(emailAddr,firstName,lastName,phoneNum,afiliation) VALUES
('alpha@gmail.com', 'alpha','smith','27','Smith LLC'),
('beta@gmail.com', 'beta','smith','28','Franky LLC'),
('gamma@gmail.com', 'gamma','smith','40','Duck Incorporated'),
('delta@gmail.com', 'delta','smith','41','Blue Incorporated'),
('sigma@gmail.com', 'sigma','smith','60','Brody Industries');

INSERT INTO REVIEW(reviewID,paperID,recommendation,meritScore,readabilityScore,originalityScore,relevanceScore,reviewerEmailAddr,authorFeedback,committeeFeedback) VALUES
(1, 1,'I loved the book and hope it gets published soon',9,9,9, 9,'alpha@gmail.com','say yes to this book','PHENOMENAL'),
(2,1,NULL,9,9,9,9,'gamma@gmail.com',NULL,NULL),
(3, 2,NULL,9,9,9,9,'delta@gmail.com',NULL,NULL),
(4, 2,NULL,9,9,9,9,'beta@gmail.com',NULL,NULL),
(5, 3,'I could not stop reading this book. it MAYBE the best of 2019',9,9,9,9,'sigma@gmail.com','I maybe crazy but you need to read this','Yippee'),
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
