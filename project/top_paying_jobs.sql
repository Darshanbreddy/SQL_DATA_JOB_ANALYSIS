/*
 -- This SQL script performs the following tasks:
 -- 1. Retrieves all distinct job titles from the job postings dataset.
 -- 2. Extracts distinct job locations for postings specifically in India.
 -- 3. Fetches the top 10 highest-paying Analyst roles in India 
 --    that have salary data available, including job details and 
 --    associated company names.
 */
SELECT DISTINCT job_title_short
from job_postings_fact;
SELECT DISTINCT job_location
from job_postings_fact
WHERE job_country = 'India';
SELECT job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short Like '%Analyst%'
    AND job_country = 'India'
    AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;