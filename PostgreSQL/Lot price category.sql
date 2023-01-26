ALTER TABLE merged_training_data
ADD COLUMN "Lot price category" INTEGER NULL;

UPDATE merged_training_data 
SET "Lot price category" = CASE 
							   WHEN 0 < lot_price AND lot_price <= 54565.204 THEN 1
							   WHEN 54565.204 < lot_price AND lot_price <= 180552 THEN 2
							   WHEN 180552 < lot_price AND lot_price <= 483057.52 THEN 3
							   WHEN 483057.52 < lot_price AND lot_price <= 1482422.368 THEN 4
							   WHEN 1482422.368 < lot_price AND lot_price <= 214829922014.64 THEN 5
						   END;