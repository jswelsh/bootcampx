SELECT AVG(total_assistance_request)
FROM (
  SELECT SUM(completed_at - started_at) AS total_assistance_request
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_assistance_request
) 
AS average_total_duration_for_all_cohorts;