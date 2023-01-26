ALTER TABLE merged_training_data
ADD COLUMN "Month" integer NULL;

UPDATE merged_training_data 
SET "Month" = EXTRACT(MONTH FROM merged_training_data."date");

ALTER TABLE merged_training_data
DROP COLUMN "date";