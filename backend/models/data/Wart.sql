INSERT INTO ailments VALUES 
	(
		12, 
		'Wart', 
		'Consult your phyisician if uncertain a lesion is a wart. Consult your physician should a wart lesion show a change in colour, appearance or pain. Consult your physician prior to treating a lesion that appears inflamed, irritated, infected or hairy. Consult your physician for warts located on the face, genitals or muscous membranes. Over-the-counter wart treatments should not be applied to moles or birth marks.'
	);

INSERT INTO questions VALUES 
	(
		12, 
		1, 
		1, 
		'Do you have diabetes, immunosuppression or poor/reduced circulation', 
		'Over-the-counter wart products are not recommended for individuals with diabetes, immunosuppression or circulation issues due to increased risk of lesion infection or injury. Consult your physician.'
	), 
	(
		12, 
		2, 
		1, 
		'Are you sensitive/allergic to rubber or wool', 
		'Some wart products contain rubber or lanolin and may cause skin reactions.'
	), 
	(
		12, 
		3, 
		1, 
		'Would you prefer cryotherapy system', 
		'Cryotherapy may require a single or few applications but may be more painful than salicylic acid therapy, increase the risk of scarring and is more complicated to administer. Sometimes available as combo with topical liquid/gel. Select both if desired.'
	), 
	(
		12, 
		4, 
		1, 
		'Would you prefer a topical liquid or gel', 
		'Salicylic acid allows control of discomfort/dissability, reduces scarring but involves multiple and longer treatment. Fast drying liquid allow more selective treatment of affected area. Aavailable in combo with cryotherapy. Select both if desired.'
	), 
	(
		12, 
		5, 
		1, 
		'Would you prefer a topical pad, patch or strip', 
		'Salicylic acid allows control of discomfort/pain and reduced scarring but involves multiple treatments and extended treatment period. Solid dosage treatments are easily/quickly applied, conceal lesion but may affect adjacent normal healthy skin.'
	), 
	(
		12, 
		6, 
		1, 
		'Would you like to treat a common wart', 
		'Wart lesions which typically affect the hands.'
	), 
	(
		12, 
		7, 
		1, 
		'Would you like to treat a plantar wart', 
		'Wart lesions which typically affect the feet.'
	);

INSERT INTO criteria VALUES 
	(12, 1, 'Salicylic Acid', 'not {qid1}'), 
	(12, 2, 'Cryogenic', '{qid3} and not {qid1}'), 
	(12, 3, 'Lanolin', 'not {qid2}'), 
	(12, 4, 'Rubber', 'not {qid2}'), 
	(12, 5, 'Pad', '{qid5} and not ({qid3} or {qid4})'), 
	(12, 6, 'Liquid/Gel', '{qid3} and {qid6} and not {qid5}'), 
	(12, 7, 'Common Warts', '{qid6}'), 
	(12, 8, 'Plantar', '{qid7}');

INSERT INTO products VALUES 
	(12, 1, 'Compound W® Nitrofreeze™ (4+Yrs)', '', '', ''), 
	(12, 2, 'Compound W Freeze Off® Wart Removal (4+Yrs)', '', '', ''), 
	(12, 3, 'Compound W® Complete Wart Kit', '', '', ''), 
	(12, 4, 'Compound W® 2-In-1 Treatment Kit', '', '', ''), 
	(12, 5, 'Compound W Freeze Off® Plantar Wart Removal Kit', '', '', ''), 
	(12, 6, 'Compound W Freeze Off® Advanced Wart Remover', '', '', ''), 
	(12, 7, 'Compound W® One Step Strips For Kids (3+Yrs)', '', '', ''), 
	(12, 8, 'Compound W® One Step Invisible Strips', '', '', ''), 
	(12, 9, 'Compound W® One Step Plantar Foot Pads', '', '', ''), 
	(12, 10, 'Compound W® One Step Pads', '', '', ''), 
	(12, 11, 'Compound W® Fast Acting Wart Removal Gel', '', '', ''), 
	(12, 12, 'Compound W® Fast Acting Wart Removal Liquid', '', '', ''), 
	(12, 13, 'Dr. Scholl''s® Dual Action Freeze Away® Wart Remover', '', '', ''), 
	(12, 14, 'Dr. Scholl''s® Clear Away® Wart Remover', '', '', ''), 
	(12, 15, 'Dr. Scholl''s® Clear Away® Wart Remover Fast Acting Liquid', '', '', '');

INSERT INTO productCriteria VALUES 
	(12, 1, '{cid2} and {cid7} and {cid8}'), 
	(12, 2, '{cid2} and {cid7} and {cid8}'), 
	(12, 3, '{cid2} and {cid7} and {cid8}'), 
	(12, 4, '{cid1} and {cid2} and {cid6} and {cid7} and {cid8}'), 
	(12, 5, '{cid2} and {cid8}'), 
	(12, 6, '{cid2} and {cid7} and {cid8}'), 
	(12, 7, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'), 
	(12, 8, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'), 
	(12, 9, '{cid1} and {cid3} and {cid4} and {cid5} and {cid8}'), 
	(12, 10, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'), 
	(12, 11, '{cid1} and {cid6} and {cid7} and {cid8}'), 
	(12, 12, '{cid1} and {cid6} and {cid7} and {cid8}'), 
	(12, 13, '{cid1} and {cid2} and {cid6} and {cid7} and {cid8}'), 
	(12, 14, '{cid1} and {cid5} and {cid8}'), 
	(12, 15, '{cid1} and {cid6} and {cid7} and {cid8}');
