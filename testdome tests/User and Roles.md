# User and Roles Question

The following two tables are used to define users and their respective roles:

### TABLE users
```sql
id INTEGER NOT NULL PRIMARY KEY,
userName VARCHAR(50) NOT NULL
```

### TABLE users
```sql
id INTEGER NOT NULL PRIMARY KEY,
role VARCHAR(20) NOT NULL
```

The usersRoles table should contain the mapping between each user and their roles. Each user can have many roles, and each role can have many users.

Modify the provided SQL create table statement so that:

- Only users from the users table can exist within usersRoles.
- Only roles from the roles table can exist within usersRoles.
- A user can only have a specific role once.

```sql
CREATE TABLE usersRoles (
  userId INTEGER,
  roleId INTEGER
);
```

# Answer

- PRIMARY KEY (userId, roleId): This ensures that a user can only have a specific role once.
- FOREIGN KEY (userId) REFERENCES users(id): This ensures that only users existing in the `users` table can appear in the `usersRoles` table.
- FOREIGN KEY (roleId) REFERENCES roles(id): This ensures that only roles existing in the `roles` table can appear in the `usersRoles` table.

**Modified SQL query:**

```sql
CREATE TABLE usersRoles (
  userId INTEGER,
  roleId INTEGER
);
```
