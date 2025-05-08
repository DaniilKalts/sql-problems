-- 3436. Find Valid Emails 
-- https://leetcode.com/problems/find-valid-emails/description/

SELECT *
FROM Users
WHERE email ~ '^[A-Za-z0-9_]+@[A-Za-z]+\.com$'
ORDER BY user_ID ASC
