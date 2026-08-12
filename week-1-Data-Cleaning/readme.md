🧹 Applicants Data Cleaning Project
Author: Aleeza Sheikh Week: 1 — Data Cleaning Program: NextGen Learners — Data Science Track

📌 Project Overview
This project focuses on cleaning a messy applicants dataset (applicants.csv) collected from a job/internship application form. The raw data contained missing values, duplicate rows, inconsistent text formatting, and incorrect data types. The goal was to transform it into a clean, analysis-ready dataset using pandas.

📂 Files in this Repository
File	Description
week1_Data_Cleaning_Aleeza.ipynb	Jupyter Notebook containing the full data cleaning workflow
week1_Data_Cleaning_Aleeza.pdf	PDF export of the notebook with all outputs
applicants_cleaned.csv	Final cleaned dataset exported after processing
🔍 Dataset Summary
Original shape: 88 rows × 7 columns
Final shape: 72 rows × 7 columns
Columns: Applicant Name, Email, Phone, Domain Applied, University, Application Date, Status
Issues Found in Raw Data
Missing values: Applicant Name (6), Email (7), University (4), Status (3)
3 exact duplicate rows
Application Date stored as text instead of a proper date
Inconsistent casing/spelling in Domain Applied (e.g. "web dev", "WebDev", "WEB DEVELOPMENT")
Inconsistent abbreviations in University (e.g. "MIT" vs "Massachusetts Institute of Technology")
Inconsistent casing in Status.
Phone numbers formatted inconsistently (dashes, spaces, extensions)
🛠️ Cleaning Steps Performed
Import & Inspect — Loaded the CSV and checked shape, data types, missing values, and duplicates using .info(), .isnull().sum(), and .duplicated().sum().
Handle Missing Values
Dropped rows missing Applicant Name or Email (critical identifiers).
Filled missing University values with "Not Specified".
Filled missing Status values with "Under Review".
Remove Duplicates
Removed exact duplicate rows.
Checked for duplicate applications by Email (used as the unique identifier, since it's more reliable than name).
Standardize Text Fields
Stripped whitespace and applied Title Case to Domain Applied, Status, and University.
Mapped inconsistent domain names into 5 standard categories (Web Development, UI/UX Design, Data Science, Cybersecurity, AI/ML, Mobile App) using a dictionary.
Fix Data Types
Converted Application Date to proper datetime64 using pd.to_datetime(..., errors='coerce').
Cleaned Phone numbers by removing dashes/spaces (kept as string to preserve leading zeros and international formats).
Final Quality Check — Verified no missing values in key fields, no duplicate rows, and consistent formatting.
Export — Saved the cleaned dataset as applicants_cleaned.csv.
✅ Final Results
Final dataset: 72 rows, 7 columns
Missing values: 0 across all columns except Application Date (6 rows could not be parsed and were kept as NaT)
Duplicates: 0
Domain categories standardized to: 5 consistent values
Data types corrected for dates and phone numbers
🧰 Tools & Libraries
Python 3
pandas
🚀 How to Run
pip install pandas
jupyter notebook week1_Data_Cleaning_Aleeza.ipynb
📈 Key Takeaway
This project demonstrates a full, real-world data-cleaning workflow — from identifying data quality issues to systematically resolving them, with documented justification for every decision, resulting in a dataset ready for analysis.
