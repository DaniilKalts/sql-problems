-- 3451. Find Invalid IP Addresses
-- https://leetcode.com/problems/find-invalid-ip-addresses/description/

-- Postgres specific solution
WITH CTE AS (
    SELECT
        ip,
        split_part(ip, '.', 1) AS a,
        split_part(ip, '.', 2) AS b,
        split_part(ip, '.', 3) AS c,
        split_part(ip, '.', 4) AS d,
        cardinality(string_to_array(ip, '.')) AS octets
    FROM
        logs
)

SELECT
    ip,
    COUNT(*) AS invalid_count
FROM
    CTE
WHERE
    octets <> 4
    OR a ~ '^0\d+' OR b ~ '^0\d+' OR c ~ '^0\d+' OR d ~ '^0\d+'
    OR a::INT > 255 OR b::INT > 255 OR c::INT > 255 OR d::INT > 255
GROUP BY
    ip
ORDER BY
    invalid_count DESC,
    ip DESC;
