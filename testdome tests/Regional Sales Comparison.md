# Regional Sales Comparison Question

An insurance company maintains records of sales made by its employees. Each employee is assigned to a state. States are grouped under regions. The following tables contain the data:

### TABLE regions
```sql
id INTEGER PRIMARY KEY
name VARCHAR(50) NOT NULL
```

### TABLE states
```sql
id INTEGER PRIMARY KEY
name VARCHAR(50) NOT NULL
regionId INTEGER NOT NULL
FOREIGN KEY (regionId) REFERENCES regions(id)
```

### TABLE employees
```sql
id INTEGER PRIMARY KEY
name VARCHAR(50) NOT NULL
stateId INTEGER NOT NULL
FOREIGN KEY (stateId) REFERENCES states(id)
```

### TABLE sales
```sql
id INTEGER PRIMARY KEY
amount INTEGER NOT NULL
employeeId INTEGER NOT NULL
FOREIGN KEY (employeeId) REFERENCES employees(id)
```

Management requires a comparative region sales analysis report. Write a query that returns:

- The region name.
- Average sales per employee for the region (Average sales = Total sales made for the region / Number of employees in the region).
- The difference between the average sales of the region with the highest average sales, and the average sales per employee for the region (average sales to be calculated as explained above).

Employees can have multiple sales. A region with no sales should be also returned. Use 0 for average sales per employee for such a region when calculating the 2nd and the 3rd column.

# Answer


