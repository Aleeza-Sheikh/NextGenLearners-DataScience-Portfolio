-- ============================================================
-- Week 3 — SQL Queries (Part A) — MySQL Workbench version
-- NextGenLearners Internship — Program Performance Analysis
-- Run nextgen_mysql.sql FIRST to create and populate the database
-- ============================================================

USE nextgen;

-- Sanity check: make sure data loaded (should show 161 / 65 / 55 rows)
SELECT COUNT(*) AS applicant_count FROM applicants;
SELECT COUNT(*) AS intern_count FROM interns;
SELECT COUNT(*) AS score_count FROM hackathon_scores;


-- ============================================================
-- Query 1 — How many interns completed each domain's program?
-- ============================================================
-- Counts completed interns grouped by domain
SELECT domain, COUNT(*) AS completed_count
FROM interns
WHERE completion_status = 'Completed'
GROUP BY domain
ORDER BY completed_count DESC;


-- ============================================================
-- Query 2 — What is the average hackathon score per domain?
-- ============================================================
-- Calculates the average hackathon score for each domain
SELECT domain, ROUND(AVG(score), 2) AS avg_score
FROM hackathon_scores
GROUP BY domain
ORDER BY avg_score DESC;


-- ============================================================
-- Query 3 — Which interns scored above a threshold (top performers)?
-- ============================================================
-- Lists interns who scored 85 or above, as candidates for showcase/certificates
SELECT i.intern_id, i.domain, h.score
FROM interns i
JOIN hackathon_scores h ON i.intern_id = h.intern_id
WHERE h.score >= 85
ORDER BY h.score DESC;


-- ============================================================
-- Query 4 — Conversion rate from "applied" to "completed" per domain
-- ============================================================
-- Compares total applicants vs completed interns per domain to find conversion rate
SELECT
    a.domain,
    COUNT(DISTINCT a.applicant_id) AS total_applicants,
    COUNT(DISTINCT i.intern_id) AS total_completed,
    ROUND(
        100.0 * COUNT(DISTINCT i.intern_id) / COUNT(DISTINCT a.applicant_id), 2
    ) AS conversion_rate_pct
FROM applicants a
LEFT JOIN interns i
    ON a.applicant_id = i.applicant_id AND i.completion_status = 'Completed'
GROUP BY a.domain
ORDER BY conversion_rate_pct DESC;


-- ============================================================
-- Query 5 — Your Choice: dropout vs completed interns, per domain
-- ============================================================
-- Compares dropout vs completion counts per domain to spot at-risk programs
SELECT
    domain,
    completion_status,
    COUNT(*) AS intern_count
FROM interns
GROUP BY domain, completion_status
ORDER BY domain, completion_status;
