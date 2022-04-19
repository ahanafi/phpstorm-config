select
       `science_fields`.*,
       `lecturer_competencies`.`science_field_id` as `pivot_science_field_id`,
       `lecturer_competencies`.`nidn` as `pivot_nidn`
from `science_fields`
    inner join `lecturer_competencies` on `science_fields`.`id` = `lecturer_competencies`.`nidn` where `lecturer_competencies`.`science_field_id` in (71343)