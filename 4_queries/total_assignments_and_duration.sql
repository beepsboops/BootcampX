-- MY ANSWER (WORKS, ALMOST IDENTICAL)
SELECT day, COUNT(day) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

-- COMPASS ANSWER
-- SELECT day, count(*) as number_of_assignments, sum(duration) as duration
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;