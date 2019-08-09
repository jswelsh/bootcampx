SELECT day, COUNT(day) as total_assign, SUM(duration) as total_duration
FROM assignments
GROUP BY day
ORDER BY day ASC;