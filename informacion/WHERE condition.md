# WHERE and Operators

The **WHERE** clause in SQL is used to filter records in a table based on specific conditions, and operators play a crucial role in defining these conditions. Operators allow you to create complex and precise expressions within the WHERE clause. Together, WHERE and operators provide the ability to select, update, or delete only those records that meet detailed criteria, thereby improving the accuracy and efficiency of queries in a database.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

## Types of Operators

### Comparison

Comparison operators in SQL are used to compare two values ​​and return a boolean result (TRUE or FALSE). They are essential for building conditions within the WHERE clause and other logical expressions in SQL. The most common comparison operators are described below:

| Operator | Meaning |
| ------------ | ------------ |
| = | Equal to |
| != or <> | Not equal to |
| < | Less than |
| <= | Less than or equal to |
| > | Greater than |
| >= | Greater than or equal to |

### Logical (AND, OR, NOT)

Logical operators in SQL are used to combine multiple conditions in the WHERE, HAVING, and other parts of a SQL query. They allow for more complex and precise evaluations of data by determining whether one or more conditions are true or false.

**Main Logical Operators**

**1. AND:** Combines two or more conditions and returns TRUE only if all conditions are true.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition AND condition;
```

**2. OR:** Combines two or more conditions and returns TRUE if at least one of the conditions is true.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition OR condition;
```

**3. NOT:** Reverses the result of a condition. Returns TRUE if the condition is false and vice versa

```sql
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

# WHERE and other SQL Clauses

Using WHERE with other SQL clauses such as BETWEEN, IN, LIKE, IS NULL, and IS NOT NULL is essential in SQL for filtering data in queries.
