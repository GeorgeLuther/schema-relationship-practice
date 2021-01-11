-- 1
SELECT count(*) FROM department d JOIN employee e ON e.department = d.id WHERE d.dept_name = 'Sales';
-- 2
SELECT e.emp_name as EMPLOYEE_NAME
FROM employee_project ep 
JOIN employee e
ON e.id = ep.emp_id
JOIN project p
ON p.id = ep.project_id 
WHERE p.project_name = 'Plan Christmas party';

-- 3
SELECT e.emp_name
FROM department d
JOIN employee e
ON e.department = d.id

JOIN employee_project ep
ON e.id = ep.emp_id

JOIN project p
ON p.id = ep.project_id

WHERE p.project_name = 'Watch paint dry'
AND e.department = d.id;