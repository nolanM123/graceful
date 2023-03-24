INSERT INTO ailments VALUES 
	(
		23, 
		'Incontinence', 
		'Inividuals should consult their physician for urinary or bowel incontienence of unknown ethiology, presence of blood in urine or bowel movements as well as signs of severe dehydration. Patients with suspected urinary tract infection, gastrointestinal infection, systemic symptoms, recent trauma, poor renal function or recent pelvic surgery should be assessed by a healthcare practionner.'
	);

INSERT INTO questions VALUES 
	(
		23, 
		1, 
		1, 
		'Would you like a product specifically for men', 
		'Some products are specifically designed to fit men comfortably.'
	), 
	(
		23, 
		2, 
		1, 
		'Would you like a product specifically for women', 
		'Some products are specifically designed to fit women comfortably.'
	), 
	(
		23, 
		3, 
		1, 
		'Would you like a unisex product', 
		'Some products are specifically designed to fit women comfortably'
	), 
	(
		23, 
		4, 
		1, 
		'Would you like a product for daily wear', 
		'Some products are best worn for a few hours or during the day when item can be replaced if it becomes saturated.'
	), 
	(
		23, 
		5, 
		1, 
		'Would you like a product for use at night or extended time', 
		'Some products may be worn for extended periods of time including overnight as they are less likely to become saturated.'
	), 
	(
		23, 
		6, 
		1, 
		'Would you like a product post partum incontinence', 
		'Some products are recommended for post-partum incontinence. Only some Tena pads fit this criteria.'
	), 
	(
		23, 
		7, 
		1, 
		'Would you like a more flexible product for active wear', 
		'Some products are made to be more flexible or have wings to reduce the risk of leaks with movement and motion. These products are ideal for more active users.'
	), 
	(
		23, 
		8, 
		1, 
		'Would you like a latex-free product', 
		'Individuals with latex sensitivities or allergies may react negatively to products which may contain latex or rubber. Such individuals should select products that are latex-free. Only some Tena pads and underwear meet this criteria.'
	), 
	(
		23, 
		9, 
		1, 
		'Do you prefer an underwear product', 
		'Underwear provide greater incontinence protection than pads, panty liners, guards or shields. Mimic the feel and/or look of traditional underwear and can provide discretion. Some products look like lace or real fabric.'
	), 
	(
		23, 
		10, 
		1, 
		'Do you prefer a pad product', 
		'Provide greater urinary incontinence protection than panty liners but generally thicker and less discrete. Can be used to protect undergarments.'
	), 
	(
		23, 
		11, 
		1, 
		'Do you prefer a panty liner product', 
		'Panty liners provide lightest urinary incontinence protection. Can be used to protect undergarments.'
	), 
	(
		23, 
		12, 
		1, 
		'Do you prefer a guard or shield product', 
		'The male equivalent to panty liner or pad product. Can be worn beneath underwear, provides protection for mild urinary incontinence.'
	), 
	(
		23, 
		13, 
		1, 
		'Do you prefer briefs', 
		'Briefs can be easily removed or changed with side fasteners. Ideal for individuals requiring assistance with daily care. Provide highest level or absorption and can be used for both urinary or bowel incontinence.'
	), 
	(
		23, 
		14, 
		1, 
		'Would you like a product for very light incontinence', 
		'Designed for infrequent and very light urinary incontinence.'
	), 
	(
		23, 
		15, 
		1, 
		'Would you like a product for light incontinence', 
		'Designed for infrequent light urinary incontinence.'
	), 
	(
		23, 
		16, 
		1, 
		'Would you like a product for moderate incontinence', 
		'Designed for moderate urinary incontinence.'
	), 
	(
		23, 
		17, 
		1, 
		'Would you like a product for heavy incontinence', 
		'Designed for heavy urinary incontinence. May also be appropriate for bowel incontinence.'
	), 
	(
		23, 
		18, 
		1, 
		'Would you like a product for super heavy incontinence', 
		'Designed for heavy urinary or bowel incontinence.'
	), 
	(
		23, 
		19, 
		1, 
		'Would you prefer a regular length product', 
		'For women for which a regular sized pad or panty liner provides sufficient protection.'
	), 
	(
		23, 
		20, 
		1, 
		'Would you prefer a long length product', 
		'For women for which a regular sized pad or panty liner does not provide sufficient protection.'
	), 
	(
		23, 
		21, 
		1, 
		'Would you prefer a product for size small', 
		'size small (-) inches. Applies to briefs and underwear.'
	), 
	(
		23, 
		22, 
		1, 
		'Would you prefer a product for size medium', 
		'size medium (-) inches. Applies to briefs and underwear.'
	), 
	(
		23, 
		23, 
		1, 
		'Would you prefer a product for size large', 
		'size large (-) inches. Applies to briefs and underwear.'
	), 
	(
		23, 
		24, 
		1, 
		'Would you prefer a product for size extra large', 
		'size extra large (-) inches. Applies to briefs and underwear.'
	), 
	(
		23, 
		25, 
		1, 
		'Would you prefer a product for size double extra large', 
		'size double extra large (-) inches. Applies to briefs and underwear.'
	), 
	(
		23, 
		26, 
		1, 
		'Would you prefer a product for bariatric use', 
		'Specifical designed for individuals with weight and/or obesity challenges. Applies to briefs and underwear.'
	);

INSERT INTO criteria VALUES 
	(23, 1, 'Unisex', '{qid3} and not ({qid1} or {qid2})'), 
	(23, 2, 'Men''s', '{qid1} and not ({qid2} or {qid3})'), 
	(23, 3, 'Women''s', '{qid2} and not ({qid1} or {qid3})'), 
	(23, 4, 'Daily', '{qid4} and not {qid5}'), 
	(23, 5, 'Nightly', '{qid5} and not {qid4}'), 
	(23, 6, 'Post Partum', 'not {qid6}'), 
	(23, 7, 'Flex/Active', 'not {qid7}'), 
	(23, 8, 'Latex-Free', 'not {qid8}'), 
	(23, 9, 'Underwear', '{qid9} and not ({qid10} or {qid11} or {qid12} or {qid13})'), 
	(23, 10, 'Pads', '{qid10} and not ({qid9} or {qid11} or {qid12} or {qid13})'), 
	(23, 11, 'Panty Liners', '{qid11} and not ({qid9} or {qid10} or {qid12} or {qid13})'), 
	(23, 12, 'Shield', '{qid12} and not ({qid9} or {qid10} or {qid11} or {qid13})'), 
	(23, 13, 'Guards', '{qid12} and not ({qid9} or {qid10} or {qid11} or {qid13})'), 
	(23, 14, 'Briefs', '{qid13} and not ({qid9} or {qid10} or {qid11} or {qid12})'), 
	(23, 15, 'V-Light 0-1/7', '{qid14} and not ({qid15} or {qid16} or {qid17} or {qid18})'), 
	(23, 16, 'Light 2-3/7', '{qid15} and not ({qid14} or {qid16} or {qid17} or {qid18})'), 
	(23, 17, 'Moderate 4-5/7', '{qid16} and not ({qid14} or {qid15} or {qid17} or {qid18})'), 
	(23, 18, 'Heavy 6-7/7', '{qid17} and not ({qid14} or {qid15} or {qid16} or {qid18})'), 
	(23, 19, 'Super 8/8', '{qid18} and not ({qid14} or {qid15} or {qid16} or {qid17})'), 
	(23, 20, 'Long', '{qid20} and not {qid19}'), 
	(23, 21, 'Regular', '{qid19} and not {qid20}'), 
	(23, 22, 'Small', '{qid21}'), 
	(23, 23, 'Medium', '{qid22}'), 
	(23, 24, 'Large', '{qid23}'), 
	(23, 25, 'Xlarge', '{qid24}'), 
	(23, 26, 'XXL', '{qid25}'), 
	(23, 27, 'Bariatric (XXXL)', '{qid26}');

INSERT INTO products VALUES 
	(
		24,
		1,
		'Tena Very Light Liners Long',
		'https://www.tena.ca/very-light-liners-long/5640064900,en_CA,pd.html#start=1',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid16} and {cid20}'
	),
	(
		24,
		2,
		'Tena Very Light Liners Regular',
		'https://www.tena.ca/very-light-liners-regular/5630064800,en_CA,pd.html#start=2',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid16} and {cid21}'
	),
	(
		24,
		3,
		'Tena Intimates Light Ultra Thin Pads Regular',
		'https://www.tena.ca/intimates-ultra-thin-pads-reg/4650045100,en_CA,pd.html#start=3',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16} and {cid21}'
	),
	(
		24,
		4,
		'Tena Intimates Ultra Thin Light Pads Long',
		'https://www.tena.ca/active-ultra-thin-pads-long/5434454344,en_CA,pd.html#start=4',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16} and {cid20}'
	),
	(
		24,
		5,
		'Tena Intimates Moderate Thin Pads Long',
		'https://www.tena.ca/Moderate-Thin-pads-long/5207052070,en_CA,pd.html#start=5',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid20}'
	),
	(
		24,
		6,
		'Tena Intimates Overnight Pads',
		'https://www.tena.ca/intimates-overnight-pads/5740057400,en_CA,pd.html#start=1',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18}'
	),
	(
		24,
		7,
		'Tena Intimates Pads Moderate Regular',
		'https://www.tena.ca/pads-moderate-reg/4130039748,en_CA,pd.html#start=2',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		8,
		'Tena Intimates Pads Moderate Long',
		'https://www.tena.ca/pads-moderate-long/3975946900,en_CA,pd.html#start=3',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid20}'
	),
	(
		24,
		9,
		'Tena Intimates Ultimate Pads',
		'https://www.tena.ca/intimates-ultimate-pads/5000049700,en_CA,pd.html#start=4',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid21}'
	),
	(
		24,
		10,
		'Tena Intimates Maximum Pads Long',
		'https://www.tena.ca/intimates-pads-maximum-long/5429547300,en_CA,pd.html#start=5',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid20}'
	),
	(
		24,
		11,
		'Tena Pads Moderate With Aloe Vera Long',
		'https://www.tena.ca/pads-moderate-aloe-vera-long/4160080600,en_CA,pd.html#start=6',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16} and {cid20}'
	),
	(
		24,
		12,
		'Tena Men Very Light Protective Shield - Level 0',
		'https://www.tena.ca/tena-men-protective-shield/5073050730,en_CA,pd.html#start=1',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13} and {cid15}'
	),
	(
		24,
		13,
		'Tena Men Light Protective Guards - Level 1',
		'https://www.tena.ca/men-protective-guards-lvl-1/750651750651,en_CA,pd.html#start=3',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13} and {cid16}'
	),
	(
		24,
		14,
		'Tena Men Moderate Protective Guards - Level 2',
		'https://www.tena.ca/men-protective-guards/5070052700,en_CA,pd.html#start=4',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13} and {cid16}'
	),
	(
		24,
		15,
		'Tena Men Super Guard - Level 3',
		'https://www.tena.ca/men-protective-guards-lvl-1/750830750830,en_CA,pd.html#start=2',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13} and {cid17}'
	),
	(
		24,
		16,
		'Tena Overnight Underwear',
		'https://www.tena.ca/overnight-underwear/7221272311,en_CA,pd.html#start=1',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18}'
	),
	(
		24,
		17,
		'Tena Ultimate Underwear',
		'https://www.tena.ca/ultimate-underwear/7213172231,en_CA,pd.html#start=2',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18}'
	),
	(
		24,
		18,
		'Tena Women Stylish Underwear',
		'https://www.tena.ca/stylish-underwear/5414254143,en_CA,pd.html#start=3',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid16}'
	),
	(
		24,
		19,
		'Tena Proskin Maximum Absorbency Underwear For Women',
		'https://www.tena.ca/TENA-Proskin-Maximum-Absorbency-Underwear-for-Women/7302073030,en_CA,pd.html#start=4',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17}'
	),
	(
		24,
		20,
		'Tena Super Plus Heavy Underwear',
		'https://www.tena.ca/women-super-plus-underwear-heavy-absorbency/5428554286,en_CA,pd.html#start=5',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17}'
	),
	(
		24,
		21,
		'Tena Ultimate Underwear',
		'https://www.tena.ca/ultimate-underwear/7213172231,en_CA,pd.html#start=1',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18}'
	),
	(
		24,
		22,
		'Tena Men Protective Underwear Super Plus Absorbency',
		'https://www.tena.ca/men-comfort-fit-underwear/8178081920,en_CA,pd.html#start=2',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17}'
	),
	(
		24,
		23,
		'Tena Proskin Maximum Absorbency Underwear For Men',
		'https://www.tena.ca/TENA-Proskin-Maximum-Absorbency-Underwear-for-Men/7352073530,en_CA,pd.html#start=3',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17}'
	),
	(
		24,
		24,
		'Tena Stretch Ultra Briefs',
		'https://www.tena.ca/stretch-ultra-briefs/6780267803,en_CA,pd.html#start=1',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid23} and {cid24} and {cid25} and {cid26}'
	),
	(
		24,
		25,
		'Tena Super Briefs',
		'https://www.tena.ca/super-briefs/6740167501,en_CA,pd.html#start=2',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid1} and {cid5} and {cid6} and {cid7} and {cid8} and {cid14} and {cid19} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		26,
		'Tena Small Briefs',
		'https://www.tena.ca/small-briefs/6610066100,en_CA,pd.html#start=3',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid22}'
	),
	(
		24,
		27,
		'Tena Ultra Briefs',
		'https://www.tena.ca/ultra-briefs/6720067300,en_CA,pd.html#start=4',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid23} and {cid24}'
	),
	(
		24,
		28,
		'Tena Proskin Unisex Briefs',
		'https://www.tena.ca/super-briefs/5660056800,en_CA,pd.html#start=5',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid19} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		29,
		'Tena Bariatric Briefs',
		'https://www.tena.ca/bariatric-briefs/6138561385,en_CA,pd.html#start=6',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid27}'
	),
	(
		24,
		30,
		'Tena Stretch Super Briefs',
		'https://www.tena.ca/stretch-super-briefs/6790267903,en_CA,pd.html#start=7',
		'',
		'https://shop.tena.ca/on/demandware.static/Sites-Tena_CA-Site/-/default/dw694488f8/themes/tena/images/tena-logo-new-1.png',
		'{cid1} and {cid5} and {cid6} and {cid7} and {cid8} and {cid14} and {cid19} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		31,
		'Depend  Fit-Flex  Underwear For Women',
		'https://www.depend.com/en-ca/incontinence-products/women/maximum-fit-flex-underwear',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		32,
		'Depend Silhouette  Classic Underwear For Women',
		'https://www.depend.com/en-ca/incontinence-products/women/silhouette-classic-underwear',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		33,
		'Depend Silhouette  Expressions Underwear For Women',
		'https://www.depend.com/en-ca/incontinence-products/women/silhouette-expression-underwear',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		34,
		'Depend  Night Defense  Underwear For Women',
		'https://www.depend.com/en-ca/incontinence-products/women/night-defense-underwear',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		35,
		'Depend  Shields For Men',
		'https://www.depend.com/en-ca/incontinence-products/men/shields-for-men',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid12} and {cid16}'
	),
	(
		24,
		36,
		'Depend  Guards For Men',
		'https://www.depend.com/en-ca/incontinence-products/men/guards-for-men',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13} and {cid17}'
	),
	(
		24,
		37,
		'Depend Real Fit  Underwear For Men',
		'https://www.depend.com/en-ca/incontinence-products/men/real-fit-briefs',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		38,
		'Depend  Fit-Flex  Underwear For Men',
		'https://www.depend.com/en-ca/incontinence-products/men/fit-flex-underwear',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		39,
		'Depend  Protection With Tabs',
		'https://www.depend.com/en-ca/incontinence-products/unisex-and-bed-protectors/protection-with-tabs',
		'',
		'https://www.depend.com/-/media/depend/images/header/logo/new-depend-logo.png',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid22} and {cid23} and {cid24}'
	),
	(
		24,
		40,
		'Poise Microliners',
		'https://www.poise.com/en-ca/products/pads-liners/microliners',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid15} and {cid20} and {cid21}'
	),
	(
		24,
		41,
		'Poise Daily Liners',
		'https://www.poise.com/en-ca/products/pads-liners/liners',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid16} and {cid20} and {cid21}'
	),
	(
		24,
		42,
		'Poise Liners With Wings',
		'https://www.poise.com/en-ca/products/pads-liners/active/light',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid16} and {cid20}'
	),
	(
		24,
		43,
		'Poise Ultra Thin Pads-Light',
		'https://www.poise.com/en-ca/products/pads-liners/thin-shape-pads/light',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16} and {cid21}'
	),
	(
		24,
		44,
		'Poise Original Pads-Light',
		'https://www.poise.com/en-ca/products/pads-liners/pads/light',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16} and {cid20} and {cid21}'
	),
	(
		24,
		45,
		'Poise Ultra Thin Pads-Moderate',
		'https://www.poise.com/en-ca/products/pads-liners/thin-shape-pads/moderate',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		46,
		'Poise Original Pads-Moderate',
		'https://www.poise.com/en-ca/products/pads-liners/pads/moderate',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid20} and {cid21}'
	),
	(
		24,
		47,
		'Poise Ultra Thin Pads With Wings',
		'https://www.poise.com/en-ca/products/pads-liners/active/moderate',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		48,
		'Poise Ultra Thin Pads-Maximum',
		'https://www.poise.com/en-ca/products/pads-liners/thin-shape-pads/maximum',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		49,
		'Poise Original Pads - Maximum',
		'https://www.poise.com/en-ca/products/pads-liners/pads/maximum',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid20} and {cid21}'
	),
	(
		24,
		50,
		'Poise Ultra Thin Pads With Wings - Maximum',
		'https://www.poise.com/en-ca/products/pads-liners/active/maximum',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		51,
		'Poise Ultra Thin Pads-Ultimate',
		'https://www.poise.com/en-ca/products/pads-liners/thin-shape-pads/ultimate',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid20}'
	),
	(
		24,
		52,
		'Poise Original Pads-Ultimate',
		'https://www.poise.com/en-ca/products/pads-liners/pads/ultimate',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid20} and {cid21}'
	),
	(
		24,
		53,
		'Poise Overnight Pads-Ultimate',
		'https://www.poise.com/en-ca/products/pads-liners/overnight-pads/ultimate',
		'',
		'https://www.poise.com/-/media/poise/images/logo/poise-logo.png',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid21}'
	),
	(
		24,
		54,
		'Always Discreet Liners-Short',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-liners/lightest-short-liners',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid15}'
	),
	(
		24,
		55,
		'Always Discreet Liners-Regular',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-liners/regular-very-light-incontinence-panty-liners',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid16} and {cid21}'
	),
	(
		24,
		56,
		'Always Discreet Liner-Long',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-liners/long-very-light-incontinence-panty-liners',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid16} and {cid20}'
	),
	(
		24,
		57,
		'Always Discreet Light Pads',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-pads/light-pads-regular',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16}'
	),
	(
		24,
		58,
		'Always Discreet Moderate Regualr Pads',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-pads/moderate-pads-regular',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		59,
		'Always Discreet Moderate Long Pads',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-pads/moderate-pads-long',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid20}'
	),
	(
		24,
		60,
		'Always Discreet Heavy Regular Pads',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-pads/maximum-pads-regular',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid21}'
	),
	(
		24,
		61,
		'Always Discreet Heavy Long Pads',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-pads/maximum-pads-long',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid20}'
	),
	(
		24,
		62,
		'Always Discreet Extra Heavy Regular Pads',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-pads/extra-heavy-pads',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid21}'
	),
	(
		24,
		63,
		'Always Discreet Extra Heavy Long Pads',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-pads/ultimate-pads-long',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid20}'
	),
	(
		24,
		64,
		'Always Discreet Maximum Protection Underwear-S/M',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-underwear/maximum-protection-underwear-small-medium',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23}'
	),
	(
		24,
		65,
		'Always Discreet Maximum Protection Underwear-L',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-underwear/maximum-protection-underwear-large',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid24}'
	),
	(
		24,
		66,
		'Always Discreet Maximum Protection Underwear-Xl',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-underwear/maximum-protection-underwear-extra-large',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid25}'
	),
	(
		24,
		67,
		'Always Discreet Maximum Protection Underwear-Xxl',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-underwear/maximum-protection-underwear-xxl',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid26}'
	),
	(
		24,
		68,
		'Always Discreet Overnight Maximum Protection Underwear-S/M',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-underwear/overnight-maximum-underwear-small-medium',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23}'
	),
	(
		24,
		69,
		'Always Discreet Overnight Maximum Protection Underwear-L',
		'https://alwaysdiscreet.com/en-us/incontinence-products/incontinence-underwear/overnight-maximum-underwear-large',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid24}'
	),
	(
		24,
		70,
		'Always Discreet Boutique Incontinence Liners, Very Light',
		'https://alwaysdiscreet.com/en-us/incontinence-products/boutique-maximum-protective-incontinence-underwear/always-discreet-boutique-incontinence-liners-very-light',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid16}'
	),
	(
		24,
		71,
		'Always Discreet Boutique Pads, Moderate-Regular',
		'https://alwaysdiscreet.com/en-us/incontinence-products/shop-all-categories/always-discreet-boutique-incontinence-pads-moderate-absorbency-regular-length',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		72,
		'Always Discreet Boutique Pads, Heavy-Long',
		'https://alwaysdiscreet.com/en-us/incontinence-products/shop-all-categories/always-discreet-boutique-incontinence-pads-heavy-long-length',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid20}'
	),
	(
		24,
		73,
		'Always Discreet Boutique Pads, Extra Heavy-Long',
		'https://alwaysdiscreet.com/en-us/incontinence-products/shop-all-categories/always-discreet-boutique-incontinence-pads-extra-heavy-long-length',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18} and {cid20}'
	),
	(
		24,
		74,
		'Always Discreet Boutique Underwear Peach-S/M',
		'https://alwaysdiscreet.com/en-us/incontinence-products/boutique-maximum-protective-incontinence-underwear/maximum-protective-underwear-small-medium',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23}'
	),
	(
		24,
		75,
		'Always Discreet Boutique Underwear Peach-L',
		'https://alwaysdiscreet.com/en-us/incontinence-products/boutique-maximum-protective-incontinence-underwear/maximum-protective-underwear-large',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid24}'
	),
	(
		24,
		76,
		'Always Discreet Boutique Underwear Peach-Xl',
		'https://alwaysdiscreet.com/en-us/incontinence-products/boutique-maximum-protective-incontinence-underwear/incontinence-underwear-maximum-protection-peach-xl',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid25}'
	),
	(
		24,
		77,
		'Always Discreet Boutique Underwear Black-S/M',
		'https://alwaysdiscreet.com/en-us/incontinence-products/boutique-maximum-protective-incontinence-underwear/boutique-incontinence-and-postpartum-underwear-maximum-protection-small-medium',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23}'
	),
	(
		24,
		78,
		'Always Discreet Boutique Underwear Black-L',
		'https://alwaysdiscreet.com/en-us/incontinence-products/boutique-maximum-protective-incontinence-underwear/boutique-incontinence-and-postpartum-underwear-maximum-protection-black-large',
		'',
		'https://images.ctfassets.net/qibzrltfp5a4/7yctYJDMEkyubKyXfgzTHo/f65521e5e5c2212f0e0af4f9508507b6/always-discreet-logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid24}'
	),
	(
		24,
		79,
		'Attends Advanced Briefs',
		'https://attends.com/ddc-attends-advanced-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		80,
		'Attends Bariatric Briefs',
		'https://attends.com/dd-attends-bariatric-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid26} and {cid27}'
	),
	(
		24,
		81,
		'Attends Briefs',
		'https://attends.com/dda-attends-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		82,
		'Attends Briefs With Overnight Protection',
		'https://attends.com/ddew-attends-extended-wear-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid5} and {cid6} and {cid7} and {cid8} and {cid14} and {cid19} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		83,
		'Attends Care Poly Briefs',
		'https://attends.com/br-attends-care-poly-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		84,
		'Attends Classic Briefs',
		'https://attends.com/brb-attends-classic-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		85,
		'Attends Premier Briefs',
		'https://attends.com/ali-br-attends-premier-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid5} and {cid6} and {cid7} and {cid8} and {cid14} and {cid19} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		86,
		'Attends Stretch Briefs',
		'https://attends.com/dds-attends-stretch-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid22} and {cid23} and {cid25}'
	),
	(
		24,
		87,
		'Attends Youth/Small Briefs',
		'https://attends.com/brbx-attends-briefs',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid18} and {cid22}'
	),
	(
		24,
		88,
		'Attends Advanced Underwear',
		'https://attends.com/app-attends-underwear',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		89,
		'Attends Bariatric Protective Underwear',
		'https://attends.com/au-attends-bariatric-underwear',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid26} and {cid27}'
	),
	(
		24,
		90,
		'Attends Belted Undergarments',
		'https://attends.com/bu-',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17}'
	),
	(
		24,
		91,
		'Attends Discreet Men''s Underwear',
		'https://attends.com/adum-attends-discreet-men''s-underwear',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		92,
		'Attends Discreet Women''s Underwear',
		'https://attends.com/aduf-attends-discreet-women''s-underwear',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		93,
		'Attends Overnight Underwear With Extended Wear Protection',
		'https://attends.com/appnt-attends-overnight-underwear',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid19} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		94,
		'Attends Premier Underwear',
		'https://attends.com/ali-uw-attends-premier-underwear',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid19} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		95,
		'Attends Underwear Extra Absorbency',
		'https://attends.com/ap0-attends-underwear',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid17} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		96,
		'Attends Guards For Men',
		'https://attends.com/mg-attends-guards-for-men',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13} and {cid16}'
	),
	(
		24,
		97,
		'Attends Discreet Men''s Guards',
		'https://attends.com/admg-attends-discreet-men''s-male-guards',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13} and {cid17}'
	),
	(
		24,
		98,
		'Attends Discreet Male Shields',
		'https://attends.com/adms-attends-discreet-men''s-male-shields',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid12} and {cid15}'
	),
	(
		24,
		99,
		'Attends Discreet Women''s Maximum Long Pads',
		'https://attends.com/adpmal-attends-discreet-women''s-maximum-long-pads',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid20}'
	),
	(
		24,
		100,
		'Attends Discreet Women''s Maximum Pads',
		'https://attends.com/adpmax-attends-discreet-women''s-maximum-pads',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		101,
		'Attends Discreet Women''s Moderate Pads',
		'https://attends.com/adpmod-attends-discreet-women''s-moderate-pads',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16} and {cid21}'
	),
	(
		24,
		102,
		'Attends Discreet Women''s Ultimate Pads',
		'https://attends.com/adpult-attends-discreet-women''s-ultimate-pads',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17} and {cid21}'
	),
	(
		24,
		103,
		'Attends Discreet Women''s Ultra Thin Pads',
		'https://attends.com/adpthin-attends-discreet-women''s-ultra-thin-pads',
		'',
		'https://www.attends.com/static/version1669181871/frontend/Domtar/attends/default/images/logo.svg',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid15} and {cid21}'
	),
	(
		24,
		104,
		'Prevail  Women''s Pantiliners',
		'https://www.prevail.com/products/female/pantiliner',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid11} and {cid15}'
	),
	(
		24,
		105,
		'Prevail  Bladder Control Pads-Light',
		'https://www.prevail.com/products/female/bladder-control-pad-light',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid16}'
	),
	(
		24,
		106,
		'Prevail  Bladder Control Pads-Moderate',
		'https://www.prevail.com/products/female/bladder-control-pad-moderate',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid17}'
	),
	(
		24,
		107,
		'Prevail  Bladder Control Pads-Maximum',
		'https://www.prevail.com/products/female/bladder-control-pad-maximum',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18}'
	),
	(
		24,
		108,
		'Prevail  Bladder Control Pads-Ultimate',
		'https://www.prevail.com/products/female/bladder-control-pad-ultimate',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18}'
	),
	(
		24,
		109,
		'Prevail  Bladder Control Pads-Overnight',
		'https://www.prevail.com/products/female/bladder-control-pad-overnight',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid18}'
	),
	(
		24,
		110,
		'Prevail Per-Fit  Women Protective Underwear',
		'https://www.prevail.com/products/female/per-fit-women',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		111,
		'Prevail Protective Underwear For Women',
		'https://www.prevail.com/products/female/underwear-for-women',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		112,
		'Prevail Women''s Overnight Underwear',
		'https://www.prevail.com/products/female/for-women-overnight-underwear',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid3} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid18} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		113,
		'Prevail Male Guards',
		'https://www.prevail.com/products/male/male-guards',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid13}'
	),
	(
		24,
		114,
		'Prevail Per-Fit  Men Protective Underwear',
		'https://www.prevail.com/products/male/per-fit-men',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		115,
		'Prevail Protective Underwear For Men',
		'https://www.prevail.com/products/male/underwear-for-men',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid2} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		116,
		'Prevail Men''s Overnight Underwear',
		'https://www.prevail.com/products/male/for-men-overnight-underwear',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid2} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid22} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		117,
		'Prevail Per-Fit360 Briefs',
		'https://www.prevail.com/products/unisex/per-fit360',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		118,
		'Prevail Air Stretchable Briefs',
		'https://www.prevail.com/products/unisex/air-stretchable-brief',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		119,
		'Prevail Breezers360 Briefs',
		'https://www.prevail.com/products/unisex/breezers360',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid23} and {cid24} and {cid25}'
	),
	(
		24,
		120,
		'Prevail Specialty Sizes Briefs',
		'https://www.prevail.com/products/unisex/specialty-sizes',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid1} and {cid4} and {cid6} and {cid7} and {cid8} and {cid14} and {cid26} and {cid27}'
	),
	(
		24,
		121,
		'Prevail Air Overnight Briefs',
		'https://www.prevail.com/products/unisex/air-overnight-brief',
		'',
		'https://www.prevail.com/-/media/project/prevail/logos/prevail_logo.svg?h=50&w=165&la=en&hash=28365E0F5DD4905CA2144FB87EB5C87C',
		'{cid1} and {cid5} and {cid6} and {cid7} and {cid8} and {cid14} and {cid23} and {cid24} and {cid25}'
	);
