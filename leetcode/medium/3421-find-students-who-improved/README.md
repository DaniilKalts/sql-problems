### [3421. Find Students Who Improved](https://leetcode.com/problems/find-students-who-improved/description/)

- - -

Table: `Scores`
```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| student_id  | int     |
| subject     | varchar |
| score       | int     |
| exam_date   | varchar |
+-------------+---------+
(student_id, subject, exam_date) is the primary key for this table.
Each row contains information about a student's score in a specific subject on a particular exam date. score is between 0 and 100 (inclusive).
```

- - -

Write a solution to find the students who have shown improvement. A student is considered to have shown improvement if they meet both of these conditions:

- Have taken exams in the same subject on at least two different dates
- Their latest score in that subject is higher than their first score

Return the result table ordered by student_id, subject in ascending order.
