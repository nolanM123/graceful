INSERT INTO ailments VALUES 
	(
		10, 
		'Eye Drop', 
		'Consult your phyisician or emergency care provider if experiencing eye pain, disturbances of vision, light sensitivity, trauma, chemical exposure, imbedded foreign body, eye protrusion or regularly wear contact lens. Refer to your physician for worsening symptoms or symptoms persisting more than 48 hours. Eye drops are highly complex susbstances with individual efficacy depending on product composition and concentration of specific electrolytes (potassium and bicarbonate) , solvents, viscosity agents, preservatives and cytotoxic additives. Effective therapy may require a trial and error approach. Products should be used for 1-2 wk trials assessing subjective efficacy including symptom improvement and patient comfort.'
	);

INSERT INTO questions VALUES 
	(
		10, 
		1, 
		1, 
		'Do you have mild dry eye', 
		'symptoms include a gritty sandy feeling, eye redness and/or irritation in absence of foreign bodies. Consult your physician if possibly caused by medication, undiagnosed condition or if symptoms worsen or persist more than 5 days.'
	), 
	(
		10, 
		2, 
		1, 
		'Do you have severe dry eye', 
		'symptoms include a gritty sandy feeling, eye redness and/or irritation in absence of foreign bodies. Consult your physician if possibly caused by medication, undiagnosed condition or if symptoms worsen or persist more than 5 days.'
	), 
	(
		10, 
		3, 
		1, 
		'Do you have pink eye', 
		'symptoms include eye redness and purulent discharge. Consult your physician if present in a child, severe symptoms or unimproving symptoms after 48 hours in an adult.'
	), 
	(
		10, 
		4, 
		1, 
		'Would you like a decongestant', 
		'Consult your physician if bleeding in the eye, severe symptoms, trauma, or foreign body/chemical exposure. Some products have decongestants to reduce redness cosmetically.'
	), 
	(
		10, 
		5, 
		1, 
		'Do you wear contacts', 
		'some eye drop products are not compatible with contact lens use and should be avoided.'
	), 
	(
		10, 
		6, 
		1, 
		'Would you like a fast acting product for "as need" use', 
		'Thick gels or ointments may blur vision and be unacceptable for day use for some patients. Such products require less frequent application and may be more suitable for nighttime use.'
	), 
	(
		10, 
		7, 
		1, 
		'Would you like a long-lasting  or nighttime product', 
		'Thick gels or ointments may blur vision and be unacceptable for day use for some patients. Such products require less frequent application and may be more suitable for nighttime use.'
	), 
	(
		10, 
		8, 
		1, 
		'Did you have laser eye surgery (LASIK)', 
		'some products, especaily with preservatives, may cause further irritation after recent eye surgery and should be avoided.'
	), 
	(
		10, 
		9, 
		1, 
		'Are you sensitive to wool', 
		'some eye products may contain lanolin which may cause irritation or discomfort in those with sensitivity to wool.'
	), 
	(
		10, 
		10, 
		1, 
		'Can you use decongestants', 
		'Decongestants may worsen glaucoma, increase blood glucose levels, worsen hypertension and interact with some mood or migraine medications. Decongestants should be avoided in these circumstances.'
	), 
	(
		10, 
		11, 
		1, 
		'Are you sensitive to preservatives', 
		'Those with moderate-severe dry eye should avoid preservatives (especially benzalkonium chloride) since this may worsen irritation. Those with mild dry eye requiring more than 4 applications daily should consider preservative-free product. '
	), 
	(
		10, 
		12, 
		1, 
		'Do you have a lipid layer deficiency of the eye', 
		'some products can restore the oily layer of the eye and help prevent water loss and dry eye.'
	), 
	(
		10, 
		13, 
		1, 
		'Do you prefer eye drops', 
		'Eye drops are easiest to apply and provide fast symptom relief. Generally require more frequent application throughout the day than other products.'
	), 
	(
		10, 
		14, 
		1, 
		'Do you prefer eye gel drops', 
		'Gel drops provide a longer lasting benefit than eye drops but less greasy than eye ointments. Can be used throughout the day or night.'
	), 
	(
		10, 
		15, 
		1, 
		'Do you prefer an eye ointment', 
		'Eye ointments provide the most long lasting benefit but are more greasy and may temporarily blur vision. Best when used overnight.'
	);

INSERT INTO criteria VALUES 
	(10, 1, 'Preservative', 'not {qid11}'), 
	(10, 2, 'BAC-Free', 'True'), 
	(10, 3, 'soft Preservative', 'True'), 
	(10, 4, 'Preser-free', 'True'), 
	(10, 5, 'Ointment', '{qid15} and not ({qid13} or {qid14} or {qid6}) and ({qid2} or {qid7})'), 
	(10, 6, 'Gel', '{qid14} and not ({qid13} or {qid15}) and ({qid1} or {qid2} or {qid6} or {qid7})'), 
	(10, 7, 'Drops', '{qid13} and not ({qid14} or {qid15} or {qid7} or {qid3}) and ({qid1} or {qid6})'), 
	(10, 8, 'Contact Compatible', 'True'), 
	(10, 9, 'X Contacts', '{qid5}'), 
	(10, 10, 'Lanolin', 'not {qid9}'), 
	(10, 11, 'Lanolin-free', 'True'), 
	(10, 12, 'Decongestant', '{qid4} and {qid10}'), 
	(10, 13, 'Decon-free', 'not {qid4}'), 
	(10, 14, 'Antibiotic', '{qid3} and not ({qid1} or {qid2})'), 
	(10, 15, 'Lasik', 'True'), 
	(10, 16, 'Non-Lasik', 'not {qid8}'), 
	(10, 17, 'Lipid Layer', 'True'), 
	(10, 18, 'Non-Lipid', 'not {qid12}');

INSERT INTO products VALUES 
	(
		10,
		1,
		'Visine Environmental Relief (6+Yrs)',
		'https://www.visine.ca/products/dry-eye/visine-environmental-relief',
		'',
		'https://www.visine.ca/sites/visine_ca/files/visine_website_logo_1.png',
		'{cid2} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		2,
		'Visine Eye Revival (6+Yrs)',
		'https://www.visine.ca/products/dry-eye/visine-eye-revival',
		'',
		'https://www.visine.ca/sites/visine_ca/files/visine_website_logo_1.png',
		'{cid2} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		3,
		'Visine Tired Eye Relief (6+Yrs)',
		'https://www.visine.ca/products/dry-eye/visine-tired-eye-relief',
		'',
		'https://www.visine.ca/sites/visine_ca/files/visine_website_logo_1.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		4,
		'Visine  For Red Eye - Workplace ',
		'https://www.visine.ca/products/red-eye/visine-red-eye-workplace',
		'',
		'https://www.visine.ca/sites/visine_ca/files/visine_website_logo_1.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		5,
		'Visine Original',
		'https://www.visine.ca/products/red-eye/original',
		'',
		'https://www.visine.ca/sites/visine_ca/files/visine_website_logo_1.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		6,
		'Visine Advance Triple Action',
		'https://www.visine.ca/products/red-eye/advance-triple-action',
		'',
		'https://www.visine.ca/sites/visine_ca/files/visine_website_logo_1.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		7,
		'Refresh  Relieva  Pf Multidose',
		'https://www.refreshbrand.com/Products/relieva-pf',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid15} and {cid18}'
	),
	(
		10,
		8,
		'Refresh  Relieva ',
		'https://www.refreshbrand.com/Products/relieva',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		9,
		'Refresh  Relievatm For Contacts',
		'https://www.refreshbrand.com/Products/relieva-contacts',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		10,
		'Refresh Optive Mega-3  Preservative-Free',
		'https://www.refreshbrand.com/Products/mega-3',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid17}'
	),
	(
		10,
		11,
		'Refresh Optive  Advanced',
		'https://www.refreshbrand.com/Products/refresh-optive-advanced',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		12,
		'Refresh Optive  Advanced Preservative-Free',
		'https://www.refreshbrand.com/Products/optive-advanced-preservative-free',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		13,
		'Refresh Optive ',
		'https://www.refreshbrand.com/Products/refresh-optive-15ml',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		14,
		'Refresh Optive  Preservative-Free',
		'https://www.refreshbrand.com/Products/optive-sensitive',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid15} and {cid18}'
	),
	(
		10,
		15,
		'Refresh Tears ',
		'https://www.refreshbrand.com/Products/refresh-tears',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		16,
		'Refresh Plus ',
		'https://www.refreshbrand.com/Products/refresh-plus',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid15} and {cid18}'
	),
	(
		10,
		17,
		'Refresh  Classic',
		'https://www.refreshbrand.com/Products/refresh-classic',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		18,
		'Refresh Optive  Gel Drops',
		'https://www.refreshbrand.com/Products/optive-gel-drops',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid1} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		19,
		'Refresh  Celluvisc ',
		'https://www.refreshbrand.com/Products/refresh-celluvisc',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		20,
		'Refresh Liquigel ',
		'https://www.refreshbrand.com/Products/refresh-liquigel',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid1} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		21,
		'Refresh P.M. ',
		'https://www.refreshbrand.com/Products/refresh-pm',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid4} and {cid5} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		22,
		'Refresh  Lacri-Lube ',
		'https://www.refreshbrand.com/Products/refresh-lacrilube',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid1} and {cid5} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		23,
		'Refresh Contacts ',
		'https://www.refreshbrand.com/Products/refresh-contacts',
		'',
		'https://www.refreshbrand.com/Content/images/refresh-logo-lg.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		24,
		'systane Complete Lubricant Eye Drop',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-complete/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		25,
		'systane Ultra Hydration Preservative Free Lubricant Eye Drops',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-ultra-hydration-preservative-free/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid4} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		26,
		'systane Ultra Hydration Lubricant Eye Drops',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-ultra-hydration/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		27,
		'systane Ultra Lubricant Eye Drops',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-ultra/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		28,
		'systane Balance Lubricant Eye Drops',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-balance/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid17}'
	),
	(
		10,
		29,
		'systane Ultra Preservative Free Lubricant Eye Drops',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-ultra-preservative-free/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid4} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		30,
		'systane Gel Drops Lubricant Eye Drops',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-lubricant-gel/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid3} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		31,
		'systane Gel',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-gel/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid1} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		32,
		'systane Bion Tears Lubricant Eye Drops',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-bion-tears/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid15} and {cid18}'
	),
	(
		10,
		33,
		'systane Ointment Lubricant Eye Ointment',
		'https://systane-ca.myalcon.com/ca-en/eye-care/systane/products/systane-nighttime/',
		'',
		'https://systane-ca.myalcon.com/themes/custom/systane_g/img/logo.png',
		'{cid4} and {cid5} and {cid9} and {cid10} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		34,
		'Hydrasense For Dry Eyes',
		'https://www.hydrasense.ca/en/products/eye-care/dry-eyes/',
		'',
		'https://www.hydrasense.ca/sites/g/files/vrxlpx30326/files/hydrasense-logo-2.jpg',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		35,
		'Hydrasense Advanced For Dry Eyes',
		'https://www.hydrasense.ca/en/products/eye-care/advanced/',
		'',
		'https://www.hydrasense.ca/sites/g/files/vrxlpx30326/files/hydrasense-logo-2.jpg',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		36,
		'Hydrasense Night Therapy For Dry Eyes',
		'https://www.hydrasense.ca/en/products/eye-care/night-therapy/',
		'',
		'https://www.hydrasense.ca/sites/g/files/vrxlpx30326/files/hydrasense-logo-2.jpg',
		'{cid4} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		37,
		'Hydrasense For Allergy Therapy',
		'https://www.hydrasense.ca/en/products/eye-care/allergy-therapy/',
		'',
		'https://www.hydrasense.ca/sites/g/files/vrxlpx30326/files/hydrasense-logo-2.jpg',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		38,
		'soothe Xp Emollient (Lubricant) Eye Drops',
		'http://www.bausch.com/our-products/dry-eye-products/dry-eye-products/soothe-xp-xtra-protection-emollient-lubricant-eye-drops',
		'',
		'https://www.bausch.com/siteassets/bl-logo-white.svg',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid17}'
	),
	(
		10,
		39,
		'soothe Xp Emollient (Lubricant) Eye Drops Preservative Free',
		'http://www.bausch.com/our-products/dry-eye-products/dry-eye-products/soothe-xp-emollient-lubricant-eye-drops-preservative-free',
		'',
		'https://www.bausch.com/siteassets/bl-logo-white.svg',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid17}'
	),
	(
		10,
		40,
		'soothe Lubricant Eye Drops Maximum Hydration',
		'http://www.bausch.com/our-products/dry-eye-products/dry-eye-products/soothe-lubricant-eye-drops-maximum-hydration',
		'',
		'https://www.bausch.com/siteassets/bl-logo-white.svg',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		41,
		'soothe Lubricant Eye Drops Hydration',
		'http://www.bausch.com/our-products/dry-eye-products/dry-eye-products/soothe-hydration-lubricant-eye-drops',
		'',
		'https://www.bausch.com/siteassets/bl-logo-white.svg',
		'{cid2} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		42,
		'soothe Lubricant Eye Drops - Preservative Free',
		'http://www.bausch.com/our-products/dry-eye-products/dry-eye-products/soothe-preservative-free-lubricant-eye-drops',
		'',
		'https://www.bausch.com/siteassets/bl-logo-white.svg',
		'{cid2} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		43,
		'soothe Lubricant Eye Ointment',
		'http://www.bausch.com/our-products/dry-eye-products/dry-eye-products/soothe-night-time-ointment',
		'',
		'https://www.bausch.com/siteassets/bl-logo-white.svg',
		'{cid4} and {cid5} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		44,
		'Advanced Eye Relief Dry Eye',
		'http://www.bausch.com/our-products/dry-eye-products/dry-eye-products/advanced-eye-relief-dry-eye',
		'',
		'https://www.bausch.com/siteassets/bl-logo-white.svg',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		45,
		'Opti-Free  Puremoist  Rewetting Drops',
		'https://opti-free.myalcon.com/sites/g/files/rbvwei511/files/2019-04/ofpuremoistrd_us_en.pdf',
		'',
		'https://opti-free.myalcon.com/themes/custom/opti_free_s/logo.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		46,
		'Opti-Free  Replenish  Rewetting Drops',
		'https://opti-free.myalcon.com/sites/g/files/rbvwei511/files/2019-04/ofreplenishrd_us_en.pdf',
		'',
		'https://opti-free.myalcon.com/themes/custom/opti_free_s/logo.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		47,
		'Opti-Free  Express  Rewetting Drops',
		'https://opti-free.myalcon.com/sites/g/files/rbvwei511/files/2019-04/w9011883_i_ofxrd.pdf',
		'',
		'https://opti-free.myalcon.com/themes/custom/opti_free_s/logo.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		48,
		'Blink Contacts  Lubricating Eye Drops',
		'https://www.justblink.com/find-your-products/contact-lens-lubricating-eye-drops/blink-contacts-lubricating-eye-drops',
		'',
		'https://www.justblink.com/sites/justblink_us/files/blinklogo_1.png',
		'{cid3} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		49,
		'Blink  Tears Lubricating Eye Drops',
		'https://www.justblink.com/find-your-products/dry-eye-lubricating-eye-drops/blink-tears-lubricating-eye-drops',
		'',
		'https://www.justblink.com/sites/justblink_us/files/blinklogo_1.png',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		50,
		'Blink Geltears  Lubricating Eye Drops',
		'https://www.justblink.com/find-your-products/dry-eye-lubricating-eye-drops/blink-geltears-lubricating-eye-drops',
		'',
		'https://www.justblink.com/sites/justblink_us/files/blinklogo_1.png',
		'{cid3} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		51,
		'Blink  Tears Preservative Free Lubricating Eye Drops',
		'https://www.justblink.com/find-your-products/dry-eye-lubricating-eye-drops/blink-tears-preservative-free-lubricating-eye-drops',
		'',
		'https://www.justblink.com/sites/justblink_us/files/blinklogo_1.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		52,
		'Theratears Extra Dry Eye Therapy Lubricant Eye Drops',
		'http://www.theratears.com/products/',
		'',
		'https://theratears.com/wp-content/uploads/2022/07/TT_logo_no_tagline_Desktop-1.png',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		53,
		'Theratears Dry Eye Therapy Lubricant Eye Drops',
		'http://www.theratears.com/products/',
		'',
		'https://theratears.com/wp-content/uploads/2022/07/TT_logo_no_tagline_Desktop-1.png',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		54,
		'Theratears Dry Eye Therapy Lubricant Eye Drops-Preservative Free',
		'http://www.theratears.com/products/',
		'',
		'https://theratears.com/wp-content/uploads/2022/07/TT_logo_no_tagline_Desktop-1.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		55,
		'Theratears Liquid Gel Nighttime Dry Eye Therapy Lubricant Eye Gel-Preservative Free',
		'http://www.theratears.com/products/',
		'',
		'https://theratears.com/wp-content/uploads/2022/07/TT_logo_no_tagline_Desktop-1.png',
		'{cid4} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		56,
		'Genteal  Tears Mild Liquid Drops',
		'https://gentealtears.myalcon.com/eye-care/genteal/products/genteal-mild/',
		'',
		'https://gentealtears.myalcon.com/sites/g/files/rbvwei611/files/genteal-tears-logo%20%281%29_0.png',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		57,
		'Genteal  Tears Moderate Liquid Drops',
		'https://gentealtears.myalcon.com/eye-care/genteal/products/genteal-moderate/',
		'',
		'https://gentealtears.myalcon.com/sites/g/files/rbvwei611/files/genteal-tears-logo%20%281%29_0.png',
		'{cid3} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		58,
		'Preservative Free Moderate Liquid Drops',
		'https://gentealtears.myalcon.com/eye-care/genteal/products/genteal-moderate-preservative-free/',
		'',
		'https://gentealtears.myalcon.com/sites/g/files/rbvwei611/files/genteal-tears-logo%20%281%29_0.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		59,
		'Genteal  Tearssevere Eye Ointment',
		'https://gentealtears.myalcon.com/eye-care/genteal/products/genteal-nighttime-severe/',
		'',
		'https://gentealtears.myalcon.com/sites/g/files/rbvwei611/files/genteal-tears-logo%20%281%29_0.png',
		'{cid4} and {cid5} and {cid9} and {cid10} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		60,
		'Genteal  Tearslubricant Eye Gel',
		'https://gentealtears.myalcon.com/eye-care/genteal/products/genteal-severe/',
		'',
		'https://gentealtears.myalcon.com/sites/g/files/rbvwei611/files/genteal-tears-logo%20%281%29_0.png',
		'{cid3} and {cid6} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		61,
		'Clear Eyes Pure Relief For Dry Eyes',
		'https://www.cleareyes.com/eye-drops/clear-eyes-pure-relief-eye-drops-for-dry-eyes/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		62,
		'Clear Eyes Pure Relief Multi-Symptom',
		'https://www.cleareyes.com/eye-drops/clear-eyes-pure-relief-multi-symptom-eye-drops/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid4} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		63,
		'Clear Eyes  Redness Relief',
		'https://www.cleareyes.com/eye-drops/redness-relief/clear-eyes-redness-relief-eye-drops/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		64,
		'Clear Eyes  Maximum Redness Relief',
		'https://www.cleareyes.com/eye-drops/redness-relief/clear-eyes-maximum-redness-relief-eye-drops/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		65,
		'Clear Eyes  Cooling Comfort Redness Relief',
		'https://www.cleareyes.com/eye-drops/redness-relief/clear-eyes-cooling-comfort-itchy-eye-relief/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		66,
		'Clear Eyes  Traveler''s Eye Relief',
		'https://www.cleareyes.com/eye-drops/for-travelers/travelers-eye-relief/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		67,
		'Clear Eyes  Maximum Itchy Eye Relief',
		'https://www.cleareyes.com/eye-drops/itchy-eye-relief/clear-eyes-maximum-itchy-eye-relief/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		68,
		'Clear Eyes  Natural Tears Lubricant',
		'https://www.cleareyes.com/eye-drops/dry-eye-relief/clear-eyes-natural-tears-lubricating-eye-drops/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		69,
		'Clear Eyes  Advanced Dry & Itchy Eye Relief',
		'https://www.cleareyes.com/eye-drops/clear-eyes-advanced-dry-and-itchy-eye-relief/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid2} and {cid7} and {cid9} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		70,
		'Clear Eyes  Contact Lens Multi-Action Relief',
		'https://www.cleareyes.com/eye-drops/for-contacts/clear-eyes-multi-action-relief-eye-drops/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid2} and {cid7} and {cid8} and {cid11} and {cid13} and {cid16} and {cid18}'
	),
	(
		10,
		71,
		'Clear Eyes  Complete 7 Symptom Relief',
		'https://www.cleareyes.com/eye-drops/multi-symptom-relief/clear-eyes-complete-7-symptom-relief-eye-drops/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid2} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		72,
		'Clear Eyes  Triple Action',
		'https://www.cleareyes.com/eye-drops/multi-symptom-relief/clear-eyes-triple-action-relief-eye-drops/',
		'',
		'https://www.cleareyes.com/sites/cleareyes/themes/custom/cleareyes_theme/images/logo.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid12} and {cid16} and {cid18}'
	),
	(
		10,
		73,
		'Polysporin Eye & Ear Drops For Pink Eye (All Ages)',
		'https://www.polysporin.ca/products/antibiotic-eye-drops',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid14} and {cid16} and {cid18}'
	),
	(
		10,
		74,
		'Optimyxin  Eye Drops Antibiotic',
		'https://www.sandoz.ca/en/optimyxinr-eye-drops-antibiotic-10-ml',
		'',
		'https://www.sandoz.ca/sites/all/themes/novartis_sandoz/novartis-sandoz-logo.svg',
		'{cid1} and {cid7} and {cid9} and {cid11} and {cid13} and {cid14} and {cid16} and {cid18}'
	);
