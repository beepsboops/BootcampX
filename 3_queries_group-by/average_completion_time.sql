-- MY ANSWER (ALSO WORKS)
-- SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
-- FROM assignment_submissions
-- JOIN students ON assignment_submissions.student_id = students.id
-- WHERE students.end_date IS NULL
-- GROUP BY name
-- ORDER BY average_assignment_duration DESC

-- COMPASS ANSWER
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;