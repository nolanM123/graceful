INSERT INTO ailments VALUES 
	(
		5, 
		'Allergy', 
		'Consult your phyisician or emergency assistance in the presence of severe allergic symptoms. Patients with history of anaphlaxis reaction should carry or have access to an Epipen at all times. Consult your physician for patients younger than 2 years old or for individuals with complications or comorbid illness such as sinusitis, otitis and/or asthma. Allergen avoidance is recommmended for patients with allergies.'
	);

INSERT INTO questions VALUES 
	(
		5, 
		1, 
		1, 
		'Are you diabetic', 
		'Preparations with decongestants and/or sugar may worsen blood glucose. Avoid use if you are diabetic.'
	), 
	(
		5, 
		2, 
		1, 
		'Do you have hypertension (uncontrolled), glaucoma, hyperthroidism and/or seizures', 
		'Decongestants (pseudoephedrine) may worsen hypertension, glaucoma, hyperthyroidism and seizures. Avoid use if you have these conditions.'
	), 
	(
		5, 
		3, 
		1, 
		'Are you Pregnant and/or Breast Feeding', 
		'Decongestants (pseudoephedrine) and alcohol containing products should be avoided in pregnant and/or breast feeding women.'
	), 
	(
		5, 
		4, 
		1, 
		'Are you an adult ≥ 12 yrs old', 
		'Health Canada does not recommend many ingredients in children younger than 6 yrs old.'
	), 
	(
		5, 
		5, 
		1, 
		'Are you taking an MAOI (within last 2 weeks)', 
		'MAOIs include safinamide, linezolid, procarbazine, amphetamines (ADHD meds), methylene blue, rasagiline, moclobemide, selegiline, phenelzine and tranylcypromine. Consult your pharmacist if unsure.'
	), 
	(
		5, 
		6, 
		1, 
		'Are you taking any anticholinergics or CNS depressants', 
		'Anticholinergic and CNS depressants are medications that cause or enhance drowsiness. Consult your pharmacist if unsure.'
	), 
	(
		5, 
		7, 
		1, 
		'Are you on blood thinners', 
		'Blood thinners include warfarin, aspirin, clopidogrel, dipyridamole, ticlopidine, ticagrelor, dabigatran, apixaban, rivaroxaban, dalteparin, etc. Ibuprofen may increase risk of bleeding. Counsult your pharmacist for further information.'
	), 
	(
		5, 
		8, 
		1, 
		'Do you have treated or untreated acid reflux', 
		'Blood thinners include warfarin, aspirin, clopidogrel, dipyridamole, ticlopidine, ticagrelor, dabigatran, apixaban, rivaroxaban, dalteparin, etc. Ibuprofen may increase risk of bleeding. Counsult your pharmacist for further information.'
	), 
	(
		5, 
		9, 
		1, 
		'Do you drink alcohol frequently', 
		'Alcohol may increase the risk of liver injury. Avoid use with acetaminophen. Alcohol may increase the risk of drowsiness. Avoid use with antihistamines.'
	), 
	(
		5, 
		10,
		2,
		'Do you have a runny nose', 
		'Consult your physician if you have a respiratory disease, breathing difficulties, wheezing, stridor or chest pain while breathing.'
	), 
	(
		5, 
		11,
		2,
		'Do you have nasal congestion', 
		'Consult your physician in presence of prolonged congestion with purulent discharge. Consult your pharmacist for blocked ears or for access to single ingredient decongestant. Prolonged use of nasal decongestants (≥3-5 days) may lead to rebound congestion.'
	), 
	(
		5, 
		12,
		2,
		'Are you sneezing frequently', 
		'Consult your physician for severe sneezing, resulting from an unknown cause or unresponsive to a 2-3 day non-prescription therapy trial.'
	), 
	(
		5, 
		13,
		2,
		'Do you have an itchy nose', 
		'Consult your physician if severe symptom, resulting from an unknown cause or unresponsive to a 2-3 day non-prescription therapy trial.'
	), 
	(
		5, 
		14,
		2,
		'Do you have watery or itchy eyes', 
		'Consult your physician if severe symptom, resulting from an unknown cause or unresponsive to a 2-3 day non-prescription therapy trial.'
	), 
	(
		5, 
		15,
		2,
		'Do you have hives, red and/or itchy skin', 
		'Consult your physician for severe symptoms or extensive skin reactions.'
	), 
	(
		5, 
		16,
		2,
		'Do you have eye redness', 
		'Consult your physician if vision affected, eye injury, presence of foreign body in eye or presence of blood in eye.'
	), 
	(
		5, 
		17,
		2,
		'Do you prefer an oral medication', 
		'Oral products may help with rhinorrhea, congestion, sneezing, nasal itch, eye symptoms and/or cutaneous symptoms. Oral products may act quickly/diffusely but more likely to cause side effects.'
	), 
	(
		5, 
		18,
		2,
		'Do you prefer a nasal medication', 
		'Nasal steroids may help with rhinorrhea, congestion, sneezing, nasal itch and eye symptoms but may be slower acting.'
	), 
	(
		5, 
		19,
		2,
		'Do you prefer eye drops', 
		'Eye drops may be most effective for localized eye symptoms. Mast cell stabilizers are most effective at preventing eye symptoms if started before allergy season or may take up to 10 days for maximal effect.'
	), 
	(
		5, 
		20,
		2,
		'Do you prefer a topical medication', 
		'Topical medications may be best for localized reactions (i.e. skin).'
	), 
	(
		5, 
		21,
		2,
		'Do you wish to stay alert (avoid drossiness)', 
		'First generation antihistamines including diphenhydramine may cause significant drowsiness and negatively impact ability to focus, drive or operate machinery. Avoid use with alcohol or CNS depressants.'
	), 
	(
		5, 
		22,
		2,
		'Are you in mild/moderate pain', 
		'Avoid use of acetaminophen products with frequent alcohol use. Avoid use of ibuprofen with blood thinners or GI issues. Consult your pharmacist for further information.'
	), 
	(
		5, 
		23,
		2,
		'Do you need a fast acting product', 
		'First generation antihistamines such as diphenhydramine may act more quickly.'
	), 
	(
		5, 
		24,
		2,
		'Would you like long acting or once daily relief', 
		'Second generation antihistamines are available in 12 or 24 hour formulations.'
	);

INSERT INTO criteria VALUES 
	(5, 1, 'Adult', '{qid4}'), 
	(5, 2, 'Kids', 'not {qid4}'), 
	(5, 3, 'Oral', '{qid17} and not ({qid18} or {qid19} or {qid20})'), 
	(5, 4, 'Nasal', '{qid18} and not {qid17}'), 
	(5, 5, 'Eye Drops', '{qid19} and not ({qid17} or {qid18})'), 
	(5, 6, 'Cream/Oint', '{qid20} and not ({qid17} or {qid18} or {qid19})'), 
	(5, 7, 'Fast', '{qid23} and not {qid24}'), 
	(5, 8, 'Long', '{qid24} and not {qid23}'), 
	(5, 9, '1° AH', 'not ({qid9} or {qid6} or {qid21}) and ({qid12} or {qid13} or {qid14} or {qid15})'), 
	(5, 10, '2° AH', 'not {qid9} and {qid21} and ({qid12} or {qid13} or {qid14} or {qid15})'), 
	(5, 11, 'Decongestant', 'not ({qid1} or {qid2} or {qid3} or {qid5}) and {qid11}'),
	(5, 12, 'Steroid', '{qid10} or {qid11} or {qid12} or {qid13}'), 
	(5, 13, 'Saline', '{qid11}'), 
	(5, 14, 'Mast Cell Stabilizer', '{qid14} or {qid16}'), 
	(5, 15, 'Acetaminophen', 'not {qid9} and {qid22}'), 
	(5, 16, 'Ibuprofen', 'not ({qid7} or {qid8} or {qid2} or {qid3}) and {qid22}'), 
	(5, 17, 'Pramoxine/Zinc', '{qid15}');

INSERT INTO products VALUES 
    (
        5, 
        1, 
        'Claritin Allergy + Sinus 12Hr', 
        'https://www.claritin.ca/en/products/allergy-sinus/12-hour-allergy-sinus', 
        'One fast-acting, non-drowsy tablet effectively relieves allergy symptoms and nasal congestion for 12 hours.', 
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ), 
    (
        5,
        2,
        'Claritin Extra Strenght Allergy + Sinus 24H',
        'https://www.claritin.ca/en/products/allergy-sinus/24-hour-allergy-sinus-extra-strength',
        'One non-drowsy caplet effectively relieves allergy symptoms and nasal congestion, all day.',
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ),
    (
        5,
        3,
        'Claritin Kids (2-12 Yrs)',
        'https://www.claritin.ca/en/products/childrens-claritin/chewables-24hr',
        'Children''s Claritin® Chewables offer 24-hour non-drowsy allergy medicine for kids in grape and bubblegum flavors. They provide all-day allergy relief for your child.',
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ),
    (
        5,
        4,
        'Claritin Kids -Syrup 24Hr (2-12Yrs)',
        'https://www.claritin.ca/en/products/Claritin-Kids-Syrup/24-hour-syrup-kids',
        'Claritin® Kids Syrup offers fast, all-day non-drowsy seasonal allergy symptom relief in a great-tasting grape flavour. Free of lactose, alcohol and dye.',
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ),
    (
        5,
        5,
        'Claritin-Tabs 24Hr',
        'https://www.claritin.ca/en/products/claritin/24-hour-tablets',
        'One non-drowsy tablet quickly and effectively relieves allergy symptoms all day.',
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ),
    (
        5,
        6,
        'Claritin Rapid Dissolve 24Hr',
        'https://www.claritin.ca/en/products/claritin/24-hour-rapid-dissolve',
        'Non-drowsy Claritin® Rapid Dissolve provides fast all day allergy symptom relief in a melt-in-your-mouth tablet that dissolves instantly without needing water.',
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ),
    (
        5,
        7,
        'Claritin Liquid Caps 24Hr',
        'https://www.claritin.ca/en/products/claritin/24-hour-liquid-capsules',
        'One non-drowsy capsule quickly and effectively relieves allergy symptoms all day.',
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ),
    (
        5,
        8,
        'Claritin Allergy Decongestant-Nasal Spray 12Hr',
        'https://www.claritin.ca/en/products/allergy-decongestant-nasal-spray/decongestant-nasal-spray',
        'Non-drowsy Claritin® Allergy Decongestant Nasal Spray provides fast, temporary relief from nasal and sinus congestion plus sinus pressure for up to 12 hours.',
        'https://www.claritin.ca/sites/g/files/vrxlpx36986/files/logo-claritin_1-4.png'
    ),
    (
        5,
        9,
        'Reactine Extra Strength',
        'https://www.reactine.ca/products/extra-strength-product?upcean=060245250103&gclid=CjwKCAiA7IGcBhA8EiwAFfUDsexx6vfHIUiOc6kZgSHjKQkgB0CXHEX9v1jeeXH6c-8W1DGELNp32BoCwtMQAvD_BwE&gclsrc=aw.ds',
        'Extra Strength REACTINE® provides fast, 24 hour relief from all your toughest indoor and outdoor allergy symptoms.',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        10,
        'Reactine Liquid Gels',
        'https://www.reactine.ca/products/liquid-gels-product?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsTD1h3cd628kJNmZZwSUWEoThkSj-XaZ_4pl2FWVTUW8erqpkzyUOxoCtNkQAvD_BwE&gclsrc=aw.ds',
        'Extra strength REACTINE® Allergy Liquid Gels work at liquid speed.  They provide rapid relief from your indoor and outdoor allergy symptoms.',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        11,
        'Reactine Rapid Dissolve',
        'https://www.reactine.ca/products/reactine-rapid-dissolve?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsefvqIJv9NLRmSPd9F2DMZhEOqOLkjieNnURBQPE1FN25NfTa8pm9RoCh2YQAvD_BwE&gclsrc=aw.ds',
        'REACTINE® Rapid Dissolve tablets dissolve in seconds without water, eliminating the need to swallow a pill. These oral-dissolving tablets start to work on allergy symptoms quickly and provide long lasting relief for up to 24 hours.',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        12,
        'Reactine Regular Strength',
        'https://www.reactine.ca/products/regular-strength-product?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsZlVVurzKtrY8mlUaW45RroyMdnrsxypyvYKexAr7tdgmFIRVyCcihoCb80QAvD_BwE&gclsrc=aw.ds',
        'FAST, 24-HOUR RELIEF from your outdoor and indoor allergy symptoms. Also available in Extra Strength.',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        13,
        'Reactine Complete Sinus + Allergy',
        'https://www.reactine.ca/products/reactine-complete-sinus-allergy',
        'REACTINE COMPLETE SINUS + ALLERGY EXTENDED RELEASE provides fast allergy relief plus a decongestant for when allergies are made worse by sinus symptoms.',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        14,
        'Reactine Children''s Liquid (2-12Yrs)',
        'https://www.reactine.ca/products/children-s-liquid',
        'REACTINE® Children''s Liquid is available in delicious grape flavor. This easy-to-take liquid  works fast and provides long-lasting relief for 24 hours.',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        15,
        'Reactine Fast Melt (6+Yrs)',
        'https://www.reactine.ca/products/fast-melt',
        'REACTINE FAST MELT® Junior tablets dissolve in the mouth without water, eliminating the need to swallow a pill. These oral-dissolving tablets start to work on allergy symptoms quickly and provide long lasting relief for up to 24 hours.',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        16,
        'Reactine Naturease Nasal Spray',
        'https://www.reactine.ca/',
        '',
        'https://www.reactine.ca/sites/reactine_ca/files/reactine_logo3_0_0.png'
    ),
    (
        5,
        17,
        'Allegra 12Hr',
        'https://www.allegra.com/en-ca/products/12-hour-allergy-relief?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsSm8H03oERpCmGgGADq1oVPHr_uefEWppzrMKwsHkBLjEzepw1wIghoCjuwQAvD_BwE&gclsrc=aw.ds',
        'Let Allegra® 12 Hour relieve your allergy symptoms like runny nose, sneezing, itchy, watery eyes, and itchy nose and throat. Allegra® works rapidly and won''t leave you feeling drowsy.',
        'https://www.allegra.com/dam/jcr:a0d73653-2dc1-41a0-8fd4-235f49002745/Header-logo-120x34.svg'
    ),
    (
        5,
        18,
        'Allegra 24Hr',
        'https://www.allegra.com/en-ca/products/24-hour-allergy-relief?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsY-ONy5cE9yvE3limAkSPdonw1OZ0RFg4BwCWGdnFFjPF9-jj44xUhoC4RsQAvD_BwE&gclsrc=aw.ds',
        'Relieve your allergy symptoms like runny nose, sneezing, itchy, watery eyes, itchy nose, or itchy throat. Allegra® 24 Hour starts working fast, lasts all day, and won''t leave you feeling drowsy.',
        'https://www.allegra.com/dam/jcr:a0d73653-2dc1-41a0-8fd4-235f49002745/Header-logo-120x34.svg'
    ),
    (
        5,
        19,
        'Allegra-D 12Hr',
        'https://www.allegra.com/en-ca/products/allegra-d-12-hour-decongestant',
        'Relieve your nasal congestion, sneezing, itchy, watery eyes, itchy nose and throat, with Allegra®-D. It can relieve up to eight allergy symptoms with just one tablet. Allegra®-D contains a decongestant that works to reduce the swelling of nasal passages and helps break up tough nasal congestion caused by allergies.',
        'https://www.allegra.com/dam/jcr:a0d73653-2dc1-41a0-8fd4-235f49002745/Header-logo-120x34.svg'
    ),
    (
        5,
        20,
        'Benadryl Caplets',
        'https://www.benadryl.ca/products/benadryl-caplets',
        'You never know when you might be hit with an allergic reaction or unexpected allergy symptoms. Be prepared with BENADRYL®*. It provides fast, effective relief of both everyday allergies & allergic reactions to things like insect bites and poison ivy.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        21,
        'Benadryl Extra Srengths Allergy',
        'https://www.benadryl.ca/products/benadryl-extra-strength-allergy',
        'BENADRYL® EXTRA STRENGTH offers an extra strength dose for fast and effective symptom relief of your allergies and allergic reactions with just one caplet.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        22,
        'Benadryl Liquid Gels',
        'https://www.benadryl.ca/products/benadryl-liqui-gels?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsWVjYo1MvcjuN78GReKDNKgomTnXHhrV9XsMB87vtw1Bya4Y2eMblBoCxqYQAvD_BwE&gclsrc=aw.ds',
        'Fast-acting BENADRYL® LIQUI-GELS® are dye free and provide fast, effective symptom relief of your allergies and allergic reactions.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        23,
        'Extra Strength Benadryl Total Allergy & Sinus',
        'https://www.benadryl.ca/products/extra-strength-benadryl-total-allergy-sinus',
        'Extra Strength BENADRYL TOTAL® Allergy & Sinus is specially formulated to provide fast, effective relief of your allergy symptoms PLUS effective relief of your sinus congestion and pain.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        24,
        'Extra Strength Benadryl Nighttime Caplets',
        'https://www.benadryl.ca/products/extra-strength-benadryl-nighttime-caplets',
        'Extra Strength BENADRYL® Nighttime Caplets let you rest by providing fast, effective symptom relief from allergies and allergic reactions.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        25,
        'Benadryl Liquid Elixir (6+Yrs)',
        'https://www.benadryl.ca/products/benadryl-liquid-elixir',
        'BENADRYL® Liquid Elixir provides fast, effective symptom relief from allergies and allergic reactions. It''s available in a liquid format for flexible dosing.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        26,
        'Children''s Benadryl Liquid (Under 12Yrs)',
        'https://www.benadryl.ca/products/childrens-benadryl-liquid',
        'Great tasting bubblegum flavoured Children''s BENADRYL® Liquid provides fast, effective symptom relief of your child''s everyday allergies and allergic reactions. Children''s BENADRYL® Liquid is free of both dyes and alcohol.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        27,
        'Children''s Benadryl Chewables (6-12Yrs)',
        'https://www.benadryl.ca/products/children-s-benadryl-chewables',
        'Great tasting grape flavoured Children''s BENADRYL® Chewables are a convenient way to provide fast, effective symptom relief of your child''s allergies and allergic reactions.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        28,
        'Benadryl Itch Stick',
        'https://www.benadryl.ca/products/benadryl-extra-strength-itch-relief-stick',
        'Non-stinging BENADRYL® Itch Relief Stick contains a topical antihistamine/analgesic and a skin protectant to provide fast, effective relief of itchiness and pain due to insect bites and stings. Keep it handy when in your backyard, at your cottage, or on your next camping trip.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        29,
        'Benadryl Itch Spray',
        'https://www.benadryl.ca/products/benadryl-itch-spray',
        'Non-stinging BENADRYL® Itch Relief Spray contains a topical antihistamine/analgesic and a skin protectant to provide fast, effective relief from itchiness and pain due to allergic itches, poison ivy, insect bites, mild sunburn or minor skin irritations at the source.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        30,
        'Benadryl Itch Cream',
        'https://www.benadryl.ca/products/benadryl-itch-cream',
        'BENADRYL® Itch Cream contains an antihistamine to provide fast, effective relief from itchy skin due to allergic itches, poison ivy, insect bites, mild sunburn or minor skin irritation at the source.',
        'https://www.benadryl.ca/sites/benadryl_ca/files/benadryl_logo_resized.png'
    ),
    (
        5,
        31,
        'Aerius',
        'https://www.aerius.ca/en/products/aerius',
        'AERIUS® (5 mg desloratadine) is an antihistamine that delivers multi-symptom allergy relief for 24 hours. Its long-lasting action helps to relieve your allergy symptoms so you can do the things you like, without your allergy symptoms getting in the way. AERIUS® is non-drowsy so it can help you function normally, both at school and at work.',
        'https://www.aerius.ca/sites/g/files/vrxlpx28816/files/Brand_logo.png'
    ),
    (
        5,
        32,
        'Aerius Kids (2-12Yrs)',
        'https://www.aerius.ca/en/products/aerius-kids',
        'Aerius® Kids delivers multi-symptom allergy relief in an easy-to-swallow liquid with a great tasting bubble gum flavour. Aerius® Kids brings fast and effective relief from seasonal and year-round allergy symptoms, without causing drowsiness so it helps your child to function normally at home and at school. A single dose of Aerius® Kids provides 24 hours of allergy symptom relief.',
        'https://www.aerius.ca/sites/g/files/vrxlpx28816/files/Brand_logo.png'
    ),
    (
        5,
        33,
        'Aerius Dual Action 12 Hrs',
        'https://www.aerius.ca/en/products/aerius-dual-action/',
        '',
        'https://www.aerius.ca/sites/g/files/vrxlpx28816/files/Brand_logo.png'
    ),
    (
        5,
        34,
        'Chlor-Tripolon',
        '',
        '',
        ''
    ),
    (
        5,
        35,
        'Sudafed Sinus Advance',
        'https://www.sudafed.ca/products/pressure-pain/sudafed-sinus-advance',
        'Get relief from sinus pain, headache, congestion and pressure.',
        'https://www.sudafed.ca/sites/sudafed_ca/files/sudafed_0.png'
    ),
    (
        5,
        36,
        'Sudafed Head Cold & Sinus',
        'https://www.sudafed.ca/products/congestion-pain/Sudafed-head-cold-sinus',
        'Get relief from sinus congestion and pain, plus headaches.',
        'https://www.sudafed.ca/sites/sudafed_ca/files/sudafed_0.png'
    ),
    (
        5,
        37,
        'Flonase',
        'https://www.flonase.ca/',
        '',
        'https://i-cf65.ch-static.com/content/dam/NA_Pharma/Country/US/Brands/Flonase/Flonase%20Canada%20Consumer/english/home_page/logo-eng.png?auto=format'
    ),
    (
        5,
        38,
        'Nasacort Allergy 24Hr',
        'https://www.nasacort.com/en-us/',
        'Relish the fresh air. Your nose is free at last with a nasal allergy spray that relieves your worst allergy symptoms all day long.',
        'https://www.nasacort.com/dam/jcr:edd0fd3c-492d-4589-a963-406cb78f78d2/Nasacort_Logo_Transparent%20(3).svg'
    ),
    (
        5,
        39,
        'Otrivin Natural Nasal & Sinus Cleansing (Gentle, Moderate Or Strong) Stream Sea Water & Aloe',
        'https://www.otrivin.ca/en-ca/products/saline-aloe-gentle/',
        'Keep your nose clear with this natural sea water solution that helps clear stuffy or blocked noses. With natural aloe vera extract to help gentle soothe and moisturize your nose.',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/Otrivin/en_CA/Logos/logo-ca.png?auto=format'
    ),
    (
        5,
        40,
        'Otrivin Natural Severe Congestion Relief (Moderate, Heavy) Stream Dual Action Sea Water',
        'https://www.otrivin.ca/en-ca/',
        '',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/Otrivin/en_CA/Logos/logo-ca.png?auto=format'
    ),
    (
        5,
        41,
        'Otrivin Baby Care Nasal Cleansing Natural Sea Water',
        'https://www.otrivin.ca/en-ca/',
        '',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/Otrivin/en_CA/Logos/logo-ca.png?auto=format'
    ),
    (
        5,
        42,
        'Otrivin Saline Nasal Mist',
        'https://www.otrivin.ca/en-ca/',
        '',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/Otrivin/en_CA/Logos/logo-ca.png?auto=format'
    ),
    (
        5,
        43,
        'Otrivin Medicated Complete Nasal Care Triple Action Formula',
        'https://www.otrivin.ca/en-ca/',
        '',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/Otrivin/en_CA/Logos/logo-ca.png?auto=format'
    ),
    (
        5,
        44,
        'Otrivin Medicated Cold & Allergy Relief Original Formula',
        'https://www.otrivin.ca/en-ca/',
        '',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/Otrivin/en_CA/Logos/logo-ca.png?auto=format'
    ),
    (
        5,
        45,
        'Otrivin Medicated Cold & Allergy Relief With Moisturizers',
        'https://www.otrivin.ca/en-ca/',
        '',
        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/Otrivin/en_CA/Logos/logo-ca.png?auto=format'
    ),
    (
        5,
        46,
        'Opticrom',
        '',
        '',
        ''
    ),
    (
        5,
        47,
        'Cromolyn (5+Yrs)',
        'https://www.cromolyn.ca/?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsQZlUeHd7gDYtpK2eLW2Sx-oGP-45A4b1vwUyJmtiNSPRLIqoTTvXRoCNskQAvD_BwE',
        '',
        'https://www.cromolyn.ca/sites/cromolyn/files/header/logo.svg'
    ),
    (
        5,
        48,
        'Ak Vernacon',
        '',
        '',
        ''
    ),
    (
        5,
        49,
        'Clear Eyes (Not Completed)',
        'https://www.cleareyes.com/',
        '',
        'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png'
    ),
    (
        5,
        50,
        'Visine Original Red Eye (Not Completed)',
        'https://www.visine.com/eye-drops/red-eye-comfort',
        'VISINE® Red Eye Comfort eye drops work in 60 seconds to provide fast remedy for red eyes. Relief is in sight with our quick-acting and effective redness relief formula containing Tetrahydrozoline HCI. Don''t let minor irritations get in the way of your eyes—and your day!',
        'https://www.visine.com/sites/visine_us/themes/visine_us/logo.svg'
    ),
    (
        5,
        51,
        'Visine For Allergy Advance With Antihistamine',
        'https://www.visine.com/eye-drops/antihistamine-eye-allergy',
        'VISINE® Allergy Eye Relief Multi-Action Antihistamine and Redness Reliever Eye Drops provide temporary relief from red, itchy, allergy eyes. This multi-action over-the-counter (OTC) allergy eye drop is the original prescription strength and clinically proven to relieve red, itchy eyes due to allergies. The eye drops contain an effective antihistamine and redness reliever.',
        'https://www.visine.com/sites/visine_us/themes/visine_us/logo.svg'
    ),
    (
        5,
        52,
        'Polysporin 1% Hydrocortisone Anti-Itch Cream (2+Yrs)',
        'https://www.polysporin.ca/products/hydrocortisone-anti-itch-cream',
        'Provides fast relief of itch symptoms from minor skin irritations due to poison ivy, insect bites or allergic skin reactions to cosmetics, detergents or jewelry',
        'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
    ),
    (
        5,
        53,
        'Polysporin Itch Relief Lotion ',
        'https://www.polysporin.ca/products/itch-relief-lotion',
        'Reduces pain and itching',
        'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
    ),
    (
        5,
        54,
        'Calamine Lotion',
        '',
        '',
        ''
    );

INSERT INTO productCriteria VALUES 
	(5, 1, '{cid1} and {cid3} and {cid8} and {cid10} and {cid11}'), 
	(5, 2, '{cid1} and {cid3} and {cid8} and {cid10} and {cid11}'), 
	(5, 3, '{cid2} and {cid3} and {cid8} and {cid10}'), 
	(5, 4, '{cid2} and {cid3} and {cid8} and {cid10}'), 
	(5, 5, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 6, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 7, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 8, '{cid1} and {cid4} and {cid8} and {cid11}'), 
	(5, 9, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 10, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 11, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 12, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 13, '{cid1} and {cid3} and {cid8} and {cid10} and {cid11}'), 
	(5, 14, '{cid2} and {cid3} and {cid8} and {cid10}'), 
	(5, 15, '{cid2} and {cid3} and {cid8} and {cid10}'), 
	(5, 16, '{cid1} and {cid4} and {cid7} and {cid13}'), 
	(5, 17, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 18, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 19, '{cid1} and {cid3} and {cid8} and {cid10} and {cid11}'), 
	(5, 20, '{cid1} and {cid3} and {cid7} and {cid9}'), 
	(5, 21, '{cid1} and {cid3} and {cid7} and {cid9}'), 
	(5, 22, '{cid1} and {cid3} and {cid7} and {cid9}'), 
	(5, 23, '{cid1} and {cid3} and {cid7} and {cid9} and {cid11} and {cid15}'), 
	(5, 24, '{cid1} and {cid3} and {cid7} and {cid9}'), 
	(5, 25, '{cid2} and {cid3} and {cid7} and {cid9}'), 
	(5, 26, '{cid2} and {cid3} and {cid7} and {cid9}'), 
	(5, 27, '{cid2} and {cid3} and {cid7} and {cid9}'), 
	(5, 28, '{cid6} and {cid7} and {cid9}'), 
	(5, 29, '{cid6} and {cid7} and {cid9}'), 
	(5, 30, '{cid6} and {cid7} and {cid9}'), 
	(5, 31, '{cid1} and {cid3} and {cid8} and {cid10}'), 
	(5, 32, '{cid2} and {cid3} and {cid8} and {cid10}'), 
	(5, 33, '{cid1} and {cid3} and {cid8} and {cid10} and {cid11}'), 
	(5, 34, '{cid1} and {cid3} and {cid7} and {cid9}'), 
	(5, 35, '{cid1} and {cid3} and {cid7} and {cid11} and {cid16}'), 
	(5, 36, '{cid1} and {cid3} and {cid7} and {cid11} and {cid15}'), 
	(5, 37, '{cid1} and {cid4} and {cid8} and {cid12}'), 
	(5, 38, '{cid1} and {cid4} and {cid8} and {cid12}'), 
	(5, 39, '{cid1} and {cid4} and {cid7} and {cid13}'), 
	(5, 40, '{cid1} and {cid4} and {cid7} and {cid13}'), 
	(5, 41, '{cid2} and {cid4} and {cid7} and {cid13}'), 
	(5, 42, '{cid1} and {cid4} and {cid7} and {cid13}'), 
	(5, 43, '{cid1} and {cid4} and {cid7} and {cid11}'), 
	(5, 44, '{cid1} and {cid4} and {cid7} and {cid11}'), 
	(5, 45, '{cid1} and {cid4} and {cid7} and {cid11}'), 
	(5, 46, '{cid1} and {cid5} and {cid14}'), 
	(5, 47, '{cid2} and {cid5} and {cid14}'), 
	(5, 48, '{cid1} and {cid5} and {cid9} and {cid11}'), 
	(5, 49, '{cid1} and {cid5} and {cid7} and {cid11}'), 
	(5, 50, '{cid1} and {cid5} and {cid7} and {cid11}'), 
	(5, 51, '{cid1} and {cid5} and {cid7} and {cid9} and {cid11}'), 
	(5, 52, '{cid2} and {cid6} and {cid8} and {cid12}'), 
	(5, 53, '{cid2} and {cid6} and {cid7} and {cid17}'), 
	(5, 54, '{cid2} and {cid6} and {cid7} and {cid17}');
