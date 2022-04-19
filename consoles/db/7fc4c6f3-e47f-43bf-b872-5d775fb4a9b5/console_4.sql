select sum(`long`) as aggregate
from `permit_letters`
where `leave_type_id` = '98905d22-d9f8-41a4-8b5b-f100d1fd93a9'
  and `employee_id` = '008dc302-5bd2-4894-8518-6b56c4c2013b'
  and year(`start_date`) = '2021'
  and `status` = 'DONE'
and `type` = 'LEAVE'