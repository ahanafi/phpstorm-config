select * from users where level = 'LECTURER' AND username NOT IN (
    select nidn FROM lecturers
)