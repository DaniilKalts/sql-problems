-- 3374. First Letter Capitalization II
-- https://leetcode.com/problems/first-letter-capitalization-ii/description/

-- Postgres specific function
SELECT
    content_id,
    content_text AS original_text,
    INITCAP(content_text) AS converted_text
FROM
    user_content;
