SELECT * FROM submission_details_thesis_requirements
WHERE submission_id = (
    select id FROM submission_of_thesis_requirements where nim = '2017102026'
    )