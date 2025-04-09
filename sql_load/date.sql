SELECT job_title_short As title,
    job_location AS location,
    job_posted_date AS date1,
    job_posted_date::DATE AS dat
FROM job_postings_fact
LIMIT 10;
SELECT job_title_short As title,
    job_location AS location,
    job_posted_date AS date1,
    job_posted_date AT TIme ZONE 'UTC' AT TIME ZONE 'EST' AS dat
FROM job_postings_fact
LIMIT 10;
SELECT job_title_short As title,
    job_location AS location,
    job_posted_date AS date1,
    EXTRACT(
        MONTH
        from job_posted_date
    ) AS Mon,
    EXTRACT(
        DAY
        from job_posted_date
    ) As da,
    EXTRACT(
        YEAR
        from job_posted_date
    ) As yr
FROM job_postings_fact
LIMIT 10;
SELECT count(job_id) AS id,
    EXTRACT(
        MONTH
        from job_posted_date
    ) AS Mon
from job_postings_fact
WHERE job_title = 'Data Analyst'
GROUP BY Mon
ORDER BY id DESC;
CREATE TABLE Jan_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 1
);
CREATE TABLE Feb_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 2
);
CREATE TABLE Mar_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 3
);
CREATE TABLE Apr_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 4
);
CREATE TABLE May_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 5
);
CREATE TABLE Jun_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 6
);
CREATE TABLE Jul_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 7
);
CREATE TABLE Aug_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 8
);
CREATE TABLE Sep_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 9
);
CREATE TABLE Oct_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 10
);
CREATE TABLE Nov_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 11
);
CREATE TABLE Dec_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(
            MONTH
            FROM job_posted_date
        ) = 12
);