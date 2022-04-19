SELECT SUM(`long`) AS `long`
FROM `leave`
WHERE `leave_type_id` = '1'
AND `employee_code` = 'EMP-0001'
AND `status` = '1'
AND YEAR(created_at) = '2022'