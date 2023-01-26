SELECT participant AS "Participant",
	   count(*) AS "Times participated",
	   mode() WITHIN GROUP (ORDER BY fz) AS "Fz", 
	   mode() WITHIN GROUP (ORDER BY region_code) AS "Region code",
	   mode() WITHIN GROUP (ORDER BY etp) AS "Etp",
	   mode() WITHIN GROUP (ORDER BY "Month") AS "Month",
	   max(forsmallbiz) AS "Participated in small business",
	   mode() WITHIN GROUP (ORDER BY "Lot price category") AS "Lot price category",
	   mode() WITHIN GROUP (ORDER BY okpd2_code) AS "Code",
	   round((sum(winner) / count(winner)) * 100) AS "Winning percentage"
INTO aggregated_training_data
FROM merged_training_data mtd
GROUP BY participant
ORDER BY count(*) DESC;