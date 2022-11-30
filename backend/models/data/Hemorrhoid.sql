INSERT INTO ailments VALUES 
	(
		2, 
		'Hemorrhoid', 
		'Consult your physician if hemorrhoids associated with rectal bleeding, painful defecation, dark blood, profuse bleeding or recurrent bleeding. Individuals at high risk of colorectal cancer, individuals under the age of 12 or individuals with a prolapse that must be manually replaced should consult their health care provider immediately. Seek medical attention for symptoms that persist more than 7 days. Daily fibre, avoiding straining and Sitz baths may help relieve symptoms.'
	);

INSERT INTO questions VALUES 
	(
		2, 
		1, 
		1, 
		'Are you experiencing itch', 
		'Some products can help relieve or reduce itch associated with hermorrhoids.'
	), 
	(
		2, 
		2, 
		1, 
		'Are you experiencing inflammation', 
		'Some products can help relieve or reduce inflammation associated with hermorrhoids.'
	), 
	(
		2, 
		3, 
		1, 
		'Are you experiencing pain', 
		'Some products can help relieve or reduce pain associated with hermorrhoids.'
	), 
	(
		2, 
		4, 
		1, 
		'Do you prefer a cream/gel', 
		'Creams and gels can be easily applied to anal canal where medication needed both internally and/or externally. Duration of action, protective or lubricating effects may not be as long as ointments but less messy. Clean area prior application.'
	), 
	(
		2, 
		5, 
		1, 
		'Do you prefer an ointment', 
		'Ointments can be applied to anal canal where medication needed both internally and/or externally. Duration of action, protective or lubricating effects longer than creams/gels but messy. Clean area prior application.'
	), 
	(
		2, 
		6, 
		1, 
		'Do you prefer a suppository', 
		'Suppositories inserted rectally can release medication over long periods. Efficacy may be limited as tend to slip into rectum thus bypassing where medication needed. May also increase side effects with increased medication absorption in rectum.'
	), 
	(
		2, 
		7, 
		1, 
		'Would you prefer a wipes', 
		'Wipes may be useful for hygiene following bowel movements and help remove discharge. More gentle than bath tissue and medicated products may help reduce or relieve symptoms.'
	), 
	(
		2, 
		8, 
		1, 
		'Would you prefer an oral product', 
		'Oral flavonoids act on venous capillary walls and may relieve symptom duration, intensity and reoccurrence of flare-ups. Treatment may require multiple days (typically 7 days) for noticable benefits. Venixxa contains more tablets per box than Hemovel.'
	), 
	(
		2, 
		9, 
		1, 
		'Would you like an astringent', 
		'Astringents such as zinc and witch hazel promote skin dryness and help coagulation. Help relieve burning, itch and pain. Most effective for mild symptoms.'
	), 
	(
		2, 
		10, 
		1, 'Would you like an anesthetic', 
		'Anesthetics can numb area and relieve pain. Should be used for less than 7 days and only be used in perianal or lower anal cannal to prevent absorption and side effects. May cause contact dermatitis, allergic reactions, CNS and cardiovascular effects.'
	), 
	(
		2, 
		11, 
		1, 'Would you like a protectant/lubricant', 
		'Form a physicial barrier and lubricate thereby reducing irritation, burning, itching and pain.'
	), 
	(
		2, 
		12, 
		1, 'Would you like a steroid', 
		'Hydrocortisone may help relieve itch and inflammation. Products containing steroids should not be used for more than 1 week to reduce risk of mucosal atrophy. More effective than astringents if lots of itching or discharge.'
	), 
	(
		2, 
		13, 
		1, 'Would you like a vasoconstrictor', 
		'Vasoconstrictors can help temporarily relieve inflammation and discomfort. Theoretically can interact with some medications and agravate certain medical conditions. Avoid application on abraded skin or rectum to reduce absorption and side effects.'
	), 
	(
		2, 
		14, 
		1, 'Are you allergic/sensitive to wool', 
		'Avoid products containing lanolin if you are sensitive or allergic to wool.'
	), 
	(
		2, 
		15, 
		1, 'Are you allergic/sensitive to parabens or anesthetics', 
		'Avoid use of products containing parabens if sensitive or allergic to parabens.'
	);

INSERT INTO criteria VALUES 
	(2, 1, 'Pramoxine/Lidocaine', '{qid3} and {qid10}'), 
	(2, 2, 'Zinc/Witch Hazel', '{qid9} and ({qid1} or {qid3})'), 
	(2, 3, 'Steroid', '{qid12} and ({qid1} or {qid2} or {qid3})'), 
	(2, 4, 'Vasoconstrictor', '{qid13} and {qid2}'), 
	(2, 5, 'Petrolatum/Mineral/Veg', '{qid11} and ({qid1} or {qid3})'), 
	(2, 6, 'Paraben', 'not {qid15}'), 
	(2, 7, 'Lanolin', 'not {qid14}'), 
	(2, 8, 'Oral/Flav', '{qid8} and not ({qid4} or {qid5} or {qid6} or {qid7})'), 
	(2, 9, 'Supp', '{qid6} and not ({qid4} or {qid5} or {qid7} or {qid8})'), 
	(2, 10, 'Ointment', '{qid5} and not ({qid4} or {qid6} or {qid7} or {qid8})'), 
	(2, 11, 'Cream/Gel', '{qid4} and not ({qid5} or {qid6} or {qid7} or {qid8})'), 
	(2, 12, 'Wipe', '{qid7} and not ({qid4} or {qid5} or {qid6} or {qid8})');

INSERT INTO products VALUES 
	(
		2,
		1,
		'Anusol Plus Ointment',
		'https://anusol.ca/en/product/anusol-plus-ointment',
		'',
		'https://anusol.ca/wp-content/themes/newcustom/images/anusol_logo.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid10}'
	),
	(
		2,
		2,
		'Anusol Multi-Symptom Ointment',
		'https://anusol.ca/en/product/anusol-ointment',
		'',
		'https://anusol.ca/wp-content/themes/newcustom/images/anusol_logo.png',
		'{cid2} and {cid5} and {cid6} and {cid10}'
	),
	(
		2,
		3,
		'Anusol Cleansing Wipes',
		'https://anusol.ca/en/product/anusol-cleansing-wipes',
		'',
		'https://anusol.ca/wp-content/themes/newcustom/images/anusol_logo.png',
		'{cid2} and {cid12}'
	),
	(
		2,
		4,
		'Anusol Plus Suppository',
		'https://anusol.ca/en/product/anusol-plus-suppository',
		'',
		'https://anusol.ca/wp-content/themes/newcustom/images/anusol_logo.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid9}'
	),
	(
		2,
		5,
		'Anusol Multi-Symptom Suppository',
		'https://anusol.ca/en/product/anusol-suppository',
		'',
		'https://anusol.ca/wp-content/themes/newcustom/images/anusol_logo.png',
		'{cid2} and {cid5} and {cid6} and {cid9}'
	),
	(
		2,
		6,
		'Preparationh Soothing Relief Cleansing & Cooling Wipes',
		'https://www.preparationh.com/products/soothing-relief-cleansing-cooling-wipes/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=formathttps://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid2} and {cid12}'
	),
	(
		2,
		7,
		'Preparationh Soothing Relief Anti-Itch Cream',
		'https://www.preparationh.com/products/soothing-relief-anti-itch-cream/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid3} and {cid5} and {cid6} and {cid11}'
	),
	(
		2,
		8,
		'Preparationh Rapid Relief With Lidocaine Cream',
		'https://www.preparationh.com/products/rapid-relief-with-lidocaine-cream/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid11}'
	),
	(
		2,
		9,
		'Preparartionh Rapid Relief Totables Wipes',
		'https://www.preparationh.com/products/rapid-relief-wipes/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid1} and {cid4} and {cid6} and {cid12}'
	),
	(
		2,
		10,
		'Preparationh Ointment',
		'https://www.preparationh.com/products/ointment/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid4} and {cid5} and {cid6} and {cid7} and {cid10}'
	),
	(
		2,
		11,
		'Preparationh Multi-Symptom Pain Relief Cream',
		'https://www.preparationh.com/products/cream-with-maximum-strength-pain-relief/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid11}'
	),
	(
		2,
		12,
		'Preparationh Cooling Gel',
		'https://www.preparationh.com/products/cooling-gel/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid2} and {cid4} and {cid5} and {cid6} and {cid11}'
	),
	(
		2,
		13,
		'Preparationh Anti-Itch Cream',
		'https://www.preparationh.com/products/anti-itch-hydrocortisone/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid11}'
	),
	(
		2,
		14,
		'Preparationh Suppositories',
		'https://www.preparationh.com/products/suppositories/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid4} and {cid5} and {cid6} and {cid9}'
	),
	(
		2,
		15,
		'Preparationh Totables',
		'https://www.preparationh.com/products/totables/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid2} and {cid6} and {cid12}'
	),
	(
		2,
		16,
		'Preparationh Medicated Wipes',
		'https://www.preparationh.com/products/medicated-portable-wipes/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid2} and {cid6} and {cid12}'
	),
	(
		2,
		17,
		'Preparationh Medicated Wipes For Women',
		'https://www.preparationh.com/products/preparation-h-medicated-wipes-women/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-preparationh-v2/en_US/src/icons/Prep_H_Logo.png?auto=format',
		'{cid2} and {cid6} and {cid12}'
	),
	(
		2,
		18,
		'Tucks  Medicated Cooling Pads',
		'https://www.tucksbrand.com/products/medicated-cooling-pads/',
		'',
		'https://tucks.com/wp-content/themes/tucks/dist/assets/images/logo.png',
		'{cid2}'
	),
	(
		2,
		19,
		'Hemovel',
		'https://hemovel.com/',
		'',
		'https://www.hemovel.com/sites/hemovel/files/header/logo_hemovel_white_en.png',
		'{cid8}'
	),
	(
		2,
		20,
		'Venixxa',
		'https://venixxa.ca/hemorrhoids/',
		'',
		'https://venixxa.ca/wp-content/uploads/2019/08/Venixxa-Logo.png',
		'{cid8}'
	);
