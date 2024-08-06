# Aggregate Functions in SQL

The `AVG`, `SUM`, `COUNT`, `MIN`, and `MAX` functions are aggregate functions in SQL that are used to perform calculations on a set of values ​​and return a single value. These functions are fundamental to data analysis and are commonly used in queries to obtain statistical and summary information about data in databases.


| Function | Description | Syntax | Uses |
|---------|-------------|---------|---------|
| `AVG`   | Calculates the average of a set of numerical values. | `SELECT AVG(column1) FROM name_table;` | It is used when you need to know the average of a set of values, such as the average price of products or the average salary of employees. |
| `SUM`   | Calculates the total sum of a set of numerical values. | `SELECT SUM(column1) FROM name_table;` | It is used when you need to know the total of a set of values, such as total sales or total inventory quantities. |
| `COUNT` | Counts the number of rows that match a condition. | `SELECT COUNT(*) FROM name_table;` | It is used when you need to know how many entries are in a table or how many rows meet certain criteria, such as the number of orders placed or the number of products in a specific category. |
| `MIN`   | Returns the minimum value of a set of values. | `SELECT MIN(column1) FROM name_table;` | It is used when you need to know the minimum value in a set of data, such as the lowest price of products or the oldest date in a list of events. |
| `MAX`   | Returns the maximum value of a set of values. | `SELECT MAX(column1) FROM name_table;` | It is used when you need to know the maximum value in a set of data, such as the highest price of products or the most recent date in a list of events. |
 

