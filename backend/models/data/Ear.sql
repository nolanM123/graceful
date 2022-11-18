INSERT INTO ailments VALUES (15, 'Ear Product', '');

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
	(15, 1, 'all([{cid1}, {cid2}, {cid3}])'), 
	(15, 2, 'all([{cid1}, {cid3}])'), 
	(15, 3, 'all([{cid2}, {cid3}])'), 
	(15, 4, 'all([{cid1}, {cid3}])'), 
	(15, 5, 'all([{cid3}, {cid5}])'), 
	(15, 6, 'all([{cid3}, {cid5}])'), 
	(15, 7, 'all([{cid3}, {cid4}])');
