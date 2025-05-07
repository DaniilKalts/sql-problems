-- 3465. Find Products with Valid Serial Numbers
-- https://leetcode.com/problems/find-products-with-valid-serial-numbers/description/

SELECT *
FROM products
WHERE description ~ '\ySN[0-9]{4}-[0-9]{4}\y'
ORDER BY product_ID ASC
