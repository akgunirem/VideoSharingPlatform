INSERT INTO user (userId, userName) VALUES (1, 'Melisa Okay');
INSERT INTO user (userId, userName) VALUES (2, 'Melisa Öztürk');
INSERT INTO user (userId, userName) VALUES (3, 'İrem Akgün');

INSERT INTO account (accMail, accPassword, accUserId)
VALUES ('okay@bahcesehir.edu.tr', 'abc123', 1);
INSERT INTO account (accMail, accPassword, accUserId)
VALUES ('ozturk@bahcesehir.edu.tr', 'de456', 2);
INSERT INTO account (accMail, accPassword, accUserId)
VALUES ('akgun@bahcesehir.edu.tr', 'fgh789', 3);

INSERT INTO channel (chId, chName, chUserId) VALUES (1, 'My Travel Videos', 1);
INSERT INTO channel (chId, chName, chUserId) VALUES (2, 'Technology News', 2);
INSERT INTO channel (chId, chName, chUserId) VALUES (3, 'Cute Animal Videos', 3);

INSERT INTO subscriptions (subId, subFromChId, subToChId, subToChName, subDate)
VALUES (1, 1, 2, 'Technology News', TO_DATE('2023-05-30', 'YYYY-MM-DD'));
INSERT INTO subscriptions (subId, subFromChId, subToChId, subToChName, subDate)
VALUES (2, 2, 3, 'Cute Animal Videos', TO_DATE('2023-05-30', 'YYYY-MM-DD'));
INSERT INTO subscriptions (subId, subFromChId, subToChId, subToChName, subDate)
VALUES (3, 3, 1, 'My Travel Videos', TO_DATE('2023-05-31', 'YYYY-MM-DD'));

INSERT INTO video (videoId, videoName, videoDate, description, videoChId)
VALUES (1, 'A Day in Istanbul', TO_DATE('2023-05-25', 'YYYY-MM-DD'), 'Join me on my trip to Istanbul!', 1);
INSERT INTO video (videoId, videoName, videoDate, description, videoChId)
VALUES (2, 'Latest Smartphone Unboxing', TO_DATE('2023-05-28', 'YYYY-MM-DD'), 'Check out the new phone!', 2);
INSERT INTO video (videoId, videoName, videoDate, description, videoChId)
VALUES (3, 'Funny Cats Compilation', TO_DATE('2023-05-30', 'YYYY-MM-DD'), 'Get ready to laugh!', 3);

INSERT INTO liking (likeId, likeVideoId, likeFromChId) VALUES (1, 3, 1);
INSERT INTO liking (likeId, likeVideoId, likeFromChId) VALUES (2, 3, 2);
INSERT INTO liking (likeId, likeVideoId, likeFromChId) VALUES (3, 2, 3);

INSERT INTO comment (commId, content, commVideoId, commChId)
VALUES (1, 'Great video!', 3, 1);
INSERT INTO comment (commId, content, commVideoId, commChId)
VALUES (2, 'These cats are hilarious!', 3, 2);
INSERT INTO comment (commId, content, commVideoId, commChId)
VALUES (3, 'Awesome unboxing!', 2, 3);
