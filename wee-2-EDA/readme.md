# NextGenLearners Applicant Insights — Exploratory Data Analysis

**Author:** Aleeza Sheikh
**Project:** Week 2 Internship Project — Data Science Internship @ NextGenLearners

## Overview
This project explores applicant data for the NextGenLearners program to uncover trends in
domain popularity, application timing, acceptance rates, and university representation.
The goal is to turn raw applicant records into actionable insights for the admissions/outreach team.

## Dataset
`applicants_cleaned.csv` — 72 applicant records with the following fields:
- Applicant Name, Email, Phone
- Domain Applied (e.g., UI/UX Design, Data Science, Web Development, AI/ML, Mobile App)
- University
- Application Date
- Status (Selected / Rejected / Under Review)

## Key Questions Explored
1. Which domain received the most applications?
2. How did applications trend over time?
3. What's the acceptance rate — overall and per domain?
4. Which universities sent the most applicants?
5. Bonus: Which domain gets the most applications on which day of the week?

## Key Insights
- **UI/UX Design** was the most popular domain (22 applications), while **Mobile App** had the fewest (10).
- Only **22.2%** of applicants were selected, 40.3% were rejected, and 37.5% were still Under Review — a competitive pipeline.
- **Data Science** had the highest rejection rate (56.2%), while **AI/ML** had the highest selection rate (41.7%).
- A large share of applicants left the University field blank ("Not Specified"), pointing to a data collection gap.
- All records in this snapshot fell within a single week, so month-over-month trends couldn't be assessed yet — more historical data is needed for that analysis.

## Tools Used
- Python (pandas, matplotlib, seaborn)
- Jupyter Notebook

