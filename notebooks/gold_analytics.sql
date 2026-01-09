## Gold 1
CREATE OR REPLACE TABLE gold.department_kpis AS
SELECT
    department,
    job_title,
    COUNT(employee_id)                           AS total_employees,
    AVG(performance_score)                       AS avg_performance_score,
    AVG(monthly_salary)                          AS avg_monthly_salary,
    AVG(years_at_company)                        AS avg_years_at_company,
    AVG(training_hours)                          AS avg_training_hours,
    AVG(employee_satisfaction_score)             AS avg_employee_satisfaction_score
FROM silver.employee_performance
GROUP BY
    department,
    job_title;

## Gold 2
CREATE OR REPLACE TABLE gold.employee_productivity_metrics AS
SELECT
    employee_id,
    department,
    job_title,
    work_hours_per_week,
    projects_handled,
    overtime_hours,
    training_hours,
    sick_days,
    performance_score
FROM silver.employee_performance;

## Gold 3
CREATE OR REPLACE TABLE gold.employee_retention_analysis AS
SELECT
    employee_id,
    department,
    job_title,
    years_at_company,
    resigned,
    employee_satisfaction_score,
    promotions,
    training_hours
FROM silver.employee_performance;

