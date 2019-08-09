SELECT teachers.name, COUNT(assistance_requests.*) as total_requests
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;
