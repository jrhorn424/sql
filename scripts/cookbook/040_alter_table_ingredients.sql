-- add columns for macro nutrients (in grams)

ALTER TABLE ingredients
ADD COLUMN carbohydrates INTEGER,
ADD COLUMN fats INTEGER,
ADD COLUMN protein INTEGER
;
