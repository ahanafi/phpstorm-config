DELETE FROM lecturers WHERE study_program_code NOT IN (
    SELECT study_program_code FROM study_programs
);