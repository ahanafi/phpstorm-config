select * from `permit_letters` where `type` = 'LEAVE' order by `created_at` asc;
;-- -. . -..- - / . -. - .-. -.--
select *
from `permit_letters`
where `type` = 'LEAVE'
  and `employee_id` = '1a5cd541-ed79-4222-b5df-c0b5f6fe75d0'
  and `status` = 'SUBMITTED'
  and year(`start_date`) = '2021'
limit 1;
;-- -. . -..- - / . -. - .-. -.--
select *
from `permit_letters`
where `type` = 'LEAVE'
  and `employee_id` = '1a5cd541-ed79-4222-b5df-c0b5f6fe75d0'
  and `status` = 'SUBMITTED'
  -- and year(`start_date`) = '2021'
limit 1;
;-- -. . -..- - / . -. - .-. -.--
select *
from `permit_letters`
where `type` = 'LEAVE'
  and `employee_id` = '1a5cd541-ed79-4222-b5df-c0b5f6fe75d0'
  -- and `status` = 'SUBMITTED'
  -- and year(`start_date`) = '2021'
limit 1;
;-- -. . -..- - / . -. - .-. -.--
select *
from `permit_letters`
where `type` = 'LEAVE'
  and `employee_id` = '2cf17b5d-3d15-4ba0-9918-867154d4097d'
  and `status` = 'SUBMITTED'
  and year(`start_date`) = '2021'
limit 1;
;-- -. . -..- - / . -. - .-. -.--
select sum(`long`) as aggregate
from `permit_letters`
where `leave_type_id` = '98905d22-d9f8-41a4-8b5b-f100d1fd93a9'
  and `employee_id` = '008dc302-5bd2-4894-8518-6b56c4c2013b'
  and year(`start_date`) = '2021'
  and `status` = 'DONE';
;-- -. . -..- - / . -. - .-. -.--
select sum(`long`) as `long`
from `permit_letters`
where `leave_type_id` = '98905d22-d9f8-41a4-8b5b-f100d1fd93a9'
  and `employee_id` = '008dc302-5bd2-4894-8518-6b56c4c2013b'
  and year(`start_date`) = '2021'
  and `status` = 'DONE';
;-- -. . -..- - / . -. - .-. -.--
select sum(`long`) as aggregate
from `permit_letters`
where `leave_type_id` = '98905d22-d9f8-41a4-8b5b-f100d1fd93a9'
--  and `employee_id` = '008dc302-5bd2-4894-8518-6b56c4c2013b'
  and year(`start_date`) = '2021'
  and `status` = 'DONE';
;-- -. . -..- - / . -. - .-. -.--
select sum(`long`) as aggregate
from `permit_letters`
where `leave_type_id` = '98905d22-d9f8-41a4-8b5b-f100d1fd93a9'
  and `employee_id` = '008dc302-5bd2-4894-8518-6b56c4c2013b'
  and year(`start_date`) = '2021'
  and `status` = 'DONE'
and `type` = 'LEAVE';
;-- -. . -..- - / . -. - .-. -.--
select max(`agenda_number`) as aggregate from `mails` where `type` = 'IN';
;-- -. . -..- - / . -. - .-. -.--
select max(`agenda_number`) as aggregate from `mails`;
;-- -. . -..- - / . -. - .-. -.--
select
       max(`agenda_number`) as aggregate
from `mails` where `type` = 'IN';
;-- -. . -..- - / . -. - .-. -.--
select
       *
from `mails` where `type` = 'IN'
ORDER BY agenda_number;
;-- -. . -..- - / . -. - .-. -.--
select
       *
from `mails` where `type` = 'IN'
ORDER BY agenda_number ASC;