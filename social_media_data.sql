

SELECT 
	DISTINCT(platform) 
	AS 'PLATFORM', 
    COUNT(*) AS 'USERS' 
    FROM socialmediausers GROUP BY PLATFORM ORDER BY USERS DESC;

+-----------+-------+
| PLATFORM  | USERS |
+-----------+-------+
| Instagram |   363 |
| YouTube   |   330 |
| Facebook  |   307 |
+-----------+-------+
3 rows in set (0.00 sec)

-- Which platform has the highest number of users?
-- Instagram leads in the number of users 
-- followed by Youtube and lastly by Facebook.


SELECT COUNT(*) AS 'NumberOfUsers', 
    location AS 'Location' 
    FROM socialmediausers GROUP BY location ORDER BY location;

+---------------+----------------+
| NumberOfUsers | Location       |
+---------------+----------------+
|           352 | Australia      |
|           329 | United Kingdom |
|           319 | United States  |
+---------------+----------------+
3 rows in set (0.00 sec)

-- Which of the 3 locations has the highest number of users?
-- Australia has the highest number of social media users, 
-- followed by United Kingdom; and 
-- United States has the least number of users.


SELECT 
    platform AS 'Platform',
    AVG(age) AS 'Average_Age' 
    FROM socialmediausers GROUP BY platform ORDER BY Platform;

| Platform  | Average_Age |
+-----------+-------------+
| Facebook  |     40.8469 |
| Instagram |     40.8926 |
| YouTube   |     41.2182 |
+-----------+-------------+
3 rows in set (0.00 sec)

-- What is the average age of users in each platform?
-- The average age for users of each platform is approximately 41.
-- However users of Youtube have the highest average age at 41.2



SELECT 
    demographics AS DEMOGRAPHICS, 
    AVG(time_spent) AVERAGE_TIME 
    FROM socialmediausers GROUP BY demographics;

+--------------+--------------+
| DEMOGRAPHICS | AVERAGE_TIME |
+--------------+--------------+
| Urban        |       4.7877 |
| Sub_Urban    |       5.2716 |
| Rural        |       5.0206 |
+--------------+--------------+
3 rows in set (0.01 sec)

-- The average time time spent by users on social media acording to demographics: 
-- sub-urban users lead at 5.27, followed by rural users at 5.02 and 
-- urban users trail at 4.79

SELECT 
    interests AS INTEREST, 
    AVG(time_spent) AS TIME_SPENT 
    FROM socialmediausers GROUP BY interests;

+-----------+------------+
| INTEREST  | TIME_SPENT |
+-----------+------------+
| Sports    |     4.8459 |
| Travel    |     5.0945 |
| Lifestlye |     5.1437 |
+-----------+------------+
3 rows in set (0.01 sec)

-- Users whose interest is Lifestyle spent, on average, 
-- more time on social media (at 5.14) 
-- than those whose interest is sports or Travel.