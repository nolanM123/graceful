INSERT INTO ailments VALUES (
	7, 
	'Insomnia', 
	'Consult your phyisician for insomnia lasting longer than 14 days, occuring more than 3 days a week, associated with an illness, resulting from medication (drug-induced) or refractory to sleep hygiene and/or non-prescription sedative. Consult a physician if you have contraindications to non-prescription sedatives. Sedatives should be used at the lowest effective dose and for the shortest duration possible.'
);

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
	(7, 1, '{cid1} and {cid6} and {cid8}'), 
	(7, 2, '{cid1} and {cid6} and {cid8}'), 
	(7, 3, '{cid2} and {cid3} and {cid6} and {cid8}'), 
	(7, 4, '{cid1} and {cid6} and {cid8}'), 
	(7, 5, '{cid1} and {cid6} and {cid8}'), 
	(7, 6, '{cid1} and {cid5} and {cid6} and {cid8}'), 
	(7, 7, '{cid1} and {cid4} and {cid6} and {cid8}'), 
	(7, 8, '{cid2} and {cid7} and {cid8}'), 
	(7, 9, '{cid2} and {cid6} and {cid8}'), 
	(7, 10, '{cid2} and {cid3} and {cid6} and {cid8}'), 
	(7, 11, '{cid2} and {cid6} and {cid7} and {cid8}'), 
	(7, 12, '{cid2} and {cid6} and {cid8}'), 
	(7, 13, '{cid2} and {cid6} and {cid8}');
