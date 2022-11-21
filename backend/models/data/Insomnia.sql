INSERT INTO ailments VALUES (
	7, 
	'Insomnia', 
	'Consult your phyisician for insomnia lasting longer than 14 days, occuring more than 3 days a week, associated with an illness, resulting from medication (drug-induced) or refractory to sleep hygiene and/or non-prescription sedative. Consult a physician if you have contraindications to non-prescription sedatives. Sedatives should be used at the lowest effective dose and for the shortest duration possible.'
);

INSERT INTO questions VALUES 
	(
		7, 
		1, 
		1, 
		'Are you Pregnant and/or Breast Feeding', 
		'Valerian and ibuprofen is not recommended in pregnancy and should be avoided.'
	), 
	(
		7, 
		2, 
		1, 
		'Are you an adult ≥ 12 yrs old', 
		'Consult your physician for children with insomnia.'
	), 
	(
		7, 
		3, 
		1, 
		'Do you regularily drink alcohol', 
		'Avoid use of alcohol with insomnia medication due to increased risk of sedation.'
	), 
	(
		7, 
		4, 
		1, 
		'Are you taking any anticholinergics or CNS depressants', 
		'Anticholinergic and CNS depressants are medications that cause or enhance drowsiness. Avoid use with alcohol and/or insomnia medications. Consult your pharmacist if unsure.'
	), 
	(
		7, 
		5, 
		1, 
		'Have you have infrequent insomnia', 
		'Consult your physician for persistent or frequent insomnia.'
	), 
	(
		7, 
		6, 
		1, 
		'Are you on blood thinners', 
		'Blood thinners include warfarin, aspirin, clopidogrel, dipyridamole, ticlopidine, ticagrelor, dabigatran, apixaban, rivaroxaban, dalteparin, etc. Ibuprofen may increase risk of bleeding. Counsult your pharmacist for further information.'
	), 
	(
		7, 
		7, 
		1, 
		'Do you have treated or untreated acid reflux', 
		'Ibuprofen and valerian may worsen upset stomach and peptic ulcers. Avoid use if you have these medical conditions. Consult your pharmacist for further information.'
	), 
	(
		7, 
		8, 
		1, 
		'Do you have uncontrolled hypertension', 
		'Ibuprofen may aggravate hypertension. Avoid use if you have uncontrolled hypertension. Consult your pharmacist for further information.'
	), 
	(
		7, 
		9, 
		1, 
		'Are you also in pain', 
		'Some insomnia medications are available in combination with acetaminophen or ibuprofen.'
	), 
	(
		7, 
		10, 
		1, 
		'Would you prefer a more natural option', 
		'Some natural health products and naturalling occuring hormones act as sedatives.'
	), 
	(
		7, 
		11, 
		1, 
		'Would you prefer a fast acting product', 
		'Some sedatives are formulated as fast acting products.'
	), 
	(
		7, 
		12, 
		1, 
		'Would you prefer a long acting product', 
		'Some sedatives are formulated as long acting products. Some products are formulated as both (dual) fast and long-acting products.'
	);

INSERT INTO criteria VALUES 
	(7, 1, 'Diphenhydramine', '{qid2} and {qid5} and not ({qid1} or {qid3} or {qid4} or {qid10})'), 
	(7, 2, 'Melatonin', '{qid2} and {qid5} and {qid10} and not ({qid1} or {qid3} or {qid4})'), 
	(7, 3, 'Valerian', '{qid2} and {qid10} not ({qid1} or {qid3} or {qid4} or {qid5} or {qid7})'), 
	(7, 4, 'APAP', '{qid9} and not {qid3}'), 
	(7, 5, 'Ibuprofen', '{qid9} and not ({qid8} or {qid1} or {qid6} or {qid7})'), 
	(7, 6, 'Fast Acting', '{qid11} and not {qid12}'), 
	(7, 7, 'Long Acting', '{qid12} and not {qid11}');

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
	(7, 1, '{cid1} and {cid6}'), 
	(7, 2, '{cid1} and {cid6}'), 
	(7, 3, '{cid2} and {cid3} and {cid6}'), 
	(7, 4, '{cid1} and {cid6}'), 
	(7, 5, '{cid1} and {cid6}'), 
	(7, 6, '{cid1} and {cid5} and {cid6}'), 
	(7, 7, '{cid1} and {cid4} and {cid6}'), 
	(7, 8, '{cid2} and {cid7}'), 
	(7, 9, '{cid2} and {cid6}'), 
	(7, 10, '{cid2} and {cid3} and {cid6}'), 
	(7, 11, '{cid2} and {cid6} and {cid7}'), 
	(7, 12, '{cid2} and {cid6}'), 
	(7, 13, '{cid2} and {cid6}');
