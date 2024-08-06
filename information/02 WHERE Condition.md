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

## BETWEEN

The BETWEEN clause is used within a WHERE clause to filter records that are within a specific range. The range can be numbers, text, or dates.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

## IN

The IN clause is used within a WHERE clause to filter records that match any of the values ​​in a specified list. It is useful for avoiding multiple OR conditions.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

Example:

```sql
SELECT * FROM Customers
WHERE Country IN ('Argentina', 'Brasil', 'Spain');
```

## LIKE

The LIKE clause is used within a WHERE clause to filter records that match a specified pattern. Patterns can include wildcard characters (% and _).

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;
```

In this example, all customers whose names begin with 'L' are selected.

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE 'L%';
```

## IS NULL / IS NOT NULL

The IS NULL and IS NOT NULL clauses are used within a WHERE clause to filter records that have NULL or non-NULL values, respectively.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name IS NULL;
```

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name IS NOT NULL;
```


