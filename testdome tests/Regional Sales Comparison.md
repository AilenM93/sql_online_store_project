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

**Step by step:**

1. Get total sales and number of employees by region:

- Combine `regions`, `states`, `employees`, and `sales` to get total sales by region.
- Count the number of employees by region.

2. Calculate average sales per employee for each region:

- Use the sum of sales and number of employees obtained in step 1.

3. Find the region with the highest average sales:

- Calculate the maximum of the average sales per region.

4. Calculate the difference between the highest average and the average for each region:

- Subtract the average for each region from the highest average.

```sql
WITH RegionSales AS (
    SELECT
        r.id AS regionId,
        r.name AS regionName,
        SUM(s.amount) AS totalSales,
        COUNT(DISTINCT e.id) AS numberOfEmployees
    FROM
        regions r
        LEFT JOIN states st ON r.id = st.regionId
        LEFT JOIN employees e ON st.id = e.stateId
        LEFT JOIN sales s ON e.id = s.employeeId
    GROUP BY
        r.id, r.name
),
RegionAvgSales AS (
    SELECT
        regionId,
        regionName,
        COALESCE(totalSales / NULLIF(numberOfEmployees, 0), 0) AS avgSalesPerEmployee
    FROM
        RegionSales
),
MaxAvgSales AS (
    SELECT
        MAX(avgSalesPerEmployee) AS highestAvgSales
    FROM
        RegionAvgSales
)
SELECT
    ras.regionName,
    ras.avgSalesPerEmployee,
    COALESCE(mas.highestAvgSales - ras.avgSalesPerEmployee, 0) AS salesDifference
FROM
    RegionAvgSales ras,
    MaxAvgSales mas;
```


