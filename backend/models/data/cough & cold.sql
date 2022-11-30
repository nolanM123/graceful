INSERT INTO ailments VALUES 
	(
		4, 
		'Cough & Cold', 
		'Consult your phyisician in presence of severe cold and flu symptoms, COVID-19 symptoms or for patients with significantly decreased food or fluid intake. Consult your physician if a child has symptoms of croup, ear infection, excessive lethargy, excessive irritability, skin rash, or cough associated with vomitting. Individuals with chronic medical conditions, nursing home residents, seniors over 65 years old, conditions compromissing management of respiratory secretions, pregnant women, children less than 2 years old and children on aspirin are at higher risk of cold and flu complications.'
	);

INSERT INTO questions VALUES 
	(
		4, 
		1, 
		1, 
		'Are you diabetic', 
		'Preparations with decongestants and/or sugar may cause blood glucose levels to increase. Avoid use if you are diabetic.'
	), 
	(
		4, 
		2, 
		1, 
		'Do you have hypertension (uncontrolled), glaucoma, hyperthyroidism and/or seizures', 
		'Decongestants (pseudoephedrine) may worsen hypertension, glaucoma, hyperthyroidism and seizures. Avoid use if you have these conditions.'
	), 
	(
		4, 
		3, 
		1, 
		'Are you taking an SSRI, SNRI, CYP2D6 inhibitor and/or Triptan', 
		'SSRIs include citalopram, escitalopram, fluoxetine, fluvoxamine, paroxetine and sertraline. SNRIs include venlafaxine, desvenlafaxine and duloxetine. Triptans include sumatriptan, almotriptan, frovatriptan, eletriptan, rizatriptan and naratriptan.'
	), 
	(
		4, 
		4, 
		1, 
		'Are you Pregnant and/or Breast Feeding', 
		'Dextromethorphan (cough suppressant), decongestants (pseudoephedrine) and alcohol containing products should be avoided in pregnant and/or breast feeding women.'
	), 
	(
		4, 
		5, 
		1, 
		'Are you an adult ≥ 12 yrs old', 
		'Health Canada does not recommend many cough and cold ingredients in children younger than 6 yrs old. Consult your physician if child has signs of dehydration including sunken fontanel, absence of tears and/or decreased urination.'
	), 
	(
		4, 
		6, 
		1, 
		'Are you taking an MAOI (within last 2 weeks)', 
		'MAOIs include safinamide, linezolid, procarbazine, amphetamines (ADHD meds), methylene blue, rasagiline, moclobemide, selegiline, phenelzine and tranylcypromine. Consult your pharmacist if unsure.'
	), 
	(
		4, 
		7, 
		1, 
		'Are you taking any anticholinergics or CNS depressants', 
		'Anticholinergic and CNS depressants are medications that cause or enhance drowsiness. Consult your pharmacist if unsure.'
	), 
	(
		4, 
		8, 
		1, 
		'Do you have treated or untreated upset stomach or ulcers', 
		'Ibuprofen may worsen upset stomach and peptic ulcers. Avoid use if you have these medical conditions.'
	), 
	(
		4, 
		9, 
		1, 
		'Do you frequently drink alcohol', 
		'Alcohol may increase the risk of liver injury. Avoid use with acetaminophen. Alcohol may increase the risk of drowsiness. Avoid use with antihistamines.'
	), 
	(
		4, 
		10, 
		1, 
		'Are you taking blood thinners', 
		'Blood thinners include warfarin, aspirin, clopidogrel, dipyridamole, ticlopidine, ticagrelor, dabigatran, apixaban, rivaroxaban, dalteparin, etc. Ibuprofen may increase risk of bleeding. Counsult your pharmacist for further information.'
	), 
	(
		4, 
		11, 
		1, 
		'Are you sensitive or allergic to anesthetics', 
		'Some products contain anesthetics to numb pain. Avoid use if you are sensitive or allergic to anesthetics.'
	), 
	(
		4, 
		12, 
		2, 
		'Do you have a cough', 
		'Consult your pharmacist or physician if you require codeine for cough suppression. Consult your physician for cough lasting more than 3 weeks. Consult your pharmacist if you have a persistent dry cough and are taking high blood pressure medication.'
	), 
	(
		4, 
		13, 
		2, 
		'Do you have sniffles and/or runny nose', 
		'Consult your physician if you have a respiratory disease, breathing difficulties, wheezing, stridor or chest pain while breathing.'
	), 
	(
		4, 
		14, 
		2, 
		'Do you have congestion', 
		'Consult your physician in presence of prolonged nasal congestion with purulent discharge. Consult your pharmacist for blocked ears or for access to single ingredient decongestant.'
	), 
	(
		4, 
		15, 
		2, 
		'Do you have phelgm', 
		'Thinning phelgm may help reduce cough. Avoid suppressing a productive cough unless sleep quality negatively impacted. Consult your physician in presence of bloody or colored sputum.'
	), 
	(
		4, 
		16, 
		2, 
		'Do you have fever', 
		'Consult your physician if fever higher than 38°C in a child or lasting more than 3 days in an adult. Avoid use of NSAIDS in children with fever due to risk of Reye''s Syndrome.'
	), 
	(
		4, 
		17, 
		2, 
		'Do you have aches and pain', 
		'Consult your physician if you have a cold or flu with severe headache and/or neck pain. Avoid use of acetaminophen products with frequent alcohol use. Consult your pharmacist for further information.'
	), 
	(
		4, 
		18, 
		2, 
		'Do you have a sore throat', 
		'Consult your physician in the presence of severe throat pain, difficulty swallowing and/or painful swallowing.'
	), 
	(
		4, 
		19, 
		2, 
		'Do you prefer a syrup (liquid)', 
		'Some adult liquid preperations may contain alcohol and should be avoided in pregnancy. Most products for children are available as easy to swallow flavored liquid preparations.'
	), 
	(
		4, 
		20, 
		2, 
		'Do you prefer an oral tablet, gel or lozenge', 
		'Oral medications may provide broad/systemic action but are more likely to lead to adverse effects.'
	), 
	(
		4, 
		21, 
		2, 
		'Do you prefer a topical product', 
		'Topical medications may limit/reduce medication side effects while providing targeted action at the site of application.'
	);

INSERT INTO criteria VALUES 
	(4, 1, 'Adult', '{qid5}'), 
	(4, 2, 'Kids', 'not {qid5}'), 
	(4, 3, 'Liquid', '{qid19} and not ({qid20} or {qid21} or {qid4})'), 
	(4, 4, 'Tab', '{qid20} and not ({qid19} or {qid21})'), 
	(4, 5, 'Topical', '{qid21} and not ({qid19} or {qid20})'), 
	(4, 6, 'Cough Suppressant', '{qid12} and not ({qid3} or {qid4} or {qid6})'), 
	(4, 7, 'Anti-Histamine', 'not ({qid7} or {qid9}) and ({qid12} or {qid13})'), 
	(4, 8, 'Decongestant', 'not ({qid1} or {qid2} or {qid4} or {qid6}) and {qid14}'), 
	(4, 9, 'Guaifenasin', '{qid12} or {qid15}'), 
	(4, 10, 'APAP', 'not {qid9} and ({qid16} or {qid17})'), 
	(4, 11, 'Ibuprofen', 'not ({qid2} or {qid4} or {qid8} or {qid10}) and ({qid16} or {qid17})'), 
	(4, 12, 'Menthol', '{qid12} or {qid14} or {qid18}'), 
	(4, 13, 'Anesthetic', '{qid18} and not {qid11}'), 
	(4, 14, 'Antiseptic', '{qid18}');

INSERT INTO products VALUES 
	(
		4,
		1,
		'Advil Cold & Flu',
		'https://www.advil.ca/product/advil-cold-flu',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid11}'
	),
	(
		4,
		2,
		'Advil Cold, Cough & Flu Nighttime ',
		'https://www.advil.ca/product/advil-cold-cough-flu-nighttime',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid11}'
	),
	(
		4,
		3,
		'Advil Cold & Sinus Caplets',
		'https://www.advil.ca/product/advil-cold-sinus-caplets',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid8} and {cid11}'
	),
	(
		4,
		4,
		'Advil Cold & Sinus Daytime / Nighttime',
		'https://www.advil.ca/product/advil-cold-sinus-daytime-nighttime',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		5,
		'Advil Cold & Sinus Liqui-Gels ',
		'https://www.advil.ca/product/advil-cold-sinus-liqui-gels',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid8} and {cid11}'
	),
	(
		4,
		6,
		'Advil Cold & Sinus Nighttime',
		'https://www.advil.ca/product/advil-cold-sinus-nighttime',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		7,
		'Advil Cold & Sinus Plus',
		'https://www.advil.ca/product/advil-cold-sinus-plus',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		8,
		'Advil Cold, Sinus & Flu Extra Strength ',
		'https://www.advil.ca/product/advil-cold-sinus-flu-extra-strength',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		9,
		'Advil Pediatric Drops Fever From Colds Or Flu (4Months-3Yrs)',
		'https://www.advil.ca/product/advil-pediatric-drops-fever-colds-or-flu',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid11}'
	),
	(
		4,
		10,
		'Children S Advil Cold Liquid (6-12Yrs)',
		'https://www.advil.ca/product/children-s-advil-cold',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid8} and {cid11}'
	),
	(
		4,
		11,
		'Children S Advil Cold And Flu Multi-Symptom Liquid (6-12Yrs)',
		'https://www.advil.ca/product/children-s-advil-cold-and-flu-multi-symptom',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		12,
		'Children S Advil Fever From Colds Or Flu Liquid (2-12Yrs)',
		'https://www.advil.ca/product/children-s-advil-fever-colds-or-flu',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid11}'
	),
	(
		4,
		13,
		'Junior Strength Advil Fever From Cold Or Flu Tabs (2-12Yrs)',
		'https://www.advil.ca/product/junior-strength-advil-fever-cold-or-flu',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid4} and {cid11}'
	),
	(
		4,
		14,
		'Tylenol  Sinus Pressure And Pain',
		'https://www.tylenol.ca/products/tylenol-sinus-pressure-and-pain',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid8} and {cid10}'
	),
	(
		4,
		15,
		'Children''s Tylenol  Fever & Sore Throat Pain Chewables (2-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-fever-sore-throat-pain-chewables',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid4} and {cid10}'
	),
	(
		4,
		16,
		'Tylenol  Complete Cold, Cough & Flu',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		17,
		'Tylenol  Complete Cold, Cough & Flu Plus Mucus Relief Liquid Gels',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-liquid-gels',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		18,
		'Tylenol  Complete Cold, Cough & Flu Plus Mucus Relief Syrup',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-syrup',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		19,
		'Tylenol  Complete Cold, Cough & Flu Plus Mucus Relief Nighttime Syrup',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-nighttime-syrup',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		20,
		'Tylenol  Cold',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-cold',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		21,
		'Tylenol  Flu',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-flu',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		22,
		'Tylenol  Cold & Sinus',
		'https://www.tylenol.ca/products/sinus/tylenol-cold-sinus',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		23,
		'Tylenol  Sinus',
		'https://www.tylenol.ca/products/sinus/tylenol-sinus',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		24,
		'Infants'' Tylenol  Fever & Sore Throat Pain (0-23Months)',
		'https://www.tylenol.ca/products/infants-children/infants-tylenol-fever-sore-throat-pain',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid10}'
	),
	(
		4,
		25,
		'Children''s Tylenol  Fever & Sore Throat Pain (2-5Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-fever-sore-throat-pain',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid10}'
	),
	(
		4,
		26,
		'Children''s Tylenol  Cold & Stuffy Nose (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/children-s-tylenol-cold-stuffy-nose',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid8} and {cid10}'
	),
	(
		4,
		27,
		'Children''s Tylenol  Cold (6-11Yrs Old)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		28,
		'Children''s Tylenol  Cold & Cough Nighttime Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold-cough-nighttime',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		29,
		'Children''s Tylenol  Cold & Cough Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold-cough',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		30,
		'Children''s Tylenol  Complete Cold Cough & Fever Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/children-s-tylenol-complete-cold-cough-fever',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		31,
		'Children''s Tylenol  Complete Cold Cough & Fever Nighttime Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/children-s-tylenol-complete-cold-cough-fever-nighttime',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		32,
		'Mucinex',
		'https://www.mucinex.ca/en/mucinex-products/',
		'',
		'https://s3.eu-west-1.amazonaws.com/sk-media-mucinex-ca-prod/media/1005/mucinex-logo-en-fr_t.png',
		'{cid1} and {cid4} and {cid9}'
	),
	(
		4,
		33,
		'Buckley''s Original Mixture Liquid',
		'https://www.buckleys.ca/products/syrups/original-mixture/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid12}'
	),
	(
		4,
		34,
		'Buckley''s Original Mixture Nighttime Liquid',
		'https://www.buckleys.ca/products/syrups/original-mixture-nighttime/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid12}'
	),
	(
		4,
		35,
		'Buckley''s Complete Liquid',
		'https://www.buckleys.ca/products/syrups/complete-syrup/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid10} and {cid12}'
	),
	(
		4,
		36,
		'Buckley''s Complete + Mucus Liquid',
		'https://www.buckleys.ca/products/pills/complete-mucus-liquid-gels-day-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		37,
		'Buckley''s Cough, Chest Congestion Liquid',
		'https://www.buckleys.ca/products/syrups/cough-chest-congestion-syrup/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		38,
		'Buckley''s Cough, Mucus And Phlegm Liquid',
		'https://www.buckleys.ca/products/syrups/cough-mucus-and-phlegm-syrup/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		39,
		'Buckley''s Cold & Sinus Liquid Gels-Daytime',
		'https://www.buckleys.ca/products/pills/cold-and-sinus-liquid-gels-daytime/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		40,
		'Buckley''s Cold & Sinus Liquid Gels-Day/Night',
		'https://www.buckleys.ca/products/pills/cold-and-sinus-liquid-gels-day-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		41,
		'Buckley''s Complete + Mucus Liquid Gels-Daytime',
		'https://www.buckleys.ca/products/pills/complete-plus-mucus-liquid-gels-daytime/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		42,
		'Buckley''s Complete + Mucus Liquid Gels-Day/Night',
		'https://www.buckleys.ca/products/pills/complete-mucus-liquid-gels-day-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		43,
		'Buckley''s Complete Liquid Gels-Nighttime',
		'https://www.buckleys.ca/products/pills/complete-liquid-gels-nighttime/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		44,
		'Buckley''s Complete Cough, Cold & Flu Extra Strength-Daytime',
		'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-daytime/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		45,
		'Buckley''s Complete Cough, Cold & Flu Extra Strength-Nighttime',
		'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-day-night-caplets/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		46,
		'Buckley''s Complete Cough, Cold & Flu Extra Strength-Day/Night',
		'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-day-night-caplets/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		47,
		'Buckley''s Lozenges Bite-Me Cherry',
		'https://www.buckleys.ca/products/lozenges/bite-me-cherry-lozenges/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid12}'
	),
	(
		4,
		48,
		'Buckley''s Lozenges Methol Outburts',
		'https://www.buckleys.ca/products/lozenges/menthol-outburst-sore-throat-lozenges/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid12}'
	),
	(
		4,
		49,
		'Buckley''s Jack & Jill Cough & Cold Cherry Flavour Liquid (6-12Yrs)',
		'https://www.buckleys.ca/products/jack-and-jill-childrens-cough-syrup/jack-and-jill-cough-and-cold-cherry-flavour/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid8}'
	),
	(
		4,
		50,
		'Buckley''s Jack & Jill Bedtime Cough & Cold Grape Flavour Liquid (6-12Yrs)',
		'https://www.buckleys.ca/products/jack-and-jill-childrens-cough-syrup/jack-and-jill-bedtime-cough-and-cold-grape-flavour/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		51,
		'Children''s Nyquil  Cold & Cough Medicine Liquid (6+Yrs)',
		'https://vicks.ca/en-ca/shop-products/childrens-products/childrens-nyquil-tm-cold-and-cough-medicine',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid2} and {cid3} and {cid6} and {cid7}'
	),
	(
		4,
		52,
		'Vicks Vapopatch With Long Lasting Vicks Scented Vapours For Adults & Children (6+Yrs)',
		'https://vicks.ca/en-ca/shop-products/vaporub/vicks-vapopatch-with-long-lasting-vicks-scented-vapours-for-adults-and',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		4,
		53,
		'Vicks Vaporub Children S Nasal Decongestant Cough Suppressant Ointment (2+Yrs)',
		'https://vicks.ca/en-ca/shop-products/childrens-products/vicks-vaporub-childrens-nasal-decongestant-cough-suppressant-ointment-50-g',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		4,
		54,
		'Vicks  Babyrub  (3Months+)',
		'https://vicks.ca/en-ca/shop-products/childrens-products/vicks-babyrub',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		4,
		55,
		'Vicks Vaporub Nasal Decongestant Cough Suppressant Ointment, Lavender Scent',
		'https://vicks.ca/en-ca/shop-products/vaporub/vicks-vaporub-nasal-decongestant-cough-suppressant-ointment-lavender-scent',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid5} and {cid12}'
	),
	(
		4,
		56,
		'Vaporub Ointment',
		'https://vicks.ca/en-ca/shop-products/vaporub/vicks-vaporub-ointment',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid5} and {cid12}'
	),
	(
		4,
		57,
		'Vicks Dayquil Complete Cold & Flu Relief',
		'https://vicks.ca/en-ca/shop-products/dayquil/vicks-dayquil-complete-cold-and-flu-relief-24-liquicaps',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		58,
		'Vicks Dayquil  Complete Cold & Flu Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-complete-cold-and-flu-liquid',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		59,
		'Vicks  Dayquil And Nyquil Complete Cough, Cold & Flu Relief',
		'https://vicks.ca/en-ca/shop-products/nyquil/vicks-dayquil-and-nyquil-complete-cough-cold-and-flu-relief-24-liquicaps-16',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		60,
		'Dayquil  Cold & Flu Multi Symptom Relief Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cold-and-flu-multi-symptom-relief-liquicaps',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		61,
		'Dayquil  /Nyquil  Cold & Flu Multi Symptom Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-nyquil-cold-flu-multi-symptom-liquicaps',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		62,
		'Dayquil  & Nyquil  Sinus Convenience Pack',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-and-nyquil-sinus-convenience-pack',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		63,
		'Dayquil  Cold & Flu Multi Symptom Relief Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cold-and-flu-multi-symptom-relief-liquid',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		64,
		'Dayquil  Cough Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cough',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6}'
	),
	(
		4,
		65,
		'Dayquil  Cough & Congestion Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cough-congestion',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		66,
		'Dayquil  Sinus Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-sinus-liquicaps',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid8} and {cid10}'
	),
	(
		4,
		67,
		'Nyquil  Cold & Flu Nighttime Relief Liquid/Dayquil  Cold & Flu Multi-Symptom Relief Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-dayquil-multi-symptom-relief',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		68,
		'Vicks Nyquil Complete Cough, Cold & Flu Relief',
		'https://vicks.ca/en-ca/shop-products/nyquil/vicks-nyquil-complete-cough-cold-and-flu-relief-24-liquicaps',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		69,
		'Vicks  Nyquil Complete Cold & Flu Liquid',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-complete-cold-flu-liquid',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		70,
		'Nyquil  Cold & Flu Nighttime Relief Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-liquicaps',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		71,
		'Nyquil  Cold & Flu Nighttime Relief Liquid',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-liquid',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		72,
		'Nyquil  Cough Liquid',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cough',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid7}'
	),
	(
		4,
		73,
		'Nyquil  Sinus Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-sinus-liquicaps',
		'',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		74,
		'Robitussin Extra Strength Honeycough & Congestion Liquid',
		'https://www.robitussin.ca/products/robitussin-extra-strength-honey-cough-and-congestion',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		75,
		'Robitussin Cough Control Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-control',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		76,
		'Robitussin Cough Control Extra Strength Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-control-extra-strength',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		77,
		'Robitussincough Controlfor People With Diabetes Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-control-people-diabetes',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		78,
		'Robitussinmucus & Phlegm Liquid',
		'https://www.robitussin.ca/products/robitussin-mucus-phlegm',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid9}'
	),
	(
		4,
		79,
		'Robitussinmucus & Phlegmextra Strength Liquid',
		'https://www.robitussin.ca/products/robitussin-mucus-phlegm-extra-strength',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid9}'
	),
	(
		4,
		80,
		'Robitussindm Coughgels',
		'https://www.robitussin.ca/products/robitussin-dm-coughgels',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid4} and {cid6}'
	),
	(
		4,
		81,
		'Robitussin Honey Cough & Cold Nighttime Liquid',
		'https://www.robitussin.ca/products/robitussin-honey-cough-and-cold-nighttime',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid7}'
	),
	(
		4,
		82,
		'Robitussin Cough & Cold Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-cold',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9}'
	),
	(
		4,
		83,
		'Robitussin Cough & Cold Extra Strength Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-cold-extra-strength',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9}'
	),
	(
		4,
		84,
		'Robitussin Total Cough, Cold & Flu Liquid',
		'https://www.robitussin.ca/products/robitussin-total-cough-cold-flu',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		85,
		'Robitussin Total Cough, Cold & Flu Extra Strength Liquid',
		'https://www.robitussin.ca/products/robitussin-total-cough-cold-flu-extra-strength',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		86,
		'Robitussin Complete Daytime',
		'https://www.robitussin.ca/products/robitussin-complete-daytime',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		87,
		'Robitussin Completedaytime/Nighttime',
		'https://www.robitussin.ca/products/robitussin-complete-daytime-nighttime',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		88,
		'Robitussin Children''s Cold Liquid (6-12Yrs)',
		'https://www.robitussin.ca/products/robitussin-childrens-cold',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		89,
		'Robitussin Children''s Cough & Cold Liquid (6-12Yrs)',
		'https://www.robitussin.ca/products/robitussin-childrens-cough-and-cold',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid8}'
	),
	(
		4,
		90,
		'Robitussin Children''s Cough & Cold Bedtime Liquid (6-12Yrs)',
		'https://www.robitussin.ca/products/robitussin-childrens-cough-cold-bedtime',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		91,
		'Children''s Dimetapp  Cold & Allergy Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-cold-allergy/',
		'',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		92,
		'Children''s Dimetapp  Cold & Cough Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-cold-cough/',
		'',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		93,
		'Children''s Dimetapp  Day & Night Value Pack Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/day-night-value-pack/',
		'',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		94,
		'Children''s Dimetapp  Multi-Symptom Cold & Flu Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-multi-symptom-cold-flu/',
		'',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid10} and {cid12}'
	),
	(
		4,
		95,
		'Children''s Dimetapp  Multi-Symptom Cold Relief Dye-Free Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-multi-symptom-cold-flu/',
		'',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		96,
		'Children''s Dimetapp  Nighttime Cold & Congestion Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-nighttime-cold-congestion/',
		'',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		97,
		'Neocitran Total Cold Night',
		'https://www.neocitran.ca/products/total-cold-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		98,
		'Neocitran Extra Strength Total Cold Non-Drowsy',
		'https://www.neocitran.ca/products/extra-strength-total-cold-non-drowsy/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		99,
		'Neocitran Extra Strength Total Cold Night',
		'https://www.neocitran.ca/products/extra-strength-total-cold-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		100,
		'Neocitran Extra Strenght Cold & Sinus Night Apple Cinnamon',
		'https://www.neocitran.ca/products/extra-strength-cold-sinus-night-apple-cinnamon/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		101,
		'Neocitran Extra Strenght Cold & Sinus Night',
		'https://www.neocitran.ca/products/extra-strength-cold-sinus-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		102,
		'Neocitran Cold And Sore Throat Night',
		'https://www.neocitran.ca/products/cold-sore-throat-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		103,
		'Neocitran Ultra Strength Total Flu Night',
		'https://www.neocitran.ca/products/ultra-strength-total-flu-night/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		104,
		'Neocitran Ultra Strength Total Flu Non-Drowsy',
		'https://www.neocitran.ca/products/ultra-strength-total-flu-non-drowsy/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		105,
		'Neocitran Extra Strength Cold & Congestion Non-Drowsy',
		'https://www.neocitran.ca/products/extra-strength-cold-congestion-non-drowsy/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid8} and {cid10}'
	),
	(
		4,
		106,
		'Benylin AllInOne  Cold And Flu Caplets',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-caplets',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		107,
		'Benylin AllInOne  Cold And Flu Day/Night Caplets',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-day-night-caplets',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		108,
		'Benylin AllInOne  Cold And Flu Liquid Gels',
		'https://www.benylin.ca/regular-strength/all-in-one-cold-and-flu-liquid-gels',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		109,
		'Benylin AllInOne  Cold And Flu Night Caplets',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-night-caplets',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		110,
		'Benylin AllInOne  Cold And Flu Night Syrup',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-night-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		111,
		'Benylin AllInOne  Cold And Flu Syrup',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		112,
		'Benylin AllInOne  Cold And Flu With Warming Sensation Syrup',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-warming',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		113,
		'Benylin For Children AllInOne  Cold And Fever Nighttime Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/all-in-one-cold-and-fever-nighttime-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		114,
		'Benylin For Children AllInOne  Cold And Fever Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/all-in-one-cold-and-fever-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		115,
		'Mucus & Phlegm Plus Cold Relief Caplets',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cold-relief-caplets',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		116,
		'Mucus & Phlegm Plus Cold Relief Night Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cold-relief-night-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		117,
		'Mucus & Phlegm Plus Cold Relief Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cold-relief-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		118,
		'Mucus & Phlegm Plus Cough Control Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cough-control-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'
	),
	(
		4,
		119,
		'Mucus & Phlegm Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		120,
		'Benylin  Cough & Chest Congestion For People With Diabetes Liquid',
		'https://www.benylin.ca/products/cough/benylin-cough-chest-congestion-people-diabetes',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'
	),
	(
		4,
		121,
		'Chest Congestion & Cold Syrup',
		'https://www.benylin.ca/extra-strength/chest-congestion-and-cold-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		122,
		'Cough & Chest Congestion Syrup',
		'https://www.benylin.ca/extra-strength/cough-and-chest-congestion-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'
	),
	(
		4,
		123,
		'Cough & Chest Congestion With Warming Sensation Syrup',
		'https://www.benylin.ca/extra-strength/cough-and-chest-congestion-warming-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid12}'
	),
	(
		4,
		124,
		'Cough Plus Cold Relief Syrup',
		'https://www.benylin.ca/extra-strength/cough-plus-cold-relief-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid12}'
	),
	(
		4,
		125,
		'Dry Cough Night Syrup',
		'https://www.benylin.ca/regular-strength/dry-cough-night-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid7}'
	),
	(
		4,
		126,
		'Dry Cough Syrup',
		'https://www.benylin.ca/regular-strength/dry-cough-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid12}'
	),
	(
		4,
		127,
		'For Children Cough & Cold Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/cough-and-cold-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid6} and {cid8}'
	),
	(
		4,
		128,
		'For Children Cough Night Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/cough-night',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid7}'
	),
	(
		4,
		129,
		'For Children Dry Cough Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/dry-cough-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid6}'
	),
	(
		4,
		130,
		'Tickly Throat Cough Syrup',
		'https://www.benylin.ca/regular-strength/tickly-throat-cough-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid12}'
	),
	(
		4,
		131,
		'Cold & Sinus Day/Night Tablets',
		'https://www.benylin.ca/extra-strength/cold-and-sinus-day-night-tablets',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		132,
		'Cold & Sinus Plus+ Tablets',
		'https://www.benylin.ca/extra-strength/cold-and-sinus-plus-tablets',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		133,
		'Sore Throat & Cough Syrup',
		'https://www.benylin.ca/products/sore-throat/benylin-sore-throat-cough-syrup',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		134,
		'Sore Throat Lozenge',
		'https://www.benylin.ca/products/sore-throat-lozenge/sore-throat-lozenge',
		'',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid13} and {cid14}'
	),
	(
		4,
		135,
		'Strepsils Honey & Lemon Lozenges',
		'https://www.strepsils.co.uk/pages/dry-scratchy-throat',
		'',
		'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		136,
		'Strepsils Extra Triple Action Blackcurrant Lozenges',
		'https://www.strepsils.co.uk/pages/painful-irritated-sore-throat',
		'',
		'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491',
		'{cid1} and {cid4} and {cid13} and {cid14}'
	),
	(
		4,
		137,
		'Strepsils Sore Throat & Cough',
		'https://www.strepsils.co.uk/pages/sore-throat-cough-or-blocked-nose',
		'',
		'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491',
		'{cid1} and {cid4} and {cid13} and {cid14}'
	),
	(
		4,
		138,
		'Cepacol Sensations - Honey & Lemon',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-honey-lemon/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		139,
		'Cepacol Sensations -Sucrose Free Lemon',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sucrose-free-lemon/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		140,
		'Cepacol Sensations - Sore Throat & Cough',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sore-throat-cough/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid14}'
	),
	(
		4,
		141,
		'Cepacol Sensations - Sore Throat & Blocked Nose',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sore-throat-blocked-nose/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid14}'
	),
	(
		4,
		142,
		'Cepacol Extra Strength - Sucrose Free Cherry',
		'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-freey-cherry/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	),
	(
		4,
		143,
		'Cepacol Extra Strength - Sucrose Free Honey & Lemon',
		'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-freey-honey-lemon/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		144,
		'Cepacol Extra Strength - Sucrose Free Orange',
		'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-free-orange/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	),
	(
		4,
		145,
		'Cepacol Children - Fruity Strawberry (6-12Yrs)',
		'https://www.cepacol.ca/en/products/cepacol-children-s-sore-throat-lozenges/cepacol-children-s/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		146,
		'Cepacol Instamax Cherry',
		'https://www.cepacol.ca/en/products/new-cepacol-instamax-lozenges/cepacol-instamax-cherry-12ct/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	),
	(
		4,
		147,
		'Cepacol Instamax Berry',
		'https://www.cepacol.ca/en/products/new-cepacol-instamax-lozenges/cepacol-instamax-berry-24ct/',
		'',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	);
