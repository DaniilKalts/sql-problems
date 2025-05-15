-- 601. Human Traffic of Stadium
-- https://leetcode.com/problems/human-traffic-of-stadium/description/

WITH CTE AS (
    SELECT
        id,
        visit_date,
        people,
        id - ROW_NUMBER() OVER (ORDER BY id) AS diff
    FROM
        Stadium
    WHERE
        people >= 100
)

SELECT
    id,
    visit_date,
    people
FROM
    CTE
WHERE
    diff IN (
        SELECT diff
        FROM CTE
        GROUP BY diff
        HAVING COUNT(diff) >= 3
    )
ORDER BY
    visit_date;
