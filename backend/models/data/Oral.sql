INSERT INTO ailments VALUES 
	(
		24, 
		'Oral', 
		'Consult your healthcare provider for oral lesions that are excessively red, swollen, contain pus, persist for more than 14 days, reoccur more than 6 times a year or appear in an immunocompromised individual. Patients that present with coexisting systemic illness (fever, swollen glands) should consult their physician. Oral lesions that cause severe pain limiting nutrition, large lesions or clusters of lesions should be assessed by a healthcare professional. Oral lesions occuring in young children or of unknown ethiology should also be assessed.'
	);

INSERT INTO questions VALUES 
	(
		24, 
		1, 
		1, 
		'Are you an adult > 12 years old', 
		'Some products are not suitable for children and use should be avoided.'
	), 
	(
		24, 
		2, 
		1, 
		'Would you like a product for cold sores', 
		'Cold sores present as fluid-filled blisters on or around the lips and are caused by a viral infection.'
	), 
	(
		24, 
		3, 
		1, 
		'Would you like a product to relieve oral or canker pain', 
		'Some products contain a medication to relieve the pain caused by canker sores, uclers or lesions within the mouth. Efficacy may be reduced by some toothpastes, juice, soft drinks or water. Avoid eating or drinking within 30min of application.'
	), 
	(
		24, 
		4, 
		1, 
		'Are you allergic or sensitive to anethetics', 
		'Patients who are sensitive or allergic to anesthetics should avoid products that cointain these agents. Anesthetics may cause severe reactions in children following ingestion. Avoid use in high risk patients or individuals that may accidentally swallow.'
	), 
	(
		24, 
		5, 
		1, 
		'Are you allergic or sensitive to preservatives (benzalkonium chloride or parabens)', 
		'Patients who are sensitive or allergic to preservatives should avoid products that contain these agents.'
	), 
	(
		24, 
		6, 
		1, 
		'Would you like a homeopathic  product', 
		'Some products are homeopathic and are martketed as sugar-free, dye-free, anaesthic-free and paraben-free. Evidence for efficacy may be weak or lacking.'
	), 
	(
		24, 
		7, 
		1, 
		'Would you prefer a product with an astringent', 
		'Products containing an astringent may help relieve irritation of the gum or lesion.'
	), 
	(
		24, 
		8, 
		1, 
		'Would you prefer a product with menthol', 
		'Products containing menthol may have a soothing and cooling sensation. These products may help with pain relief.'
	), 
	(
		24, 
		9, 
		1, 
		'Would you like a product with antiviral', 
		'These products contain a medication with antiviral action and may help heal cold sores.'
	), 
	(
		24, 
		10, 
		1, 
		'Would you like a product with Lysine', 
		'Lysine is a natural amino acid with antiviral activity and may help heal cold sores.'
	);

INSERT INTO criteria VALUES 
	(24, 1, 'Kids', 'True'), 
	(24, 2, 'Adult', '{qid1}'), 
	(24, 3, 'Cold Sore', '{qid2} and not {qid3}'), 
	(24, 4, 'Pain/Canker', '{qid3} and not {qid2}'), 
	(24, 5, 'Anesthetic', 'not {qid4}'), 
	(24, 6, 'AntiViral', '{qid9}'), 
	(24, 7, 'Lysine', '{qid10} and {qid9}'), 
	(24, 8, 'Homeopathic', '{qid6}'), 
	(24, 9, 'BAC/Paraben', 'not {qid5}'), 
	(24, 10, 'Menthol/camphor/phenol', 'not {qid8}'), 
	(24, 11, 'Astringent (zinc)', 'not {qid7}'),
	(24, 12, 'Lysine', 'not {qid10}');

INSERT INTO products VALUES 
	(24, 1, 'Orajel™ Natural Source Homeopathic Nighttime Teething Gel', '', '', ''), 
	(24, 2, 'Orajel™ Natural Source Homeopathic Teething Gel', '', '', ''), 
	(24, 3, 'Orajel™ Touch-Free Cold Sore Treatment', '', '', ''), 
	(24, 4, 'Orajel™ 3X Medicated Severe Toothache & Gum Relief Plus', '', '', ''), 
	(24, 5, 'Orajel™ Double Action Toothache And Gum Relief', '', '', ''), 
	(24, 6, 'Orajel™ Maximum Strength Toothache Pain Relief Gel', '', '', ''), 
	(24, 7, 'Orajel™ Maximum Toothache Relief Liquid', '', '', ''), 
	(24, 8, 'Orajel™ Maximum Strength Pm Toothache & Gum Relief Paste', '', '', ''), 
	(24, 9, 'Orajel™ Regular Strength Toothache Pain Relief Gel', '', '', ''), 
	(24, 10, 'Orajel™ Canker Sore Gel', '', '', ''), 
	(24, 11, 'Anbesol® Regular Strength Cool Mint Gel', '', '', ''), 
	(24, 12, 'Anbesol® Regular Strength Cool Mint Liquid', '', '', ''), 
	(24, 13, 'Anbesol® Cold Sore Therapy', '', '', ''), 
	(24, 14, 'Anbesol® Maximum Strength Gel', '', '', ''), 
	(24, 15, 'Anbesol® Maximum Strength Liquid', '', '', ''), 
	(24, 16, 'Kank-A® Softbrush®', '', '', ''), 
	(24, 17, 'Kank-A® Mouth Pain Liquid', '', '', ''), 
	(24, 18, 'Abreva Cream', '', '', ''), 
	(24, 19, 'Lip Clear® Lysine+® Ointment', '', '', ''), 
	(24, 20, 'Superlysine+® Ointment', '', '', ''), 
	(24, 21, 'Gum® Canker-X® Pain Relief Gel', '', '', ''), 
	(24, 22, 'Canker Sores Begone Stick™', '', '', ''), 
	(24, 23, 'Cold Sores Begone Stick™', '', '', ''), 
	(24, 24, 'Blistex Lip Ointment', '', '', '');

INSERT INTO productCriteria VALUES 
    (24, 1, '{cid1} and {cid4} and not {cid6} and {cid12} and {cid8} and {cid10} and {cid11}'), 
    (24, 2, '{cid1} and {cid4} and not {cid6} and {cid12} and {cid8} and {cid10} and {cid11}'), 
    (24, 3, '{cid2} and {cid3} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9} and {cid10} and {cid11}'), 
    (24, 4, '{cid2} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9}'), 
    (24, 5, '{cid2} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid11}'), 
    (24, 6, '{cid2} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid10}'), 
    (24, 7, '{cid2} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid10}'), 
    (24, 8, '{cid2} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9}'), 
    (24, 9, '{cid1} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid10} and {cid11}'), 
    (24, 10, '{cid2} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid11}'), 
    (24, 11, '{cid1} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9} and {cid10} and {cid11}'), 
    (24, 12, '{cid1} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9} and {cid10} and {cid11}'), 
    (24, 13, '{cid1} and {cid3} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9} and {cid11}'),
    (24, 14, '{cid1} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9} and {cid10} and {cid11}'),
    (24, 15, '{cid1} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid9} and {cid10} and {cid11}'),
    (24, 16, '{cid1} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid10}'),
    (24, 17, '{cid1} and {cid4} and {cid5} and not {cid6} and {cid12} and not {cid8} and {cid10} and {cid11}'),
    (24, 18, '{cid2} and {cid3} and {cid6} and {cid12} and not {cid8} and {cid10} and {cid11}'),
    (24, 19, '{cid1} and {cid3} and {cid6} and {cid7} and not {cid8}'),
    (24, 20, '{cid1} and {cid3} and {cid6} and {cid7} and not {cid8}'),
    (24, 21, '{cid2} and {cid4} and not {cid6} and {cid12} and not {cid8} and {cid9} and {cid10} and {cid11}'),
    (24, 22, '{cid1} and {cid4} and {cid6} and {cid7} and not {cid8} and {cid11}'),
    (24, 23, '{cid1} and {cid3} and {cid6} and {cid7} and not {cid8} and {cid10} and {cid11}'),
    (24, 24, '{cid1} and {cid3} and not {cid6} and {cid12} and not {cid8} and {cid11}');
