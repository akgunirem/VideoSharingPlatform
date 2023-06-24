CREATE TABLE user (
	userId NUMBER(6) PRIMARY KEY,
	userName VARCHAR2(20) NOT NULL
);

CREATE TABLE account (
	accMail VARCHAR2(40) PRIMARY KEY,
	accPassword VARCHAR2(60) NOT NULL,
	accUserId NUMBER(6) REFERENCES user(userId)
);


CREATE TABLE channel (
	chId NUMBER(6) PRIMARY KEY,
	chName VARCHAR2(40) NOT NULL,
	chUserId NUMBER(6) REFERENCES user(userId)
);

CREATE TABLE subscriptions (
	subId NUMBER(6) PRIMARY KEY,
	subFromChId NUMBER(6) REFERENCES channel(chId),
	subToChId NUMBER(6) REFERENCES channel(chId),
	subToChName VARCHAR2(40),
	subDate DATE
);

CREATE TABLE video (
	videoId NUMBER(6) PRIMARY KEY,
	videoName VARCHAR2(60) NOT NULL,
	videoDate DATE,
	description VARCHAR2(200),
	videoChId NUMBER(6) REFERENCES channel(chId)
);

CREATE TABLE liking (
	likeId NUMBER(6) PRIMARY KEY,
	likeVideoId NUMBER(6) REFERENCES Video(videoId),
	likeFromChId NUMBER(6) REFERENCES Channel(chId)
);

CREATE TABLE comment (
	commId NUMBER(6) PRIMARY KEY,
	content VARCHAR2(200),
	commVideoId NUMBER(6) REFERENCES Video(videoId),
	commChId NUMBER(6) REFERENCES Channel(chId)
);
