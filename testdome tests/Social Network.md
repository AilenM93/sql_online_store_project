# Question

A new social network site has the following data tables:

### users
| id | name   | sex  |
|----|--------|------|
| 1  | Ann    | null |
| 2  | Steve  | m    |
| 3  | Mary   | f    |
| 4  | Brenda | f    |

### friends
| user1 | user2 |
|-------|-------|
| 1     | 2     |
| 1     | 3     |
| 2     | 3     |

What data will be returned by the following SQL query?

```sql
SELECT users.name, COUNT(*) as count FROM users
LEFT JOIN friends
ON users.id = friends.user1 OR users.id = friends.user2
WHERE users.sex = 'f'
GROUP BY users.id, users.name;
```

# Answer

To determine what data will be returned by the given SQL query, let's first review what the query does step by step:

- Selects the names of users and their friends count.
- Joins the `users` and `friends` tables using a LEFT JOIN on the `user1` or `user2` columns.
- Filters the results to only include users whose gender is female (sex = 'f').
- Groups the results by the users `id` and `name`.

**For Mary (id = 3):**

Matches in friends:
`friends.user1 = 3` or `friends.user2 = 3`
Matching records: (1, 3) and (2, 3)

**For Brenda (id = 4):**

No matches in friends.

**Friend count:**

- Mary has 2 matches in the friends table.
- Brenda has 0 matches in the friends table.

**Final result**

| name   | count |
|--------|-------|
| Mary   | 2     |
| Brenda | 0     |
