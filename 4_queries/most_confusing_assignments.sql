-- MY ANSWER (WORKS)
SELECT assignment_id as id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignment_id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;

-- COMPASS ANSWER
-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;