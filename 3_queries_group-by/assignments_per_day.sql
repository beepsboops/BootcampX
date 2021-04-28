-- MY ANSWER (ALSO WORKS)
-- SELECT day, count(id) as total_assignments
-- FROM assignments
-- GROUP BY day
-- ORDER BY day ASC;

-- COMPASS ANSWER
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;