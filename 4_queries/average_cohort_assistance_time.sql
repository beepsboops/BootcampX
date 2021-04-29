-- MY ANSWER (DIDN'T WORK)
-- SELECT cohorts.name as cohort_name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
-- FROM students
-- JOIN assistance_requests ON assistance_requests.student_id = student_id
-- JOIN cohorts ON cohorts.id = students.id
-- GROUP BY cohort_name
-- ORDER BY average_assistance_time

-- COMPASS ANSWER
SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;