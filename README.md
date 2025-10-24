###  Hospital Management System - Using Aggregate Functions and Grouping

### Objective
The goal of this task is to explore how **aggregate functions** and **grouping** are used in SQL to summarize, analyze, and extract insights from structured data in a relational database.

### Project Overview
This project uses a **Hospital Management System** database with the following tables:
- **Doctor** – Stores doctor details such as specialization and consultation fees.
- **Patient** – Contains information about registered patients, including their city and age.
- **Appointment** – Tracks patient appointments, their dates, and associated doctors.

### Key Operations
1. **Data Summarization:**
   - Used `COUNT()` to count patients and appointments.
   - Applied `SUM()` to calculate total consultation fees per doctor.
   - Utilized `AVG()` to find the average bill amount per city.
   - Determined `MAX()` and `MIN()` fees to understand cost variations.

2. **Grouping and Filtering:**
   - Grouped results by doctor specialization, patient city, and appointment dates using `GROUP BY`.
   - Used `HAVING` to filter grouped data (e.g., only doctors earning more than ₹10,000).

3. **Analytical Insights:**
   - Identified the most active doctors by appointment count.
   - Compared total earnings across specializations.
   - Found cities with the highest average treatment costs.
  
### Outcome
This task builds strong foundational skills in SQL analytics — particularly in **summarization, categorization, and filtering** — essential for roles in **data analysis, business intelligence, and database management**.
