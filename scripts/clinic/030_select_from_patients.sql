-- retrieve information about patients

-- How do patients identify their gender as a whole?
-- SELECT gender, COUNT(*)
-- FROM patients
-- GROUP BY gender
-- ;

-- How many patients identify as female?
-- SELECT gender, COUNT(*)
-- FROM patients
-- WHERE gender = 'f'
-- GROUP BY gender
-- ;

-- How many senior patients identify as female?
-- SELECT gender, COUNT(*)
-- FROM patients
-- WHERE gender = 'f'
-- AND date_part('year', age(born_on)) >= 65  -- use born_on to calculate age
-- GROUP BY gender
-- ;

-- How many patients are in each age category in our data set?
SELECT COUNT(*),
  CASE
    WHEN date_part('year', age(born_on)) < 16
      THEN 'child'
    WHEN date_part('year', age(born_on)) > 64
      THEN 'senior'
    ELSE
      'adult'
  END AS age_category
FROM patients
GROUP BY age_category
;
