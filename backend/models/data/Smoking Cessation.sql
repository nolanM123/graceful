INSERT INTO ailments VALUES (18, 'Smoking Cessation', '');

INSERT INTO questions VALUES 
	(18, 1, 1, 'Are you a regular light smoker'), 
	(18, 2, 1, 'Are you a regular heavy smoker'), 
	(18, 3, 1, 'Do you have heart disease'), 
	(18, 4, 1, 'Are you pregnant or nursing'), 
	(18, 5, 1, 'Do you have chronic upset stomach or ulcers'), 
	(18, 6, 1, 'Would you like a spray product'), 
	(18, 7, 1, 'Would you like a chewing gum product'), 
	(18, 8, 1, 'Would you like a lozenge product'), 
	(18, 9, 1, 'Would you like a patch product'), 
	(18, 10, 1, 'Would you like an inhaler product'), 
	(18, 11, 1, 'Would you prefer a mint flavoured product'), 
	(18, 12, 1, 'Would you prefer other flavour options'), 
	(18, 13, 1, ' ');

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
	(18, 1, 'all([{cid1}, {cid2}, {cid3}, {cid8}, {cid9}, {cid10}])'), 
	(18, 2, 'all([{cid1}, {cid2}, {cid7}, {cid9}, {cid10}])'), 
	(18, 3, 'all([{cid1}, {cid3}, {cid7}, {cid9}, {cid10}])'), 
	(18, 4, 'all([{cid1}, {cid2}, {cid6}, {cid9}])'), 
	(18, 5, 'all([{cid1}, {cid3}, {cid6}, {cid9}])'), 
	(18, 6, 'all([{cid1}, {cid5}])'), 
	(18, 7, 'all([{cid1}, {cid3}, {cid4}])'), 
	(18, 8, 'all([{cid1}, {cid2}, {cid4}])'), 
	(18, 9, 'all([{cid1}, {cid2}, {cid4}])'), 
	(18, 10, 'all([{cid1}, {cid2}, {cid7}, {cid9}])'), 
	(18, 11, 'all([{cid1}, {cid3}, {cid7}, {cid9}])'), 
	(18, 12, 'all([{cid1}, {cid2}, {cid6}, {cid9}])'), 
	(18, 13, 'all([{cid1}, {cid3}, {cid6}, {cid9}])'), 
	(18, 14, 'all([{cid1}, {cid2}, {cid7}, {cid9}, {cid10}])'), 
	(18, 15, 'all([{cid1}, {cid3}, {cid7}, {cid9}, {cid10}])'), 
	(18, 16, 'all([{cid1}, {cid3}, {cid4}])'), 
	(18, 17, 'all([{cid1}, {cid2}, {cid4}])'), 
	(18, 18, 'all([{cid1}, {cid2}, {cid4}])');
