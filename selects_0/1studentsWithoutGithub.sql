SELECT  students.id, students.name, students.email, students.cohort_id 
FROM students 
WHERE github IS NULL 
ORDER BY cohort_id;