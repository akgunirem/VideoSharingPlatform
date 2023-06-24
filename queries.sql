-- retrieves user names and the total number of comments they have made
SELECT u.userName "User", COUNT(c.commId) AS "Comments Made" FROM user u
  LEFT JOIN comment c ON u.userId = c.commChId GROUP BY u.userName;

-- retrieves user names and the total number of comments they have received
SELECT u.userName "User", COUNT(c.commId) AS "Comments Received" FROM user u
  LEFT JOIN comment c ON u.userId = c.commVideoId GROUP BY u.userName;

-- retrieves the channel names and the total number of videos for each channel
SELECT c.chName AS "Channel Name", (SELECT COUNT(*) FROM video v
  WHERE v.videoChId = c.chId) AS "Video Count" FROM channel c;

-- retrieves users, their channels, and the number of subscribers they have
SELECT u.userName "User", ch.chName "Channel", (
  SELECT COUNT(*) FROM subscriptions s
  WHERE s.subToChId = ch.chId) AS "Subscribers"
  FROM user u JOIN channel ch ON u.userId = ch.chUserId;

-- retrieves any user who has liked a video or commented on a video at least once
SELECT userName "Users that interact" FROM user
  WHERE userId IN (
  SELECT likeFromChId FROM liking UNION
  SELECT commChId FROM comment
);

-- retrieves any channel who received a like or comment on a video at least once
SELECT ch.chName "Interacted Channels" FROM channel ch
  WHERE ch.chId IN (SELECT videoChId FROM video WHERE videoId IN (
  SELECT likeVideoId FROM liking UNION
  SELECT commVideoId FROM comment)
);

-- retrieves the video names and total number of likes for each video
SELECT v.videoName "Video", COUNT(l.likeId) AS "Likes" FROM video v
  LEFT JOIN liking l ON v.videoId = l.likeVideoId
  GROUP BY v.videoId;

-- retrieves the video names and total number of comments for each video
SELECT v.videoName "Video", COUNT(c.commId) AS "Comments" FROM video v
  LEFT JOIN comment c ON v.videoId = c.commVideoId
  GROUP BY v.videoId;
