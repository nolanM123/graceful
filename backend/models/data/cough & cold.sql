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
        'https://www.advil.ca/products/cough-cold-flu/advil-cold-flu/', 
        'This formula fights cold and flu symptoms, so you can get the relief you need to rest and recover.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ), 
    (
		4, 
		2, 
        'Advil Cold, Cough & Flu Nighttime', 
        'https://www.advil.ca/products/cough-cold-flu/advil-cold-cough-flu-nighttime/', 
        'Advil Cold, Cough & Flu Nighttime provides relief from cold or flu symptoms, including cough. Its multi-symptom relief so you can rest.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		3, 
        'Advil Cold & Sinus Caplets', 
        'https://www.advil.ca/products/cold-sinus/advil-cold-sinus-caplets/', 
        'Advil Cold & Sinus caplets relieve nasal congestion to help open up your airways, making it easy to breathe.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		4, 
        'Advil Cold & Sinus Daytime / Nighttime', 
        'https://www.advil.ca/products/cold-sinus/advil-cold-sinus-daytime-nighttime/', 
        'Advil Cold & Sinus Daytime/Nighttime offers relief of cold and sinus symptoms day and night. Daytime caplets keep you going during the day, while Nighttime caplets offer added relief from runny nose and sneezing, so you can rest.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		5, 
        'Advil Cold & Sinus Liqui-Gels', 
        'https://www.advil.ca/products/cold-sinus/advil-cold-sinus-liqui-gels/', 
        'They are formulated with a decongestant to relieve nasal congestion. You can count on this non-drowsy formula to relieve your cold and sinus symptoms, fast.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		6, 
        'Advil Cold & Sinus Nighttime', 
        'https://www.advil.ca/products/cold-sinus/advil-cold-sinus-nighttime/', 
        'Advil Cold & Sinus Nighttime relieves your cold symptoms by relieving nasal congestion congestion to help open your airways, so you can get the rest you need.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		7, 
        'Advil Cold & Sinus Plus', 
        'https://www.advil.ca/products/cold-sinus/advil-cold-sinus-plus/', 
        'Advil Cold & Sinus Plus provides effective relief by helping to relieve nasal congestion—so you can breathe easy. Plus, it contains an antihistamine to address runny nose and sneezing.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		8, 
        'Advil Cold, Sinus & Flu Extra Strength', 
        'https://www.advil.ca/products/cold-sinus/advil-cold-sinus-flu-extra-strength/', 
        'Advil Cold, Sinus & Flu Extra Strength provides effective relief of your worst cold, sinus & flu symptoms. From the makers of the #1 selling pain reliever, it relieves 10 symptoms, all-in-one extra strength pill*.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		9, 
        'Advil Pediatric Drops Fever from Colds or Flu', 
        'https://www.advil.ca/products/children-s-advil/advil-pediatric-drops-fever-colds-or-flu/', 
        'Advil Pediatric Drops provide up to 8 hours of relief, so your little one can get the rest he or she needs to get better. They come with a SURE-DOSE™ oral syringe for precise and easy dosing. For ages 4 months to 3 years. For children under 3 months of age consult your physician.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		10, 
        'Childrens Advil Cold', 
        'https://www.advil.ca/products/children-s-advil/children-s-advil-cold/', 
        'Childrens Advil Cold is formulated with a decongestant and pain reliever to relieve your childs cold symptoms. For ages 6-12 years.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		11, 
        'Childrens Advil Cold and Flu Multi-symptom', 
        'https://www.advil.ca/products/children-s-advil/children-s-advil-cold-and-flu-multi-symptom/', 
        'Childrens Advil Cold & Flu Multi-symptom temporarily relieves the combined symptoms associated with a cold and flu. For kids ages 6-12 years.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		12, 
        'Childrens Advil Fever from Colds or Flu', 
        'https://www.advil.ca/products/children-s-advil/children-s-advil-fever-colds-or-flu/', 
        'Childrens Advil Fever from Colds or Flu provides up to 8 hours of relief, so kids can get back to being kids. For ages 2-12 years.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		13, 
        'Junior Strength Advil Fever from Cold or Flu', 
        'https://www.advil.ca/products/children-s-advil/junior-strength-advil-fever-cold-or-flu/', 
        'Junior Strength Advil Fever from Colds or Flu comes in a chewable format, so its easy to dose. Plus, it comes in a fruity flavour that kids will love. For ages 2-12 years.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		14, 
        'TYLENOL Sinus Pressure And Pain', 
        'https://www.tylenol.ca/products/tylenol-sinus-pressure-and-pain', 
        'Sinus discomfort can strike at any time. TYLENOL® Sinus Pressure and Pain provides Fast relief of your worst symptoms, including sinus-related pain, congestion, and headache, so you can breathe easier.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		15, 
        'Childrens TYLENOL® Fever & Sore Throat Pain Chewables', 
        'https://www.tylenol.ca/products/infants-children/childrens-tylenol-fever-sore-throat-pain-chewables', 
        'Try Childrens TYLENOL® Fever & Sore Throat Pain Chewables. For over fifty years, parents and doctors have placed their trust in TYLENOL® for fast, effective relief of fever and sore throat pain.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		16, 
        'TYLENOL® Complete Cold, Cough & Flu', 
        'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu', 
        'Trust the effective relief of TYLENOL® Complete Cold, Cough & Flu products for your cold & flu symptoms. TYLENOL® Complete Cold, Cough & Flu caplets provide you with options for daytime and nighttime relief to give you the trusted relief you want.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		17, 
        'TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Liquid Gels', 
        'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-liquid-gels', 
        'Trust the fast-acting relief of TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief liquid gels for your cold & flu symptoms. TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief liquid gels provide you with the trusted relief you want.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		18, 
        'TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Syrup', 
        'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-syrup', 
        'Trust the effective relief of TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Syrup for your cold & flu symptoms. TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Syrup provides you with the trusted relief you want.',
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		19, 
        'TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Nighttime Syrup', 
        'https://www.tylenol.ca/products/cough-cold-flu/tylenol-complete-cold-cough-flu-plus-mucus-relief-nighttime-syrup', 
        'Trust the effective nighttime relief of TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Nighttime syrup for your cold & flu symptoms. TYLENOL® Complete Cold, Cough & Flu Plus Mucus Relief Nighttime syrup provides you with the trusted relief you want.',
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
        ),
    (
		4, 
		20, 
        'Extra Strength TYLENOL® Cold', 
        'https://www.tylenol.ca/products/cough-cold-flu/tylenol-cold', 
        'Trust the relief of TYLENOL® Cold products to relieve your cold symptoms. TYLENOL® Cold is as effective on colds as TYLENOL® is on pain. TYLENOL® Cold is available in daytime and nighttime formulations to give you the trusted relief you want, day or night.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		21, 
        'Extra Strength TYLENOL® Flu', 
        'https://www.tylenol.ca/products/cough-cold-flu/tylenol-flu', 
        'Trust the relief of TYLENOL® Flu products to relieve your flu symptoms. TYLENOL® Flu is available in daytime and nighttime formulations to give you the trusted relief you want, day or night.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		22, 
        'Extra Strength TYLENOL® Cold & Sinus', 
        'https://www.tylenol.ca/products/sinus/tylenol-cold-sinus', 
        'Trust the relief of TYLENOL® Cold & Sinus to relieve your cold and sinus symptoms. TYLENOL® Cold & Sinus is offered in a convenient Day/Night pack for relief around the clock.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		23, 
        'Extra Strength TYLENOL® Sinus', 
        'https://www.tylenol.ca/products/sinus/tylenol-sinus', 
        'Trust the relief of TYLENOL® Sinus products to relieve your sinus symptoms. Extra Strength TYLENOL® Sinus is available in daytime and nighttime formulations to give you the trusted relief you want, day or night.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		24, 
        'Infants TYLENOL® Fever & Sore Throat Pain', 
        'https://www.tylenol.ca/products/infants-children/infants-tylenol-fever-sore-throat-pain', 
        'Infants TYLENOL® Fever & Sore Throat Pain drops are dye free for children who may be sensitive or allergic to dyes. "Dye Free" also means "Stain Free," so an accidental spill wont ruin the bedding, your babys new outfit, or your furniture.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		25, 
        'Childrens TYLENOL® Fever & Sore Throat Pain', 
        'https://www.tylenol.ca/products/infants-children/childrens-tylenol-fever-sore-throat-pain', 
        'Childrens TYLENOL® Fever & Sore Throat Pain liquid is dye free for children who may be sensitive or allergic to dyes. "Dye Free" also means "Stain Free," so an accidental spill wont ruin the bedding, your childs new outfit, or your furniture.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		26, 
        'Childrens TYLENOL® Cold & Stuffy Nose', 
        'https://www.tylenol.ca/products/infants-children/children-s-tylenol-cold-stuffy-nose', 
        'Try Childrens TYLENOL® Cold & Stuffy Nose liquid. Childrens TYLENOL® Cold & Stuffy Nose liquid is easy-to-administer and works to relieve your childs stuffy nose, fever, aches and sore throat pain. With their symptoms relieved, they can get on with their day—as can you.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		27, 
        'Childrens TYLENOL® Cold For Ages 6-11', 
        'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold', 
        'Try Childrens TYLENOL® Cold liquid. Childrens TYLENOL® Cold liquid relieves stuffy nose, runny nose, sneezing, fever, and aches and pains. With their cold symptoms relieved, they can start to feel like themselves again.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		28, 
        'Childrens TYLENOL® Cold & Cough Nighttime(6-11yrs)', 
        'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold-cough-nighttime', 
        'Try Childrens TYLENOL® Cold & Cough Nighttime Liquid. Providing relief of runny nose, sneezing, dry cough, fever, sore throat pain, and aches and pains, this liquid will help your child rest, and with the peace of mind that they are feeling better—you will be able to rest too.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		29, 
        'Childrens TYLENOL® Cold And Cough For Ages 6-11', 
        'https://www.tylenol.ca/products/infants-children/childrens-tylenol-cold-cough', 
        'Try Childrens TYLENOL® Cold & Cough liquid. This easy-to-administer liquid will relieve your childs stuffy nose, runny nose, dry cough, fever, sore throat pain, and aches and pains so that they can feel like themselves again.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		30, 
        'Childrens TYLENOL® Complete Cold Cough & Fever Liquid(6-11 yrs)', 
        'https://www.tylenol.ca/products/infants-children/children-s-tylenol-complete-cold-cough-fever', 
        'Try Childrens TYLENOL® Complete Cold Cough & Fever liquid. This easy-to-administer liquid will relieve your childs stuffy nose, runny nose, dry cough, fever, sore throat pain, and aches and pains so that they can feel like themselves again.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		31, 
        'Childrens TYLENOL® Complete Cold Cough & Fever Nighttime Liquid (6-11yrs)', 
        'https://www.tylenol.ca/products/infants-children/children-s-tylenol-complete-cold-cough-fever-nighttime', 
        'Try Childrens TYLENOL® Complete Cold Cough & Fever Nighttime Liquid. Providing relief of runny nose, sneezing, dry cough, fever, sore throat pain, and aches and pains, this liquid will help your child rest, and with the peace of mind that they are feeling better—you will be able to rest too.', 
        'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png'
    ),
    (
		4, 
		32, 
        'Mucinex', 
        'https://www.mucinex.ca/en/', 
        'Relief* from cough, nasal congestion, sore throat, fever and controls cough.', 
        'https://s3.eu-west-1.amazonaws.com/sk-media-mucinex-ca-prod/media/1005/mucinex-logo-en-fr_t.png'
    ),
    (
		4, 
		33, 
        'Buckleys Original Mixture Liquid',
        'https://www.buckleys.ca/products/syrups/original-mixture/', 
        'Feel the instant blast of cooling relief from coughs and congestion due to colds, minor bronchial irritations, laryngitis, hoarseness, croupy cough and minor irritations due to smoking, dust or air pollution.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
        4, 
        34, 
        'Buckleys Original Mixture Nighttime Liquid', 
        'https://www.buckleys.ca/products/syrups/original-mixture-nighttime/', 
        'It''s lights out for your nighttime sickness. Get fast-acting relief from cold and flu symptoms such as dry, hacking coughs, sneezing, runny nose, and nasal and sinus congestion to help you get to sleep.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		35, 
        'Buckleys Complete Liquid', 
        'https://www.buckleys.ca/products/syrups/complete-syrup/', 
        'Sick of taking it from all your symptoms? Its payback time. Get fast-acting relief of cold and flu symptoms such as headache, aches and pains, fever and chills, sore throat pain, coughs, and nasal and sinus congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		36, 
        'Buckleys Complete + Mucus Liquid', 
        'https://www.buckleys.ca/products/pills/complete-mucus-liquid-gels-day-night/', 
        'Don''t suffer through your day. Feel better, fast with Buckley''s Complete + Mucus Liquid Gels - Day/Night. Relieves your worst cold symptoms, including mucus. Try these to feel better fast and rest easy.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		37, 
        'Buckleys Cough, Chest Congestion Liquid', 
        'https://www.buckleys.ca/products/syrups/cough-chest-congestion-syrup/', 
        'Clear out chest congestion with fast-acting relief up to 6 hours from cold and flu symptoms such as coughs, chest congestion, and nasal and sinus congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		38, 
        'Buckleys Cough, Mucus and Phlegm Liquid', 
        'https://www.buckleys.ca/products/syrups/cough-mucus-and-phlegm-syrup/', 
        'Send that hacking, packing. Get fast-acting relief for up to 6 hours from cold and flu symptoms such as coughs, nasal and sinus congestion, and chest congestion. Works in your lungs to loosen and thin out mucus and phlegm, to get it up and out.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		39, 
        'Buckleys Cold & Sinus liquid gels-Daytime', 
        'https://www.buckleys.ca/products/pills/cold-and-sinus-liquid-gels-daytime/', 
        'Put pressure on your symptoms, not your sinuses. Get fast relief from headache, aches and pain, fever and chills, sore throat pain, sinus and nasal congestion, and dry cough.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		40, 
        'Buckleys Cold & Sinus liquid gels-Day/Night', 
        'https://www.buckleys.ca/products/pills/cold-and-sinus-liquid-gels-day-night/', 
        'Get complete relief from all of your cold symptoms with Buckleys Cold & Sinus Liquid Gels-Day/Night.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		41, 
        'Buckleys Complete + Mucus Liquid Gels-Daytime', 
        'https://www.buckleys.ca/products/pills/complete-plus-mucus-liquid-gels-daytime/', 
        'Feel better, fast. Get all-in-one relief of headache, aches and pains, fever and chills, sore throat pain, nasal, sinus and chest congestion, coughing due to colds. Helps to loosen and thin mucus to get it up and out of the chest.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		42, 
        'Buckleys Complete + Mucus Liquid Gels-Day/Night', 
        'https://www.buckleys.ca/products/pills/complete-mucus-liquid-gels-day-night/', 
        'Don''t suffer through your day. Feel better, fast with Buckley''s Complete + Mucus Liquid Gels - Day/Night. Relieves your worst cold symptoms, including mucus. Try these to feel better fast and rest easy.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		43, 
        'Buckleys Complete Liquid Gels-Nighttime', 
        'https://www.buckleys.ca/products/pills/complete-liquid-gels-nighttime/', 
        'Stop sharing a bed with your symptoms. Get all-in-one relief from headache, aches and pain, fever and chills, sore throat pain, runny nose and sneezing, sinus and nasal congestion, dry cough, and itchy and watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		44, 
        'Buckleys Complete Cough, Cold & Flu Extra Strength-Daytime', 
        'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-daytime/', 
        'Get extra strong symptom relief of headache, aches and pains, fever and chills, sore throat pain, dry cough, and sinus and nasal congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		45, 
        'Buckleys Complete Cough, Cold & Flu Extra Strength-Nighttime', 
        'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-nightime/', 
        'Get a dose of restful relief from headache, aches and pains, fever and chills, sore throat pain, dry cough, runny nose, sneezing, sinus and nasal congestion, and itchy and watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		46, 
        'Buckleys Complete Cough, Cold & Flu Extra Strength-Day/Night', 
        'https://www.buckleys.ca/products/pills/complete-cough-cold-and-flu-extra-strength-day-night-caplets/', 
        'Feel human all day. Get the rest you need at night. Use our Daytime and Nighttime Caplets for complete day and night relief of your cold and flu symptoms.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		47, 
        'Buckleys Lozenges Bite-me Cherry', 
        'https://www.buckleys.ca/products/lozenges/bite-me-cherry-lozenges/', 
        'Tell your cold to bite it. Get fast relief from sore throat, dry cough and nasal & sinus congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		48, 
        'Buckleys Lozenges Methol Outburts', 
        'https://www.buckleys.ca/products/lozenges/menthol-outburst-sore-throat-lozenges/', 
        'Outrage your sore throat with an outburst of relief. Get fast relief of sore throat, dry cough and nasal & sinus congestion.',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		49, 
        'Buckleys Jack & Jill Cough & Cold Cherry Flavour Liquid (6-12yrs)', 
        'https://www.buckleys.ca/products/jack-and-jill-childrens-cough-syrup/jack-and-jill-cough-and-cold-cherry-flavour/', 
        'There''s no sweeter way to make your kid better. This great-tasting, cherry flavoured cough and cold syrup provides effective relief of dry cough and nasal congestion due to colds.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		50, 
        'Buckleys Jack & Jill Bedtime Cough & Cold Grape Flavour Liquid (6-12yrs)', 
        'https://www.buckleys.ca/products/jack-and-jill-childrens-cough-syrup/jack-and-jill-bedtime-cough-and-cold-grape-flavour/', 
        'A grape way to get better. This great-tasting, grape flavoured nighttime cough suppressant provides fast, effective relief of dry cough, nasal congestion, sneezing and runny noses due to colds so your child can get to sleep.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/buckleys/en_CA/homepage/logo.png?auto=format'
    ),
    (
		4, 
		51, 
        'CHILDRENS NYQUIL™ COLD & COUGH MEDICINE Liquid (6+yrs)', 
        'https://vicks.ca/en-ca/shop-products/childrens-products/childrens-nyquil-tm-cold-and-cough-medicine', 
        'Childrens NyQuil Cold & Cough Symptom Relief relieves your childs nighttime runny nose and sniffling, sneezing, and coughing—without alcohol, aspirin, or acetaminophen—so your child can rest, and you can relax.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
	),
    (
		4, 
		52, 
        'VICKS VAPOPATCH WITH LONG LASTING VICKS SCENTED VAPOURS FOR ADULTS & CHILDREN (6+yrs)', 
        'https://vicks.com/en-us/shop-products/childrens-products/vicks-childrens-vapopatch-soothing-non-medicated-patch-for-kids-with-vicks', 
        'Soothe & comfort with Vicks Childrens VapoPatch. Simply peel, apply, and breathe in soothing non-medicated vapors. Childrens VapoPatch contains a blend of eucalyptus and essential oils + scents of menthol & camphor. For use on Children Ages 6+.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
	),
    (
		4, 
		53, 
        'VICKS VAPORUB CHILDRENS NASAL DECONGESTANT COUGH SUPPRESSANT OINTMENT (2+yrs)', 
        'https://vicks.ca/en-ca/shop-products/childrens-products/vicks-vaporub-childrens-nasal-decongestant-cough-suppressant-ointment-50-g', 
        'Vicks VapoRub ointment is a topical chest rub that treats coughs and minor aches and pains. VapoRub has 3 active cough suppressants that are clinically proven to relieve coughs. Apply VapoRub topically to your chest or neck for fast acting cough relief.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		54, 
        'VICKS® BABYRUB™ (3months+)', 
        'https://vicks.com/en-us/shop-products/childrens-products/vicks-r-babyrub-tm-soothing-ointment', 
        'The gentle Vicks BabyRub formula is non-medicated and specially formulated for babies. It contains petrolatum and Aloe to leave your babys skin feeling soft and comfortable.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		55, 
        'VICKS VAPORUB NASAL DECONGESTANT COUGH SUPPRESSANT OINTMENT, LAVENDER SCENT', 
        'https://vicks.ca/en-ca/shop-products/vaporub/vicks-vaporub-nasal-decongestant-cough-suppressant-ointment-lavender-scent', 
        'Vicks VapoRub ointment is a topical cough medicine with medicated vapors that work quickly to relieve your cough, nasal congestion, and muscle aches and pains due to colds.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		56, 
        'VAPORUB OINTMENT', 
        'https://vicks.ca/en-ca/shop-products/vaporub/vicks-vaporub-ointment', 
        'Vicks® VapoRub™ ointment is a topical cough medicine with medicated vapours that work quickly to relieve your cough, nasal congestion, and muscle aches and pains due to colds. VapoRub is suitable for both adults and children ages two and up.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		57, 
        'VICKS DAYQUIL COMPLETE COLD & FLU RELIEF', 
        'https://vicks.ca/en-ca/shop-products/dayquil/vicks-dayquil-complete-cold-and-flu-relief-24-liquicaps', 
        'Delivers maximum symptom-fighting ingredients to relieve your worst cold & flu symptoms, among OTC cold & flu medicines. DayQuil COMPLETE offers non-drowsy cold & flu symptom relief, so you can power through the day. Contains acetaminophen.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
        4, 
        58, 
        'VICKS DAYQUIL™ COMPLETE COLD & FLU LIQUID', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-complete-cold-and-flu-liquid', 
        'DayQuil™ COMPLETE Cold & Flu Symptom Relief delivers effective symptom-fighting ingredients to relieve your toughest cold symptoms.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
        4, 
        59, 
        'VICKS™ DAYQUIL AND NYQUIL COMPLETE COUGH, COLD & FLU RELIEF', 
        'https://vicks.ca/en-ca/shop-products/nyquil/vicks-dayquil-and-nyquil-complete-cough-cold-and-flu-relief-24-liquicaps-16', 
        'Get cold & flu relief with DayQuil/NyQuil COMPLETE LiquiCaps. The COMPLETE convenience pack delivers symptom-fighting ingredients to relieve your worst cold & flu symptoms, among OTC cold & flu medicines.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		60, 
        'DAYQUIL™ COLD & FLU MULTI SYMPTOM RELIEF LIQUICAPS™', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cold-and-flu-multi-symptom-relief-liquicaps', 
        'The non-drowsy, multi-symptom cold and flu relief of DayQuil™ Cold & Flu LiquiCaps™ helps you get your power back so you can enjoy the day.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		61, 
        'DAYQUIL™ /NYQUIL™ COLD & FLU MULTI SYMPTOM LIQUICAPS™', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-nyquil-cold-flu-multi-symptom-liquicaps', 
        'With a DayQuil™/NyQuil™ LiquiCaps™ convenience pack, youll have the cold and flu symptom relief you need on hand, day or night.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4,
		62, 
        'DAYQUIL™ & NYQUIL™ SINUS CONVENIENCE PACK', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-and-nyquil-sinus-convenience-pack', 
        'With a DayQuil™/NyQuil™ Sinus LiquiCaps™ convenience pack, youll have the sinus and congestion symptom relief you need on hand, day or night.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		63, 
        'DAYQUIL™ COLD & FLU MULTI SYMPTOM RELIEF LIQUID', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cold-and-flu-multi-symptom-relief-liquid', 
        'The non-drowsy, multi-symptom cold and flu relief of DayQuil™ Cold & Flu Liquid helps you get your power back so you can enjoy the day.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		64, 
        'DAYQUIL™ COUGH Liquid', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cough', 
        'DayQuil™ Cough Suppressant gives you up to 8 hours of daytime, non-drowsy cough relief to temporarily help control your cough while you tackle your to-do list.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
        4, 
        65, 
        'DAYQUIL™ COUGH & CONGESTION Liquid', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-cough-congestion', 
        'If your cold isnt fooling around, neither should you. Turn to DayQuil™ Cough & Congestion for temporary cough relief and to help loosen phlegm.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		66, 
        'DAYQUIL™ SINUS LIQUICAPS™', 
        'https://vicks.ca/en-ca/shop-products/dayquil/dayquil-sinus-liquicaps', 
        'DayQuil™ Sinus LiquiCaps™ pack, has the sinus and congestion symptom relief you need on hand to get through your day.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		67, 
        'NYQUIL™ COLD & FLU NIGHTTIME RELIEF LIQUID/DAYQUIL™ COLD & FLU MULTI-SYMPTOM RELIEF LIQUICAPS™', 
        'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-dayquil-multi-symptom-relief', 
        'With a DayQuil™ LiquiCaps™ & NyQuil™ Liquid convenience pack, youll have the cold and flu symptom relief you need on hand, day or night.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ), 
    (
		4, 
		68, 
        'VICKS NYQUIL COMPLETE COUGH, COLD & FLU RELIEF', 
        'https://vicks.ca/en-ca/shop-products/nyquil/vicks-nyquil-complete-cough-cold-and-flu-relief-24-liquicaps', 
        'NyQuil COMPLETE helps relieve fever, nasal congestion, sneezing, runny nose and cough, so you can get the rest you need. Contains acetaminophen.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		69, 
        'VICKS™ NYQUIL COMPLETE COLD & FLU LIQUID', 
        'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-complete-cold-flu-liquid', 
        'NyQuil™ COMPLETE delivers effective symptom-fighting ingredients to relieve your ugliest, nastiest, roughest, toughest cold symptoms at night.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		70, 
        'NYQUIL™ COLD & FLU NIGHTTIME RELIEF LIQUICAPS™', 
        'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-liquicaps', 
        'Turn to NyQuil™ Cold & Flu Multi-Symptom Relief LiquiCaps™ to relieve your sneezing, sore throat pain, headache, minor aches and pains, fever, runny nose, and cough due to cold, so you can get the rest you need.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		71, 
        'NYQUIL™ COLD & FLU NIGHTTIME RELIEF LIQUID', 
        'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cold-flu-nighttime-relief-liquid', 
        'Vicks NyQuil Cold & Flu Nighttime Relief Liquid medicine to relieve your sneezing, sore throat, headache, minor aches and pains, fever, runny nose, and cough to help you get the rest you need.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		72, 
        'NYQUIL™ COUGH Liquid', 
        'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-cough', 
        'Sleeping with a cough doesnt have to be a chore. NyQuil™ Cough Suppressant relieves your cough so you can get the rest you need.', 
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		73, 
        'NYQUIL™ SINUS LIQUICAPS™', 
        'https://vicks.ca/en-ca/shop-products/nyquil/nyquil-sinus-liquicaps', 
        'With a DayQuil™/NyQuil™ Sinus LiquiCaps™ convenience pack, youll have the sinus and congestion symptom relief you need on hand, day or night.',  
        'https://images.ctfassets.net/xuuihvmvy6c9/3QfrhPwtGtI5Zr4iFYhv8C/c4ad2cf890349e49a59dbe8e17b5732c/Vicks-Logo.png?fm=avif&q=95'
    ),
    (
		4, 
		74, 
        'ROBITUSSIN EXTRA STRENGTH HONEYCOUGH & CONGESTION liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-extra-strength-honey-cough-and-congestion/', 
        'With the great soothing taste of honey, you can get effective temporary relief of chest congestion, control dry cough, loosen mucus & phlegm and soothe a sore throat.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		75, 
        'ROBITUSSIN COUGH CONTROL Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-cough-control/', 
        'Get relief from chest congestion, dry coughs and wet coughs too, so you can get back to your day.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		76, 
        'ROBITUSSIN COUGH CONTROL EXTRA STRENGTH Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-cough-control-extra-strength/', 
        'An extra strength formula made to provide relief of dry coughs, chest congestion, and soothes throats. This alcohol-free liquid contains an ingredient that loosens mucus and phlegm buildup.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		77, 
        'ROBITUSSINCOUGH CONTROLFOR PEOPLE WITH DIABETES Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-cough-control-people-diabetes/', 
        'Specially formulated for people with diabetes, this liquid works to relieve dry coughs and chest congestion. It includes an ingredient to loosen mucus and phlegm buildup.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		78, 
        'ROBITUSSINMUCUS & PHLEGM Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-mucus-phlegm/', 
        'Specially formulated to work in your chest, where you need it most. By loosening mucus and phlegm buildup, this expectorant syrup also soothes throats.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		79, 
        'ROBITUSSINMUCUS & PHLEGMEXTRA STRENGTH Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-mucus-phlegm-extra-strength/', 
        'We made this extra-strength formula to provide relief for chest congestion. This alcohol-free syrup loosens mucus and phlegm buildup, and soothes throat.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		80, 
        'ROBITUSSINDM COUGHGELS', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-dm-coughgels/', 
        'Liquid-Fast relief that controls coughs for up to eight hours in a convenient and portable Liqui-Gels format. This non-drowsy formula contains no alcohol or sucrose.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		81, 
        'ROBITUSSIN HONEY COUGH & COLD NIGHTTIME Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-honey-cough-and-cold-nighttime/', 
        'Now with the great soothing taste of honey, you get up to 6 hours relief from your cough & cold symptoms. This nighttime formula is specifically designed to help you get the rest you need to recover from your symptoms.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		82, 
        'ROBITUSSIN COUGH & COLD Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-cough-cold/', 
        'Get relief from your dry cough, chest congestion, and stuffy nose, while soothing your throat. This syrup includes both a cough suppressant to quiet coughs, and an expectorant to loosen mucus and phlegm, plus a decongestant to relieve nasal congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		83, 
        'ROBITUSSIN COUGH & COLD EXTRA STRENGTH Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-cough-cold-extra-strength/', 
        'This extra strength formula is designed to provide relief from your dry coughs, chest congestion, stuffy noses, and soothe throats. The alcohol-free syrup also loosens mucus and phlegm buildup.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		84, 
        'ROBITUSSIN TOTAL COUGH, COLD & FLU Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-total-cough-cold-flu/', 
        'Get through your day symptom-free with this alcohol-free liquid that is specially formulated to relieve your cough, cold and flu symptoms.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ), 
    (
		4, 
		85, 
        'ROBITUSSIN TOTAL COUGH, COLD & FLU EXTRA STRENGTH Liquid', 
        'https://www.robitussin.ca/products/adult-robitussin/robitussin-total-cough-cold-flu-extra-strength/', 
        'This extra strength formula is designed to help you get the rest you need, even at the peak of your cold or flu.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		86, 
        'ROBITUSSIN®COMPLETE DAYTIME', 
        'https://www.robitussin.ca/products/adult-robitussin/?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsUwDmP7n6vgKaC0OirFNpvay2MPNHPXov3Gh9Zp5AZBccoNxaPS1SxoCuP0QAvD_BwE&gclsrc=aw.ds', 
        '', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		87, 
        'ROBITUSSIN®COMPLETEDAYTIME/NIGHTTIME',
        'https://www.robitussin.ca/products/adult-robitussin/?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsUwDmP7n6vgKaC0OirFNpvay2MPNHPXov3Gh9Zp5AZBccoNxaPS1SxoCuP0QAvD_BwE&gclsrc=aw.ds', 
        '', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		88, 
        'ROBITUSSIN CHILDRENS COLD Liquid (6-12yrs)', 
        'https://www.robitussin.ca/products/childrens-robitussin/robitussin-childrens-cold/', 
        'Get your child relief from their cold symptoms. Your kids will like the tasty grape flavour, and youll like that its dye free and has no alcohol or sugar. Recommended for children 6 to 12 years of age.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		89, 
        'ROBITUSSIN CHILDRENS COUGH & COLD Liquid (6-12yrs)', 
        'https://www.robitussin.ca/products/childrens-robitussin/robitussin-childrens-cough-and-cold/', 
        'Help your child make it through the day by providing relief from dry coughs and stuffy noses. This sugar-free, alcohol-free liquid comes in a tasty grape flavour that kids love. Recommended for children 6 to 12 years of age.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		90, 
        'ROBITUSSIN CHILDRENS COUGH & COLD BEDTIME Liquid (6-12yrs)', 
        'https://www.robitussin.ca/products/childrens-robitussin/robitussin-childrens-cough-cold-bedtime/', 
        'Helps children get the rest they need by relieving cough and cold symptoms, including runny and stuffy nose, sneezing, and dry coughs. Kids like the tasty cherry flavour, and parents like that its dye free and has no alcohol or sugar. Recommended for children 6 to 12 years of age.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-robitussin/en_CA/global/logo/Robitussin_logo-EN.png?auto=format'
    ),
    (
		4, 
		91, 
        'Childrens Dimetapp® Cold & Allergy Liquid (6-12yrs)', 
        'https://www.dimetapp.com/products/dimetapp-cold-allergy/', 
        'When allergy and cold symptoms hit, you can count on fast-acting Dimetapp Cold & Allergys congestion and allergy fighting power. Stuffy and runny noses? Check. Itchy, watery eyes? You bet. Sneezing? Dimetapp is on it.', 
        ''
    ),
    (
		4, 
		92, 
        'Childrens Dimetapp® Cold & Cough Liquid (6-12yrs)', 
        'https://www.dimetapp.com/products/dimetapp-cold-cough/', 
        'Dimetapp Cold & Cough marries sweet grape flavor with safe, fast-acting, powerful relief designed to soothe stuffy, runny noses and quiet coughs—helping make sick days as stress-free for you as possible.', 
        ''
    ),
    (
		4, 
		93, 
        'Childrens Dimetapp® Day & Night Value Pack Liquid (6-12yrs)', 
        'https://www.dimetapp.com/products/day-night-value-pack/', 
        'Day and Night Value Pack, also known as everything you need to get through cold season. With a formula for daytime, and nasal congestion relief that helps them sleep come nighttime, our value pack offers everything you need to soothe their symptoms—day or night. Not to mention, its fast-acting.', 
        ''
    ),
    (
		4, 
		94, 
        'Childrens Dimetapp® Multi-Symptom Cold & Flu Liquid (6-12yrs)', 
        'https://www.dimetapp.com/products/dimetapp-multi-symptom-cold-flu/', 
        'Dimetapp Multi-Symptom Cold & Flu is the fast-acting powerful cold relief you know and love with acetaminophen to help reduce fever and relieve headache and body aches while also soothing childrens cold and cough symptoms.', 
        ''
    ),
    (
		4, 
		95, 
        'Childrens Dimetapp® Multi-Symptom Cold Relief Dye-Free Liquid (6-12yrs)', 
        'https://www.dimetapp.com/products/dimetapp-cold-cough/', 
        'Childrens Dimetapp® Multi-Symptom Cold Relief Dye-Free eases your childs stuffy and runny nose, while quieting that bothersome cough. All in a great-tasting grape flavor thats dye-free.', 
        ''
    ),
    (
		4, 
		96, 
        'Childrens Dimetapp® Nighttime Cold & Congestion Liquid (6-12yrs)', 
        'https://www.dimetapp.com/products/dimetapp-nighttime-cold-congestion/', 
        'Dimetapp Nighttime Cold & Congestion: its fast-acting and made to soothe the bothersome symptoms that cause kids to toss and turn at night, helping to quiet coughs and ease runny noses.', 
        ''
    ),
    (
		4, 
		97, 
        'NEOCITRAN TOTAL COLD NIGHT', 
        'https://www.neocitran.ca/products/total-cold-night/', 
        'Temporarily relieves the following cough and cold/flu symptoms: fever, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		98, 
        'NEOCITRAN EXTRA STRENGTH TOTAL COLD NON-DROWSY', 
        'https://www.neocitran.ca/products/extra-strength-total-cold-non-drowsy/', 
        'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		99, 
        'NEOCITRAN EXTRA STRENGTH TOTAL COLD Night', 
        'https://www.neocitran.ca/products/extra-strength-total-cold-night/', 
        'Temporarily relieves the following cold and flu symptoms: fever and chills, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		100, 
        'Neocitran Extra Strenght Cold & Sinus Night Apple Cinnamon', 
        'https://www.neocitran.ca/products/extra-strength-cold-sinus-night-apple-cinnamon/', 
        'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		101, 
        'Neocitran Extra Strenght Cold & Sinus Night', 
        'https://www.neocitran.ca/products/extra-strength-cold-sinus-night/', 
        'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		102, 
        'Neocitran Cold and Sore Throat Night', 
        'https://www.neocitran.ca/products/cold-sore-throat-night/', 
        'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		103, 
        'Neocitran Ultra Strength Total Flu Night', 
        'https://www.neocitran.ca/products/ultra-strength-total-flu-night/', 
        'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion, sneezing, runny nose and itchy, watery eyes.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		104, 
        'Neocitran Ultra Strength Total Flu Non-Drowsy', 
        'https://www.neocitran.ca/products/ultra-strength-total-flu-non-drowsy/', 
        'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, dry cough, nasal & sinus congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		105, 
        'Neocitran Extra Strength Cold & Congestion Non-Drowsy', 
        'https://www.neocitran.ca/products/extra-strength-cold-congestion-non-drowsy/', 
        'Temporarily relieves the following symptoms due to cold and flu: fever and chills, minor body aches and pain, sore throat pain, headache, nasal & sinus congestion.', 
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/neocitran/master/global/NeoCitran_BRAND_mark.png?auto=format'
    ),
    (
		4, 
		106, 
        'Benylin All-In-One® COLD AND FLU Caplets', 
        'https://www.benylin.ca/products/extra-strength/all-in-one-cold-and-flu-caplets', 
        'BENYLIN®  EXTRA STRENGTH All-In-One® COLD AND FLU Caplets is  a complete product in the BENYLIN® family of products. It is a convenient and portable solution to relieve all your COLD AND FLU symptoms in 1 simple solution.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		107, 
        'Benylin All-In-One® COLD AND FLU DAY/NIGHT Caplets', 
        'https://www.benylin.ca/products/extra-strength/all-in-one-cold-and-flu-day-night-caplets', 
        'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU DAY/NIGHT Caplets are complete products in the BENYLIN® family of products. This convenient and portable pack provides relief for all of your day and night, COLD & FLU symptoms in 1 simple solution.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		108, 
        'Benylin All-In-One® COLD AND FLU LIQUID GELS', 
        'https://www.benylin.ca/products/regular-strength/all-in-one-cold-and-flu-liquid-gels', 
        'BENYLIN® All-In-One® COLD AND FLU LIQUID GELS are a complete product in the BENYLIN® family of products.  It comes in portable and fast-acting LIQUID GELS. This convenient pack provides relief of all of your COLD & FLU symptoms in 1 simple solution.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		109, 
        'Benylin All-In-One® COLD AND FLU NIGHT Caplets', 
        'https://www.benylin.ca/products/extra-strength/all-in-one-cold-and-flu-night-caplets', 
        'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU NIGHT Caplets is a complete product in the BENYLIN® family of products. It is a convenient solution to relieve all of your COLD AND FLU symptoms, in 1 simple solution, so you can get through the night.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		110, 
        'Benylin All-In-One® COLD AND FLU NIGHT Syrup', 
        'https://www.benylin.ca/products/extra-strength/all-in-one-cold-and-flu-night-syrup', 
        'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU  NIGHT Syrup is a complete product to help relieve ALL of your COLD AND FLU symptoms with 1 simple solution, so you can get the rest you need.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		111, 
        'Benylin All-In-One® COLD AND FLU Syrup', 
        'https://www.benylin.ca/products/extra-strength/all-in-one-cold-and-flu-syrup', 
        'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU Syrup is a complete product to help relieve ALL of your COLD AND FLU symptoms with 1 simple solution.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ), 
    (
		4, 
		112, 
        'Benylin All-In-One® COLD AND FLU with Warming Sensation Syrup', 
        'https://www.benylin.ca/products/extra-strength/all-in-one-cold-and-flu-warming', 
        'BENYLIN® EXTRA STRENGTH All-In-One® COLD AND FLU with Warming Sensation Syrup is part of the most complete line in the BENYLIN® family of products. Its soothing properties instantly coat your sore throat while relieving all of your COLD AND FLU symptoms.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		113, 
        'Benylin For Children All-In-One® COLD AND FEVER NIGHTTIME Syrup (6-12yrs)', 
        'https://www.benylin.ca/products/children/all-in-one-cold-and-fever-nighttime-syrup', 
        'BENYLIN® For Children All-In-One® COLD AND FEVER NIGHTTIME Syrup is a complete product that combines trusted BENYLIN® ingredients in a great tasting apple flavour. Relieve your kids COLD & FLU symptoms with 1 simple solution to help them get the rest they need.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		114, 
        'Benylin For Children All-In-One® COLD AND FEVER Syrup (6-12yrs)', 
        'https://www.benylin.ca/products/children/all-in-one-cold-and-fever-syrup', 
        'BENYLIN® For Children All-In-One® COLD AND FEVER Syrup is all-in-one solution that combines trusted BENYLIN® ingredients with a great tasting bubble gum flavour. Relieve your kids COLD & FLU symptoms with 1 simple solution.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		115, 
        'MUCUS & PHLEGM PLUS COLD RELIEF Caplets', 
        'https://www.benylin.ca/products/extra-strength/mucus-and-phlegm-plus-cold-relief-caplets', 
        'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM PLUS COLD RELIEF Caplets works in your lungs to break up tough mucus and phlegm, and clear it from your chest when you cough. This portable and convenient solution provides you with fast acting relief of your toughest cold symptoms whenever you want it.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		116, 
        'MUCUS & PHLEGM PLUS COLD RELIEF NIGHT Syrup', 
        'https://www.benylin.ca/products/extra-strength/mucus-and-phlegm-plus-cold-relief-night-syrup', 
        'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM PLUS COLD RELIEF NIGHT Syrup works in your lungs to break up tough mucus and phlegm, and clear it from your chest when you cough. It also provides fast acting relief of your cold symptoms, to help you  get through the night.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		117, 
        'MUCUS & PHLEGM PLUS COLD RELIEF Syrup', 
        'https://www.benylin.ca/products/extra-strength/mucus-and-phlegm-plus-cold-relief-syrup', 
        'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM PLUS COLD RELIEF Syrup works in your lungs to break up your tough mucus and phlegm, and clear it from your chest when you cough. It also provides fast acting relief of your bothersome cold symptoms.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		118, 
        'MUCUS & PHLEGM PLUS COUGH CONTROL Syrup', 
        'https://www.benylin.ca/products/extra-strength/mucus-and-phlegm-plus-cough-control-syrup', 
        'Syrup works in your lungs to break up your tough mucus and phlegm, and clear it from your chest. This EXTRA STRENGTH fast-acting syrup is specially formulated to loosen and thin out mucus and phlegm so that you can expel it when you cough.  Plus, it helps silence your hacking, disruptive cough so you can get on with your day.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		119, 
        'MUCUS & PHLEGM Syrup', 
        'https://www.benylin.ca/products/extra-strength/mucus-and-phlegm-syrup', 
        'BENYLIN® EXTRA STRENGTH MUCUS & PHLEGM Syrup works in your lungs to break up tough mucus and phlegm, and clear it from your chest. This EXTRA STRENGTH, fast-acting formula loosens and thins out mucus and phlegm so that you can expel it when you cough.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		120, 
        'BENYLIN® Cough & Chest Congestion for People with Diabetes Liquid', 
        'https://www.benylin.ca/products/cough/benylin-cough-chest-congestion-people-diabetes', 
        'trusted cough and cold symptom solution recognized by Diabetes Canada. This sugar-free†, sorbitol-free remedy is specially formulated with menthol, a decongestant suitable for people with Diabetes*, providing the same effective cough, congestion and mucus relief expected from the BENYLIN® brand.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		121, 
        'Chest Congestion & Cold Syrup', 
        'https://www.benylin.ca/products/extra-strength/chest-congestion-and-cold-syrup', 
        'BENYLIN® EXTRA STRENGTH CHEST CONGESTION & COLD Syrup is specially formulated to relieve chest congestion. Plus, it provides fast and effective relief of your nasal congestion and sore throat pain.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		122, 
        'Cough & Chest Congestion Syrup', 
        'https://www.benylin.ca/products/extra-strength/cough-and-chest-congestion-syrup', 
        'BENYLIN® EXTRA STRENGTH COUGH & CHEST CONGESTION Syrup is specially formulated to work in your chest to help clear out heavy congestion while controlling your cough. Menthol relieves your sore throat pain.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		123, 
        'Cough & Chest Congestion with Warming Sensation Syrup', 
        'https://www.benylin.ca/products/extra-strength/cough-and-chest-congestion-warming-syrup', 
        'Warming Sensation Syrup is specially formulated to work in your chest to help clear out heavy congestion while calming your cough and relieving cold symptoms. Its warming properties instantly soothe and coat your throat.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		124, 
        'Cough Plus Cold Relief Syrup', 
        'https://www.benylin.ca/products/extra-strength/cough-complete-syrup', 
        'This syrup soothes your sore throat pain while providing relief from nasal and chest congestion. Up to 6 hours of cough relief.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		125, 
        'Dry Cough NIGHT Syrup', 
        'https://www.benylin.ca/products/regular-strength/dry-cough-night-syrup', 
        'BENYLIN® DRY COUGH NIGHT Syrup has the strength to control your dry hacking cough and lets you rest.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		126, 
        'Dry Cough Syrup', 
        'https://www.benylin.ca/products/extra-strength/dry-cough-syrup', 
        'BENYLIN® Dry Cough has the strength to silence your dry hacking cough. Its syrup formula helps coat and soothe your throat.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		127, 
        'For Children Cough & Cold Syrup (6-12yrs)', 
        'https://www.benylin.ca/products/children/cough-and-cold-syrup', 
        'BENYLIN® For Children Cough & Cold Syrup is an effective solution that relieves your childs toughest cold symptoms.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		128, 
        'For Children Cough NIGHT Syrup (6-12yrs)', 
        'https://www.benylin.ca/children/cough-night-syrup', 
        'BENYLIN® For Children Cough NIGHT is a great tasting solution specially formulated to help control your kids cough so your child can sleep.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		129, 
        'For Children Dry Cough Syrup (6-12yrs)', 
        'https://www.benylin.ca/products/children/dry-cough-syrup', 
        'BENYLIN® For Children Dry Cough is a great tasting syrup to help control your childs cough while soothing his or her throat.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		130, 
        'Tickly Throat Cough Syrup', 
        'https://www.benylin.ca/regular-strength/tickly-throat-cough-syrup', 
        'Benylin Tickly Throat Cough Syrup is specifically formulated for your early cold symptoms. Its formula soothes your throat while its cough suppressant relieves coughs from minor throat irritation.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		131, 
        'Cold & Sinus DAY/NIGHT Tablets', 
        'https://www.benylin.ca/products/extra-strength/cold-and-sinus-day-night-tablets', 
        'Trust the effective and fast relief of BENYLIN® EXTRA STRENGTH Cold & Sinus DAY/NIGHT Tablets.  This portable and convenient solution will relieve your worst symptoms during the day and help you rest at night.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		132, 
        'Cold & Sinus PLUS+ Tablets', 
        'https://www.advil.ca/products/cold-sinus/advil-cold-sinus-plus/', 
        'Advil Cold & Sinus Plus provides effective relief by helping to relieve nasal congestion—so you can breathe easy. Plus, it contains an antihistamine to address runny nose and sneezing.', 
        'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg'
    ),
    (
		4, 
		133, 
        'SORE THROAT & COUGH Syrup', 
        'https://www.benylin.ca/products/sore-throat/benylin-sore-throat-cough-syrup', 
        'BENYLIN® Extra Strength Sore Throat & Cough Syrup is formulated to provide fast relief of your sore throat pain and wet cough. This fast-acting formula soothes your irritated throat while also providing effective relief of wet cough and chest congestion. Made with throat-soothing menthol.', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		134, 
        'Sore Throat Lozenge', 
        'https://www.benylin.ca/products/sore-throat/sore-throat-lozenge', 
        'BENYLIN® Sore Throat Lozenge has a dual layer formulation that is unique from other cough drops. Fast, Effective Relief of Sore Throat Pain', 
        'https://www.benylin.ca/sites/benylin_ca/themes/benylin_ca/logo.png'
    ),
    (
		4, 
		135, 
        'Strepsils Honey & Lemon Lozenges', 
        'https://www.strepsils.co.uk/pages/dry-scratchy-throat', 
        'Strepsils provides fast acting relief which helps prevent sore throat pain from getting worse. Not only do Strepsils Honey & Lemon Lozenges soothe your throat, they also help fight bacteria too as they contains two effective antiseptics.', 
        ''
    ),
    (
		4, 
		136, 
        'Strepsils Extra Triple Action Blackcurrant Lozenges', 
        'https://www.strepsils.co.uk/pages/painful-irritated-sore-throat', 
        'Stand up to your sore throat from the start. For hard hitting pain relief for up to two hours after the lozenge is gone, try Strepsils Extra Triple Action Blackcurrant Lozenges.', 
        'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491'
    ),
    (
		4, 
		137, 
        'Strepsils Sore Throat & Cough', 
        'https://www.strepsils.co.uk/pages/sore-throat-cough-or-blocked-nose', 
        'Strepsils Sore Throat and Cough Lozenges which combine two antiseptics and Levomenthol for dual relief.', 
        'https://cdn.shopify.com/s/files/1/0069/8797/2663/files/strepsils_logo_web_uk_250x.png?v=1613518491'
    ),
    (
		4, 
		138, 
        'Cepacol Sensations - Honey & Lemon', 
        'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-honey-lemon/', 
        'They contain a combination of two antibacterial agents (2,4-dichloobenzyl alcohol 1.2mg, Amylmetacresol 0.6mg) that help your body fight back against sore throats. All in a delicious, soothing Honey & Lemon flavour. Available in pack size 16ct', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		139, 
        'Cepacol Sensations -Sucrose Free Lemon', 
        'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sucrose-free-lemon/', 
        'The antibacterial formula provides fast and effective antibacterial relief for sore throats. Available in a pack size of 16.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		140, 
        'Cepacol sensations - Sore Throat & Cough', 
        'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sore-throat-cough/', 
        'The combination of two antibacterial agents (2,4-Dichlorobenzyl alcohol 1.2mg, Amylmetacresol 0.6mg) and Menthol provide you with dual action temporary relief for your sore throat and irritating cough. Tastes like: menthol. Available in a pack size of 16.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		141, 
        'Cepacol Sensations - Sore Throat & Blocked Nose', 
        'https://www.cepacol.ca/en/products/cepacol-sensations-sore-throat-lozenges/cepacol-sensations-sore-throat-blocked-nose/', 
        'It contains a combination of two anti-bacterial agents and decongestant to provide fast, effective soothing relief from sore throats, and helps clear nasal passages. Tastes like: menthol. Available in a pack size of 16.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		142, 
        'Cepacol Extra Strength - Sucrose Free Cherry', 
        'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-freey-cherry/', 
        'Cepacol Extra Strength Sucrose Free Cherry provides fast & effective temporary relief for painful sore throats with the maximum amount of Benzocaine available per dose, without a prescription.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		143, 
        'Cepacol Extra Strength - Sucrose Free Honey & Lemon', 
        'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-freey-honey-lemon/', 
        'Sore throats can be painful. For fast, effective temporary relief of sore throat, use Cepacol® Extra Strength lozenges. Suitable for diabetics.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		144, 
        'Cepacol Extra Strength - Sucrose Free Orange', 
        'https://www.cepacol.ca/en/products/cepacol-extra-strength-sore-throat-lozenges/cepacol-extra-strength-sucrose-free-orange/', 
        'Cepacol Extra Strength Sucrose Free Orange provides fast & effective temporary relief for painful sore throats with the maximum amount of Benzocaine available per dose, without a prescription. Suitable for diabetics', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		145, 
        'Cepacol Children - Fruity Strawberry (6-12yrs)', 
        'https://www.cepacol.ca/en/products/cepacol-children-s-sore-throat-lozenges/cepacol-children-s/', 
        'Cepacol Childrens Fruity Strawberry is formulated with little ones in mind, the delicious fruity strawberry flavour combines two antibacterial agents to provide fast and effective temporary relief for childrens sore throats.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		146, 
        'Cepacol InstaMax Cherry', 
        'https://www.cepacol.ca/en/products/new-cepacol-instamax-lozenges/cepacol-instamax-cherry-12ct/', 
        'Cepacol InstaMax lozenge - trusted Cepacol with two max strength pain relievers for fast acting and effective relief.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    ),
    (
		4, 
		147, 
        'Cepacol InstaMax Berry', 
        'https://www.cepacol.ca/en/products/new-cepacol-instamax-lozenges/cepacol-instamax-berry-24ct/', 
        'Cepacol InstaMax lozenge - trusted Cepacol with two max strength pain relievers for fast acting and effective relief.', 
        'https://www.cepacol.ca/media/795/cepacol_bi-1.png'
    );

INSERT INTO productCriteria VALUES 
	(4, 1, '{cid1} and {cid4} and {cid7} and {cid11}'), 
	(4, 2, '{cid1} and {cid4} and {cid7} and {cid11}'), 
	(4, 3, '{cid1} and {cid4} and {cid8} and {cid11}'), 
	(4, 4, '{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'), 
	(4, 5, '{cid1} and {cid4} and {cid8} and {cid11}'), 
	(4, 6, '{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'), 
	(4, 7, '{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'), 
	(4, 8, '{cid1} and {cid4} and {cid7} and {cid8} and {cid11}'), 
	(4, 9, '{cid2} and {cid3} and {cid11}'), 
	(4, 10, '{cid2} and {cid3} and {cid8} and {cid11}'), 
	(4, 11, '{cid2} and {cid3} and {cid7} and {cid8} and {cid11}'), 
	(4, 12, '{cid2} and {cid3} and {cid11}'), 
	(4, 13, '{cid2} and {cid4} and {cid11}'), 
	(4, 14, '{cid1} and {cid4} and {cid8} and {cid10}'), 
	(4, 15, '{cid2} and {cid4} and {cid10}'), 
	(4, 16, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'), 
	(4, 17, '{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 18, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'), 
	(4, 19, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'), 
	(4, 20, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 21, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 22, '{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'), 
	(4, 23, '{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'), 
	(4, 24, '{cid2} and {cid3} and {cid10}'), 
	(4, 25, '{cid2} and {cid3} and {cid10}'), 
	(4, 26, '{cid2} and {cid3} and {cid8} and {cid10}'), 
	(4, 27, '{cid2} and {cid3} and {cid7} and {cid8} and {cid10}'), 
	(4, 28, '{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'), 
	(4, 29, '{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 30, '{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 31, '{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'), 
	(4, 32, '{cid1} and {cid4} and {cid9}'), 
	(4, 33, '{cid1} and {cid3} and {cid12}'), 
	(4, 34, '{cid1} and {cid3} and {cid7} and {cid12}'), 
	(4, 35, '{cid1} and {cid3} and {cid10} and {cid12}'), 
	(4, 36, '{cid1} and {cid3} and {cid9} and {cid10} and {cid12}'), 
	(4, 37, '{cid1} and {cid3} and {cid9} and {cid12}'), 
	(4, 38, '{cid1} and {cid3} and {cid9} and {cid12}'), 
	(4, 39, '{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'), 
	(4, 40, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 41, '{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 42, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'), 
	(4, 43, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 44, '{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'), 
	(4, 45, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 46, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 47, '{cid1} and {cid4} and {cid12}'), 
	(4, 48, '{cid1} and {cid4} and {cid12}'), 
	(4, 49, '{cid2} and {cid3} and {cid6} and {cid8}'), 
	(4, 50, '{cid2} and {cid3} and {cid7} and {cid8}'), 
	(4, 51, '{cid2} and {cid3} and {cid6} and {cid7}'), 
	(4, 52, '{cid2} and {cid5} and {cid12}'), 
	(4, 53, '{cid2} and {cid5} and {cid12}'), 
	(4, 54, '{cid2} and {cid5} and {cid12}'), 
	(4, 55, '{cid1} and {cid5} and {cid12}'), 
	(4, 56, '{cid1} and {cid5} and {cid12}'), 
	(4, 57, '{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 58, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 59, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'), 
	(4, 60, '{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'), 
	(4, 61, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 62, '{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'), 
	(4, 63, '{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'), 
	(4, 64, '{cid1} and {cid3} and {cid6}'), 
	(4, 65, '{cid1} and {cid3} and {cid6} and {cid9}'), 
	(4, 66, '{cid1} and {cid4} and {cid8} and {cid10}'), 
	(4, 67, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 68, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 69, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 70, '{cid1} and {cid4} and {cid6} and {cid7} and {cid10}'), 
	(4, 71, '{cid1} and {cid3} and {cid6} and {cid7} and {cid10}'), 
	(4, 72, '{cid1} and {cid3} and {cid6} and {cid7}'), 
	(4, 73, '{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'), 
	(4, 74, '{cid1} and {cid3} and {cid6} and {cid9}'), 
	(4, 75, '{cid1} and {cid3} and {cid6} and {cid9}'), 
	(4, 76, '{cid1} and {cid3} and {cid6} and {cid9}'), 
	(4, 77, '{cid1} and {cid3} and {cid6} and {cid9}'), 
	(4, 78, '{cid1} and {cid3} and {cid9}'), 
	(4, 79, '{cid1} and {cid3} and {cid9}'), 
	(4, 80, '{cid1} and {cid4} and {cid6}'), 
	(4, 81, '{cid1} and {cid3} and {cid6} and {cid7}'), 
	(4, 82, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9}'), 
	(4, 83, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9}'), 
	(4, 84, '{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'), 
	(4, 85, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 86, '{cid1} and {cid4} and {cid6} and {cid8} and {cid10}'), 
	(4, 87, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 88, '{cid2} and {cid3} and {cid7} and {cid8}'), 
	(4, 89, '{cid2} and {cid3} and {cid6} and {cid8}'), 
	(4, 90, '{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'), 
	(4, 91, '{cid2} and {cid3} and {cid7} and {cid8}'), 
	(4, 92, '{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'), 
	(4, 93, '{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'), 
	(4, 94, '{cid2} and {cid3} and {cid7} and {cid8} and {cid10} and {cid12}'), 
	(4, 95, '{cid2} and {cid3} and {cid6} and {cid7} and {cid8}'), 
	(4, 96, '{cid2} and {cid3} and {cid7} and {cid8}'), 
	(4, 97, '{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'), 
	(4, 98, '{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'), 
	(4, 99, '{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'), 
	(4, 100, '{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'), 
	(4, 101, '{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'), 
	(4, 102, '{cid1} and {cid3} and {cid7} and {cid8} and {cid10}'), 
	(4, 103, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 104, '{cid1} and {cid3} and {cid6} and {cid8} and {cid10}'), 
	(4, 105, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(4, 106, '{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 107, '{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10}'), 
	(4, 108, '{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 109, '{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'), 
	(4, 110, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'), 
	(4, 111, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'), 
	(4, 112, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12}'), 
	(4, 113, '{cid2} and {cid3} and {cid6} and {cid7} and {cid10}'), 
	(4, 114, '{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10}'), 
	(4, 115, '{cid1} and {cid4} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 116, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12}'), 
	(4, 117, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid10}'), 
	(4, 118, '{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'), 
	(4, 119, '{cid1} and {cid3} and {cid9} and {cid12}'), 
	(4, 120, '{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'), 
	(4, 121, '{cid1} and {cid3} and {cid9} and {cid12}'), 
	(4, 122, '{cid1} and {cid3} and {cid6} and {cid9} and {cid12}'), 
	(4, 123, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid12}'), 
	(4, 124, '{cid1} and {cid3} and {cid6} and {cid8} and {cid9} and {cid12}'), 
	(4, 125, '{cid1} and {cid3} and {cid7}'), 
	(4, 126, '{cid1} and {cid3} and {cid6} and {cid12}'), 
	(4, 127, '{cid2} and {cid3} and {cid6} and {cid8}'), 
	(4, 128, '{cid2} and {cid3} and {cid7}'), 
	(4, 129, '{cid2} and {cid3} and {cid6}'), 
	(4, 130, '{cid1} and {cid3} and {cid6} and {cid12}'), 
	(4, 131, '{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'), 
	(4, 132, '{cid1} and {cid4} and {cid7} and {cid8} and {cid10}'), 
	(4, 133, '{cid1} and {cid3} and {cid9} and {cid12}'), 
	(4, 134, '{cid1} and {cid4} and {cid13} and {cid14}'), 
	(4, 135, '{cid1} and {cid4} and {cid14}'), 
	(4, 136, '{cid1} and {cid4} and {cid13} and {cid14}'), 
	(4, 137, '{cid1} and {cid4} and {cid13} and {cid14}'), 
	(4, 138, '{cid1} and {cid4} and {cid14}'), 
	(4, 139, '{cid1} and {cid4} and {cid14}'), 
	(4, 140, '{cid1} and {cid4} and {cid12} and {cid14}'), 
	(4, 141, '{cid1} and {cid4} and {cid12} and {cid14}'), 
	(4, 142, '{cid1} and {cid4} and {cid12} and {cid13}'), 
	(4, 143, '{cid1} and {cid4} and {cid14}'), 
	(4, 144, '{cid1} and {cid4} and {cid12} and {cid13}'), 
	(4, 145, '{cid1} and {cid4} and {cid14}'), 
	(4, 146, '{cid1} and {cid4} and {cid12} and {cid13}'), 
	(4, 147, '{cid1} and {cid4} and {cid12} and {cid13}');
