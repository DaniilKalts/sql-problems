-- 3421. Find Students Who Improved
-- https://leetcode.com/problems/find-students-who-improved/description/

WITH CTE AS (
    SELECT DISTINCT
        student_id,
        subject,
        FIRST_VALUE(score) OVER (
            PARTITION BY student_id, subject
            ORDER BY exam_date
            ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING 
        ) AS first_score,
        LAST_VALUE(score) OVER (
            PARTITION BY student_id, subject
            ORDER BY exam_date
            ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
        ) AS latest_score
    FROM
        Scores
)

SELECT
    student_id,
    subject,
    first_score,
    latest_score
FROM
    CTE
WHERE
    first_score < latest_score
ORDER BY
    student_id, subject;
