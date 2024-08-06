# Web Shop Question

Each item in a web shop belongs to a seller. To ensure service quality, each seller has a rating.

The data are kept in the following two tables:

### TABLE sellers
```sql
id INTEGER PRIMARY KEY,
name VARCHAR(30) NOT NULL,
rating INTEGER NOT NULL
```

### TABLE sellers
```sql
id INTEGER PRIMARY KEY,
name VARCHAR(30) NOT NULL,
sellerId INTEGER,
FOREIGN KEY (sellerId) REFERENCES sellers(id)
```

Write a query that selects the item name and the name of its seller for each item that belongs to a seller with a rating greater than 4. The query should return the name of the item as the first column and name of the seller as the second column.

# Answer

- JOIN: We join the items and sellers tables using the sellerId foreign key.
- WHERE: We filter the results to include only those where the seller's rating is greater than 4.
- SELECT: We select the item name and the seller name, displaying the item name first and the seller name second.

```sql
SELECT items.name AS itemName, sellers.name AS sellerName
FROM items
JOIN sellers ON items.sellerId = sellers.id
WHERE sellers.rating > 4;
```
