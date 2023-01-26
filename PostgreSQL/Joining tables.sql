SELECT md.*
INTO merged_training_data
FROM merged_data md
INNER JOIN training_data td ON md.lot = td.lot;