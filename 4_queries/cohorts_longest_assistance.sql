-- MY ANSWER (DIDN'T WORK)
SELECT cohorts.name, MAX(SELECT AVG(completed_at - started_at) as average_assistance_time FROM assistance_requests)
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id;

-- COMPASS ANSWER
SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;