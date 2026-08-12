# NextGenLearners Data Science Internship — Portfolio

**Author:** Aleeza Sheikh
**Program:** NextGenLearners — Data Science Track

This repository documents a 4-week data science internship, taking a single messy applicant dataset from raw, uncleaned data all the way through exploratory analysis, SQL/dashboarding, and a machine learning capstone. Each week builds directly on the last — Week 1's cleaned dataset is the foundation used in every week that follows.

| Week | Project | Focus |
|---|---|---|
| [Week 1](./week1-data-cleaning) | Applicant Data Cleaning | Cleaning a messy applicant dataset — missing values, duplicates, inconsistent formatting — into an analysis-ready CSV |
| [Week 2](./week2-eda) | Applicant Insights — Exploratory Data Analysis | Uncovering trends in domain popularity, acceptance rates, and application timing |
| [Week 3](./week3-sql-dashboard) | SQL + Program Performance Dashboard | Writing SQL queries across related tables and building an interactive performance dashboard |
| [Week 4](./week4-capstone) | Capstone: Predicting Internship Selection Outcomes | Training and honestly evaluating a Decision Tree model to predict selection outcomes |

---

## Week 1 — Applicants Data Cleaning

Cleaned a raw applicants dataset (88 rows → 72 rows) collected from a job/internship application form, fixing missing values, duplicate rows, inconsistent text formatting, and incorrect data types using pandas.

**Key work:** dropped rows missing critical identifiers, removed 3 duplicate rows, standardized `Domain Applied`/`Status`/`University` text casing, mapped inconsistent domain spellings into 5 clean categories, converted `Application Date` to proper datetime, and cleaned phone number formatting.

**Result:** a fully documented, reproducible cleaning workflow with 0 missing values in key fields and 0 duplicates in the final dataset.

📁 [`week1-data-cleaning/`](./week1-data-cleaning) — notebook, PDF export, cleaned CSV

---

## Week 2 — Applicant Insights (Exploratory Data Analysis)

Explored the Week 1 cleaned dataset to uncover trends in domain popularity, application timing, acceptance rates, and university representation — turning raw applicant records into actionable insights for the admissions/outreach team.

**Key insights:**
- UI/UX Design was the most popular domain (22 applications); Mobile App had the fewest (10)
- Only 22.2% of applicants were selected — a competitive pipeline
- Data Science had the highest rejection rate (56.2%); AI/ML had the highest selection rate (41.7%)
- A large share of the `University` field was blank, pointing to a data collection gap worth fixing at the source

📁 [`week2-eda/`](./week2-eda) — notebook with visualizations (pandas, matplotlib, seaborn)

---

## Week 3 — SQL + Program Performance Dashboard

Practiced SQL queries across three related tables (`applicants`, `interns`, `hackathon_scores`) and built an interactive HTML dashboard summarizing program performance.

**Key work:** 5 SQL queries covering completions per domain, average hackathon scores, top performers (JOIN), applied→completed conversion rate (LEFT JOIN), and dropout vs. completion rates — each written in both MySQL and Python/sqlite3. The dashboard visualizes the applicant → intern → completed funnel with a live domain filter.

📁 [`week3-sql-dashboard/`](./week3-sql-dashboard) — SQL scripts, notebook, dashboard.html, raw CSVs

---

## Week 4 — Capstone: Predicting Internship Selection Outcomes

Combined everything from Weeks 1–3 with a first machine learning model — extending the applicant dataset with 4 simulated behavioral features, then training and *honestly* evaluating a Decision Tree Classifier to predict selection outcomes.

**Key results:**
- Accuracy: 66.67% | Precision: 33.33% | Recall: 50.00%
- Top predictive factors: applying to Web Development and having a portfolio/GitHub link
- Explicit limitations section covering the small/partly-simulated dataset, tiny test set, and possible bias — framed throughout as a decision-support tool, not a replacement for human review
- Includes a non-technical Executive Summary for program managers

📁 [`week4-capstone/`](./week4-capstone) — notebook, README, cleaned + feature-extended dataset

---

## Tools & Libraries Used Across the Internship

Python 3 · pandas · numpy · matplotlib · seaborn · scikit-learn · SQL (MySQL, sqlite3) · Jupyter Notebook · HTML/JS (dashboard)

## Key Takeaway

This repository demonstrates a full, real-world data science workflow end to end: cleaning messy raw data, exploring it for insight, querying and visualizing it at scale, and finally building and honestly evaluating a predictive model — with documented assumptions and justification at every step along the way.
