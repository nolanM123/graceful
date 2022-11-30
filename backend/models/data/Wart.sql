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
	(
		12,
		1,
		'Compound W  Nitrofreeze  (4+Yrs)',
		'https://www.compoundw.com/wart-removal-products/nitrous-oxide-wart-removal/compound-w-nitrofreeze',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid2} and {cid7} and {cid8}'
	),
	(
		12,
		2,
		'Compound W Freeze Off  Wart Removal (4+Yrs)',
		'https://www.compoundw.com/wart-removal-products/cryogenic-wart-removal/compound-w-freeze-off-wart-removal',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid2} and {cid7} and {cid8}'
	),
	(
		12,
		3,
		'Compound W  Complete Wart Kit',
		'https://www.compoundw.com/wart-removal-products/cryogenic-wart-removal/compound-w-complete-wart-kit',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid2} and {cid7} and {cid8}'
	),
	(
		12,
		4,
		'Compound W  2-In-1 Treatment Kit',
		'https://www.compoundw.com/wart-removal-products/cryogenic-wart-removal/compound-w-2-in-1-treatment-kit',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid1} and {cid2} and {cid6} and {cid7} and {cid8}'
	),
	(
		12,
		5,
		'Compound W Freeze Off  Plantar Wart Removal Kit',
		'https://www.compoundw.com/wart-removal-products/cryogenic-wart-removal/compound-w-freeze-off-plantar-wart-removal-kit',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid2} and {cid8}'
	),
	(
		12,
		6,
		'Compound W Freeze Off  Advanced Wart Remover',
		'https://www.compoundw.com/wart-removal-products/cryogenic-wart-removal/compound-w-freeze-off-advanced-wart-remover',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid2} and {cid7} and {cid8}'
	),
	(
		12,
		7,
		'Compound W  One Step Strips For Kids (3+Yrs)',
		'https://www.compoundw.com/wart-removal-products/salicylic-acid-wart-removal/compound-w-one-step-strip-kids',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'
	),
	(
		12,
		8,
		'Compound W  One Step Invisible Strips',
		'https://www.compoundw.com/wart-removal-products/salicylic-acid-wart-removal/compound-w-one-step-invisible-strips',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'
	),
	(
		12,
		9,
		'Compound W  One Step Plantar Foot Pads',
		'https://www.compoundw.com/wart-removal-products/salicylic-acid-wart-removal/compound-w-one-step-pads-plantar-warts',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid8}'
	),
	(
		12,
		10,
		'Compound W  One Step Pads',
		'https://www.compoundw.com/wart-removal-products/salicylic-acid-wart-removal/compound-w-one-step-pads',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'
	),
	(
		12,
		11,
		'Compound W  Fast Acting Wart Removal Gel',
		'https://www.compoundw.com/wart-removal-products/salicylic-acid-wart-removal/compound-w-fast-acting-wart-removal-gel',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid1} and {cid6} and {cid7} and {cid8}'
	),
	(
		12,
		12,
		'Compound W  Fast Acting Wart Removal Liquid',
		'https://www.compoundw.com/wart-removal-products/salicylic-acid-wart-removal/compound-w-fast-acting-wart-removal-liquid',
		'',
		'https://www.compoundw.com/sites/compoundw/themes/custom/compoundw_theme/images/logo.svg',
		'{cid1} and {cid6} and {cid7} and {cid8}'
	),
	(
		12,
		13,
		'Dr. Scholl S  Dual Action Freeze Away  Wart Remover',
		'https://www.drscholls.ca/en/products/warts/dual-action-freeze-away-wart-remover/',
		'',
		'https://www.drscholls.ca/en/wp-content/uploads/sites/3/logo-scholls-ko.png',
		'{cid1} and {cid2} and {cid6} and {cid7} and {cid8}'
	),
	(
		12,
		14,
		'Dr. Scholl''s  Clear Away  Wart Remover',
		'https://www.drscholls.ca/en/products/warts/clear-away-wart-remover/',
		'',
		'https://www.drscholls.ca/en/wp-content/uploads/sites/3/logo-scholls-ko.png',
		'{cid1} and {cid5} and {cid8}'
	),
	(
		12,
		15,
		'Dr. Scholl''S  Clear Away  Wart Remover Fast Acting Liquid',
		'https://www.drscholls.ca/en/products/warts/clear-away-wart-remover-fast-acting-liquid/',
		'',
		'https://www.drscholls.ca/en/wp-content/uploads/sites/3/logo-scholls-ko.png',
		'{cid1} and {cid6} and {cid7} and {cid8}'
	);
