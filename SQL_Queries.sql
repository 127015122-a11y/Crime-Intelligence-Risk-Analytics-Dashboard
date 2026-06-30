-- 1. View all crime records
SELECT * FROM crime_data_new;

-- 2. Total number of crimes
SELECT COUNT(*) AS total_crimes FROM crime_data_new;

-- 3. Crime count by category
SELECT crime_category,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY crime_category ORDER BY total_crimes DESC;

-- 4. Crime count by severity
SELECT crime_severity,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY crime_severity ORDER BY total_crimes DESC;

-- 5. Crime count by risk category
SELECT risk_category,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY risk_category ORDER BY total_crimes DESC;

-- 6. Year wise crime trend
SELECT year,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY year ORDER BY year;

-- 7. Month wise crime analysis
SELECT month,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY month ORDER BY total_crimes DESC;

-- 8. City wise crime distribution
SELECT city,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY city ORDER BY total_crimes DESC;

-- 9. Top crime locations
SELECT city,COUNT(*) AS crime_count
FROM crime_data_new GROUP BY city ORDER BY crime_count DESC FETCH FIRST 10 ROWS ONLY;

-- 10. Victim gender analysis
SELECT victim_gender,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY victim_gender;

-- 11. Victim age group analysis
SELECT victim_age_group,COUNT(*) AS total_crimes
FROM crime_data_new GROUP BY victim_age_group ORDER BY total_crimes DESC;

-- 12. Case status analysis
SELECT case_status,COUNT(*) AS total_cases
FROM crime_data_new GROUP BY case_status;

-- 13. Average closure time
SELECT AVG(closure_time) AS avg_closure_time FROM crime_data_new;

-- 14. Crime severity view
CREATE VIEW crime_severity_view AS
SELECT crime_severity,COUNT(report_number) AS total_crimes
FROM crime_data_new GROUP BY crime_severity;

-- 15. City crime view
CREATE VIEW city_crime_view AS
SELECT city,COUNT(report_number) AS total_crimes
FROM crime_data_new GROUP BY city;

-- 16. Year crime view
CREATE VIEW crime_year_view AS
SELECT year,COUNT(report_number) AS total_crimes
FROM crime_data_new GROUP BY year ORDER BY year;
