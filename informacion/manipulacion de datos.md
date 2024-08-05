# Data Manipulation

Data Manipulation Language is a subcategory of SQL (Structured Query Language) that is used to manage and modify data within database tables. DML operations are key to interacting with data in a way that allows for verification, validation, and analysis.

## Importance of DML for Testers

For testers, DML queries are indispensable tools for several reasons:

**1. Data Verification:** Test and validate that data inserted, updated, or deleted in an application is managed correctly in the database.

**2. Test Data Creation:** Generate specific data needed for test scenarios without relying on manual input.

**3. Data Cleansing:** Remove unnecessary data or create a clean, controlled environment for repeatable testing.

**4. State Updating:** Modify the state of records to simulate different system conditions.

### SELECT

The **SELECT** clause is used to specify the columns you want to extract from a table. You can select all columns using * or specify individual columns.

```sql
SELECT column1, column2, ...
FROM table_name;
```

### ALIAS

The **ALIAS** clause is used to temporarily rename a column or table in the result of a query, providing more readable or abbreviated names.

**Basic Syntax for Columns**

```sql
SELECT column AS alias
FROM table_name;
```

**Basic Syntax for Tables**

```sql
SELECT column1, column2, ...
FROM table_name AS alias;
```

### INSERT

The INSERT clause in SQL is used to add new records to a table in a database. Using this operation, you can insert one or more rows of data into a specific table, providing corresponding values ​​for each column. Here's how to use the INSERT clause in SQL.

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...)
```

### UPDATE

The UPDATE clause in SQL is used to modify existing data in a table. It allows you to change the value of one or more columns for one or more specific records in the database.

Using the UPDATE clause involves specifying the table that contains the data you want to modify, the columns you want to update, and the new values. Additionally, it is crucial to use a WHERE clause to define which records should be updated, thus avoiding unwanted changes to the entire table.

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

### DELETE

The DELETE clause in SQL is used to delete one or more records from a table. This operation allows you to delete specific data based on a given condition or all records in a table if no condition is specified. It is essential to use a WHERE clause to avoid deleting all records in the table unless that is the goal.

```sql
DELETE FROM table_name
WHERE condition;
```


