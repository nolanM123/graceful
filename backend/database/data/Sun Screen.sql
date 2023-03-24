INSERT INTO ailments VALUES 
	(
		16, 
		'Sun Screen', 
		'Consult your phyisician if you have abnormal scaling skin lesions that are crusty, raised, wart-like, erode or bleed, dome-like with shiny surface developing central ulceration. Consult your physician for skin lesions which appear as flat brown or black spots/moles with irregular edges that recently changed in size/pigmentation. Sunscreen use is not recommended in children less than 6 months old and these should avoid sun exposure when possible or use physical protection (shade, clothing to cover exposed areas). Sunscreens of at least SPF 30, avoidance of sun exposure and use of physical protection is recommended for all individuals to reduce skin cancer risk and sun-induced skin damage.'
	);

INSERT INTO questions VALUES 
	(
		16, 
		1, 
		1, 
		'Would you like a tanning or low SPF product', 
		'Some products with lower SPF will provide some sun protection but can also allow an individual to tan. Caution is advised in order to prevent sun burn.'
	), 
	(
		16, 
		2, 
		1, 
		'Would you like a medium SPF product', 
		'Higher SPF products allow indivduals to spend a fair amount of time in the sun with proper/frequent reapplication.'
	), 
	(
		16, 
		3, 
		1, 
		'Would you like a high SPF product', 
		'Products with the highest SPF are ideal for fair-skinned individuals which easily burn in the sun.'
	), 
	(
		16, 
		4, 
		1, 
		'Do you prefer a lotion or cream', 
		'Creams and lotions are most cosmetically appealing and easy to spread. Ideal for application to face and body.'
	), 
	(
		16, 
		5, 
		1, 
		'Do you prefer a stick', 
		'Convenient and portable product but more difficult to spread and apply consistently over large areas. Idea for small areas such as the lips.'
	), 
	(
		16, 
		6, 
		1, 
		'Do you prefer a spray', 
		'Sprays are easily applied but may leave skin with a sticky and/or shine. Avoid inhaling spray or accidental application to the eyes and/or mucous membranes. Some products may be flammable.'
	), 
	(
		16, 
		7, 
		1, 
		'Do you prefer a waterpoof/resistant product', 
		'Some products may remain/retain some protective benefit regardless of sweat or water exposure. Note that product should be reapplied after swimming.'
	), 
	(
		16, 
		8, 
		1, 
		'Are you sensitive to PABA, oxybenzone or avobenzone', 
		'Some products containing PABA, oxybenzone and/or avobenzone may cause skin sensitivity or allergic reactions in some individuals. Avoid use if you are sensitive/allergic.'
	), 
	(
		16, 
		9, 
		1, 
		'Do you prefer a physical block or mineral sunscreen', 'Products with physical blocks such as zinc oxide provide high broad spectrum protection but may be less cosmetically appealing. Best for areas that burn easily or for young children.'
	), 
	(
		16, 
		10, 
		1, 
		'Do you have acne or prefer non-comedogenic product', 'Some products may block skin pores and worsen acne. Avoid use in individuals prone to or suffering from acne. '
	), 
	(
		16, 
		11, 
		1, 
		'Do you need a product for your face or lips', 'Some product formulations are best for application to the face and/or lips.'
	), 
	(
		16, 
		12, 
		1, 
		'Do you need a product for your body', 'Some product formulations are best for application to the body.'
	), 
	(
		16, 
		13, 
		1, 
		'Do you prefer a hypoallergenic product', 'Some products are formulated with ingredients that are unlikely to cause skin sensitivity or allergic reactions.'
	), 
	(
		16, 
		14, 
		1, 
		'Do you prefer a fragrance-free product', 'Individuals with sensitivity/allergies to fragrances should select fragrance-free products.'
	), 
	(
		16, 
		15, 
		1, 
		'Do you prefer an oil-free product', 'Some products are formulated without oils and are less likely to block skin pores. Ideal for individuals with acne or acne-prone skin.'
	), 
	(
		16, 
		16, 
		1, 
		'Would you like a product for baby or kids', 'Some products are specifically formulated for application to young children and infants.'
	), 
	(
		16, 
		17, 
		1, 
		'Would you like broad spectrum sun protection', 'Broad spectrum sun screens protect against both UVA and UVB rays and reduce risk of sun burn. Few products are not marketed as broad spectrum. ***Not selecting this category may considerably limit options***'
	);

INSERT INTO criteria VALUES 
	(16, 1, 'Low SPF', '{qid1}'), 
	(16, 2, 'Mid SPF', '{qid2}'), 
	(16, 3, 'High SPF', '{qid3}'), 
	(16, 4, 'Spray/Whip/Oil', '{qid6} and not ({qid4} or {qid5})'), 
	(16, 5, 'Stick', '{qid5} and not ({qid4} or {qid6})'), 
	(16, 6, 'Lotion', '{qid4} and not ({qid5} or {qid6})'), 
	(16, 7, 'UVA/UVB', '{qid17}'), 
	(16, 8, 'Kids', 'not {qid16}'), 
	(16, 9, 'Water resistent/proof', 'not {qid7}'), 
	(16, 10, 'Oxy/Avobenzone', 'not {qid8}'), 
	(16, 11, 'Face/Lips', '{qid11}'), 
	(16, 12, 'Body', '{qid12}'), 
	(16, 13, 'Non-comedogenic', 'not {qid10}'), 
	(16, 14, 'Hypoallergenic', 'not {qid13}'), 
	(16, 15, 'Fragrance-Free', 'not {qid14}'), 
	(16, 16, 'Oil-Free', 'not {qid15}'), 
	(16, 17, 'Mineral', 'not {qid9}');

INSERT INTO products VALUES 
	(
		16,
		1,
		'Neutrogena Clear Face  Lotion',
		'https://www.neutrogena.ca/sun/face-protection/neutrogena-clear-face-lotion?upcean=062600962195#ingredients',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid14} and {cid17}'
	),
	(
		16,
		2,
		'Neutrogena  Ultra Sheer  Water-Light  Daily Face Sunscreen Spf 60',
		'https://www.neutrogena.ca/sun/face-protection/neutrogena-ultra-sheer-water-light-daily-face-sunscreen-spf-60',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid3} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		3,
		'Neutrogena  Ultra Sheer  Face & Body Stick Sunscreen Spf 50+',
		'https://www.neutrogena.ca/sun/face-protection/neutrogena-ultra-sheer-face-body-stick-sunscreen-spf-50',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid5} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		4,
		'Neutrogena  Ultra Sheer  Face Sunscreen',
		'https://www.neutrogena.ca/sun/face-protection/neutrogena-ultra-sheer-face-sunscreen?upcean=062600962171',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		5,
		'Neutrogena  Hydro Boost Water Gel Sunscreen',
		'https://www.neutrogena.ca/sun/body-protection/neutrogena-hydro-boost-water-gel-sunscreen?upcean=062600233929',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid10} and {cid12} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		6,
		'Neutrogena  Beach Defense  Sunscreen Spray',
		'https://www.neutrogena.ca/sun/body-protection/neutrogena-beach-defense-sunscreen-spray',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid4} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		7,
		'Neutrogena  Beach Defense  Sunscreen Lotion',
		'https://www.neutrogena.ca/sun/body-protection/neutrogena-beach-defense-sunscreen-lotion',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		8,
		'Neutrogena  Ultra Sheer  Body Mist Sunscreens',
		'https://www.neutrogena.ca/sun/body-protection/neutrogena-ultra-sheer-body-mist-sunscreens?upcean=062600235732',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid4} and {cid7} and {cid8} and {cid10} and {cid12} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		9,
		'Neutrogena  Ultra Sheer  Dry-Touch Lotion',
		'https://www.neutrogena.ca/sun/body-protection/neutrogena-ultra-sheer-dry-touch-lotion?upcean=062600961495',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		10,
		'Neutrogena Sheer Zinc  Body',
		'https://www.neutrogena.ca/sun/minerals/neutrogena-sheer-zinc-body',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid12} and {cid17}'
	),
	(
		16,
		11,
		'Neutrogena Sheer Zinc  Face',
		'https://www.neutrogena.ca/sun/minerals/neutrogena-sheer-zinctm-face',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid17}'
	),
	(
		16,
		12,
		'Neutrogena  Cooldry Sport  Sunscreen Lotion',
		'https://www.neutrogena.ca/sun/sport-protection/neutrogena-cooldry-sport-sunscreen-lotion',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		13,
		'Neutrogena  Cooldry Sport  Sunscreen Spray',
		'https://www.neutrogena.ca/sun/sport-protection/neutrogena-cooldry-sport-sunscreen-spray',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid4} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		14,
		'Neutrogena  Wet Skin  Sunscreen Spray Kids',
		'https://www.neutrogena.ca/sun/kids-protection/neutrogena-wet-skin-sunscreen-spray-kids',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid3} and {cid4} and {cid7} and {cid10} and {cid11} and {cid12} and {cid13} and {cid15} and {cid17}'
	),
	(
		16,
		15,
		'Neutrogena  Beach Defense  Sunscreen Spray Kids',
		'https://www.neutrogena.ca/sun/kids-protection/neutrogena-beach-defense-sunscreen-spray-kids',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid4} and {cid7} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		16,
		'Coppertone Sport  Sunscreen Continuous Spray',
		'https://www.coppertone.ca/en/products/sport/spray/sport/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		17,
		'Coppertone Sport  Sunscreen Lotion',
		'https://www.coppertone.ca/en/products/sport/lotion/lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		18,
		'Coppertone  Sunscreen Lotion Spf 50 Defend & Care Face',
		'https://www.coppertone.ca/en/products/skin-health/lotion/sunscreen-lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		19,
		'Coppertone  Sunscreen Lotion Spf 50 Defend & Care',
		'https://www.coppertone.ca/en/products/skin-health/lotion/bodylotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid10} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		20,
		'Coppertone  Mineral Sunscreen Lotion Pure & Simple Face',
		'https://www.coppertone.ca/en/products/skin-health/lotion/sensitive-facelotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid13} and {cid15} and {cid16}'
	),
	(
		16,
		21,
		'Coppertone  Mineral Sunscreen Lotion Pure & Simple',
		'https://www.coppertone.ca/en/products/skin-health/lotion/sensitive-skin-bodylotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid12} and {cid13} and {cid15} and {cid16}'
	),
	(
		16,
		22,
		'Coppertone  Sunscreen Spray Spf 50 Defend & Care',
		'https://www.coppertone.ca/en/products/skin-health/spray/spray/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		23,
		'Coppertone  Tanning Sunscreen Lotion',
		'https://www.coppertone.ca/en/products/tanning/lotion/coppertone-tanning-sunscreen-lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid1} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		24,
		'Coppertone  Waterbabies  Whipped Sunscreen',
		'https://www.coppertone.ca/en/products/family/whipped/baby/water-babies-pure-simple-whipped/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		25,
		'Coppertone  Waterbabies  Sunscreen Lotion',
		'https://www.coppertone.ca/en/products/family/lotion/baby/waterbabies-sunscreen-lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid3} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		26,
		'Coppertone   Mineral Sunscreen Lotion Pure & Simple Baby',
		'https://www.coppertone.ca/en/products/family/lotion/baby/pure-simple-baby-mineral-lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16}'
	),
	(
		16,
		27,
		'Coppertone  Kids Sunscreen Lotion',
		'https://www.coppertone.ca/en/products/family/lotion/kids/coppertone-kids-sunscreen-lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		28,
		'Coppertone  Mineral Sunscreen Lotion Pure & Simple Kids',
		'https://www.coppertone.ca/en/products/family/lotion/kids/pure-simple-kids-mineral-lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16}'
	),
	(
		16,
		29,
		'Coppertone  Sunscreen Lotion',
		'https://www.coppertone.ca/en/products/family/lotion/adult/ultra-guard-sunscreen-lotion/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid1} and {cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		30,
		'Coppertone  Kids Continuous Spray',
		'https://www.coppertone.ca/en/products/family/spray/kids/kids-sunscreen-continuous-spray/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		31,
		'Coppertone  Sunscreen Continuous Spray',
		'https://www.coppertone.ca/en/products/family/spray/adult/ultra-guard-sunscreen-continuous-spray/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid15} and {cid17}'
	),
	(
		16,
		32,
		'Coppertone  Sunscreen Stick Waterbabies ',
		'https://www.coppertone.ca/en/products/family/stick/baby/waterbabies-sunscreen-stick/index.html',
		'',
		'https://seeklogo.com/images/C/Coppertone_Water_Babies-logo-14A1468F05-seeklogo.com.png',
		'{cid2} and {cid5} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16}'
	),
	(
		16,
		33,
		'Hawaiian Tropic  Island Sport  Lotion Sunscreen',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-island-sport-lotion-sunscreen',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		34,
		'Hawaiian Tropic  Island Sport  Clear Spray Sunscreen',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-island-sport-clear-spray-sunscreen',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		35,
		'Hawaiian Tropic  Duo Defence  Refresh Sunscreen Mist',
		'http://www.hawaiiantropic.ca/sun-care-products/duo-defence-refresh-sunscreen-mist',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		36,
		'Hawaiian Tropic  Duo Defence ',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-duo-defence-sunscreen-lotion',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		37,
		'Hawaiian Tropic  Silk Hydration  Weightless  Sunscreen',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-silk-hydration-weightless-sunscreen',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		38,
		'Hawaiian Tropic  Silk Hydration  Weightless  Face Sunscreen',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-silk-hydration-weightless-face-sunscreen',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid9} and {cid11} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		39,
		'Hawaiian Tropic  Silk Hydration  Weightless  Clear Spray Sunscreen',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-silk-hydration-weightless-clear-spray-sunscreen',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid9} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		40,
		'Hawaiian Tropic  Sheer Touch Ultra Radiance Lotion Sunscreen',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-sheer-touch-ultra-radiance-lotion-sunscreen',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid1} and {cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		41,
		'Hawaiian Tropic  Protective Argan Dry Oil Sunscreen Spray',
		'http://www.hawaiiantropic.ca/sun-care-products/protective-argan-dry-oil-sunscreen-spray',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid9} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		42,
		'Hawaiian Tropic  Sunscreen Oil Pump Spray',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-sunscreen-oil-pump-spray',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid9} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		43,
		'Hawaiian Tropic  Lotion Sunscreen',
		'http://www.hawaiiantropic.ca/sun-care-products/hawaiian-tropic-tanning-lotion-sunscreen-and-redirect',
		'',
		'https://seeklogo.com/images/H/Hawaiian_Tropic-logo-57C4BCFC0D-seeklogo.com.png',
		'{cid1} and {cid6} and {cid7} and {cid8} and {cid9} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		44,
		'Aveeno  Sensitive Skin Spf 50 Sunscreen',
		'https://www.aveeno.ca/products/sensitive-skin-spf-50-sunscreen',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid9} and {cid11} and {cid12} and {cid14} and {cid15}'
	),
	(
		16,
		45,
		'Aveeno  Sensitive Skin Face Spf 50',
		'https://www.aveeno.ca/products/sensitive-skin-face-spf-50',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid13} and {cid14} and {cid15}'
	),
	(
		16,
		46,
		'Aveeno  Active Naturals Protect + Hydrate  Spf 30',
		'https://www.aveeno.ca/products/protect-hydrate-lotion-sunscreen-spf-30',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		47,
		'Aveeno  Active Naturals Protect + Hydrate  Spf 45',
		'https://www.aveeno.ca/products/protect-hydrate-sunscreen-lotion-spf-45',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		48,
		'Aveeno  Active Naturals Protect + Hydrate  Spf 60',
		'https://www.aveeno.ca/products/protect-hydrate-lotion-sunscreen-spf-60',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		49,
		'Aveeno  Active Naturals Protect + Hydrate  Spf 60',
		'https://www.aveeno.ca/products/protect-hydrate-lotion-sunscreen-spf-60-188',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17}'
	),
	(
		16,
		50,
		'Aveeno  Baby Sensitive Skin Sunscreen Spf 50',
		'https://www.aveeno.ca/products/baby-sensitive-skin-sunscreen-spf-50',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid2} and {cid6} and {cid7} and {cid9} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16}'
	),
	(
		16,
		51,
		'Aveeno  Baby Sensitive Skin Face Sunscreen Stick Spf 50',
		'https://www.aveeno.ca/products/baby-sensitive-skin-face-sunscreen-stick-spf-50',
		'',
		'https://www.aveeno.ca/sites/aveeno_ca_2/files/avn_logo_cristal_2017.png',
		'{cid2} and {cid5} and {cid7} and {cid9} and {cid11} and {cid13} and {cid14} and {cid15} and {cid16}'
	),
	(
		16,
		52,
		'Banana Boat  Sport For Kids Sunscreen Stick',
		'http://www.bananaboat.ca/products/kids-and-baby-sunscreen-kids-sport-sunscreen-stick',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid5} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		53,
		'Banana Boat  Simply Protect  Baby Sunscreen Lotion',
		'http://www.bananaboat.ca/products/baby-sunscreen-lotion',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid17}'
	),
	(
		16,
		54,
		'Banana Boat  Simply Protect  Kids Sunscreen Lotion Spray',
		'http://www.bananaboat.ca/products/kids-sunscreen-spray',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid17}'
	),
	(
		16,
		55,
		'Banana Boat  Simply Protect  Kids Sunscreen Lotion',
		'http://www.bananaboat.ca/products/banana-boat-simply-protect-kids-sunscreen-lotion',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid17}'
	),
	(
		16,
		56,
		'Banana Boat  Kids Sunscreen Lotion',
		'http://www.bananaboat.ca/products/kids-and-baby-sunscreen-kids-sunscreen',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid3} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid16} and {cid17}'
	),
	(
		16,
		57,
		'Banana Boat  Sport For Kids Lotion Spray',
		'http://www.bananaboat.ca/products/kids-and-baby-sunscreen-kids-sport-sunscreen-spray',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		58,
		'Banana Boat  Kids Tear Free Sunscreen Spray',
		'http://www.bananaboat.ca/products/kids-and-baby-sunscreen-tear-free-spray-sunscreen',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		59,
		'Banana Boat  Sport Sunscreen Stick',
		'http://www.bananaboat.ca/products/sport-sunscreen-sport-performance-sunscreen-stick',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid5} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		60,
		'Banana Boat  Simply Protect  Sport Sunscreen Lotion',
		'http://www.bananaboat.ca/products/simply-protect-sport-sunscreen-lotion',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid17}'
	),
	(
		16,
		61,
		'Banana Boat  Simply Protect  Sport Sunscreen Spray',
		'http://www.bananaboat.ca/products/simply-protect-sport-sunscreen-spray',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid17}'
	),
	(
		16,
		62,
		'Banana Boat  Sport Performance  Lotion Sunscreens With Powerstay Technology ',
		'http://www.bananaboat.ca/products/sport-sunscreen-sport-performance-sunscreen',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		63,
		'Banana Boat  Sport Performance  With Powerstay Technology  Sunscreen Sprays',
		'http://www.bananaboat.ca/products/sport-sunscreen-performance-sunscreen-spray',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		64,
		'Banana Boat  Sport Performance  Coolzone  Sunscreens',
		'http://www.bananaboat.ca/products/sport-sunscreen-coolzone-spray-sunscreen',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		65,
		'Banana Boat  Simply Protect Sensitive  Sunscreen Lotion',
		'http://www.bananaboat.ca/products/simply-protect-sensitive-sunscreen-lotion',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13}'
	),
	(
		16,
		66,
		'Banana Boat  Simply Protect Sensitive  Face Sunscreen Lotion',
		'http://www.bananaboat.ca/products/simply-protect-sensitive-face-sunscreen-lotion',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid13}'
	),
	(
		16,
		67,
		'Banana Boat  Dry Balancetm Sunscreen Lotions',
		'http://www.bananaboat.ca/products/general-protection-sunscreen-dry-balance-sunscreen-lotion',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		68,
		'Banana Boat  Dry Balancetm Sunscreen Sprays',
		'http://www.bananaboat.ca/products/general-protection-sunscreen-dry-balance-sunscreen-spray',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		69,
		'Banana Boat  Suncomfort  Sunscreen Sprays',
		'http://www.bananaboat.ca/products/general-protection-sunscreen-suncomfort-spray-sunscreen',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		70,
		'Banana Boat  Aloe Vera With Vitamin E Lip Balm',
		'http://www.bananaboat.ca/products/general-protection-sunscreen-sunscreen-lipbalm',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid2} and {cid5} and {cid7} and {cid8} and {cid11} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		71,
		'Banana Boat  Sunscreen Oil Spray',
		'http://www.bananaboat.ca/products/tanning-sunscreen-oil-spray',
		'',
		'https://seeklogo.com/images/B/Banana_Boat-logo-F789DFDC08-seeklogo.com.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		72,
		'Garnier Ombrelle Completesensitive Advanced Body And Face Lotion Duo Spf 60',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-complete-sensitive-advantage/garnier-ombrelle-complete-sensitive-advanced-body-and-face-lotion-duo-spf-60-200-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid3} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid16} and {cid17}'
	),
	(
		16,
		73,
		'Garnier Ombrelle Faceface Stick Spf 50+',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-face/garnier-ombrelle-face-face-stick-spf-50-9-g',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid2} and {cid5} and {cid7} and {cid8} and {cid10} and {cid11} and {cid16}'
	),
	(
		16,
		74,
		'Garnier Ombrelle Completecontinuous Spray Spf 30',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-complete/garnier-ombrelle-complete-continuous-spray-spf-30-142-g',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid16} and {cid17}'
	),
	(
		16,
		75,
		'Garnier Ombrelle Kidswet''N Protect Lotion Spf 60',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-kids/garnier-ombrelle-kids-wet-n-protect-lotion-spf-60-200-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid3} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid16} and {cid17}'
	),
	(
		16,
		76,
		'Garnier Ombrelle Sportspray Spf 30',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-sport/garnier-ombrelle-sport-spray-spf-30-145-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		16,
		77,
		'Garnier Ombrelle Sport Endurance Spf 30',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-sport/garnier-ombrelle-sport-endurance-spf-30-50-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid2} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid17}'
	),
	(
		16,
		78,
		'Garnier Ombrelle Sportcontinuous Spray Spf 45',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-sport/garnier-ombrelle-sport-continuous-spray-spf-45-122-g',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid2} and {cid4} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid16} and {cid17}'
	),
	(
		16,
		79,
		'Garnier Ombrelle Completesensitive Advanced Body And Face Lotion Spf 60',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-complete-sensitive-advantage/garnier-ombrelle-complete-sensitive-advanced-body-and-face-lotion-spf-60-200-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid3} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13} and {cid16} and {cid17}'
	),
	(
		16,
		80,
		'Garnier Ombrelle Kids Wet''N Protect Cream Spf 45',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-kids/garnier-ombrelle-kids-wet-n-protect-cream-spf-45-90-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid2} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid16} and {cid17}'
	),
	(
		16,
		81,
		'Garnier Ombrelle Kidswet''N Protect Lotion Spf 30',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-kids/garnier-ombrelle-kids-wet-n-protect-lotion-spf-30-200-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid2} and {cid6} and {cid7} and {cid11} and {cid12} and {cid13} and {cid16} and {cid17}'
	),
	(
		16,
		82,
		'Garnier Ombrelle Face Antishine Cream Spf 60',
		'https://www.garnier.ca/en-ca/about-our-brands/sun-care/ombrelle-face/garnier-ombrelle-face-antishine-cream-spf-60-90-ml',
		'',
		'https://www.garnier.ca/-/media/project/loreal/brand-sites/garnier/usa/ca/logo/garnier_logo_2021.png?h=72&iar=0&w=195&rev=1577420be9074f16ab650d1736ebee19&hash=FEE72BCDB99C86CA9F91A97714256FE2',
		'{cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid11} and {cid14} and {cid16} and {cid17}'
	);
