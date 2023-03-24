INSERT INTO ailments VALUES 
	(
		6, 
		'Pain', 
		'Consult your physician or emergency assistance in presence of severe pain symptoms, injury or trauma. Older individuals on corticosteriod therapy who have experienced a minor trauma should consult their physician due to fracture risk. Consult your physician for pain lasting ≥2 weeks or unresponsive to conservative therapy. Consult your physician if history of cancer or additional symptoms such as fever, rash, hot swollen joint, weight loss, chills, bladder dysfunction, bowel dysfunction, neurogenic pain (burning, tingling, numbness), morning stiffness lasting more than 1 hour, sciatica symptoms, joint deformity, obvious fracture, inability to bear weight on injured limb or motor weakness. Patients with chronic liver disease, history of inflammatory arthritis, fibromyalgia or gout should consult their physician.'
	);

INSERT INTO questions VALUES 
	(
		6, 
		1, 
		1, 
		'Are you Pregnant and/or Breast Feeding', 
		'Anti-inflammatory pain medications are not recommended in pregnancy and should be avoided.'
	), 
	(
		6, 
		2, 
		1, 
		'Are you an adult ≥ 12 yrs old', 
		'Some pain medications are not appropriate for children and should be avoided.'
	), 
	(
		6, 
		3, 
		1, 
		'Do you frequently drink alcohol', 
		'Acetaminophen is not recommended with alcohol use due to increased risk of liver injury.'
	), 
	(
		6, 
		4, 
		1, 
		'Are you taking any anticholinergics or CNS depressants', 
		'Anticholinergic and CNS depressants are medications that cause or enhance drowsiness. Avoid use with alcohol. Consult your pharmacist if unsure.'
	), 
	(
		6, 
		5, 
		1, 
		'Do you have treated/untreated acid reflux or hypertension', 
		'Anti-inflammatories may worsen upset stomach, peptic ulcers and may also worsen high blood pressure. Avoid use if you have these medical conditions.'
	), 
	(
		6, 
		6, 
		1, 
		'Are you taking any blood thinners', 
		'Blood thinners include warfarin, aspirin, clopidogrel, dipyridamole, ticlopidine, ticagrelor, dabigatran, apixaban, rivaroxaban, dalteparin, etc. Anti-inflammatories may increase risk of bleeding. Counsult your pharmacist for further information.'
	), 
	(
		6, 
		7, 
		2, 
		'Do you have mild to moderate pain', 
		'Severe pain may require prescription therapy. Consult your physician.'
	), 
	(
		6, 
		8, 
		2, 
		'Do you have any inflammation or swelling', 
		'Consult your physician for pain not associated with activity, pain associated with infection or infection risk factors. Consider application of ice (first 24-48hrs) or heat (after 48hrs). Consult your pharmacist for further information.'
	), 
	(
		6, 
		9, 
		2, 
		'Do you have muscle tension or back/neck pain', 
		'Muscle relaxants and/or heat may be benificial for back or neck pain.'
	), 
	(
		6, 
		10, 
		2, 
		'Is your skin irritated, scratched or cut', 
		'Topical pain medications may further irritate sensitive or damaged skin and should be avoided. Areas of minor skin trauma should be cleaned with mild soap and water to reduce infection risk. Consult your physician for foreign bodies embedded in a wound.'
	), 
	(
		6, 
		11, 
		2, 
		'Would you like fast pain relief', 
		'Liquid, quick dissolve or topical medications may provide near immediate pain relief.'
	), 
	(
		6, 
		12, 
		2, 
		'Would you prefer long acting pain relief', 
		'Some pain medications have long duration of action or are formulated to provide pain relief over extended time periods.'
	), 
	(
		6, 
		13, 
		2, 
		'Do you prefer an oral medication', 
		'Oral medications may work best for deeper tissue pain, more extensive pain or more intense pain.'
	), 
	(
		6, 
		14, 
		2, 
		'Do you prefer a topical medication', 
		'Topical medications provide localized pain relief and may reduce medication side effects (i.e. drowsiness, upset stomach). Consult your pharmacist for further information.'
	), 
	(
		6, 
		15, 
		2, 
		'Would you like pain relief at bedtime', 
		'Consult your physician in presence of severe nighttime pain or worsened pain in supine position.'
	), 
	(
		6, 
		16, 
		2, 
		'Do you also have a fever', 
		'Consult your physician if fever higher than 38°C in a child or lasting more than 3 days in an adult. Avoid aspirin for fever in a child.'
	), 
	(
		6, 
		17, 
		2, 
		'Do you have a headache/migraine', 
		'Additives such as caffeine may help with headache and migraine pain.'
	), 
	(
		6, 
		18, 
		2, 
		'Do you have menstrual cramping/pain', 
		'Some additives may help with menstrual cramping and pain.'
	), 
	(
		6, 
		19, 
		2, 
		'Would you like a natural product', 
		'Some herbal products may help with pain relief.'
	);

INSERT INTO criteria VALUES 
	(6, 1, 'Adult', '{qid2}'), 
	(6, 2, 'Kids', 'not {qid2}'), 
	(6, 3, 'Fast', '{qid11} and not {qid12}'), 
	(6, 4, 'Long', '{qid12} and not {qid11}'), 
	(6, 5, 'Oral', '{qid13} and not {qid14}'), 
	(6, 6, 'Topical', '{qid14} and not {qid13}'), 
	(6, 7, 'APAP', 'not {qid3} and ({qid16} or {qid17} or {qid18} or {qid7})'), 
	(6, 8, 'Ibuprofen', 'not ({qid1} or {qid5} or {qid6}) and ({qid7} or {qid8} or {qid16} or {qid17} or {qid18})'), 
	(6, 9, 'Napoxen', 'not ({qid1} or {qid5} or {qid6}) and ({qid7} or {qid8} or {qid17} or {qid18})'), 
	(6, 10, 'Methocarbamol', '{qid7} and {qid9} and not ({qid3} or {qid4} or {qid1})'), 
	(6, 11, 'Diclofenac', 'not ({qid1} or {qid10}) and ({qid7} or {qid8} or {qid9})'), 
	(6, 12, 'ASA/Salicylate', 'not ({qid1} or {qid5} or {qid6}) and ({qid7} or {qid8} or {qid9} or {qid17} or {qid18})'), 
	(6, 13, 'Capsaicin', 'not {qid10} and {qid7}'), 
	(6, 14, 'Caffeine', '{qid18}'), 
	(6, 15, 'Pyrilamine', '{qid18}'), 
	(6, 16, 'Pamabrom', '{qid18}'), 
	(6, 17, 'Menthol', 'not {qid10} and ({qid7} or {qid8} or {qid9})'), 
	(6, 18, 'AntiHistamine', '{qid15} and not ({qid3} or {qid4})'), 
	(6, 19, 'Arnica', '{qid19} and not ({qid10} or {qid1}) and ({qid7} or {qid8} or {qid9})'), 
	(6, 20, 'Heat', 'not {qid10} and ({qid7} or {qid8} or {qid9})');

INSERT INTO products VALUES 
	(
		6,
		1,
		'Tylenol  Rapid Release Gels',
		'https://www.tylenol.ca/products/headache-migraine/tylenol-rapid-release-gels',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		2,
		'Tylenol  Extra Strength',
		'https://www.tylenol.ca/products/headache-migraine/tylenol-extra-strength',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		3,
		'Tylenol  Liquid Gels',
		'https://www.tylenol.ca/products/headache-migraine/tylenol-liquid-gels',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		4,
		'Tylenol  Regular Strength',
		'https://www.tylenol.ca/products/headache-migraine/tylenol-regular-strength',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		5,
		'Tylenol  Ultra Relief',
		'https://www.tylenol.ca/products/headache-migraine/tylenol-ultra-relief',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid14}'
	),
	(
		6,
		6,
		'Tylenol  Arthritis Pain',
		'https://www.tylenol.ca/products/arthritis/tylenol-arthritis-pain',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid4} and {cid5} and {cid7}'
	),
	(
		6,
		7,
		'Tylenol  Muscle Aches & Body Pain',
		'https://www.tylenol.ca/products/back-body/tylenol-muscle-aches-body-pain',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		8,
		'Tylenol  Back Pain',
		'https://www.tylenol.ca/products/back-body/tylenol-back-pain',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid10}'
	),
	(
		6,
		9,
		'Extra Strength Tylenol  Nighttime',
		'https://www.tylenol.ca/products/nighttime/extra-strength-tylenol-nighttime',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid18}'
	),
	(
		6,
		10,
		'Tylenol  Body Pain Night',
		'https://www.tylenol.ca/products/nighttime/tylenol-body-pain-night',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid10}'
	),
	(
		6,
		11,
		'Infants'' Tylenol  Drops (0-23Months)',
		'https://www.tylenol.ca/products/infants-children/infants-tylenol-drops',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		12,
		'Children''s Tylenol  Liquid (2-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/childrens-tylenol-liquid',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		13,
		'Children S Tylenol  Chewables (2-11Yrs)',
		'https://www.tylenol.ca/products/infants-children/children-s-tylenol-chewables',
		'',
		'https://www.tylenol.ca/sites/tylenol_ca/files/tylenol_red_logo.png',
		'{cid2} and {cid3} and {cid5} and {cid7}'
	),
	(
		6,
		14,
		'Advil 12 Hour ',
		'https://www.advil.ca/product/advil-12-hour',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid4} and {cid5} and {cid8}'
	),
	(
		6,
		15,
		'Advil Caplets',
		'https://www.advil.ca/product/advil-caplets',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		16,
		'Advil Day/Night Convenience Pack',
		'https://www.advil.ca/product/advil-daynight-convenience-pack',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8} and {cid18}'
	),
	(
		6,
		17,
		'Advil Extra Strength Caplets',
		'https://www.advil.ca/product/advil-extra-strength-caplets',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		18,
		'Advil Extra Strength Liqui-Gels',
		'https://www.advil.ca/product/advil-extra-strength-liqui-gels',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		19,
		'Advil Liqui-Gels ',
		'https://www.advil.ca/product/advil-liqui-gels',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		20,
		'Advil Tablets',
		'https://www.advil.ca/product/advil-tablets',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		21,
		'Advil  Mini-Gels',
		'https://www.advil.ca/product/advil-mini-gels',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		22,
		'Advil Arthritis Pain',
		'https://www.advil.ca/product/advil-arthritis-pain',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		23,
		'Advil Muscle & Joint',
		'https://www.advil.ca/product/advil-muscle-joint',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		24,
		'Advil Nighttime',
		'https://www.advil.ca/product/advil-nighttime',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid1} and {cid3} and {cid5} and {cid8} and {cid18}'
	),
	(
		6,
		25,
		'Advil Pediatric Drops (4-36Months)',
		'https://www.advil.ca/product/advil-pediatric-drops',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		26,
		'Children S Advil (2-12Yrs)',
		'https://www.advil.ca/product/children-s-advil',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		27,
		'Junior Strength Advil (2-12Yrs)',
		'https://www.advil.ca/product/junior-strength-advil',
		'',
		'https://www.advil.ca/content/dam/cf-consumer-healthcare/bp-advil/en_CA/global/logo/logo-header.svg',
		'{cid2} and {cid3} and {cid5} and {cid8}'
	),
	(
		6,
		28,
		'Aleve Caplets',
		'https://www.aleve.ca/en/products/aleve/aleve-caplets/',
		'',
		'https://www.aleve.ca/sites/g/files/vrxlpx29236/files/aleve-header-logo.png',
		'{cid1} and {cid4} and {cid5} and {cid9}'
	),
	(
		6,
		29,
		'Aleve Nighttime',
		'https://www.aleve.ca/en/products/aleve/aleve-nighttime/',
		'',
		'https://www.aleve.ca/sites/g/files/vrxlpx29236/files/aleve-header-logo.png',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid18}'
	),
	(
		6,
		30,
		'Aleve Back & Body',
		'https://www.aleve.ca/en/products/aleve/aleve-back-body/',
		'',
		'https://www.aleve.ca/sites/g/files/vrxlpx29236/files/aleve-header-logo.png',
		'{cid1} and {cid4} and {cid5} and {cid9}'
	),
	(
		6,
		31,
		'Aleve Liquid Gels',
		'https://www.aleve.ca/en/products/aleve/aleve-liquid-gels/',
		'',
		'https://www.aleve.ca/sites/g/files/vrxlpx29236/files/aleve-header-logo.png',
		'{cid1} and {cid3} and {cid5} and {cid9}'
	),
	(
		6,
		32,
		'Robax Platinum',
		'https://www.backrelief.ca/back-relief-products/robax-oral-caplets/robax-platinum',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-backrelief/en_CA/global/logo/robax-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid8} and {cid10}'
	),
	(
		6,
		33,
		'Robaxacet',
		'https://www.backrelief.ca/back-relief-products/robax-oral-caplets/robaxacet',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-backrelief/en_CA/global/logo/robax-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid10}'
	),
	(
		6,
		34,
		'Robaxacet Extra Strength',
		'https://www.backrelief.ca/back-relief-products/robax-oral-caplets/robaxacet-extra-strength',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-backrelief/en_CA/global/logo/robax-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid10}'
	),
	(
		6,
		35,
		'Robaxisal Extra Strength',
		'https://www.backrelief.ca/back-relief-products/robax-oral-caplets/robaxisal-extra-strength',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-backrelief/en_CA/global/logo/robax-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid10} and {cid12}'
	),
	(
		6,
		36,
		'Robaxin',
		'https://www.backrelief.ca/back-relief-products/robax-oral-caplets/robaxin',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-backrelief/en_CA/global/logo/robax-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid10}'
	),
	(
		6,
		37,
		'Robax Heatwraps',
		'https://www.backrelief.ca/back-relief-products/robax-heatwraps/neck-shoulder-heatwraps',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-backrelief/en_CA/global/logo/robax-logo.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid20}'
	),
	(
		6,
		38,
		'Voltaren Emulgel Back & Muscle Pain',
		'https://www.voltaren.ca/products/voltaren-emulgel-back-and-muscle-pain.html',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/voltaren-delta/en_CA/header/voltaren-logo.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid11}'
	),
	(
		6,
		39,
		'Voltaren Emulgel Joint Pain',
		'https://www.voltaren.ca/products/voltaren-emulgel-joint-pain.html',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/voltaren-delta/en_CA/header/voltaren-logo.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid11}'
	),
	(
		6,
		40,
		'Voltaren Emulgel Extra Strength',
		'https://www.voltaren.ca/products/voltaren-emulgel-extra-strength.html',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/voltaren-delta/en_CA/header/voltaren-logo.png?auto=format',
		'{cid1} and {cid3} and {cid6} and {cid11}'
	),
	(
		6,
		41,
		'Aspirin  Regular Strength Tablets',
		'https://www.aspirin.ca/en/products/aspirin-regular-strength',
		'',
		'https://www.aspirin.ca/sites/g/files/vrxlpx30151/files/Aspirin-logo.png',
		'{cid1} and {cid3} and {cid5} and {cid12}'
	),
	(
		6,
		42,
		'Aspirin  Extra Strength (500Mg)',
		'https://www.aspirin.ca/en/products/aspirin-extra-strength',
		'',
		'https://www.aspirin.ca/sites/g/files/vrxlpx30151/files/Aspirin-logo.png',
		'{cid1} and {cid3} and {cid5} and {cid12}'
	),
	(
		6,
		43,
		'Aspirin  Delayed Release Regular Caplets',
		'https://www.aspirin.ca/en/products/aspirin-coated-regular-strength',
		'',
		'https://www.aspirin.ca/sites/g/files/vrxlpx30151/files/Aspirin-logo.png',
		'{cid1} and {cid4} and {cid5} and {cid12}'
	),
	(
		6,
		44,
		'Menstrual Midol  Complete',
		'https://www.midol.ca/en/midol-products/midol-menstrualcomplete/',
		'',
		'https://www.midol.com/sites/g/files/vrxlpx43426/files/midol-logo-header-v2.png',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid14} and {cid15}'
	),
	(
		6,
		45,
		'Pms Midol  Complete',
		'https://www.midol.ca/en/midol-products/midol-pmscomplete/',
		'',
		'https://www.midol.com/sites/g/files/vrxlpx43426/files/midol-logo-header-v2.png',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid15} and {cid16}'
	),
	(
		6,
		46,
		'Teen Midol  Complete',
		'https://www.midol.ca/en/midol-products/midol-teen/',
		'',
		'https://www.midol.com/sites/g/files/vrxlpx43426/files/midol-logo-header-v2.png',
		'{cid1} and {cid3} and {cid5} and {cid7} and {cid14} and {cid15}'
	),
	(
		6,
		47,
		'Maxidol Liquid Gels ',
		'https://www.midol.ca/en/midol-products/maxidol-liquid-gels/',
		'',
		'https://www.midol.com/sites/g/files/vrxlpx43426/files/midol-logo-header-v2.png',
		'{cid1} and {cid3} and {cid5} and {cid9}'
	),
	(
		6,
		48,
		'Icy Hot Advanced  Pain Cream',
		'https://icyhot.ca/patches-creams-roll-on-and-spray/advanced-cream/',
		'',
		'https://www.icyhot.com/dam/jcr:7538156c-beda-4d3f-93be-fab9de107d58/IcyHot-logo-color-svg.svg',
		'{cid1} and {cid3} and {cid6} and {cid17}'
	),
	(
		6,
		49,
		'Icy Hot  Extra Strength Cream',
		'https://icyhot.ca/patches-creams-roll-on-and-spray/extra-strength-cream/',
		'',
		'https://www.icyhot.com/dam/jcr:7538156c-beda-4d3f-93be-fab9de107d58/IcyHot-logo-color-svg.svg',
		'{cid1} and {cid3} and {cid6} and {cid12} and {cid17}'
	),
	(
		6,
		50,
		'Icy Hot  Advanced  Medicated Spray',
		'https://icyhot.ca/patches-creams-roll-on-and-spray/advanced-spray/',
		'',
		'https://www.icyhot.com/dam/jcr:7538156c-beda-4d3f-93be-fab9de107d58/IcyHot-logo-color-svg.svg',
		'{cid1} and {cid3} and {cid6} and {cid17}'
	),
	(
		6,
		51,
		'Icy Hot Medicated Patch',
		'https://icyhot.ca/patches-creams-roll-on-and-spray/medicated-patch/',
		'',
		'https://www.icyhot.com/dam/jcr:7538156c-beda-4d3f-93be-fab9de107d58/IcyHot-logo-color-svg.svg',
		'{cid1} and {cid3} and {cid6} and {cid17}'
	),
	(
		6,
		52,
		'Rub A535 Ice To Heat Recovery Patches',
		'https://ruba535.ca/product/ice-heat-recovery-patches',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid13} and {cid17}'
	),
	(
		6,
		53,
		'Rub A535 Natural Source Arnica Cream',
		'https://ruba535.ca/product/natural-source-arnica-cream',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid19}'
	),
	(
		6,
		54,
		'Rub A535 Sport Warm-Up Cream',
		'https://ruba535.ca/product/sport-warm-up-cream',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid12} and {cid17}'
	),
	(
		6,
		55,
		'Rub A535 Arthritis Flare-Up Relief Cream',
		'https://ruba535.ca/product/arthritis-flare-relief-cream',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid12} and {cid19}'
	),
	(
		6,
		56,
		'Rub A535 Arthritis Pain Relief Roll-On Lotion',
		'https://ruba535.ca/product/arthritis-pain-relief-roll-lotion',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid12} and {cid13} and {cid17}'
	),
	(
		6,
		57,
		'Rub A535 Injury Ice Relief Gel',
		'https://ruba535.ca/product/injury-ice-relief-gel',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid17}'
	),
	(
		6,
		58,
		'Rub A535 Injury Ice Relief Spray',
		'https://ruba535.ca/product/injury-ice-relief-spray',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid17}'
	),
	(
		6,
		59,
		'Rub A535 Injury Ice To Heat Relief Cream',
		'https://ruba535.ca/product/injury-ice-heat-relief-cream',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid12} and {cid17}'
	),
	(
		6,
		60,
		'Rub A535 Back Ice To Heat Relief Patches',
		'https://ruba535.ca/product/back-ice-heat-relief-patches',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid13} and {cid17}'
	),
	(
		6,
		61,
		'Rub A535 Back Pro Heat Relief Wraps',
		'https://ruba535.ca/product/back-pro-heat-relief-wraps',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid20}'
	),
	(
		6,
		62,
		'Rub A535 Muscle & Joint Extra Strength Heat Cream',
		'https://ruba535.ca/product/muscle-joint-extra-strength-heat-cream',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid12} and {cid17}'
	),
	(
		6,
		63,
		'Rub A535 Muscle & Joint Regular Strength Heat Cream',
		'https://ruba535.ca/product/muscle-joint-regular-strength-heat-cream',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid12} and {cid17}'
	),
	(
		6,
		64,
		'Rub A535 Muscle & Joint Maximum Strength Heat Cream',
		'https://ruba535.ca/product/muscle-joint-maximum-strength-heat-cream',
		'',
		'https://ruba535.ca/wp-content/themes/ruba535/images/ruba535_logo.svg',
		'{cid1} and {cid3} and {cid6} and {cid12}'
	);
