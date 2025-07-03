# Using Views for Abstraction and Security in SQL

1. Views are virtual tables that simplify complex SQL queries.
2. They help abstract away JOINs, filters, and calculations for end users.
3. Views improve code readability and reduce duplication of query logic.
4. You can expose only specific columns in a view to protect sensitive data.
5. Views help enforce security by controlling what data users can see.
6. Use GRANT to give users access only to views, not base tables.
7. Views can be made read-only to prevent accidental data changes.
8. They are useful for role-based data access (e.g., HR vs. Admin).
9. Updating a view updates all users relying on its logic.
10. Views improve maintainability, reusability, and data control in large systems.
