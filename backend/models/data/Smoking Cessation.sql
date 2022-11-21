INSERT INTO ailments VALUES 
	(
		18, 
		'Smoking Cessation', 
		'Consult your heath care provider if you wish to stop smoking and are less than 18 years old, pregnant, nursing, have high blood pressure, heart disease, insulin-dependent diabetes, chronic upset stomach or peptic ulcers. Avoid use of nicotine replacement products if you are allergic or sensitive to any of the ingredients. Consult your physician if you require prescription therapy options. Combination of patch with an as needed product (mist, lozenge, gum) may work best for some heavier smokers.'
	);

INSERT INTO questions VALUES 
	(
		18, 
		1, 
		1, 
		'Are you a regular light smoker', 
		'Individuals who smoke less than a pack a day or wait 30 min or more before smoking in the morning should consider use of a lower strength (mg) product. Individuals weighing less than 100lbs should also consider a lower strength product.'
	), 
	(
		18, 
		2, 
		1, 
		'Are you a regular heavy smoker', 
		'Individuals who smoke more than a pack a day or wait less than 30 min before smoking in the morning should consider use of a higher strength (mg) product.'
	), 
	(
		18, 
		3, 
		1, 
		'Do you have heart disease', 
		'Individuals with active/chronic heart disease or recent stroke should avoid use of nicotine containing products unless recommended by their healthcare professional.'
	), 
	(
		18, 
		4, 
		1, 
		'Are you pregnant or nursing', 
		'Individuals who are pregnant or nursing should avoid use of nicotine containing products unless recommended by their healthcare professional.'
	), 
	(
		18, 
		5, 
		1, 
		'Do you have chronic upset stomach or ulcers', 
		'Nicotine may worsen upset stomach and ulcers. Individuals with active ulcers or chronic upset stomach should avoid use of nicotine containing products unless recommended by their healthcare professional.'
	), 
	(
		18, 
		6, 
		1, 
		'Would you like a spray product', 
		'Spray or mist products allow cravings to be addressed discreetly as needed with a protable device. Provide the fastest relief (seconds) of cravings and can be used frequently throught the day.'
	), 
	(
		18, 
		7, 
		1, 
		'Would you like a chewing gum product', 
		'Gums allow as needed craving relief with a product that provides oral distraction. Gum lasts about 30min and can provide craving relief within 5-10min minutes. Can be used less frequently than spray/mist but provide oral distraction for 30min periods.'
	), 
	(
		18, 
		8, 
		1, 
		'Would you like a lozenge product', 
		'Lozenges allow as needed craving relief with a product that provides oral distraction. Lozenges last about 20min and can provide craving relief within 5-10min minutes. Can be used less frequently than spray/mist but provide distraction for about 20min.'
	), 
	(
		18, 
		9, 
		1, 
		'Would you like a patch product', 
		'Best for heavy smokers. Patch can be left on continuously for 16-24 hour periods and provide continual discreet craving relief. Lighter smokers should start therapy with step 2 (14mg) product.'
	), 
	(
		18, 
		10, 
		1, 
		'Would you like an inhaler product', 
		'Inhaler provides as needed craving relief within few minutes. Used less frequently (20min period) than spray/mist, gum or lozenge but provide oral and manual distraction with hand-to-mouth action. May require some dexterity to load cartridges.'
	), 
	(
		18, 
		11, 
		1, 
		'Would you prefer a mint flavoured product', 
		'Most oral products available in a cooling mint flavoured option.'
	), 
	(
		18, 
		12, 
		1, 
		'Would you prefer other flavour options', 
		'Some oral products available as berry, fruit or cinnamon flavoured options.'
	);

INSERT INTO criteria VALUES 
	(18, 1, 'NRT', 'not ({qid3} or {qid4} or {qid5})'), 
	(18, 2, 'Light Smoker', '{qid1}'), 
	(18, 3, 'Heavy Smoker', '{qid2}'), 
	(18, 4, 'Patch', '{qid9} and not ({qid6} or {qid7} or {qid8} or {qid10})'), 
	(18, 5, 'Inhaler', '{qid10} and not ({qid6} or {qid7} or {qid8} or {qid9})'), 
	(18, 6, 'Lozenge', '{qid8} and not ({qid6} or {qid7} or {qid9} or {qid10})'), 
	(18, 7, 'Gum', '{qid7} and not ({qid6} or {qid8} or {qid9} or {qid10})'), 
	(18, 8, 'Mist', '{qid6} and not ({qid7} or {qid8} or {qid9} or {qid10})'), 
	(18, 9, 'Mint', '{qid11}'), 
	(18, 10, 'Flavor', '{qid12}');

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
