select * from `submission_of_assessments` where (`assessment_type` = 'TRIAL' and `first_examiner` = '425036903' or `second_examiner` = '425036903') and `status_first_supervisor` = 'APPROVE' and `status_second_supervisor` = 'APPROVE';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM assessment_schedules where submission_assessment_id = '8e5886b3-8b7d-425c-84c1-9ecafb7562d7';
;-- -. . -..- - / . -. - .-. -.--
UPDATE users SET level = 'STUDENT' where username LIKE '%2017%';
;-- -. . -..- - / . -. - .-. -.--
UPDATE users SET level = 'ACADEMIC_STAFF' where username LIKE '%hanafi%';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT study_program_name FROM data_sets;
;-- -. . -..- - / . -. - .-. -.--
select * from `data_sets` where `study_program_name` = 'Teknik Informatika' and (`first_trial_examiner` LIKE '%Reza Ilyasa%' and `second_trial_examiner` LIKE '%Reza Ilyasa%') limit 1;
;-- -. . -..- - / . -. - .-. -.--
select * from `data_sets` where `study_program_name` = 'Teknik Informatika' and (`first_trial_examiner` LIKE '%Reza%' OR `second_trial_examiner` LIKE '%Reza%') limit 1;
;-- -. . -..- - / . -. - .-. -.--
select * from `data_sets` where `study_program_name` = 'Teknik Informatika' and (`first_trial_examiner` LIKE '%Reza%' OR `second_trial_examiner` LIKE '%Reza%');
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM lecturers WHERE study_program_code NOT IN (
    SELECT study_program_code FROM study_programs
);
;-- -. . -..- - / . -. - .-. -.--
UPDATE lecturers SET quota = 8 WHERE quota > 8;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM users WHERE level IN ('LECTURER', 'STUDY_PROGRAM_LEADER');
;-- -. . -..- - / . -. - .-. -.--
select * from users where level = 'LECTURER' or level = 'STUDY_PROGRAM_LEADER' AND username NOT IN (
    select nidn FROM lecturers
);
;-- -. . -..- - / . -. - .-. -.--
level = 'LECTURER' or level = 'STUDY_PROGRAM_LEADER';
;-- -. . -..- - / . -. - .-. -.--
select * from users where username NOT IN (
    select nidn FROM lecturers
) AND (level = 'LECTURER' or level = 'STUDY_PROGRAM_LEADER');
;-- -. . -..- - / . -. - .-. -.--
select * from users where level = 'LECTURER' AND username NOT IN (
    select nidn FROM lecturers
);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM submission_details_thesis_requirements
WHERE submission_id = (
    select id FROM submission_of_thesis_requirements where nim = '2017102026'
    );
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `lecturer_competency` (`lecturer_id`, `science_field_id`) VALUES
('0942baab-2b33-461d-92de-ce5c4066cd69', '001a3aa6-458d-48af-9fbc-0181c8edb2c7'),
('12aa305f-4842-4f61-b26c-d9ef7e604576', '001a3aa6-458d-48af-9fbc-0181c8edb2c7'),
('8c1b93b3-4887-404a-8854-6b64bc21587e', '001a3aa6-458d-48af-9fbc-0181c8edb2c7'),
('af9504dc-174c-4190-ae6d-9b01fb0222b6', '001a3aa6-458d-48af-9fbc-0181c8edb2c7'),
('69595a97-e15e-470c-889d-0bc4f650a64a', '07f346d6-2e25-41d6-9c4e-480323cc7e81'),
('84f48193-e107-4250-8b04-3321fa620e13', '07f346d6-2e25-41d6-9c4e-480323cc7e81'),
('dab70d90-adc6-4871-9408-3214f2146c04', '07f346d6-2e25-41d6-9c4e-480323cc7e81'),
('f17cbee2-a32a-4ce5-963b-88dd490b9815', '07f346d6-2e25-41d6-9c4e-480323cc7e81'),
('8c1b93b3-4887-404a-8854-6b64bc21587e', '16dbfdaf-3916-4285-910c-a66b5c2d83f7'),
('c00a16de-1b3f-46b7-9b26-b0a50beb3863', '1e68237a-1ede-46e3-9e81-ecf74582ef3c'),
('af9504dc-174c-4190-ae6d-9b01fb0222b6', '240df86e-560d-4b1b-9247-9d6b7dbd554a'),
('f17cbee2-a32a-4ce5-963b-88dd490b9815', '44f33620-2d8c-493c-8423-47189eb6dfd5'),
('8c1b93b3-4887-404a-8854-6b64bc21587e', '4af4b86b-ed21-41d3-94b7-d07e7f2ac6b8'),
('f6f220b5-1aeb-497b-a22b-441fd0b8753a', '4af4b86b-ed21-41d3-94b7-d07e7f2ac6b8'),
('f6f220b5-1aeb-497b-a22b-441fd0b8753a', '5e538eb9-5fe2-4ad0-ae35-996f42d28256'),
('8c1b93b3-4887-404a-8854-6b64bc21587e', '637ea049-33bf-45a5-9884-1060e13b5231'),
('b677ada4-a9c4-4591-b1dc-8ff0de8c646f', '74b084ca-8ed7-4a98-8ccc-28566c0408fa'),
('12aa305f-4842-4f61-b26c-d9ef7e604576', '74cbeb1d-2f65-4b1f-9f1c-d93dd69c611e'),
('b677ada4-a9c4-4591-b1dc-8ff0de8c646f', '8fb2b93d-4d0c-4aa3-bbe6-5d6b371de177'),
('dab70d90-adc6-4871-9408-3214f2146c04', '97c1c183-cb0f-485f-a806-9b12b72089bb'),
('12aa305f-4842-4f61-b26c-d9ef7e604576', 'c58954e2-7406-4e8a-97e5-7481fd08e780'),
('12aa305f-4842-4f61-b26c-d9ef7e604576', 'd4a5023e-f648-4d56-8b20-40a0b7f55e85'),
('12aa305f-4842-4f61-b26c-d9ef7e604576', 'de6136ed-2dee-48ca-a90c-98f635576f7e'),
('8c1b93b3-4887-404a-8854-6b64bc21587e', 'f5ab02b2-ffad-4643-a0ae-0a8a87c3b701');
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM lecturers WHERE study_program_code NOT IN (
    SELECT study_program_code from study_programs
);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `lecturers` (`id`, `nidn`, `full_name`, `degree`, `study_program_code`, `functional`, `gender`, `phone`, `email`, `certification_number`, `quota`, `created_at`, `updated_at`) VALUES
('1bfaae6f-7e89-4245-af86-c9369dbeff83', '026010067', 'YAYANG TONISA', 'S.Ds.', '90241', NULL, 'M', NULL, 'yayang.tonisa@gmail.com', NULL, 8, '2021-08-03 09:57:23', '2021-08-03 09:57:23'),
('24c3ec9b-b41c-434e-86e1-84639d74ad96', '0405049001', 'NIA KANIASARI RUKMANA', 'S.Sn., M.Sn.', '90241', NULL, 'F', NULL, 'nia.kaniasari@gmail.com', NULL, 8, '2021-08-02 23:30:51', '2021-08-02 23:30:51'),
('38a1bbe3-b5ab-4919-935a-8ec436bf3243', '0416119003', 'OKY MAULUDYA SUDRADJAT', 'S.Sn., M.Sn.', '90241', NULL, 'F', NULL, 'oky.mauludya@gmail.com', NULL, 8, '2021-08-02 23:32:39', '2021-08-02 23:32:39'),
('4dde5e49-b65d-4cf2-8c56-e4701d3bccf4', '0402109005', 'ABDUN WIJAYA', 'S.Kom., M.Kom.', '90241', NULL, 'M', NULL, 'Abdun.wijaya@gmail.com', NULL, 8, '2021-08-02 23:27:56', '2021-08-02 23:27:56'),
('5ee91f26-6042-4b30-9cb3-85cb44dd651a', '0427119401', 'A SOBI MUTOHARI', 'S.Ds., M.Ds.', '90241', NULL, 'M', NULL, 'a.sobi.m@gmail.com', NULL, 8, '2021-08-02 23:35:42', '2021-08-02 23:35:42'),
('60979423-dd5b-4f6c-b916-0106cb2dd23b', '0422078804', 'INE RACHMAWATI', 'S.Sn., M.Sn.', '90241', 'EXPERT_ASSISTANT', 'F', NULL, 'ine.rachmawati@mail.com', NULL, 8, '2021-08-02 23:29:42', '2021-08-02 23:29:42'),
('915b8d62-d826-4075-b66e-0e81ce337a0a', '026010015', 'DINO WISATA', 'S.Kom.', '90241', NULL, 'M', NULL, 'dino.wisata@gmail.com', NULL, 8, '2021-08-03 09:53:30', '2021-08-03 09:53:30'),
('af31f445-842d-4f5f-9370-47ee1690c638', '0411029301', 'NINA SOFIYAWATI', 'S.Ds,. M.Ds.', '90241', NULL, 'F', NULL, 'nina.sofiyawati@gmaill.com', NULL, 8, '2021-08-02 23:34:34', '2021-08-02 23:34:34'),
('ea8b3c92-034e-495e-97cf-b23e91b20070', '0430048807', 'ARUM DWI HANANTORO', 'S.Pd., M.Sn', '90241', NULL, 'M', NULL, 'arum.dwi.h@gmail.com', NULL, 8, '2021-08-02 13:46:46', '2021-08-02 13:46:46'),
('f67e71fa-c8a6-457d-985b-79d42c9ef17f', '0402079103', 'DEWI IRIANI', 'S.Ds., M.Ds', '90241', NULL, 'F', NULL, 'dewi.iriani@gmail.com', NULL, 8, '2021-08-02 23:33:34', '2021-08-02 23:33:34');
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM lecturers WHERE nidn NOT IN (
    select registration_number from users
    where level = 'LECTURER'
    );
;-- -. . -..- - / . -. - .-. -.--
UPDATE submission_of_assessments SET first_examiner = NULL, second_examiner = NULL
WHERE id = '084da36c-8cb2-4956-8ad5-18d6c6c8dd45';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM submission_of_assessments WHERE thesis_id NOT IN (
    SELECT id FROM theses
    );
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM submission_of_assessments WHERE nim = '2017102053';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM submission_of_assessments WHERE nim = '2017102053' AND assessment_type = 'SEMINAR';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM submission_of_assessments
JOIN theses t on submission_of_assessments.thesis_id = t.id

WHERE nim = '2017102053' AND assessment_type = 'SEMINAR';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM submission_of_assessments
JOIN theses t on submission_of_assessments.thesis_id = t.id

WHERE submission_of_assessments.nim = '2017102053' AND assessment_type = 'SEMINAR';