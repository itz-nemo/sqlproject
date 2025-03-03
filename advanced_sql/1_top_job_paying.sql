SELECT *
FROM job_postings_fact
WHERE job_title_short = 'Business Analyst' AND salary_year_avg IS NOT NULL AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;

