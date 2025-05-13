-- 3521. Find Product Recommendation Pairs
-- https://leetcode.com/problems/find-product-recommendation-pairs/description/

SELECT
    t1.product_id AS product1_id,
    t2.product_id AS product2_id,
    t3.category AS product1_category,
    t4.category AS product2_category,
    COUNT(*) AS customer_count
FROM
    ProductPurchases t1
JOIN
    ProductPurchases t2
ON
    t1.user_id = t2.user_id
JOIN
    ProductInfo t3
ON
    t1.product_id = t3.product_id
JOIN
    ProductInfo t4
ON
    t2.product_id = t4.product_id
WHERE
    t1.product_id < t2.product_id
GROUP BY
    1, 2, 3, 4
HAVING
    COUNT(*) >= 3
ORDER BY
    customer_count DESC,
    product1_id, product2_id ASC;
