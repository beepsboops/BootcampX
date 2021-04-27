-- MY WRONG ATTEMPT
-- SELECT sum(assignment_submissions.duration),
-- students.name as student_name,
-- students.id as student_ID,
-- assignment_submissions.duration as assignment_duration
-- FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- WHERE students.name = 'Ibrahim Schimmel'

-- CORRECT
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';