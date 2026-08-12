# Week 3 — SQL + Program Performance Dashboard

NextGenLearners Internship — Intermediate Task

## Objective
Practice SQL queries across related tables and build an interactive dashboard that summarizes program performance.

## Files in this repo

| File | Description |
|---|---|
| `nextgen_mysql.sql` | Creates the `nextgen` MySQL database and loads 3 related tables: `applicants`, `interns`, `hackathon_scores` |
| `Week3_SQL_Queries_MySQL.sql` | Part A — all 5 required SQL queries, each with a comment explaining what it answers |
| `Week3_SQL_Queries.ipynb` | Same 5 queries in Jupyter Notebook form (Python + sqlite3/pandas) |
| `dashboard.html` | Part B — interactive dashboard (open directly in any browser, no install needed) |
| `applicants.csv`, `interns.csv`, `hackathon_scores.csv` | Raw data exports |
| Demo recording | Screen recording showing the dashboard's domain filter working |

## Table relationships
- `applicants.applicant_id` → `interns.applicant_id`
- `interns.intern_id` → `hackathon_scores.intern_id`

## The 5 SQL queries
1. How many interns completed each domain's program?
2. What is the average hackathon score per domain?
3. Which interns scored above a threshold (top performers)? — uses `JOIN`
4. Conversion rate from applied → completed, per domain — uses `LEFT JOIN`
5. Dropout vs completed interns, per domain

## Dashboard
`dashboard.html` shows:
- Applicant → Intern → Completed funnel
- Conversion rate per domain (bar chart)
- Average hackathon score per domain (bar chart)
- Top 10 leaderboard
- A working domain filter that updates all of the above live

## How to run
- **SQL:** open `nextgen_mysql.sql` in MySQL Workbench, run it to build the database, then run the queries in `Week3_SQL_Queries_MySQL.sql`.
- **Dashboard:** just open `dashboard.html` in any browser — the data is embedded; no server or database connection required.

## Data note
This dataset is mock/generated data for demo purposes.

