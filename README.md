# SQL Internship - Task 7: Creating Views (MySQL)

#  About the Task
In this task, I focused on writing SQL queries using **views** to abstract and simplify complex logic.  

# The goal was to practice:
- Creating reusable views using `CREATE VIEW`
- Hiding complex joins or filters behind a logical layer
- Simplifying multi-table queries
- Organizing data access for reporting and analysis
- Improving query modularity and readability

This task helped me understand how views enhance both **security** and **reusability** in SQL-based applications.

#  Database Used
I worked with the **RentalDB** database, which consists of the following tables:
- `Owners` — Property owner details  
- `Properties` — Information about rental properties  
- `Locations` — City and area details  
- `Renters` — Renter contact information  
- `Bookings` — Rental booking records  
- `Payments` — Payment details linked to bookings  

The structure of this schema made it ideal for building practical and meaningful views.

#  What I Did
I implemented several views to represent commonly used or complex queries:
- **View for active/completed bookings** — Only those with non-null end dates
- **View to show payment summary** — Combines payments with renter, property, and method details
- **View for property rent info with location** — Merges `Properties` and `Locations`
- **View to list owners and their properties** — Includes owner name, property title, and city
- **View to abstract total bookings per renter** *(optional enhancement)*
- **Tested each view** with `SELECT * FROM view_name` statements

These views allow modular and simplified access to frequently queried data.

# Tools Used
- **MySQL Workbench**

#  Files Included
| `views.sql` | SQL queries for Task 7 with view definitions and test queries |

| `README.md` | This file — summary of the task and work done |
