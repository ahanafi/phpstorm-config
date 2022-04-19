SELECT * FROM submission_of_assessments
JOIN theses t on submission_of_assessments.thesis_id = t.id

WHERE submission_of_assessments.nim = '2017102053' AND assessment_type = 'SEMINAR'