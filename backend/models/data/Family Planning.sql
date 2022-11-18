INSERT INTO ailments VALUES (17, 'Family Planning', '');

INSERT INTO questions VALUES 
	(17, 1, 1, 'Would you like to test for pregnancy', ''), 
	(17, 2, 1, 'Would you prefer a digital display', ''), 
	(17, 3, 1, 'Would you prefer a "line" display', ''), 
	(17, 4, 1, 'Would you like to test for pregnancy before a missed period', ''), 
	(17, 5, 1, 'Would you like an indication of conception date', ''), 
	(17, 6, 1, 'Would you like the fastest result', ''), 
	(17, 7, 1, 'Are you taking hCG containing fertility drugs, corticosteroids or hormones', ''), 
	(17, 8, 1, 'Would you like a pregnancy test combo', ''), 
	(17, 9, 2, 'Would you like to test for fertility', ''), 
	(17, 10, 2, 'Would you like to determine 2 most fertile days', ''), 
	(17, 11, 2, 'Would you like to determine 4 most fertile days', ''), 
	(17, 12, 2, 'Are you taking hormones or fertility medications', ''), 
	(17, 13, 2, 'Would you like an ovulation/pregnancy test combo', '');

INSERT INTO criteria VALUES 
	(17, 1, 'Pregnancy', ''), 
	(17, 2, 'Ovulation', ''), 
	(17, 3, 'Preg/Ovu', ''), 
	(17, 4, 'hCG', ''), 
	(17, 5, 'LH', ''), 
	(17, 6, 'Estrogen/LH', ''), 
	(17, 7, 'Digital Indicator', ''), 
	(17, 8, 'Line Indicator', ''), 
	(17, 9, 'Dig/Line Combo', ''), 
	(17, 10, 'Gestation Indicator', ''), 
	(17, 11, 'Pre missed period', ''), 
	(17, 12, 'Fastest', '');

INSERT INTO products VALUES 
	(17, 1, 'Clearblue Pregnancy Test With Weeks Indicator', '', '', ''), 
	(17, 2, 'Clearblue Ultra Early Pregnancy Test', '', '', ''), 
	(17, 3, 'Clearblue Rapid Detection Pregnancy Test', '', '', ''), 
	(17, 4, 'Clearblue Pregancy Test Combo Pack', '', '', ''), 
	(17, 5, 'Clearblue Advanced Digital Ovulation Test', '', '', ''), 
	(17, 6, 'Clearblue Digital Ovulation Test', '', '', ''), 
	(17, 7, 'First Response™ Early Result Pregnancy Test', '', '', ''), 
	(17, 8, 'First Response™ Triple Check Pregnancy Test Kit', '', '', ''), 
	(17, 9, 'First Response™ Rapid Result Pregnancy Test', '', '', ''), 
	(17, 10, 'First Response™ Test And Confirm Pregnancy Test', '', '', ''), 
	(17, 11, 'First Response™ Digital Pregnancy Test', '', '', ''), 
	(17, 12, 'First Response™ Ovulation Plus Pregnancy Test', '', '', ''), 
	(17, 13, 'First Response™ Advanced Digital Ovulation Test', '', '', ''), 
	(17, 14, 'First Response™ Easy Read Ovulation Test', '', '', ''), 
	(17, 15, 'First Response', '', '', ''), 
	(17, 16, 'Pregmate Pregnancy Test Strips', '', '', ''), 
	(17, 17, 'Pregmate Pregnancy Midstream Tests', '', '', '');

INSERT INTO productCriteria VALUES 
	(17, 1, 'all([{cid1}, {cid4}, {cid7}, {cid10}, {cid11}, {cid12}])'), 
	(17, 2, 'all([{cid1}, {cid4}, {cid8}, {cid10}, {cid11}, {cid12}])'), 
	(17, 3, 'all([{cid1}, {cid4}, {cid8}, {cid10}, {cid11}, {cid12}])'), 
	(17, 4, 'all([{cid1}, {cid4}, {cid9}, {cid10}, {cid11}, {cid12}])'), 
	(17, 5, 'all([{cid2}, {cid6}, {cid7}, {cid10}, {cid11}, {cid12}])'), 
	(17, 6, 'all([{cid2}, {cid5}, {cid7}, {cid10}, {cid11}, {cid12}])'), 
	(17, 7, 'all([{cid1}, {cid4}, {cid8}, {cid10}, {cid11}, {cid12}])'), 
	(17, 8, 'all([{cid1}, {cid4}, {cid9}, {cid10}, {cid11}, {cid12}])'), 
	(17, 9, 'all([{cid1}, {cid4}, {cid8}, {cid10}, {cid11}, {cid12}])'), 
	(17, 10, 'all([{cid1}, {cid4}, {cid9}, {cid10}, {cid11}, {cid12}])'), 
	(17, 11, 'all([{cid1}, {cid4}, {cid7}, {cid10}, {cid11}, {cid12}])'), 
	(17, 12, 'all([{cid3}, {cid5}, {cid8}, {cid10}, {cid11}, {cid12}])'), 
	(17, 13, 'all([{cid2}, {cid5}, {cid7}, {cid10}, {cid11}, {cid12}])'), 
	(17, 14, 'all([{cid2}, {cid5}, {cid8}, {cid10}, {cid11}, {cid12}])'), 
	(17, 15, 'all([])'), 
	(17, 16, 'all([{cid1}, {cid4}, {cid8}, {cid10}, {cid11}, {cid12}])'), 
	(17, 17, 'all([{cid1}, {cid4}, {cid8}, {cid10}, {cid11}, {cid12}])');
