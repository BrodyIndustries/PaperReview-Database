CREATE DATABASE paperReviewers;
USE paperReviewers;

CREATE TABLE AUTHOR
(
emailAddr VARCHAR(30) NOT NULL,
firstName VARCHAR(30),
lastName VARCHAR(30),
PRIMARY KEY (emailAddr)
);

CREATE TABLE PAPER(
paperID INTEGER(9) AUTO_INCREMENT,
title VARCHAR(30),
abstract VARCHAR(300),
fileName VARCHAR(50),
contactAuthorEmail VARCHAR(30),
PRIMARY KEY (paperID),
FOREIGN KEY (contactAuthorEmail) REFERENCES AUTHOR(emailAddr)
);

CREATE TABLE REVIEWER(
emailAddr VARCHAR(30) NOT NULL,
firstName VARCHAR(30),
lastName VARCHAR(30),
phoneNum int(10),
afiliation VARCHAR(30),
PRIMARY KEY(emailAddr)
);

CREATE TABLE REVIEW(
reviewID INT(9) NOT NULL AUTO_INCREMENT,
paperID INT(9) NOT NULL,
recommendation VARCHAR(200),
meritScore INT(2),
readabilityScore INT(2),
originalityScore INT(2),
relevanceScore INT(2),
reviewerEmailAddr VARCHAR(30) NOT NULL, 
authorFeedback VARCHAR(200),
committeeFeedback VARCHAR(200),
PRIMARY KEY (reviewID),
FOREIGN KEY (paperID) REFERENCES PAPER(paperID),
FOREIGN KEY (reviewerEmailAddr) REFERENCES REVIEWER(emailAddr)
);

CREATE TABLE TOPIC(
topicID INT(9) NOT NULL,
topicName VARCHAR(30),
PRIMARY KEY (topicID)
);

CREATE TABLE REVIEWER_TOPICS (
  emailAddr varchar(30) NOT NULL,
  topicID int(9) NOT NULL,
  PRIMARY KEY (emailAddr,topicID),
  FOREIGN KEY (emailAddr) REFERENCES REVIEWER(emailAddr),
  FOREIGN KEY (topicId) REFERENCES TOPIC(topicId)
  );