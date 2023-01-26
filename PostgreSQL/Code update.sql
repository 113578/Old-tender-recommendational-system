ALTER TABLE public.merged_training_data 
ALTER COLUMN winner TYPE float4 USING winner::float4;

UPDATE merged_training_data
SET okpd2_code = NULL
WHERE okpd2_code = '';

UPDATE merged_training_data 
SET okpd2_code = concat(okpd2_code, additional_code)
WHERE okpd2_code IS NULL;

ALTER TABLE merged_training_data
DROP COLUMN additional_code;