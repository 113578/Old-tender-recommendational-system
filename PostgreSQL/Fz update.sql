UPDATE merged_training_data
SET fz = CASE fz
		 	WHEN '44fz' THEN 1
		 	WHEN 'atom' THEN 2
		 	WHEN '223fz' THEN 3
		 	WHEN 'com' THEN 4
		 END;

ALTER TABLE public.merged_training_data ALTER COLUMN fz TYPE integer USING fz::integer;