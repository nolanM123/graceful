INSERT INTO ailments VALUES (
	15, 
	'Ear Product', 
	'Consult your phyisician if you have had ear surgery in past 6 weeks, have a ruptured tympanic membrane, tympanostomy tubes, dizziness, vertigo or tinnitus. Consult your physician for hearing loss of unknown cause, associated with pain and/or upper respiratory tract infection. Consult your physician for ear pain associated with ear drainage, flying, scuba diving, otitis symptoms (debris, itching, tenderness), presence of foreign body or symptoms persisting more than 2-3 days.'
);

INSERT INTO questions VALUES 
	(15, 1, 1, 'Do you have minor ear pain', ''), 
	(15, 2, 1, 'Do you have swimmer''s ear (outer ear) infection', ''), 
	(15, 3, 1, 'Do you have excess ear wax', ''), 
	(15, 4, 1, 'Do you have water-clogged ears', ''), 
	(15, 5, 1, 'Are you an adult ≥ 12 years old', ''), 
	(15, 6, 1, 'Are you allergic to anesthetics (i.e lidocaine, benzocaine)', ''), 
	(15, 7, 1, 'Are you sensitive to benzalkonium chloride (preservative)', ''), 
	(15, 8, 1, 'Are you severely allergic to peanuts', '');

INSERT INTO criteria VALUES 
	(15, 1, 'Antibiotic', ''), 
	(15, 2, 'Anesthetic', ''), 
	(15, 3, 'Peanut', ''), 
	(15, 4, 'Dry', ''), 
	(15, 5, 'Solvent', '');

INSERT INTO products VALUES 
	(15, 1, 'Polysporin® Plus Pain Relief Ear Drops (6+Yrs)', '', '', ''), 
	(15, 2, 'Polysporin® Eye & Ear Drops (6+Yrs)', '', '', ''), 
	(15, 3, 'Auralgan Ear Drops', '', '', ''), 
	(15, 4, 'Optimyxin® Ear Drops ', '', '', ''), 
	(15, 5, 'Cerumol Ear Wax Removal Drops (12+Yrs)', '', '', ''), 
	(15, 6, 'Murine® Ear Earwax Removal System', '', '', ''), 
	(15, 7, 'Auro-Dri Swimmer''s Ears Water Drying Aid', '', '', '');

INSERT INTO productCriteria VALUES 
	(15, 1, '{cid1} and {cid2} and {cid3}'), 
	(15, 2, '{cid1} and {cid3}'), 
	(15, 3, '{cid2} and {cid3}'), 
	(15, 4, '{cid1} and {cid3}'), 
	(15, 5, '{cid3} and {cid5}'), 
	(15, 6, '{cid3} and {cid5}'), 
	(15, 7, '{cid3} and {cid4}');
