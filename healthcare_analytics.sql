USE healthcare_db;
SHOW TABLES;
DESCRIBE admissions;
DESCRIBE patients;
DESCRIBE hospitals;

SELECT
    h.hospital_name,
    ROUND(SUM(a.billing_amount),2) AS total_revenue,
    RANK() OVER(
        ORDER BY SUM(a.billing_amount) DESC
    ) AS revenue_rank
FROM admissions a
JOIN hospitals h
    ON a.hospital_id = h.hospital_id
GROUP BY h.hospital_name;

SELECT
    medical_condition,
    ROUND(
        AVG(
            DATEDIFF(
                discharge_date,
                admission_date
            )
        ),
        2
    ) AS avg_stay_days
FROM admissions
GROUP BY medical_condition
ORDER BY avg_stay_days DESC;


SELECT
    h.hospital_name,
    ROUND(SUM(a.billing_amount),2) AS total_revenue,
    RANK() OVER(
        ORDER BY SUM(a.billing_amount) DESC
    ) AS revenue_rank
FROM admissions a
JOIN hospitals h
    ON a.hospital_id = h.hospital_id
GROUP BY h.hospital_name;

WITH patient_visits AS (
    SELECT
        patient_id,
        admission_date,
        discharge_date,
        LAG(discharge_date)
        OVER(
            PARTITION BY patient_id
            ORDER BY admission_date
        ) AS previous_discharge
    FROM admissions
)

SELECT
    patient_id,
    admission_date,
    previous_discharge,
    DATEDIFF(
        admission_date,
        previous_discharge
    ) AS days_between
FROM patient_visits
WHERE previous_discharge IS NOT NULL
AND DATEDIFF(
        admission_date,
        previous_discharge
    ) <= 30;
    
    SELECT *
FROM admissions
WHERE discharge_date < admission_date;

SELECT
    h.hospital_name,
    ROUND(
        SUM(a.billing_amount),
        2
    ) AS total_revenue
FROM admissions a
JOIN hospitals h
    ON a.hospital_id = h.hospital_id
WHERE a.billing_amount >= 0
GROUP BY h.hospital_name
ORDER BY total_revenue DESC;

SELECT
    COUNT(*) AS missing_conditions
FROM admissions
WHERE medical_condition IS NULL;

SELECT
    patient_id,
    admission_date,
    COUNT(*) AS duplicate_count
FROM admissions
GROUP BY
    patient_id,
    admission_date
HAVING COUNT(*) > 1;

SELECT
    patient_id,
    admission_date,
    COUNT(*) AS duplicate_count
FROM admissions
GROUP BY
    patient_id,
    admission_date
HAVING COUNT(*) > 1;

SELECT
    h.hospital_name,
    ROUND(
        SUM(a.billing_amount),
        2
    ) AS total_revenue,
    RANK() OVER(
        ORDER BY SUM(a.billing_amount) DESC
    ) AS revenue_rank
FROM admissions a
JOIN hospitals h
    ON a.hospital_id = h.hospital_id
WHERE a.billing_amount >= 0
GROUP BY h.hospital_name;

SELECT
    h.hospital_name,
    ROUND(SUM(a.billing_amount),2) AS total_revenue,
    DENSE_RANK() OVER(
        ORDER BY SUM(a.billing_amount) DESC
    ) AS revenue_rank
FROM admissions a
JOIN hospitals h
    ON a.hospital_id = h.hospital_id
WHERE a.billing_amount >= 0
GROUP BY h.hospital_name
ORDER BY total_revenue DESC;

WITH patient_visits AS (
    SELECT
        patient_id,
        admission_date,
        discharge_date,
        LAG(discharge_date)
            OVER(
                PARTITION BY patient_id
                ORDER BY admission_date
            ) AS previous_discharge
    FROM admissions
)

SELECT
    patient_id,
    admission_date,
    previous_discharge,
    DATEDIFF(
        admission_date,
        previous_discharge
    ) AS days_between
FROM patient_visits
WHERE previous_discharge IS NOT NULL
AND DATEDIFF(
        admission_date,
        previous_discharge
    ) <= 30
ORDER BY days_between;