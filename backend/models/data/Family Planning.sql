INSERT INTO ailments VALUES (
	17, 
	'Family Planning', 
	'Some medications such as corticosteroids, fertility drugs as well as hormones including chorionic gonadotropin, estrogen and luteinizing hormone may alter the accuracy of pregnancy and ovulation tests. Consult your physician if you are taking these medications. Consult your physican for post conception and maternity care. Consult your physician following failure to conceive after repeated attemps.'
);

INSERT INTO questions VALUES 
	(
		17, 
		1, 
		1, 
		'Would you like to test for pregnancy', 
		'Most pregnancy tests claim 99% accuracy in detection of pregnancy. Accuracy is greatest when tested on day of your expected period and decreases with each day earlier to expected day of period.'
	), 
	(
		17, 
		2, 
		1, 
		'Would you prefer a digital display', 
		'Digital displays are easiest to read with test result displays that eliminate/reduce the need for test interpretation. Digital displays reduce test interpretation errors.'
	), 
	(
		17, 
		3, 
		1, 
		'Would you prefer a "line" display', 
		'Line displays may require test interpretation but provide a control to confirm test was conducted correctly.'
	), 
	(
		17, 
		4, 
		1, 
		'Would you like to test for pregnancy before a missed period', 
		'Some pregnancy tests can remain accurate up to 5-6 days prior expected day of your period. ***Applies only to pregnancy testing***'
	), 
	(
		17, 
		5, 
		1, 
		'Would you like an indication of conception date', 
		'Some digital pregnancy tests can provide an indication of conception date and/or gestational age (i.e. 1-2 weeks, 3 weeks). ***Selecting this choice may limit options - Applies only to pregnancy testing***'
	), 
	(
		17, 
		6, 
		1, 
		'Would you like the fastest result', 
		'Most pregnancy tests provide result within 5 min. Fastest test provide result within 1 min but recommended for testing on the day of expected period. ***Selecting this choice may limit options - Applies only to pregnancy testing***'
	), 
	(
		17, 
		7, 
		1, 
		'Are you taking hCG containing fertility drugs, corticosteroids or hormones', 
		'Fertility medications, hormone therapies and/or corticosteriods may alter your hCG levels or the accuracy of pregnancy tests. Store bought pregnancy tests are not recommended for women taking such medications.'
	), 
	(
		17, 
		8, 
		1, 
		'Would you like a pregnancy test combo', 
		'Some products available as combo digital and line display tests. Such products provide reassurance with test result (confirm result) as well as ease of test interpretation and fast or early pregnancy detection. ***Select only this option if desired***'
	), 
	(
		17, 
		9, 
		2, 
		'Would you like to test for fertility', 
		'Some products allow to determine your most fertile days in order to help with successful conception.'
	), 
	(
		17, 
		10, 
		2, 
		'Would you like to determine 2 most fertile days', 
		'Some ovulation tests assay level of LH and can provide an indication of the two most fertile days. ***Applies only to fertility tests***'
	), 
	(
		17, 
		11, 
		2, 
		'Would you like to determine 4 most fertile days', 
		'Some ovulation tests assay level of LH as well as estrogen and can provide an indication of the four most fertile days. ***Applies only to fertility tests***'
	), 
	(
		17, 
		12, 
		2, 
		'Are you taking hormones or fertility medications', 
		'Fertility medications and/or hormone therapies may alter your LH and estrogen levels or the accuracy of ovulation tests. Ovulation and optimal day of fertility may require other assesment methods for women taking these medications.'
	), 
	(
		17, 
		13, 
		2, 
		'Would you like an ovulation/pregnancy test combo', 
		'Some products allow both assesment of most fertile day as well as pregnancy testing. If desired, select this option only.'
	);

INSERT INTO criteria VALUES 
	(17, 1, 'Pregnancy', '{qid1} and not {qid9}'), 
	(17, 2, 'Ovulation', '{qid9} and not {qid1}'), 
	(17, 3, 'Preg/Ovu', '{qid13} and not ({qid1} or {qid9})'), 
	(17, 4, 'hCG', 'not {qid7}'), 
	(17, 5, 'LH', '{qid10} and not ({qid11} or {qid12})'), 
	(17, 6, 'Estrogen/LH', '{qid11} and not ({qid10} or {qid12})'), 
	(17, 7, 'Digital Indicator', '{qid2} and not ({qid3} or {qid8})'), 
	(17, 8, 'Line Indicator', '{qid3} and not ({qid2} or {qid8})'), 
	(17, 9, 'Dig/Line Combo', '{qid8} and not ({qid2} or {qid3})'), 
	(17, 10, 'Gestation Indicator', 'not {qid5}'), 
	(17, 11, 'Pre missed period', 'not {qid4}'), 
	(17, 12, 'Fastest', 'not {qid6}');

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
	(17, 1, '{cid1} and {cid4} and {cid7} and {cid12}'), 
	(17, 2, '{cid1} and {cid4} and {cid8} and {cid10} and {cid12}'), 
	(17, 3, '{cid1} and {cid4} and {cid8} and {cid11}'), 
	(17, 4, '{cid1} and {cid4} and {cid9} and {cid10}'), 
	(17, 5, '{cid2} and {cid6} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 6, '{cid2} and {cid5} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 7, '{cid1} and {cid4} and {cid8} and {cid10} and {cid12}'), 
	(17, 8, '{cid1} and {cid4} and {cid9} and {cid10}'), 
	(17, 9, '{cid1} and {cid4} and {cid8} and {cid10} and {cid11}'), 
	(17, 10, '{cid1} and {cid4} and {cid9} and {cid10} and {cid12}'), 
	(17, 11, '{cid1} and {cid4} and {cid7} and {cid10} and {cid12}'), 
	(17, 12, '{cid3} and {cid5} and {cid8} and {cid10} and {cid12}'), 
	(17, 13, '{cid2} and {cid5} and {cid7} and {cid10} and {cid11} and {cid12}'), 
	(17, 14, '{cid2} and {cid5} and {cid8} and {cid10} and {cid11} and {cid12}'), 
	(17, 15, '{cid1} and {cid4} and {cid8} and {cid10} and {cid12}'), 
	(17, 16, '{cid1} and {cid4} and {cid8} and {cid10} and {cid12}');
