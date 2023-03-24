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
		'This formula fights cold and flu symptoms, so you can get the relief you need to rest and recover.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid11}'
	),
	(
		4,
		2,
		'Advil Cold, Cough & Flu Nighttime ',
		'https://www.advil.ca/products/cough-cold-flu/advil-cold-cough-flu-nighttime/',
		'Advil Cold, Cough & Flu Nighttime provides relief from cold or flu symptoms, including cough. It''s multi-symptom relief so you can rest.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid11}'
	),
	(
		4,
		3,
		'Advil Cold & Sinus Caplets',
		'https://www.advil.ca/product/advil-cold-sinus-caplets',
		'Advil Cold & Sinus caplets relieve nasal congestion to help open up your airways, making it easy to breathe.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid8} and {cid11}'
	),
	(
		4,
		4,
		'Advil Cold & Sinus Daytime / Nighttime',
		'https://www.advil.ca/product/advil-cold-sinus-daytime-nighttime',
		'Advil Cold & Sinus Daytime/Nighttime offers relief of cold and sinus symptoms day and night. Daytime caplets keep you going during the day, while Nighttime caplets offer added relief from runny nose and sneezing, so you can rest.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		5,
		'Advil Cold & Sinus Liqui-Gels ',
		'https://www.advil.ca/product/advil-cold-sinus-liqui-gels',
		'They are formulated with a decongestant to relieve nasal congestion. You can count on this non-drowsy formula to relieve your cold and sinus symptoms, fast.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid8} and {cid11}'
	),
	(
		4,
		6,
		'Advil Cold & Sinus Nighttime',
		'https://www.advil.ca/product/advil-cold-sinus-nighttime',
		'Advil Cold & Sinus Nighttime relieves your cold symptoms by relieving nasal congestion congestion to help open your airways, so you can get the rest you need.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		7,
		'Advil Cold & Sinus Plus',
		'https://www.advil.ca/product/advil-cold-sinus-plus',
		'Advil Cold & Sinus Plus provides effective relief by helping to relieve nasal congestion—so you can breathe easy. Plus, it contains an antihistamine to address runny nose and sneezing.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		8,
		'Advil Cold, Sinus & Flu Extra Strength ',
		'https://www.advil.ca/product/advil-cold-sinus-flu-extra-strength',
		'Advil Cold, Sinus & Flu Extra Strength provides effective relief of your worst cold, sinus & flu symptoms. From the makers of the #1 selling pain reliever, it relieves 10 symptoms, all-in-one extra strength pill*.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		9,
		'Advil Pediatric Drops Fever From Colds Or Flu (4Months-3Yrs)',
		'https://www.advil.ca/product/advil-pediatric-drops-fever-colds-or-flu',
		'Advil Pediatric Drops provide up to 8 hours of relief, so your little one can get the rest he or she needs to get better. They come with a SURE-DOSE™ oral syringe for precise and easy dosing. For ages 4 months to 3 years. For children under 3 months of age consult your physician.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid11}'
	),
	(
		4,
		10,
		'Children''s Advil Cold Liquid (6-12Yrs)',
		'https://www.advil.ca/products/children-s-advil/children-s-advil-cold/',
		'Children''s Advil Cold is formulated with a decongestant and pain reliever to relieve your child''s cold symptoms. For ages 6-12 years.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid8} and {cid11}'
	),
	(
		4,
		11,
		'Children''s Advil Cold And Flu Multi-Symptom Liquid (6-12Yrs)',
		'https://www.advil.ca/product/children-s-advil-cold-and-flu-multi-symptom',
		'Children''s Advil Cold & Flu Multi-symptom temporarily relieves the combined symptoms associated with a cold and flu. For kids ages 6-12 years.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid11}'
	),
	(
		4,
		12,
		'Children''s Advil Fever From Colds Or Flu Liquid (2-12Yrs)',
		'https://www.advil.ca/product/children-s-advil-fever-colds-or-flu',
		'Children''s Advil Fever from Colds or Flu provides up to 8 hours of relief, so kids can get back to being kids. For ages 2-12 years.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid11}'
	),
	(
		4,
		13,
		'Junior Strength Advil Fever From Cold Or Flu Tabs (2-12Yrs)',
		'https://www.advil.ca/product/junior-strength-advil-fever-cold-or-flu',
		'Junior Strength Advil Fever from Colds or Flu comes in a chewable format, so it''s easy to dose. Plus, it comes in a fruity flavour that kids will love. For ages 2-12 years.',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid4} and {cid11}'
	),
	(
		4,
		14,
		'Tylenol Sinus Pressure And Pain',
		'https://www.tylenol.ca/products/tylenol-sinus-pressure-and-pain',
		'Sinus discomfort can strike at any time. TYLENOL® Sinus Pressure and Pain provides Fast relief of your worst symptoms, including sinus-related pain, congestion, and headache, so you can breathe easier. Tylenol relief for WHAT MATTERS MOST®.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid8} and {cid10}'
	),
	(
		4,
		15,
		'Children''s Tylenol  Fever & Sore Throat Pain Chewables (2-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-fever-sore-throat-pain-chewables',
		'When your child is sick, all you want to do is make them feel better by providing them with effective relief of their fever and pain. You just want them to be able to get back to normal.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid4} and {cid10}'
	),
	(
		4,
		16,
		'Tylenol Complete Cold, Cough & Flu',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu',
		'Trust the effective relief of TYLENOL® Complete Cold, Cough & Flu products for your cold & flu symptoms. TYLENOL® Complete Cold, Cough & Flu caplets provide you with options for daytime and nighttime relief to give you the trusted relief you want.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		17,
		'Tylenol Complete Cold, Cough & Flu Plus Mucus Relief Liquid Gels',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-liquid-gels',
		'For fast-acting care of your cold, cough & flu symptoms, including mucus and phlegm, you want rapid symptom relief you can trust so that you can GET BACK TO NORMAL, WHATEVER YOUR NORMAL IS®',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		18,
		'Tylenol Complete Cold, Cough & Flu Plus Mucus Relief Syrup',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-syrup',
		'Trust the effective relief of TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Syrup for your cold & flu symptoms. TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Syrup provides you with the trusted relief you want.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		19,
		'Tylenol Complete Cold, Cough & Flu Plus Mucus Relief Nighttime Syrup',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-nighttime-syrup',
		'Trust the effective nighttime relief of TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Nighttime syrup for your cold & flu symptoms. TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Nighttime syrup provides you with the trusted relief you want.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		20,
		'Tylenol Cold',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-cold',
		'Trust the relief of TYLENOL® Cold products to relieve your cold symptoms. TYLENOL® Cold is as effective on colds as TYLENOL® is on pain. TYLENOL® Cold is available in daytime and nighttime formulations to give you the trusted relief you want, day or night.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		21,
		'Tylenol Flu',
		'https://www.tylenol.ca/products/cough-cold-flu/tylenol-flu',
		'Trust the relief of TYLENOL® Flu products to relieve your flu symptoms. TYLENOL® Flu is available in daytime and nighttime formulations to give you the trusted relief you want, day or night.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		22,
		'Tylenol Cold & Sinus',
		'https://www.tylenol.ca/products/sinus/tylenol-cold-sinus',
		'Trust the relief of TYLENOL® Cold & Sinus to relieve your cold and sinus symptoms. TYLENOL® Cold & Sinus is offered in a convenient Day/Night pack for relief around the clock.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		23,
		'Tylenol Sinus',
		'https://www.tylenol.ca/products/sinus/tylenol-sinus',
		'Trust the relief of TYLENOL® Sinus products to relieve your sinus symptoms. Extra Strength TYLENOL® Sinus is available in daytime and nighttime formulations to give you the trusted relief you want, day or night.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		24,
		'Infants'' Tylenol Fever & Sore Throat Pain (0-23Months)',
		'https://www.tylenol.ca/products/infants-children/infants-tylenol-fever-sore-throat-pain',
		'Infants'' TYLENOL® Fever & Sore Throat Pain drops are dye free for children who may be sensitive or allergic to dyes. "Dye Free" also means "Stain Free," so an accidental spill won''t ruin the bedding, your baby''s new outfit, or your furniture.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid10}'
	),
	(
		4,
		25,
		'Children''s Tylenol Fever & Sore Throat Pain (2-5Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-fever-sore-throat-pain',
		'Infants'' TYLENOL® Fever & Sore Throat Pain drops are dye free for children who may be sensitive or allergic to dyes. "Dye Free" also means "Stain Free," so an accidental spill won''t ruin the bedding, your baby''s new outfit, or your furniture.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid10}'
	),
	(
		4,
		26,
		'Children''s Tylenol Cold & Stuffy Nose (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/children-s-tylenol-cold-stuffy-nose',
		'Try Children''s TYLENOL® Cold & Stuffy Nose liquid. Children''s TYLENOL® Cold & Stuffy Nose liquid is easy-to-administer and works to relieve your child''s stuffy nose, fever, aches and sore throat pain. With their symptoms relieved, they can get on with their day—as can you.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid8} and {cid10}'
	),
	(
		4,
		27,
		'Children''s Tylenol Cold (6-11Yrs Old)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold',
		'Try Children''s TYLENOL® Cold liquid. Children''s TYLENOL® Cold liquid relieves stuffy nose, runny nose, sneezing, fever, and aches and pains. With their cold symptoms relieved, they can start to feel like themselves again.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		28,
		'Children''s Tylenol Cold & Cough Nighttime Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold-cough-nighttime',
		'Try Children''s TYLENOL® Cold & Cough Nighttime Liquid. Providing relief of runny nose, sneezing, dry cough, fever, sore throat pain, and aches and pains, this liquid will help your child rest, and with the peace of mind that they are feeling better—you will be able to rest too.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		29,
		'Children''s Tylenol Cold & Cough Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold-cough',
		'Try Children''s TYLENOL® Cold & Cough liquid. This easy-to-administer liquid will relieve your child''s stuffy nose, runny nose, dry cough, fever, sore throat pain, and aches and pains so that they can feel like themselves again.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		30,
		'Children''s Tylenol Complete Cold Cough & Fever Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/children-s-tylenol-complete-cold-cough-fever',
		'Try Children''s TYLENOL® Complete Cold Cough & Fever liquid. This easy-to-administer liquid will relieve your child''s stuffy nose, runny nose, dry cough, fever, sore throat pain, and aches and pains so that they can feel like themselves again.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		31,
		'Children''s Tylenol Complete Cold Cough & Fever Nighttime Liquid (6-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/children-s-tylenol-complete-cold-cough-fever-nighttime',
		'Try Children''s TYLENOL® Complete Cold Cough & Fever Nighttime Liquid. Providing relief of runny nose, sneezing, dry cough, fever, sore throat pain, and aches and pains, this liquid will help your child rest, and with the peace of mind that they are feeling better—you will be able to rest too.',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		32,
		'Mucinex',
		'https://www.mucinex.ca/en/mucinex-products/',
		'When you''re sick, mucus can be a master of mayhem. But chest congestion† relief is just a dose away — with Mucinex® immediate and extended-release bi-layer tablets that start to release fast and last for up to 12 hours*. A medicine that makes coughs more productive by loosening phlegm in the chest, providing relief for chest congestion and excess mucus due to the common cold.',
		'https://s3.eu-west-1.amazonaws.com/sk-media-mucinex-ca-prod/media/1005/mucinex-logo-en-fr_t.png',
		'{cid1} and {cid4} and {cid9}'
	),
	(
		4,
		33,
		'Buckley''s Original Mixture Liquid',
		'https://www.buckleys.ca/products/syrups/original-mixture/',
		'Can''t stand another second of your symptoms? Feel the instant blast of cooling relief from coughs and congestion due to colds, minor bronchial irritations, laryngitis, hoarseness, croupy cough and minor irritations due to smoking, dust or air pollution.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid12}'
	),
	(
		4,
		34,
		'Buckley''s Original Mixture Nighttime Liquid',
		'https://www.buckleys.ca/products/syrups/original-mixture-nighttime/',
		'It''s lights out for your nighttime sickness. Get fast-acting relief from cold and flu symptoms such as dry, hacking coughs, sneezing, runny nose, and nasal and sinus congestion to help you get to sleep.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid12}'
	),
	(
		4,
		35,
		'Buckley''s Complete Liquid',
		'https://www.buckleys.ca/products/syrups/complete-syrup/',
		'Sick of taking it from all your symptoms? It''s payback time. Get fast-acting relief of cold and flu symptoms such as headache, aches and pains, fever and chills, sore throat pain, coughs, and nasal and sinus congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid10} and {cid12}'
	),
	(
		4,
		36,
		'Buckley''s Complete + Mucus Liquid',
		'https://www.buckleys.ca/products/pills/complete-mucus-liquid-gels-day-night/',
		'Don''t suffer through your day. Feel better, fast with Buckley''s Complete + Mucus Liquid Gels - Day/Night. Relieves your worst cold symptoms, including mucus. Try these to feel better fast and rest easy.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		37,
		'Buckley''s Cough, Chest Congestion Liquid',
		'https://www.buckleys.ca/products/syrups/cough-chest-congestion-syrup/',
		'Clear out chest congestion with fast-acting relief up to 6 hours from cold and flu symptoms such as coughs, chest congestion, and nasal and sinus congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		38,
		'Buckley''s Cough, Mucus And Phlegm Liquid',
		'https://www.buckleys.ca/products/syrups/cough-mucus-and-phlegm-syrup/',
		'Send that hacking, packing. Get fast-acting relief for up to 6 hours from cold and flu symptoms such as coughs, nasal and sinus congestion, and chest congestion. Works in your lungs to loosen and thin out mucus and phlegm, to get it up and out.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		39,
		'Buckley''s Cold & Sinus Liquid Gels-Daytime',
		'https://www.buckleys.ca/products/pills/cold-and-sinus-liquid-gels-daytime/',
		'Put pressure on your symptoms, not your sinuses. Get fast relief from headache, aches and pain, fever and chills, sore throat pain, sinus and nasal congestion, and dry cough.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		40,
		'Buckley''s Cold & Sinus Liquid Gels-Day/Night',
		'https://www.buckleys.ca/products/pills/cold-and-sinus-liquid-gels-day-night/',
		'Get complete relief from all of your cold symptoms with Buckley''s Cold & Sinus Liquid Gels-Day/Night.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		41,
		'Buckley''s Complete + Mucus Liquid Gels-Daytime',
		'https://www.buckleys.ca/products/pills/complete-plus-mucus-liquid-gels-daytime/',
		'Feel better, fast. Get all-in-one relief of headache, aches and pains, fever and chills, sore throat pain, nasal, sinus and chest congestion, coughing due to colds. Helps to loosen and thin mucus to get it up and out of the chest.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		42,
		'Buckley''s Complete + Mucus Liquid Gels-Day/Night',
		'https://www.buckleys.ca/products/pills/complete-mucus-liquid-gels-day-night/',
		'Don''t suffer through your day. Feel better, fast with Buckley''s Complete + Mucus Liquid Gels - Day/Night. Relieves your worst cold symptoms, including mucus. Try these to feel better fast and rest easy.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		43,
		'Buckley''s Complete Liquid Gels-Nighttime',
		'https://www.buckleys.ca/products/pills/complete-liquid-gels-nighttime/',
		'Stop sharing a bed with your symptoms. Get all-in-one relief from headache, aches and pain, fever and chills, sore throat pain, runny nose and sneezing, sinus and nasal congestion, dry cough, and itchy and watery eyes.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		44,
		'Buckley''s Complete Cough, Cold & Flu Extra Strength-Daytime',
		'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-daytime/',
		'Get extra strong symptom relief of headache, aches and pains, fever and chills, sore throat pain, dry cough, and sinus and nasal congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		45,
		'Buckley''s Complete Cough, Cold & Flu Extra Strength-Nighttime',
		'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-day-night-caplets/',
		'Feel human all day. Get the rest you need at night. Use our Daytime and Nighttime Caplets for complete day and night relief of your cold and flu symptoms.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		46,
		'Buckley''s Complete Cough, Cold & Flu Extra Strength-Day/Night',
		'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-day-night-caplets/',
		'Feel human all day. Get the rest you need at night. Use our Daytime and Nighttime Caplets for complete day and night relief of your cold and flu symptoms.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		47,
		'Buckley''s Lozenges Bite-Me Cherry',
		'https://www.buckleys.ca/products/lozenges/bite-me-cherry-lozenges/',
		'Tell your cold to bite it. Get fast relief from sore throat, dry cough and nasal & sinus congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid12}'
	),
	(
		4,
		48,
		'Buckley''s Lozenges Methol Outburts',
		'https://www.buckleys.ca/products/lozenges/menthol-outburst-sore-throat-lozenges/',
		'Outrage your sore throat with an outburst of relief. Get fast relief of sore throat, dry cough and nasal & sinus congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid1} and {cid4} and {cid12}'
	),
	(
		4,
		49,
		'Buckley''s Jack & Jill Cough & Cold Cherry Flavour Liquid (6-12Yrs)',
		'https://www.buckleys.ca/products/jack-and-jill-childrens-cough-syrup/jack-and-jill-cough-and-cold-cherry-flavour/',
		'There''s no sweeter way to make your kid better. This great-tasting, cherry flavoured cough and cold syrup provides effective relief of dry cough and nasal congestion due to colds.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid8}'
	),
	(
		4,
		50,
		'Buckley''s Jack & Jill Bedtime Cough & Cold Grape Flavour Liquid (6-12Yrs)',
		'https://www.buckleys.ca/products/jack-and-jill-childrens-cough-syrup/jack-and-jill-bedtime-cough-and-cold-grape-flavour/',
		'A grape way to get better. This great-tasting, grape flavoured nighttime cough suppressant provides fast, effective relief of dry cough, nasal congestion, sneezing and runny noses due to colds so your child can get to sleep.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		51,
		'Children''s Nyquil  Cold & Cough Medicine Liquid (6+Yrs)',
		'https://vicks.ca/en-ca/shop-products/childrens-products/childrens-nyquil-tm-cold-and-cough-medicine',
		'As your children start to grow, their cold symptom relief should as well. Children''s NyQuil Cold & Cough Symptom Relief relieves your child''s nighttime runny nose and sniffling, sneezing, and coughing—without alcohol, aspirin, or acetaminophen—so your child can rest, and you can relax.',
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
		'Vicks VapoRub ointment is a topical chest rub that treats coughs and minor aches and pains. VapoRub has 3 active cough suppressants that are clinically proven to relieve coughs. Apply VapoRub topically to your chest or neck for fast acting cough relief. VapoRub Children''s can be used on all children ages 2 and older to provide safe and soothing cough relief so they can sleep.',
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
		'Vicks VapoRub ointment is a topical cough medicine with medicated vapors that work quickly to relieve your cough, nasal congestion, and muscle aches and pains due to colds.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid5} and {cid12}'
	),
	(
		4,
		56,
		'Vaporub Ointment',
		'https://vicks.ca/en-ca/shop-products/vaporub/vicks-vaporub-ointment',
		'Vicks® VapoRub™ ointment is a topical cough medicine with medicated vapours that work quickly to relieve your cough, nasal congestion, and muscle aches and pains due to colds. VapoRub is suitable for both adults and children ages two and up.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid5} and {cid12}'
	),
	(
		4,
		57,
		'Vicks Dayquil Complete Cold & Flu Relief',
		'https://vicks.ca/en-ca/shop-products/dayquil/vicks-dayquil-complete-cold-and-flu-relief-24-liquicaps',
		'Get cold & flu relief with DayQuil COMPLETE LiquiCaps. Delivers maximum symptom-fighting ingredients to relieve your worst cold & flu symptoms, among OTC cold & flu medicines. DayQuil COMPLETE offers non-drowsy cold & flu symptom relief, so you can power through the day. Contains acetaminophen.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		58,
		'Vicks Dayquil  Complete Cold & Flu Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-complete-cold-and-flu-liquid',
		'DayQuil™ COMPLETE Cold & Flu Symptom Relief delivers effective symptom-fighting ingredients to relieve your toughest cold symptoms.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		59,
		'Vicks  Dayquil And Nyquil Complete Cough, Cold & Flu Relief',
		'https://vicks.ca/en-ca/shop-products/nyquil/vicks-dayquil-and-nyquil-complete-cough-cold-and-flu-relief-24-liquicaps-16',
		'Get cold & flu relief with DayQuil/NyQuil COMPLETE LiquiCaps. The COMPLETE convenience pack delivers symptom-fighting ingredients to relieve your worst cold & flu symptoms, among OTC cold & flu medicines.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		60,
		'Dayquil  Cold & Flu Multi Symptom Relief Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cold-and-flu-multi-symptom-relief-liquicaps',
		'The non-drowsy, multi-symptom cold and flu relief of DayQuil™ Cold & Flu LiquiCaps™ helps you get your power back so you can enjoy the day.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		61,
		'Dayquil  /Nyquil  Cold & Flu Multi Symptom Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-nyquil-cold-flu-multi-symptom-liquicaps',
		'With a DayQuil™/NyQuil™ LiquiCaps™ convenience pack, you''ll have the cold and flu symptom relief you need on hand, day or night.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		62,
		'Dayquil  & Nyquil  Sinus Convenience Pack',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-and-nyquil-sinus-convenience-pack',
		'With a DayQuil™/NyQuil™ Sinus LiquiCaps™ convenience pack, you''ll have the sinus and congestion symptom relief you need on hand, day or night.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		63,
		'Dayquil  Cold & Flu Multi Symptom Relief Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cold-and-flu-multi-symptom-relief-liquid',
		'The non-drowsy, multi-symptom cold and flu relief of DayQuil™ Cold & Flu Liquid helps you get your power back so you can enjoy the day.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		64,
		'Dayquil  Cough Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cough',
		'DayQuil™ Cough Suppressant gives you up to 8 hours of daytime, non-drowsy cough relief to temporarily help control your cough while you tackle your to-do list.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6}'
	),
	(
		4,
		65,
		'Dayquil  Cough & Congestion Liquid',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cough-congestion',
		'If your cold isn''t fooling around, neither should you. Turn to DayQuil™ Cough & Congestion for temporary cough relief and to help loosen phlegm.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		66,
		'Dayquil  Sinus Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-sinus-liquicaps',
		'DayQuil™ Sinus LiquiCaps™ pack, has the sinus and congestion symptom relief you need on hand to get through your day.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid8} and {cid10}'
	),
	(
		4,
		67,
		'Nyquil  Cold & Flu Nighttime Relief Liquid/Dayquil  Cold & Flu Multi-Symptom Relief Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-dayquil-multi-symptom-relief',
		'With a DayQuil™ LiquiCaps™ & NyQuil™ Liquid convenience pack, you''ll have the cold and flu symptom relief you need on hand, day or night.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		68,
		'Vicks Nyquil Complete Cough, Cold & Flu Relief',
		'https://vicks.ca/en-ca/shop-products/nyquil/vicks-nyquil-complete-cough-cold-and-flu-relief-24-liquicaps',
		'Get Maximum Strength cold & flu relief with NyQuil COMPLETE LiquiCaps. NyQuil COMPLETE helps relieve fever, nasal congestion, sneezing, runny nose and cough, so you can get the rest you need. Contains acetaminophen.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		69,
		'Vicks  Nyquil Complete Cold & Flu Liquid',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-complete-cold-flu-liquid',
		'NyQuil™ COMPLETE delivers effective symptom-fighting ingredients to relieve your ugliest, nastiest, roughest, toughest cold symptoms at night.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		70,
		'Nyquil  Cold & Flu Nighttime Relief Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-liquicaps',
		'Turn to NyQuil™ Cold & Flu Multi-Symptom Relief LiquiCaps™ to relieve your sneezing, sore throat pain, headache, minor aches and pains, fever, runny nose, and cough due to cold, so you can get the rest you need.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		71,
		'Nyquil  Cold & Flu Nighttime Relief Liquid',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-liquid',
		'When you have a cold, turn to Vicks NyQuil Cold & Flu Nighttime Relief Liquid medicine to relieve your sneezing, sore throat, headache, minor aches and pains, fever, runny nose, and cough to help you get the rest you need.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		72,
		'Nyquil  Cough Liquid',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cough',
		'Sleeping with a cough doesn''t have to be a chore. NyQuil™ Cough Suppressant relieves your cough so you can get the rest you need.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid3} and {cid6} and {cid7}'
	),
	(
		4,
		73,
		'Nyquil  Sinus Liquicaps ',
		'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-sinus-liquicaps',
		'With a DayQuil™/NyQuil™ Sinus LiquiCaps™ convenience pack, you''ll have the sinus and congestion symptom relief you need on hand, day or night.',
		'https://seeklogo.com/images/V/vicks-logo-EDE857447E-seeklogo.com.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		74,
		'Robitussin Extra Strength Honeycough & Congestion Liquid',
		'https://www.robitussin.ca/products/robitussin-extra-strength-honey-cough-and-congestion',
		'Robitussin Extra Strength Honey Cough & Congestion combines the naturally sourced honey* you love…plus, the effective cough relief you need.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		75,
		'Robitussin Cough Control Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-control',
		'Get relief from chest congestion, dry coughs and wet coughs too, so you can get back to your day.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		76,
		'Robitussin Cough Control Extra Strength Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-control-extra-strength',
		'An extra strength formula made to provide relief of dry coughs, chest congestion, and soothes throats. This alcohol-free liquid contains an ingredient that loosens mucus and phlegm buildup.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		77,
		'Robitussincough Controlfor People With Diabetes Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-control-people-diabetes',
		'Specially formulated for people with diabetes, this liquid works to relieve dry coughs and chest congestion. It includes an ingredient to loosen mucus and phlegm buildup.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid9}'
	),
	(
		4,
		78,
		'Robitussinmucus & Phlegm Liquid',
		'https://www.robitussin.ca/products/robitussin-mucus-phlegm',
		'Specially formulated to work in your chest, where you need it most. By loosening mucus and phlegm buildup, this expectorant syrup also soothes throats.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid9}'
	),
	(
		4,
		79,
		'Robitussinmucus & Phlegmextra Strength Liquid',
		'https://www.robitussin.ca/products/robitussin-mucus-phlegm-extra-strength',
		'We made this extra-strength formula to provide relief for chest congestion. This alcohol-free syrup loosens mucus and phlegm buildup, and soothes throat.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid9}'
	),
	(
		4,
		80,
		'Robitussindm Coughgels',
		'https://www.robitussin.ca/products/robitussin-dm-coughgels',
		'Liquid-Fast relief that controls coughs for up to eight hours in a convenient and portable Liqui-Gels format. This non-drowsy formula contains no alcohol or sucrose.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid4} and {cid6}'
	),
	(
		4,
		81,
		'Robitussin Honey Cough & Cold Nighttime Liquid',
		'https://www.robitussin.ca/products/robitussin-honey-cough-and-cold-nighttime',
		'Robitussin Honey Cough and Cold Nighttime combines the naturally sourced honey* you love…plus, the effective nighttime cough relief you need.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid7}'
	),
	(
		4,
		82,
		'Robitussin Cough & Cold Liquid',
		'https://www.robitussin.ca/products/robitussin-cough-cold',
		'Get relief from your dry cough, chest congestion, and stuffy nose, while soothing your throat. This syrup includes both a cough suppressant to quiet coughs, and an expectorant to loosen mucus and phlegm, plus a decongestant to relieve nasal congestion.',
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
		'Get through your day symptom-free with this alcohol-free liquid that is specially formulated to relieve your cough, cold and flu symptoms.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		85,
		'Robitussin Total Cough, Cold & Flu Extra Strength Liquid',
		'https://www.robitussin.ca/products/robitussin-total-cough-cold-flu-extra-strength',
		'This extra strength formula is designed to help you get the rest you need, even at the peak of your cold or flu.',
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
		'Get your child relief from their cold symptoms. Your kids will like the tasty grape flavour, and you''ll like that it''s dye free and has no alcohol or sugar. Recommended for children 6 to 12 years of age.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		89,
		'Robitussin Children''s Cough & Cold Liquid (6-12Yrs)',
		'https://www.robitussin.ca/products/robitussin-childrens-cough-and-cold',
		'Help your child make it through the day by providing relief from dry coughs and stuffy noses. This sugar-free, alcohol-free liquid comes in a tasty grape flavour that kids love. Recommended for children 6 to 12 years of age.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid8}'
	),
	(
		4,
		90,
		'Robitussin Children''s Cough & Cold Bedtime Liquid (6-12Yrs)',
		'https://www.robitussin.ca/products/robitussin-childrens-cough-cold-bedtime',
		'Helps children get the rest they need by relieving cough and cold symptoms, including runny and stuffy nose, sneezing, and dry coughs. Kids like the tasty cherry flavour, and parents like that it''s dye free and has no alcohol or sugar. Recommended for children 6 to 12 years of age.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		91,
		'Children''s Dimetapp  Cold & Allergy Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-cold-allergy/',
		'When allergy and cold symptoms hit, you can count on fast-acting Dimetapp Cold & Allergy''s congestion and allergy fighting power. Stuffy and runny noses? Check. Itchy, watery eyes? You bet. Sneezing? Dimetapp is on it. Our goal? To help kids say hello to the great outdoors, muddy shoes and all.',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		92,
		'Children''s Dimetapp  Cold & Cough Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-cold-cough/',
		'Our most popular product, Dimetapp Cold & Cough marries sweet grape flavor with safe, fast-acting, powerful relief designed to soothe stuffy, runny noses and quiet coughs—helping make sick days as stress-free for you as possible.',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		93,
		'Children''s Dimetapp  Day & Night Value Pack Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/day-night-value-pack/',
		'Children''s cold symptoms don''t just magically disappear at night (if only!). That''s why we developed the Day and Night Value Pack, also known as everything you need to get through cold season. With a formula for daytime, and nasal congestion relief that helps them sleep come nighttime, our value pack offers everything you need to soothe their symptoms—day or night. Not to mention, it''s fast-acting.',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		94,
		'Children''s Dimetapp  Multi-Symptom Cold & Flu Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-multi-symptom-cold-flu/',
		'Dimetapp Multi-Symptom Cold & Flu is the fast-acting powerful cold relief you know and love with acetaminophen to help reduce fever and relieve headache and body aches while also soothing children''s cold and cough symptoms. And with Dimetapp''s great grape flavor, you''ll never have to hear, "Mom, this tastes gross!" again.',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid10} and {cid12}'
	),
	(
		4,
		95,
		'Children''s Dimetapp  Multi-Symptom Cold Relief Dye-Free Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-multi-symptom-cold-flu/',
		'Dimetapp Multi-Symptom Cold & Flu is the fast-acting powerful cold relief you know and love with acetaminophen to help reduce fever and relieve headache and body aches while also soothing children''s cold and cough symptoms. And with Dimetapp''s great grape flavor, you''ll never have to hear, “Mom, this tastes gross!” again.',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'
	),
	(
		4,
		96,
		'Children''s Dimetapp  Nighttime Cold & Congestion Liquid (6-12Yrs)',
		'https://www.dimetapp.com/products/dimetapp-nighttime-cold-congestion/',
		'There''s nothing worse than watching your little one struggle to sleep when they''re sick. All you want is to wave a magic wand and help them feel better again. Enter Dimetapp Nighttime Cold & Congestion: it''s fast‑acting and made to soothe the bothersome symptoms that cause kids to toss and turn at night, helping to quiet coughs and ease runny noses. Shut eye, here you come.',
		'https://www.youcanglobal.com/image/cache/catalog/Brand%20Logo/dimetapp-logo-600x315.png',
		'{cid2} and {cid3} and {cid7} and {cid8}'
	),
	(
		4,
		97,
		'Neocitran Total Cold Night',
		'https://www.neocitran.ca/products/total-cold-night/',
		'Temporarily relieves the following cough and cold/flu symptoms: fever, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		98,
		'Neocitran Extra Strength Total Cold Non-Drowsy',
		'https://www.neocitran.ca/products/extra-strength-total-cold-non-drowsy/',
		'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		99,
		'Neocitran Extra Strength Total Cold Night',
		'https://www.neocitran.ca/products/extra-strength-total-cold-night/',
		'Temporarily relieves the following cold and flu symptoms: fever and chills, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		100,
		'Neocitran Extra Strenght Cold & Sinus Night Apple Cinnamon',
		'https://www.neocitran.ca/products/extra-strength-cold-sinus-night-apple-cinnamon/',
		'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		101,
		'Neocitran Extra Strenght Cold & Sinus Night',
		'https://www.neocitran.ca/products/extra-strength-cold-sinus-night/',
		'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		102,
		'Neocitran Cold And Sore Throat Night',
		'https://www.neocitran.ca/products/cold-sore-throat-night/',
		'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		103,
		'Neocitran Ultra Strength Total Flu Night',
		'https://www.neocitran.ca/products/ultra-strength-total-flu-night/',
		'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		104,
		'Neocitran Ultra Strength Total Flu Non-Drowsy',
		'https://www.neocitran.ca/products/ultra-strength-total-flu-non-drowsy/',
		'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'
	),
	(
		4,
		105,
		'Neocitran Extra Strength Cold & Congestion Non-Drowsy',
		'https://www.neocitran.ca/products/extra-strength-cold-congestion-non-drowsy/',
		'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion.',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format',
		'{cid1} and {cid3} and {cid8} and {cid10}'
	),
	(
		4,
		106,
		'Benylin AllInOne  Cold And Flu Caplets',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-caplets',
		'BENYLIN®  EXTRA STRENGTH All-In-One® COLD AND FLU Caplets is  a complete product in the BENYLIN® family of products. It is a convenient and portable solution to relieve all your COLD AND FLU symptoms in 1 simple solution.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		107,
		'Benylin AllInOne  Cold And Flu Day/Night Caplets',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-day-night-caplets',
		'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU DAY/NIGHT Caplets are complete products in the BENYLIN® family of products. This convenient and portable pack provides relief for all of your day and night, COLD & FLU symptoms in 1 simple solution.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		108,
		'Benylin AllInOne  Cold And Flu Liquid Gels',
		'https://www.benylin.ca/regular-strength/all-in-one-cold-and-flu-liquid-gels',
		'BENYLIN® All-In-One® COLD AND FLU LIQUID GELS are a complete product in the BENYLIN® family of products.  It comes in portable and fast-acting LIQUID GELS. This convenient pack provides relief of all of your COLD & FLU symptoms in 1 simple solution.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		109,
		'Benylin AllInOne  Cold And Flu Night Caplets',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-night-caplets',
		'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU NIGHT Caplets is a complete product in the BENYLIN® family of products. It is a convenient solution to relieve all of your COLD AND FLU symptoms, in 1 simple solution, so you can get through the night.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		110,
		'Benylin AllInOne  Cold And Flu Night Syrup',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-night-syrup',
		'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU  NIGHT Syrup is a complete product to help relieve ALL of your COLD AND FLU symptoms with 1 simple solution, so you can get the rest you need. ',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		111,
		'Benylin AllInOne  Cold And Flu Syrup',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-syrup',
		'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU Syrup is a complete product to help relieve ALL of your COLD AND FLU symptoms with 1 simple solution.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		112,
		'Benylin AllInOne  Cold And Flu With Warming Sensation Syrup',
		'https://www.benylin.ca/extra-strength/all-in-one-cold-and-flu-warming',
		'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU with Warming Sensation Syrup is part of the most complete line in the BENYLIN® family of products. Its soothing properties instantly coat your sore throat while relieving all of your COLD AND FLU symptoms.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		113,
		'Benylin For Children AllInOne  Cold And Fever Nighttime Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/all-in-one-cold-and-fever-nighttime-syrup',
		'BENYLIN® For Children All-In-One® COLD AND FEVER NIGHTTIME Syrup is a complete product that combines trusted BENYLIN® ingredients in a great tasting apple flavour. Relieve your kids'' COLD & FLU symptoms with 1 simple solution to help them get the rest they need.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'
	),
	(
		4,
		114,
		'Benylin For Children AllInOne  Cold And Fever Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/all-in-one-cold-and-fever-syrup',
		'BENYLIN® For Children All-In-One® COLD AND FEVER Syrup is all-in-one solution that combines trusted BENYLIN® ingredients with a great tasting bubble gum flavour. Relieve your kids'' COLD & FLU symptoms with 1 simple solution.  ',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		115,
		'Mucus & Phlegm Plus Cold Relief Caplets',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cold-relief-caplets',
		'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM PLUS COLD RELIEF Caplets works in your lungs to break up tough mucus and phlegm, and clear it from your chest when you cough. This portable and convenient solution provides you with fast acting relief of your toughest cold symptoms whenever you want it. ',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		116,
		'Mucus & Phlegm Plus Cold Relief Night Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cold-relief-night-syrup',
		'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM PLUS COLD RELIEF NIGHT Syrup works in your lungs to break up tough mucus and phlegm, and clear it from your chest when you cough. It also provides fast acting relief of your cold symptoms, to help you  get through the night.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'
	),
	(
		4,
		117,
		'Mucus & Phlegm Plus Cold Relief Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cold-relief-syrup',
		'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM PLUS COLD RELIEF Syrup works in your lungs to break up your tough mucus and phlegm, and clear it from your chest when you cough. It also provides fast acting relief of your bothersome cold symptoms.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10}'
	),
	(
		4,
		118,
		'Mucus & Phlegm Plus Cough Control Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-plus-cough-control-syrup',
		'BENYLIN®  EXTRA STRENGTH MUCUS & PHLEGM PLUS COUGH CONTROL Syrup works in your lungs to break up your tough mucus and phlegm, and clear it from your chest. This EXTRA STRENGTH fast-acting syrup is specially formulated to loosen and thin out mucus and phlegm so that you can expel it when you cough.  Plus, it helps silence your hacking, disruptive cough so you can get on with your day.  ',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'
	),
	(
		4,
		119,
		'Mucus & Phlegm Syrup',
		'https://www.benylin.ca/extra-strength/mucus-and-phlegm-syrup',
		'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM Syrup works in your lungs to break up tough mucus and phlegm, and clear it from your chest. This EXTRA STRENGTH, fast-acting formula loosens and thins out mucus and phlegm so that you can expel it when you cough.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		120,
		'Benylin  Cough & Chest Congestion For People With Diabetes Liquid',
		'https://www.benylin.ca/products/cough/benylin-cough-chest-congestion-people-diabetes',
		'BENYLIN® Cough & Chest Congestion for People with Diabetes is a trusted cough and cold symptom solution recognized by Diabetes Canada. This sugar-free†, sorbitol-free remedy is specially formulated with menthol, a decongestant suitable for people with Diabetes*, providing the same effective cough, congestion and mucus relief expected from the BENYLIN® brand.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'
	),
	(
		4,
		121,
		'Chest Congestion & Cold Syrup',
		'https://www.benylin.ca/extra-strength/chest-congestion-and-cold-syrup',
		'BENYLIN® EXTRA STRENGTH CHEST CONGESTION & COLD Syrup is specially formulated to relieve chest congestion. Plus, it provides fast and effective relief of your nasal congestion and sore throat pain.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		122,
		'Cough & Chest Congestion Syrup',
		'https://www.benylin.ca/extra-strength/cough-and-chest-congestion-syrup',
		'BENYLIN® EXTRA STRENGTH COUGH & CHEST CONGESTION Syrup is specially formulated to work in your chest to help clear out heavy congestion while controlling your cough. Menthol relieves your sore throat pain.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'
	),
	(
		4,
		123,
		'Cough & Chest Congestion With Warming Sensation Syrup',
		'https://www.benylin.ca/extra-strength/cough-and-chest-congestion-warming-syrup',
		'BENYLIN® EXTRA STRENGTH COUGH & CHEST CONGESTION with Warming Sensation Syrup is specially formulated to work in your chest to help clear out heavy congestion while calming your cough and relieving cold symptoms. Its warming properties instantly soothe and coat your throat.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid12}'
	),
	(
		4,
		124,
		'Cough Plus Cold Relief Syrup',
		'https://www.benylin.ca/extra-strength/cough-plus-cold-relief-syrup',
		'This syrup soothes your sore throat pain while providing relief from nasal and chest congestion. Up to 6 hours of cough relief.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid12}'
	),
	(
		4,
		125,
		'Dry Cough Night Syrup',
		'https://www.benylin.ca/regular-strength/dry-cough-night-syrup',
		'BENYLIN® DRY COUGH NIGHT Syrup has the strength to control your dry hacking cough and lets you rest.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid7}'
	),
	(
		4,
		126,
		'Dry Cough Syrup',
		'https://www.benylin.ca/regular-strength/dry-cough-syrup',
		'BENYLIN® Dry Cough has the strength to silence your dry hacking cough. Its syrup formula helps coat and soothe your throat.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid6} and {cid12}'
	),
	(
		4,
		127,
		'For Children Cough & Cold Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/cough-and-cold-syrup',
		'BENYLIN® For Children Cough & Cold Syrup is an effective solution that relieves your child''s toughest cold symptoms.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid6} and {cid8}'
	),
	(
		4,
		128,
		'For Children Cough Night Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/cough-night',
		'BENYLIN® For Children Cough NIGHT is a great tasting solution specially formulated to help control your kids'' cough so your child can sleep. ',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid2} and {cid3} and {cid7}'
	),
	(
		4,
		129,
		'For Children Dry Cough Syrup (6-12Yrs)',
		'https://www.benylin.ca/children/dry-cough-syrup',
		'BENYLIN® For Children Dry Cough is a great tasting syrup to help control your child''s cough while soothing his or her throat.   ',
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
		'Trust the effective and fast relief of BENYLIN® EXTRA STRENGTH Cold & Sinus DAY/NIGHT Tablets.  This portable and convenient solution will relieve your worst symptoms during the day and help you rest at night. ',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		132,
		'Cold & Sinus Plus+ Tablets',
		'https://www.benylin.ca/extra-strength/cold-and-sinus-plus-tablets',
		'BENYLIN® Extra Strength Sore Throat & Cough Syrup is formulated to provide fast relief of your sore throat pain and wet cough. This fast-acting formula soothes your irritated throat while also providing effective relief of wet cough and chest congestion. Made with throat-soothing menthol.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'
	),
	(
		4,
		133,
		'Sore Throat & Cough Syrup',
		'https://www.benylin.ca/products/sore-throat/benylin-sore-throat-cough-syrup',
		'BENYLIN® Extra Strength Sore Throat & Cough Syrup is formulated to provide fast relief of your sore throat pain and wet cough. This fast-acting formula soothes your irritated throat while also providing effective relief of wet cough and chest congestion. Made with throat-soothing menthol.',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid3} and {cid9} and {cid12}'
	),
	(
		4,
		134,
		'Sore Throat Lozenge',
		'https://www.benylin.ca/products/sore-throat-lozenge/sore-throat-lozenge',
		'BENYLIN® Sore Throat Lozenge has a dual layer formulation that is unique from other cough drops. It works in 2 ways: First the outer layer with cooling flavour agents quickly dissolves, providing an immediate cooling sensation to soothe your throat. Then the inner core of the cough drop, containing an anesthetic, provides targeted relief of your sore throat pain for up to 2 hours. Fast, Effective Relief of Sore Throat Pain',
		'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png',
		'{cid1} and {cid4} and {cid13} and {cid14}'
	),
	(
		4,
		135,
		'Strepsils Honey & Lemon Lozenges',
		'https://www.strepsils.co.uk/pages/dry-scratchy-throat',
		'Stand up to your sore throat from the start. Try our best-selling* Strepsils Honey and Lemon lozenges to relieve the discomfort of sore throats.',
		'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		136,
		'Strepsils Extra Triple Action Blackcurrant Lozenges',
		'https://www.strepsils.co.uk/pages/painful-irritated-sore-throat',
		'Stand up to your sore throat from the start. For hard hitting pain relief for up to two hours after the lozenge is gone, try Strepsils Extra Triple Action Blackcurrant Lozenges.',
		'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491',
		'{cid1} and {cid4} and {cid13} and {cid14}'
	),
	(
		4,
		137,
		'Strepsils Sore Throat & Cough',
		'https://www.strepsils.co.uk/pages/sore-throat-cough-or-blocked-nose',
		'Are you experiencing both sore throat and irritating coughs? so, try Strepsils Sore Throat and Cough Lozenges which combine two antiseptics and Levomenthol for dual relief.',
		'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491',
		'{cid1} and {cid4} and {cid13} and {cid14}'
	),
	(
		4,
		138,
		'Cepacol Sensations - Honey & Lemon',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-honey-lemon/',
		'They contain a combination of two antibacterial agents (2,4-dichloobenzyl alcohol 1.2mg, Amylmetacresol 0.6mg) that help your body fight back against sore throats. All in a delicious, soothing Honey & Lemon flavour. Available in pack size 16ct',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		139,
		'Cepacol Sensations -Sucrose Free Lemon',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sucrose-free-lemon/',
		'The antibacterial formula provides fast and effective antibacterial relief for sore throats. Available in a pack size of 16.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		140,
		'Cepacol Sensations - Sore Throat & Cough',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sore-throat-cough/',
		'The combination of two antibacterial agents (2,4-Dichlorobenzyl alcohol 1.2mg, Amylmetacresol 0.6mg) and Menthol provide you with dual action temporary relief for your sore throat and irritating cough. Tastes like: menthol. Available in a pack size of 16.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid14}'
	),
	(
		4,
		141,
		'Cepacol Sensations - Sore Throat & Blocked Nose',
		'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sore-throat-blocked-nose/',
		'It contains a combination of two anti-bacterial agents and decongestant to provide fast, effective soothing relief from sore throats, and helps clear nasal passages. Tastes like: menthol. Available in a pack size of 16.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid14}'
	),
	(
		4,
		142,
		'Cepacol Extra Strength - Sucrose Free Cherry',
		'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-freey-cherry/',
		'Maximum Strength. Targeted Relief. Available in a pack size of 16 & 36 . Suitable for diabetics.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	),
	(
		4,
		143,
		'Cepacol Extra Strength - Sucrose Free Honey & Lemon',
		'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-freey-honey-lemon/',
		'Maximum Strength. Targeted Relief. Available in a pack size of 16 & 36 . Suitable for diabetics.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		144,
		'Cepacol Extra Strength - Sucrose Free Orange',
		'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-free-orange/',
		'Maximum Strength. Targeted Relief. Available in a pack size of 16. Suitable for diabetics',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	),
	(
		4,
		145,
		'Cepacol Children - Fruity Strawberry (6-12Yrs)',
		'https://www.cepacol.ca/en/products/cepacol-children-s-sore-throat-lozenges/cepacol-children-s/',
		'Cepacol Children''s Fruity Strawberry is formulated with little ones in mind, the delicious fruity strawberry flavour combines two antibacterial agents to provide fast and effective temporary relief for children''s sore throats.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid14}'
	),
	(
		4,
		146,
		'Cepacol Instamax Cherry',
		'https://www.cepacol.ca/en/products/new-cepacol-instamax-lozenges/cepacol-instamax-cherry-12ct/',
		'Check out our NEW Cepacol InstaMax lozenge - trusted Cepacol with two max strength pain relievers for fast acting and effective relief.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	),
	(
		4,
		147,
		'Cepacol Instamax Berry',
		'https://www.cepacol.ca/en/products/new-cepacol-instamax-lozenges/cepacol-instamax-berry-24ct/',
		'Check out our NEW Cepacol InstaMax lozenge - trusted Cepacol with two max strength pain relievers for fast acting and effective relief.',
		'https://www.cepacol.ca/media/795/cepacol_bi-1.png',
		'{cid1} and {cid4} and {cid12} and {cid13}'
	);
