### [3451. Find Invalid IP Addresses](https://leetcode.com/problems/find-invalid-ip-addresses/description/)

- - -

Table: `logs`
```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| log_id      | int     |
| ip          | varchar |
| status_code | int     |
+-------------+---------+
log_id is the unique key for this table.
Each row contains server access log information including IP address and HTTP status code.
```

- - -

Write a solution to find invalid IP addresses. An IPv4 address is invalid if it meets any of these conditions:

    Contains numbers greater than 255 in any octet
    Has leading zeros in any octet (like 01.02.03.04)
    Has less or more than 4 octets

Return the result table ordered by invalid_count, ip in descending order respectively. 
