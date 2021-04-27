-- MY ATTEMPT (WORKS)
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON assignment_submissions.student_id = students.id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- WHERE cohorts.name = 'FEB12';

-- COMPASS ANSWER
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';