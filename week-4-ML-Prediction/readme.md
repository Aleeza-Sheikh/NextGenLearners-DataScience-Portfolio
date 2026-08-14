# Predicting Internship Selection Outcomes — Week 4 Capstone

A simple, interpretable machine learning model that explores which applicant factors are associated with being selected for the NextGenLearners internship program.

## Objective

To combine data cleaning, feature engineering, and a first introduction to machine learning — building a model that predicts whether an applicant is likely to be `Selected` or `Not Selected`, and explaining that model's findings clearly to a non-technical audience.

## Dataset

The dataset (`applicants_with_features.csv`) contains 72 applicants with the following columns:

- **Original applicant data:** Applicant Name, Email, Phone, Domain Applied, University, Application Date, Status
- **Simulated features (added for this capstone):** `num_skills_listed`, `has_portfolio`, `prior_hackathon_participation`, `statement_quality_score`

**Honest note on simulated data:** these four features were artificially generated with `np.random.seed(42)` for reproducibility — they are **not** real historical applicant behavior. In a real NextGenLearners deployment, this data would need to be actually collected from applications (e.g., a required skills field, a portfolio URL field) before a model like this could be trusted with real decisions.

Applicants still marked `Under Review` (27 of the 72) were excluded from model training, since they don't yet have a confirmed outcome to learn from. That left 45 applicants (`Selected` or `Rejected`) for training and testing.

## Method

1. **Cleaning:** Loaded the pre-cleaned applicant dataset.
2. **Feature preparation:** Converted `Yes`/`No` columns to `1`/`0`, created a binary `target` column from `Status`, and one-hot encoded `Domain Applied` (dropping one category to avoid redundant information).
3. **Train/test split:** Split the 45 usable applicants 80/20 (36 training rows, 9 test rows), using a fixed random seed for reproducibility.
4. **Model:** Trained a **Decision Tree Classifier** (max depth of 4, to keep the tree simple and avoid it just memorizing the small training set).
5. **Evaluation:** Measured accuracy, precision, and recall on the held-out test set, and reviewed a confusion matrix.
6. **Interpretation:** Reviewed which features the tree relied on most when making its decisions.

## Key Results

- **Accuracy:** 67% — the model correctly predicted the outcome for 6 of the 9 test applicants.
- **Precision:** 33% — of the applicants the model predicted would be Selected, about a third actually were. This means the model currently makes a fair number of "false promises."
- **Recall:** 50% — of the applicants who were actually Selected, the model correctly caught half.
- **Most influential factors:** whether the applicant applied to Web Development, whether they had a portfolio/GitHub link, and prior hackathon participation were the strongest signals the model used. The raw number of skills listed and the statement quality score played a smaller role in this dataset.

**Important caveat:** the test set here is very small (only 9 applicants), so these numbers should be read as illustrative of the *method*, not as a reliable, production-ready measure of accuracy. With such a small sample, one or two different predictions would shift the percentages substantially. This model should be treated as a **decision-support tool**, never a replacement for human review — and there's a genuine risk it could reflect biases already present in past selection decisions (for example, if certain domains or universities were historically favored for reasons unrelated to merit).

## How to Run

1. Open `Week4_Capstone_YourName.ipynb` in Jupyter Notebook or Google Colab.
2. Make sure `applicants_with_features.csv` is in the same folder (or update the file path in the first code cell).
3. Run all cells top to bottom (`Runtime → Run all` in Colab, or `Kernel → Restart & Run All` in Jupyter).

## Walkthrough Video

[Link to your 2–3 minute recorded walkthrough here]
