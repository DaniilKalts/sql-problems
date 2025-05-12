-- 3497. Analyze Subscription Conversion
-- https://leetcode.com/problems/analyze-subscription-conversion/description/

SELECT
    user_id,
    ROUND(
        AVG(activity_duration)
        FILTER (WHERE activity_type = 'free_trial')
    , 2) AS trial_avg_duration,
    ROUND(
        AVG(activity_duration)
        FILTER (WHERE activity_type = 'paid')
    , 2) AS paid_avg_duration
FROM
    UserActivity
GROUP BY
    user_id
HAVING
    COUNT(*) FILTER (WHERE activity_type = 'paid') > 0
ORDER BY
    user_id;
