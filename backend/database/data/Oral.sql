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
	(
		25,
		1,
		'Orajel Natural Source Homeopathic Nighttime Teething Gel',
		'https://www.orajel.com/en-ca/products/child-oral-care/orajel-natural-source-homeopathic-nighttime-teething-gel',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11}'
	),
	(
		25,
		2,
		'Orajel Natural Source Homeopathic Teething Gel',
		'https://www.orajel.com/en-ca/products/child-oral-care/orajel-natural-source-homeopathic-teething-gel',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11}'
	),
	(
		25,
		3,
		'Orajel Touch-Free Cold Sore Treatment',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-touch-free-cold-sore-treatment',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid2} and {cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11}'
	),
	(
		25,
		4,
		'Orajel 3X Medicated Severe Toothache & Gum Relief Plus',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-severe-toothache-and-gum-relief-plus-triple-medicated-cream',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid2} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9}'
	),
	(
		25,
		5,
		'Orajel Double Action Toothache And Gum Relief',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-double-action-toothache-and-gum-relief',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid2} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid11}'
	),
	(
		25,
		6,
		'Orajel Maximum Strength Toothache Pain Relief Gel',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-maximum-strength-toothache-pain-relief-double-medicated-gel',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid2} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		25,
		7,
		'Orajel Maximum Toothache Relief Liquid',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-maximum-toothache-relief-liquid',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid2} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		25,
		8,
		'Orajel Maximum Strength Pm Toothache & Gum Relief Paste',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-maximum-strength-pm-toothache-and-gum-relief-paste',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid2} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9}'
	),
	(
		25,
		9,
		'Orajel Regular Strength Toothache Pain Relief Gel',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-regular-strength-toothache-pain-relief-gel',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11}'
	),
	(
		25,
		10,
		'Orajel Canker Sore Gel',
		'https://www.orajel.com/en-ca/products/adult-oral-care/orajel-film-forming-canker-sore-gel',
		'',
		'https://www.orajel.com/-/media/orajel/layout/orajel-logo.png',
		'{cid2} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid11}'
	),
	(
		25,
		11,
		'Anbesol Regular Strength Cool Mint Gel',
		'https://www.anbesol.com/products/',
		'',
		'https://d2kemwmzy87i2a.cloudfront.net/logos/anbesol-gel-baby-teething-medicine.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11}'
	),
	(
		25,
		12,
		'Anbesol Regular Strength Cool Mint Liquid',
		'https://www.anbesol.com/products/',
		'',
		'https://d2kemwmzy87i2a.cloudfront.net/logos/anbesol-gel-baby-teething-medicine.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11}'
	),
	(
		25,
		13,
		'Anbesol Cold Sore Therapy',
		'https://www.anbesol.com/products/',
		'',
		'https://d2kemwmzy87i2a.cloudfront.net/logos/anbesol-gel-baby-teething-medicine.png',
		'{cid1} and {cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid11}'
	),
	(
		25,
		14,
		'Anbesol Maximum Strength Gel',
		'https://www.anbesol.com/products/',
		'',
		'https://d2kemwmzy87i2a.cloudfront.net/logos/anbesol-gel-baby-teething-medicine.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11}'
	),
	(
		25,
		15,
		'Anbesol Maximum Strength Liquid',
		'https://www.anbesol.com/products/',
		'',
		'https://d2kemwmzy87i2a.cloudfront.net/logos/anbesol-gel-baby-teething-medicine.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11}'
	),
	(
		25,
		16,
		'Kank-A  Softbrush ',
		'https://www.kank-a.com/products/kank-a-softbrush/',
		'',
		'https://www.kank-a.com/wp-content/uploads/logo-kanka.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		25,
		17,
		'Kank-A  Mouth Pain Liquid',
		'https://www.kank-a.com/products/kank-a-mouth-pain-liquid/',
		'',
		'https://www.kank-a.com/wp-content/uploads/logo-kanka.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11}'
	),
	(
		25,
		18,
		'Abreva Cream',
		'https://www.abreva.ca/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/skin-abreva/en_CA/logo/abreva-logo.jpg?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11}'
	),
	(
		25,
		19,
		'Lip Clear  Lysine+  Ointment',
		'https://quantumhealth.com/shop/product/lipclear-lysine-ointment-7g',
		'',
		'https://quantumhealth.com/themes/quantumhealth/assets/images/logos/quantum-logo-header.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		25,
		20,
		'Superlysine+  Ointment',
		'https://quantumhealth.com/shop/product/super-lysine-ointment-7g-cold-sore-treatment',
		'',
		'https://quantumhealth.com/themes/quantumhealth/assets/images/logos/quantum-logo-header.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		25,
		21,
		'Gum  Canker-X  Pain Relief Gel',
		'https://www.gumbrand.com/gum-canker-x-gel.html',
		'',
		'https://www.gumbrand.com/static/frontend/Sunstar/default/en_US/images/sunstar-logo.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11}'
	),
	(
		25,
		22,
		'Canker Sores Begone Stick ',
		'https://www.soresbegone.com/products/canker-sores-begone-stick%E2%84%A2',
		'',
		'',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11}'
	),
	(
		25,
		23,
		'Cold Sores Begone Stick ',
		'https://www.soresbegone.com/products/cold-sores-begone-stick',
		'',
		'',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11}'
	),
	(
		25,
		24,
		'Blistex Lip Ointment',
		'https://www.blistex.com/products/medicated-lip-ointment/',
		'',
		'https://blistex.com/wp-content/themes/blistex/dist/assets/images/logo.jpg',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid11}'
	);
