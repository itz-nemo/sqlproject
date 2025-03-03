SELECT jpf.job_id,
    cd.name AS company_name,
    jpf.job_title,
    jpf.job_title_short,
    jpf.job_location,
    jpf.salary_year_avg
FROM job_postings_fact AS jpf
LEFT JOIN company_dim AS cd ON jpf.company_id = cd.company_id
WHERE job_title_short = 'Business Analyst' AND salary_year_avg IS NOT NULL AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;

