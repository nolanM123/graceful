INSERT INTO ailments VALUES (
	17, 
	'Family Planning', 
	'Some medications such as corticosteroids, fertility drugs as well as hormones including chorionic gonadotropin, estrogen and luteinizing hormone may alter the accuracy of pregnancy and ovulation tests. Consult your physician if you are taking these medications. Consult your physican for post conception and maternity care. Consult your physician following failure to conceive after repeated attemps.'
);

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
	(17, 1, '{cid1} and {cid4} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 2, '{cid1} and {cid4} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 3, '{cid1} and {cid4} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 4, '{cid1} and {cid4} and {cid9} and {cid10} and {cid11} and {cid12}'), 
	(17, 5, '{cid2} and {cid6} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 6, '{cid2} and {cid5} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 7, '{cid1} and {cid4} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 8, '{cid1} and {cid4} and {cid9} and {cid10} and {cid11} and {cid12}'), 
	(17, 9, '{cid1} and {cid4} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 10, '{cid1} and {cid4} and {cid9} and {cid10} and {cid11} and {cid12}'), 
	(17, 11, '{cid1} and {cid4} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 12, '{cid3} and {cid5} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 13, '{cid2} and {cid5} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 14, '{cid2} and {cid5} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 15, ''), 
	(17, 16, '{cid1} and {cid4} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 17, '{cid1} and {cid4} and {cid8} and {cid10} and {cid11} and {cid12}');
