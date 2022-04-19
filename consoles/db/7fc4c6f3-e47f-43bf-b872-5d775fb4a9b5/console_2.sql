select *
from `permit_letters`
where `type` = 'LEAVE'
  and `employee_id` = '2cf17b5d-3d15-4ba0-9918-867154d4097d'
  and `status` = 'SUBMITTED'
  and year(`start_date`) = '2021'
limit 1