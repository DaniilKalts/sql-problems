### [3465. Find Products with Valid Serial Numbers](https://leetcode.com/problems/find-products-with-valid-serial-numbers/description/)

- - -

Table: `products`
```
+--------------+------------+
| Column Name  | Type       |
+--------------+------------+
| product_id   | int        |
| product_name | varchar    |
| description  | varchar    |
+--------------+------------+
```

- - -

Write a solution to find all products whose description contains a valid serial number pattern. A valid serial number follows these rules:

- It starts with the letters SN (case-sensitive).
- Followed by exactly 4 digits.
- It must have a hyphen (-) followed by exactly 4 digits.
- The serial number must be within the description (it may not necessarily start at the beginning).

Return the result table ordered by product_id in ascending order.
