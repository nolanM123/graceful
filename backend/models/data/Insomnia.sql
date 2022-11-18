INSERT INTO ailments VALUES (7, 'Insomnia', '');

INSERT INTO questions VALUES 
	(7, 1, 1, 'Are you Pregnant and/or Breast Feeding', ''), 
	(7, 2, 1, 'Are you an adult ≥ 12 yrs old', ''), 
	(7, 3, 1, 'Do you regularily drink alcohol', ''), 
	(7, 4, 1, 'Are you taking any anticholinergics or CNS depressants', ''), 
	(7, 5, 1, 'Have you have infrequent insomnia', ''), 
	(7, 6, 1, 'Are you on blood thinners', ''), 
	(7, 7, 1, 'Do you have treated or untreated acid reflux', ''), 
	(7, 8, 1, 'Do you have uncontrolled hypertension', ''), 
	(7, 9, 1, 'Are you also in pain', ''), 
	(7, 10, 1, 'Would you prefer a more natural option', ''), 
	(7, 11, 1, 'Would you prefer a fast acting product', ''), 
	(7, 12, 1, 'Would you prefer a long acting product', '');

INSERT INTO criteria VALUES 
	(7, 1, 'Diphenhydramine', ''), 
	(7, 2, 'Melatonin', ''), 
	(7, 3, 'Valerian', ''), 
	(7, 4, 'APAP', ''), 
	(7, 5, 'Ibuprofen', ''), 
	(7, 6, 'Fast Acting', ''), 
	(7, 7, 'Long Acting', ''), 
	(7, 8, 'column', '');

INSERT INTO products VALUES 
	(7, 1, 'Unisom® Sleepgels® Extra Strength - Soft Gel Capsules', '', '', ''), 
	(7, 2, 'Unisom® Extra Strength - Tablets', '', '', ''), 
	(7, 3, 'Vicks Zzzquil Pure Zzzs Melatonin Sleep Aid Gummies', '', '', ''), 
	(7, 4, 'Zzzquil Liquicaps Sleep-Aid', '', '', ''), 
	(7, 5, 'Zzzquil Liquid Sleep-Aid', '', '', ''), 
	(7, 6, 'Advil Nighttime', '', '', 'https://seeklogo.com/images/A/Advil-logo-63C2B5D6D6-seeklogo.com.png'), 
	(7, 7, 'Extra Strength Tylenol® Nighttime', '', '', ''), 
	(7, 8, 'Jamieson Melatonin | Timed Release', '', '', ''), 
	(7, 9, 'Jamieson Healthy Sleep®', '', '', ''), 
	(7, 10, 'Jamieson Melatonin Stress & Sleep Support', '', '', ''), 
	(7, 11, 'Melatonin Maximum Strength 10 Mg Dual Action Release', '', '', ''), 
	(7, 12, 'Webber Melatonin Gummies 10 Mg', '', '', ''), 
	(7, 13, 'Webber Melatonin Maximum Strength 10 Mg Quick Dissolve', '', '', '');

INSERT INTO productCriteria VALUES 
	(7, 1, 'all([{cid1}, {cid6}, {cid8}])'), 
	(7, 2, 'all([{cid1}, {cid6}, {cid8}])'), 
	(7, 3, 'all([{cid2}, {cid3}, {cid6}, {cid8}])'), 
	(7, 4, 'all([{cid1}, {cid6}, {cid8}])'), 
	(7, 5, 'all([{cid1}, {cid6}, {cid8}])'), 
	(7, 6, 'all([{cid1}, {cid5}, {cid6}, {cid8}])'), 
	(7, 7, 'all([{cid1}, {cid4}, {cid6}, {cid8}])'), 
	(7, 8, 'all([{cid2}, {cid7}, {cid8}])'), 
	(7, 9, 'all([{cid2}, {cid6}, {cid8}])'), 
	(7, 10, 'all([{cid2}, {cid3}, {cid6}, {cid8}])'), 
	(7, 11, 'all([{cid2}, {cid6}, {cid7}, {cid8}])'), 
	(7, 12, 'all([{cid2}, {cid6}, {cid8}])'), 
	(7, 13, 'all([{cid2}, {cid6}, {cid8}])');
