WITH top_pyaing_jobs AS(
    SELECT job_id,
        job_title,
        job_location,
        salary_year_avg,
        name AS company_name
    FROM job_postings_fact
        LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Data Analyst'
        AND job_country = 'India'
        AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT top_pyaing_jobs.*,
    skills
from top_pyaing_jobs
    INNER JOIN skills_job_dim ON top_pyaing_jobs.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC;
/*
 Insights:
 
 SQL and Power BI are the most in-demand skills, each appearing in 5 listings.
 
 Python, Cloud Platforms (AWS, Azure), and Excel are also frequently sought.
 
 Big Data tools like Spark, Hadoop, and Databricks also appear, indicating a preference for data engineering capabilities.
 
 Emerging and niche skills like Neo4j (graph databases) and GDPR (data compliance) are less common but present.
 */