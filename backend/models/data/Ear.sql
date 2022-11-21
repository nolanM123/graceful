INSERT INTO ailments VALUES (
	15, 
	'Ear Product', 
	'Consult your phyisician if you have had ear surgery in past 6 weeks, have a ruptured tympanic membrane, tympanostomy tubes, dizziness, vertigo or tinnitus. Consult your physician for hearing loss of unknown cause, associated with pain and/or upper respiratory tract infection. Consult your physician for ear pain associated with ear drainage, flying, scuba diving, otitis symptoms (debris, itching, tenderness), presence of foreign body or symptoms persisting more than 2-3 days.'
);

INSERT INTO questions VALUES 
	(
		15, 
		1, 
		1, 
		'Do you have minor ear pain', 
		'Some products may be formulated with anesthetic to provide pain relief.'
	), 
	(
		15, 
		2, 
		1, 
		'Do you have swimmer''s ear (outer ear) infection', 
		'Swimmer''s ear symptoms include ear discomfort, itch or pain and discharge in or from the ear.'
	), 
	(
		15, 
		3, 
		1, 
		'Do you have excess ear wax', 
		'Symptoms include ear fullness, itching and/or reduced hearing. Consult your physician if abnormal symptoms, ear pain, ear drainage or rash in the ear. Consult your physician for unresolved symptoms despite 4-5 days of non-prescription therapy.'
	), 
	(
		15, 
		4, 
		1, 
		'Do you have water-clogged ears', 
		'Symptoms include ear fullness and reduced hearing. Use may prevent ear infection. Consult your physician if abnormal symptoms, ear pain, ear drainage or rash in the ear. Consult your physician for unresolved symptoms despite non-prescription therapy.'
	), 
	(
		15, 
		5, 
		1, 
		'Are you an adult ≥ 12 years old', 
		'Cosult your pharmacist if unsure.'
	), 
	(
		15, 
		6, 
		1, 
		'Are you allergic to anesthetics (i.e lidocaine, benzocaine)', 
		'Avoid use of products with anesthetics if you have experienced sensitivity or irritation with lidocaine or benzocaine.'
	), 
	(
		15, 
		7, 
		1, 
		'Are you sensitive to benzalkonium chloride (preservative)', 
		'Avoid use of products with preservatives if you have experienced sensitivity or irritation with benzalkonium chloride.'
	), 
	(
		15, 
		8, 
		1, 
		'Are you severely allergic to peanuts', 
		'Avoid use of products with peanut oil if you have experienced sensitivity, irritation or severe reactions to peanuts.'
	);

INSERT INTO criteria VALUES 
	(15, 1, 'Antibiotic', '{qid2} and not ({qid3} or {qid4} or {qid7})'), 
	(15, 2, 'Anesthetic', '{qid1} and not ({qid3} or {qid4} or {qid6})'), 
	(15, 3, 'Peanut', 'not {qid8}'), 
	(15, 4, 'Dry', '{qid4} and not ({qid2} or {qid3})'), 
	(15, 5, 'Solvent', '{qid3} and {qid5} and not ({qid2} or {qid4})');

INSERT INTO products VALUES 
	(15, 1, 'Polysporin® Plus Pain Relief Ear Drops (6+Yrs)', '', '', ''), 
	(15, 2, 'Polysporin® Eye & Ear Drops (6+Yrs)', '', '', ''), 
	(15, 3, 'Auralgan Ear Drops', '', '', ''), 
	(15, 4, 'Optimyxin® Ear Drops ', '', '', ''), 
	(15, 5, 'Cerumol Ear Wax Removal Drops (12+Yrs)', '', '', ''), 
	(15, 6, 'Murine® Ear Earwax Removal System', '', '', ''), 
	(15, 7, 'Auro-Dri Swimmer''s Ears Water Drying Aid', '', '', '');

INSERT INTO productCriteria VALUES 
	(15, 1, '{cid1} and {cid2}'), 
	(15, 2, '{cid1}'), 
	(15, 3, '{cid2}'), 
	(15, 4, '{cid1}'), 
	(15, 5, '{cid3} and {cid5}'), 
	(15, 6, '{cid5}'), 
	(15, 7, '{cid4}');
