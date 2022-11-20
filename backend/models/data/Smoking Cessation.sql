INSERT INTO ailments VALUES (
	18, 
	'Smoking Cessation', 
	'Consult your heath care provider if you wish to stop smoking and are less than 18 years old, pregnant, nursing, have high blood pressure, heart disease, insulin-dependent diabetes, chronic upset stomach or peptic ulcers. Avoid use of nicotine replacement products if you are allergic or sensitive to any of the ingredients. Consult your physician if you require prescription therapy options. Combination of patch with an as needed product (mist, lozenge, gum) may work best for some heavier smokers.'
);

INSERT INTO questions VALUES 
	(18, 1, 1, 'Are you a regular light smoker', ''), 
	(18, 2, 1, 'Are you a regular heavy smoker', ''), 
	(18, 3, 1, 'Do you have heart disease', ''), 
	(18, 4, 1, 'Are you pregnant or nursing', ''), 
	(18, 5, 1, 'Do you have chronic upset stomach or ulcers', ''), 
	(18, 6, 1, 'Would you like a spray product', ''), 
	(18, 7, 1, 'Would you like a chewing gum product', ''), 
	(18, 8, 1, 'Would you like a lozenge product', ''), 
	(18, 9, 1, 'Would you like a patch product', ''), 
	(18, 10, 1, 'Would you like an inhaler product', ''), 
	(18, 11, 1, 'Would you prefer a mint flavoured product', ''), 
	(18, 12, 1, 'Would you prefer other flavour options', '');

INSERT INTO criteria VALUES 
	(18, 1, 'NRT', ''), 
	(18, 2, 'Light Smoker', ''), 
	(18, 3, 'Heavy Smoker', ''), 
	(18, 4, 'Patch', ''), 
	(18, 5, 'Inhaler', ''), 
	(18, 6, 'Lozenge', ''), 
	(18, 7, 'Gum', ''), 
	(18, 8, 'Mist', ''), 
	(18, 9, 'Mint', ''), 
	(18, 10, 'Flavor', '');

INSERT INTO products VALUES 
	(18, 1, 'Nicorette® Quickmist® 1Mg', '', '', ''), 
	(18, 2, 'Nicorette® Gum 2Mg', '', '', ''), 
	(18, 3, 'Nicorette® Gum 4Mg', '', '', ''), 
	(18, 4, 'Nicorette® Lozenge 2Mg', '', '', ''), 
	(18, 5, 'Nicorette® Lozenge 4Mg', '', '', ''), 
	(18, 6, 'Nicorette® Inhaler', '', '', ''), 
	(18, 7, 'Nicoderm® Step 1 - 21Mg Patch', '', '', ''), 
	(18, 8, 'Nicoderm® Step 2- 14Mg Patch', '', '', ''), 
	(18, 9, 'Nicoderm® Step 3- 7Mg Patch', '', '', ''), 
	(18, 10, 'Thrive® Complete™ Gum 2Mg', '', '', ''), 
	(18, 11, 'Thrive® Complete™ Gum 4Mg', '', '', ''), 
	(18, 12, 'Thrive® Lozenges 1Mg', '', '', ''), 
	(18, 13, 'Thrive® Lozenges 2Mg', '', '', ''), 
	(18, 14, 'Thrive® Gum 2Mg', '', '', ''), 
	(18, 15, 'Thrive® Gum 4Mg', '', '', ''), 
	(18, 16, 'Habitrol Nicotine Transdermal System Stop Smoking Aid, Step 1 (21 Mg)', '', '', ''), 
	(18, 17, 'Habitrol Nicotine Transdermal System Stop Smoking Aid, Step 2 (14 Mg)', '', '', ''), 
	(18, 18, 'Habitrol Nicotine Transdermal System Stop Smoking Aid, Step 3 (7 Mg)', '', '', '');

INSERT INTO productCriteria VALUES 
	(18, 1, '{cid1} and {cid2} and {cid3} and {cid8} and {cid9} and {cid10}'), 
	(18, 2, '{cid1} and {cid2} and {cid7} and {cid9} and {cid10}'), 
	(18, 3, '{cid1} and {cid3} and {cid7} and {cid9} and {cid10}'), 
	(18, 4, '{cid1} and {cid2} and {cid6} and {cid9}'), 
	(18, 5, '{cid1} and {cid3} and {cid6} and {cid9}'), 
	(18, 6, '{cid1} and {cid5}'), 
	(18, 7, '{cid1} and {cid3} and {cid4}'), 
	(18, 8, '{cid1} and {cid2} and {cid4}'), 
	(18, 9, '{cid1} and {cid2} and {cid4}'), 
	(18, 10, '{cid1} and {cid2} and {cid7} and {cid9}'), 
	(18, 11, '{cid1} and {cid3} and {cid7} and {cid9}'), 
	(18, 12, '{cid1} and {cid2} and {cid6} and {cid9}'), 
	(18, 13, '{cid1} and {cid3} and {cid6} and {cid9}'), 
	(18, 14, '{cid1} and {cid2} and {cid7} and {cid9} and {cid10}'), 
	(18, 15, '{cid1} and {cid3} and {cid7} and {cid9} and {cid10}'), 
	(18, 16, '{cid1} and {cid3} and {cid4}'), 
	(18, 17, '{cid1} and {cid2} and {cid4}'), 
	(18, 18, '{cid1} and {cid2} and {cid4}');
