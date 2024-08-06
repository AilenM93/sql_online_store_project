# HAVING Clause in SQL

## Description

The HAVING clause is used to filter the results of queries that use the GROUP BY clause. Unlike the WHERE clause, which filters individual rows, HAVING filters groups of results after the aggregation functions have been applied.

## Importance

HAVING is crucial for filtering aggregated data, allowing you to limit group results based on specified conditions. This is useful for more accurate and relevant reporting.

## Usage

- **Group Filtering:** Used to specify conditions that must be met by the groups defined by the GROUP BY clause.

## Syntax

```sql
SELECT column1, AGGREGATE_FUNCTION(column2)
FROM table_name
GROUP BY column1
HAVING condition;
```

## Difference between WHERE and HAVING

- WHERE: Filters rows before applying aggregate functions.

```sql
SELECT * FROM Orders
WHERE OrderDate > '2024-01-01';
```

- HAVING: Filters results after aggregate functions have been applied.

```sql
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 1;
```
