INSERT INTO ailments VALUES (
	1, 
	'Dry Mouth', 
	'Consult your physician if dry mouth is severe, ulcerative or painful. Patients with advanced age, depression, Sjogren syndrome, hyperlipidemia, hypertension or uncontrolled diabetes should consult their physician for dry mouth symptoms. Some medications and cancer therapies can lead to dry mouth and should be assessed by a medical professional. Untreated dry mouth may lead to complications including infections, dental cavities and difficulties with speach, taste or nutrition. Frequent water sips, chewing sugarless gum and sucking on ice chips or sugarless hard candies may help alleviate symptoms.'
);

INSERT INTO questions VALUES 
	(
		1, 
		1, 
		1, 
		'Would you like a saliva substitute', 
		'Some products mimic components of saliva and are best for individuals lacking the capacity to produce natural saliva or having a saliva production deficiency.'
	), 
	(
		1, 
		2, 
		1, 
		'Would you like a saliva stimulator', 
		'Most dry mouth products contain xylitol and help stimulate or increase the production of natural saliva.'
	), 
	(
		1, 
		3, 
		1, 
		'Would you like an mucous thinner', 
		'Dry mouth may lead to thickening of saliva and oral secretions. KOTE product contains an expectorant agent which may help thin mucous and saliva.'
	), 
	(
		1, 
		4, 
		1, 
		'Are you sensitive/allergic to parabens', 
		'Some products may contain preservatives including parabens. Avoid use if you are sensitive or allergic to parabens.'
	), 
	(
		1, 
		5, 
		1, 
		'Do you prefer a product for "as needed use"', 
		'Some products are best used repeatedly throughout the day on an as needed basis.'
	), 
	(
		1, 
		6, 
		1, 
		'Do you prefer a long-acting or overnight product', 
		'Some products can last 4 hours or more providing extended relief of symptoms and are ideal for overnight use or when few applications are preferred.'
	), 
	(
		1, 
		7, 
		1, 
		'Do you prefer a spray', 
		'Spray products can provide quick, discret and portable symptom relief. Ideal for as needed symptom relief and application throughout the day. Application may require some oral dexterity.'
	), 
	(
		1, 
		8, 
		1, 
		'Do you prefer a mouth wash', 
		'Mouth wash products are ideal for saturation of oral cavity. However, not as discrete or long acting as other options. Not ideal for use by individuals with reduced oral dexterity or high aspiration risk. Usually not for "as needed" use.'
	), 
	(
		1, 
		9, 
		1, 
		'Do you prefer a gel', 
		'Gel products provide enhanced contact between medication and oral mucosa. Gel products have long duration of action but may have a less pleasant in mouth feel. Ideal for overnight use. Only formulation containing both saliva substitute and stimulator.'
	), 
	(
		1, 
		10,
		1,
		'Do you prefer lozenges or gum', 
		'Lozenge or gum products are ideal for frequent or as needed use. Oral manipulation further helps saliva stimulation. May be more effective and longer acting than sprays but may be a choking hazard in some individuals.'
	), 
	(
		1, 
		11,
		1,
		'Do you prefer an oral patch', 
		'Oral patches are ideal for single or overnight application. Require little oral dexterity but may leave a film residue at application site.'
	);

INSERT INTO criteria VALUES 
	(1, 1, 'Xylitol', '{qid2}'), 
	(1, 2, 'Saliva Substitute', '{qid1}'), 
	(1, 3, 'PRN', '{qid5} and not {qid6}'), 
	(1, 4, 'Overnight', '{qid6} and not {qid5}'), 
	(1, 5, 'Parabens', '{qid4}'), 
	(1, 6, 'Yerba Santa', '{qid3}'), 
	(1, 7, 'Spray', '{qid7} and not ({qid8} or {qid9} or {qid10} or {qid11})'), 
	(1, 8, 'Wash', '{qid8} and not ({qid7} or {qid9} or {qid10} or {qid11})'), 
	(1, 9, 'Gel', '{qid9} and not ({qid7} or {qid8} or {qid10} or {qid11})'), 
	(1, 10, 'Lozenge/Gum', '{qid10} and not ({qid7} or {qid8} or {qid9} or {qid11})'), 
	(1, 11, 'Patch', '{qid11} and not ({qid7} or {qid8} or {qid9} or {qid10})');

INSERT INTO products VALUES 
	(1, 1, 'Biotène Dry Mouthmoisturizing Mouthwash', '', '', ''), 
	(1, 2, 'Biotène Dry Mouthmoisturizing Spray', '', '', ''), 
	(1, 3, 'Biotène Dry Mouth Oralbalance Moisturizing Gel', '', '', ''), 
	(1, 4, 'Biotène® Dry Mouth Lozenges', '', '', ''), 
	(1, 5, 'Moi-Stir Spray', '', '', ''), 
	(1, 6, 'Mouth Kote Dry Mouth Spray', '', '', ''), 
	(1, 7, 'Xylimelts', '', '', ''), 
	(1, 8, 'X-Pur Gum', '', '', ''), 
	(1, 9, 'X-Pur Pastille', '', '', ''), 
	(1, 10, 'Dentek™ Oramoist® Dry Mouth Relief Patch', '', '', '');

INSERT INTO productCriteria VALUES 
	(1, 1, '{cid1} and not {cid2} and {cid3} and not {cid5} and not {cid6} and {cid8}'), 
	(1, 2, '{cid1} and not {cid2} and {cid3} and not {cid5} and not {cid6} and {cid7}'), 
	(1, 3, '{cid1} and {cid2} and {cid4} and {cid5} and not {cid6} and {cid9}'), 
	(1, 4, '{cid1} and not {cid2} and {cid3} and {cid5} and not {cid6} and {cid10}'), 
	(1, 5, 'not {cid1} and {cid2} and {cid3} and not {cid5} and not {cid6} and {cid7}'), 
	(1, 6, '{cid1} and not {cid2} and {cid3} and {cid5} and {cid6} and {cid7}'), 
	(1, 7, '{cid1} and not {cid2} and {cid4} and {cid5} and not {cid6} and {cid11}'), 
	(1, 8, '{cid1} and not {cid2} and {cid3} and {cid5} and not {cid6} and {cid10}'), 
	(1, 9, '{cid1} and not {cid2} and {cid3} and {cid5} and not {cid6} and {cid10}'), 
	(1, 10, '{cid1} and not {cid2} and {cid4} and {cid5} and not {cid6} and {cid11}');
