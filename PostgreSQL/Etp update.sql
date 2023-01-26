UPDATE merged_training_data
SET etp = CASE 
		      WHEN etp = 'astgoz.ru' THEN 1
		      WHEN etp = 'gpb.ru' THEN 2
		      WHEN etp = 'lot-online.ru' THEN 3
		      WHEN etp = 'torgi223.ru' THEN 4
		      WHEN etp = 'rosseti.ru' THEN 5
		      WHEN etp = 'estp.ru' THEN 6
		      WHEN etp = '44fz_contract_single_supplier' THEN 7
		      WHEN etp = 'b2b-center.ru' THEN 8
		      WHEN etp = 'etprf.ru' THEN 9
		      WHEN etp = 'rzd.ru' THEN 10
		      WHEN etp = 'other_etp' THEN 11
		      WHEN etp = 'otc.ru' THEN 12
		      WHEN etp = 'etpzakaz.ru' THEN 13
		      WHEN etp = 'rts-tender.ru' THEN 14
		      WHEN etp = 'gazprom.ru' THEN 15
		      WHEN etp = 'zakazrf.ru' THEN 16
		      WHEN etp = 'gazneftetorg.ru' THEN 17
		      WHEN etp = 'sberbank-ast.ru' THEN 18
		      WHEN etp = 'fabrikant.ru' THEN 19
		      WHEN etp = 'roseltorg.ru' THEN 20
		      WHEN etp = 'tektorg.ru' THEN 21
		      WHEN etp = 'NA' THEN NULL
		 END;
		
ALTER TABLE public.merged_training_data ALTER COLUMN etp TYPE integer USING etp::integer;