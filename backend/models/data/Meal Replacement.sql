INSERT INTO ailments VALUES 
	(
		22, 
		'Meal Replacement', 
		'Consult your physician for unexplained weight loss, failure to thrive, significant weight loss in the presence of illness, signs of dehydration, refusal or inability to feed and/or systemic signs of under or malnourishment. Some individuals may require parenteral administration of nutrition in severe cases. Patients should consult their physician prior to initiating a weight loss regimen.'
	);

INSERT INTO questions VALUES 
	(
		22, 
		1, 
		1, 
		'Would you like a product for weight loss', 
		'Some meal replacement products are specifically designed to assist individuals with weight loss and weight management.'
	), 
	(
		22, 
		2, 
		1, 
		'Would you like a product for weight gain/maintenance', 
		'Some meal replacement products are specifically designed to assist individuals with maintaining and/or increasing current body mass. These products can be helpful for individuals on liquid diets or individuals with mastication challenges.'
	), 
	(
		22, 
		3, 
		1, 
		'Would you like a product for men (specifically)', 
		'Some products are marketed to provide or meet the specific nutritional needs of men.'
	), 
	(
		22, 
		4, 
		1, 
		'Would you like a product for women (specifically)', 
		'Some products are marketed to provide or meet the specific nutritional needs of women.'
	), 
	(
		22, 
		5, 
		1, 
		'Would you like a product for children', 
		'Some products are marketed to provide or meet the specific nutritional needs of children.'
	), 
	(
		22, 
		6, 
		1, 
		'Would you like a product for adults (general)', 
		'Some products are marketed to provide or meet the specific nutritional needs of adults in general.'
	), 
	(
		22, 
		7, 
		1, 
		'Would you like a poduct with multiple flavour options', 
		'Some products are available in multiple flavour options providing the consumer with a variety of options. Most products are available in multiple flavour options.'
	), 
	(
		22, 
		8, 
		1, 
		'Would you like a product promoting bone/muscle strength', 
		'Some products are formulated and fortified with nutrients to enhance or maintain bone and muscle tone.'
	), 
	(
		22, 
		9, 
		1, 
		'Woul you like a product for diabetics (low sugar)', 
		'Some products are specifically formulated for diabetics and are less likely to lead to sugar spikes when consumed.'
	), 
	(
		22, 
		10, 
		1, 
		'Would you like a product for fluid-restricted or low sodium diet', 
		'Some products are formulated for fluid-restricted or low salt diets.'
	), 
	(
		22, 
		11, 
		1, 
		'Would you like a high protein product', 
		'Some products are enriched with protein to promote muscle tone or growth.'
	), 
	(
		22, 
		12, 
		1, 
		'Would you like a high fiber product', 
		'Some products are enriched with fiber to promote bowel and gastrointestinal tract health.'
	), 
	(
		22, 
		13, 
		1, 
		'Would you like a soy-free product', 
		'Some products are formulated with alternatives to soy. Ideal for individuals with soy sensitivity or allergy.'
	), 
	(
		22, 
		14, 
		1, 
		'Would you like a gluten-free product', 
		'Some products are formulated with alternatives to gluten. Ideal for individuals with gluten sensitivity or allergy.'
	), 
	(
		22, 
		15, 
		1, 
		'Would you like a product free of colouring agents', 
		'Some products are formulated without colouring agents and dyes. Ideal for individuals with colouring/dye sensitivities or allergies.'
	), 
	(
		22, 
		16, 
		1, 
		'Would you like a sweetner-free product', 
		'Some products are formulated without atificial sweetners.'
	), 
	(
		22, 
		17, 
		1, 
		'Would you like a lactose-free product', 
		'Some products are formulated without lactose. Ideal for individuals with lactose sensitivity or allergy.'
	), 
	(
		22, 
		18, 
		1, 
		'Would you like a product with prebiotics', 
		'Some products are formulated with prebiotics to promote gastrointestinal health.'
	), 
	(
		22, 
		19, 
		1, 
		'Would you like a product with antioxidants', 
		'Some products are formulated with antioxidants to promote general health.'
	), 
	(
		22, 
		20, 
		1, 
		'Would you like a keto product', 
		'Some products are formulated with high fat and protein but with low carbohydrates. Ideal for individuals which prefer a keto diet.'
	), 
	(
		22, 
		21, 
		1, 
		'Would you like a kosher product', 
		'Some products are formulated to qualify as kosher and meet the food preparation requirements of the jewish faith and law.'
	), 
	(
		22, 
		22, 
		1, 
		'Would you like a halal product', 
		'Some products are formulated to qualify as halal and meet the food preparation requirements of the Muslim or Islamic faith and law.'
	), 
	(
		22, 
		23, 
		1, 
		'Do you prefer a shake/drink product', 
		'Some products are available as ready to drink shake or smoothie. Ideal as an on-the-go meal replacement or when product need is unpredictable.'
	), 
	(
		22, 
		24, 
		1, 
		'Do you prefer a shake mix/powder product', 
		'Some products are available as a powder mix for shakes & smoothies. Requires time to prepare prior to use but may provide a cost savings as well as more flexibilty for custom drink mixes or pudding.'
	), 
	(
		22, 
		25, 
		1, 
		'Do you prefer a bar/candy or snack product', 
		'Some products available as ready to eat bars or snacks. Ideal as on-the-go meal replacement. Highly mobile and easy to carry. Great when product need or use is unpredictable but may require liquids or mastication for consumption.'
	), 
	(
		22, 
		26, 
		1, 
		'Do you prefer a pudding product', 
		'Some products are available as ready to eat pudding. Ideal as an on-the-go meal replacement or when product need is unpredictable or for individuals with fluid restrictions or aspiration risk.'
	), 
	(
		22, 
		27, 
		1, 
		'Would you like a soothing product (mouth pain)', 
		'Some products are available as ready to eat pudding. Ideal as an on-the-go meal replacement or when product need is unpredictable or for individuals with fluid restrictions or aspiration risk.'
	), 
	(
		22, 
		28, 
		1, 
		'Would you like a clear product', 
		'Some products are available as a clear formulation. Ideal for individuals who do not appreciate the mouth feel of a smootie or milkshake.'
	);

INSERT INTO criteria VALUES 
	(22, 1, 'Flavours', 'not {qid7}'), 
	(22, 2, 'Adult', '{qid6} and not ({qid3} or {qid4} or {qid5})'), 
	(22, 3, 'Women', '{qid4} and not ({qid3} or {qid5} or {qid6})'), 
	(22, 4, 'Men', '{qid3} and not ({qid4} or {qid5} or {qid6})'), 
	(22, 5, 'Kids', '{qid5} and not ({qid3} or {qid4} or {qid6})'), 
	(22, 6, 'Weight Loss', '{qid1} and not {qid2}'), 
	(22, 7, 'Gain/Maintain Weight', '{qid2} and not {qid1}'), 
	(22, 8, 'Bone/Mobility', 'not {qid8}'), 
	(22, 9, 'Diabetic', 'not {qid9}'), 
	(22, 10, 'Fiber', 'not {qid12}'), 
	(22, 11, 'High Protein', 'not {qid11}'), 
	(22, 12, 'Soy-Free', 'not {qid13}'), 
	(22, 13, 'Gluten-Free', 'not {qid14}'), 
	(22, 14, 'Color-Free', 'not {qid15}'), 
	(22, 15, 'Sweeter-Free', 'not {qid16}'), 
	(22, 16, 'Lactose-free', 'not {qid17}'), 
	(22, 17, 'Prebiotic', 'not {qid18}'), 
	(22, 18, 'Antioxidants', 'not {qid19}'), 
	(22, 19, 'Keto', 'not {qid20}'), 
	(22, 20, 'Kosher', 'not {qid21}'), 
	(22, 21, 'Halal', 'not {qid22}'), 
	(22, 22, 'Fluid Restricted', 'not {qid10}'), 
	(22, 23, 'Drink', '{qid23} and not ({qid24} or {qid25} or {qid26})'), 
	(22, 24, 'Powder', '{qid24} and not ({qid23} or {qid25} or {qid26})'), 
	(22, 25, 'Bar/Snack', '{qid25} and not ({qid23} or {qid24} or {qid26})'), 
	(22, 26, 'Pudding', '{qid26} and not ({qid23} or {qid24} or {qid25})'), 
	(22, 27, 'Clear', 'not {qid28}'), 
	(22, 28, 'Soothe', 'not {qid27}');

INSERT INTO products VALUES 
	(
		23,
		1,
		'Boost Original',
		'https://www.boost.com/products/original',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		2,
		'Boost High Protein',
		'https://www.boost.com/products/high-protein',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid17} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		3,
		'Boost Plus ',
		'https://www.boost.com/products/plus',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		4,
		'Boost Very High Calorie',
		'https://www.boost.com/products/very-high-calorie',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid1} and {cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17} and {cid18} and {cid19} and {cid21} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		5,
		'Boost Glucose Control ',
		'https://www.boost.com/products/glucose-control',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid15} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		6,
		'Boost Max Nutritional Shake',
		'https://www.boost.com/products/max-protein-drink',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		7,
		'Boost Mobility',
		'https://www.boost.com/products/mobility',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid1} and {cid2} and {cid7} and {cid9} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		8,
		'Boost Women',
		'https://www.boost.com/products/women',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid3} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		9,
		'Boost Men',
		'https://www.boost.com/products/men',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		10,
		'Boost Breeze ',
		'https://www.boost.com/products/breeze',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17} and {cid18} and {cid19} and {cid23} and {cid28}'
	),
	(
		23,
		11,
		'Boost Glucose Control  High Protein',
		'https://www.boost.com/products/glucose-control-high-protein',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid10} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		12,
		'Boost High Protein Drink Mix',
		'https://www.boost.com/products/high-protein-powder',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid1} and {cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid19} and {cid20} and {cid21} and {cid22} and {cid24} and {cid27} and {cid28}'
	),
	(
		23,
		13,
		'Boost Pudding',
		'https://www.boost.com/products/boost-pudding',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17} and {cid18} and {cid19} and {cid21} and {cid26} and {cid27} and {cid28}'
	),
	(
		23,
		14,
		'Boost Soothe',
		'https://www.boost.com/products/boost-soothe',
		'',
		'https://www.boost.com/sites/g/files/lpfasj796/themes/site/boost_us_2022/assets/img/logo.png?var=1.2',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17} and {cid18} and {cid19} and {cid21} and {cid22} and {cid23}'
	),
	(
		23,
		15,
		'Ensure High Protein',
		'https://ensure.ca/en/ensure-high-protein',
		'',
		'https://ensure.ca/static/img/ensure-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid14} and {cid15} and {cid17} and {cid18} and {cid19} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		16,
		'Ensure Regular',
		'https://ensure.ca/en/ensure-regular',
		'',
		'https://ensure.ca/static/img/ensure-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17} and {cid18} and {cid19} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		17,
		'Ensure High Protein [16 G Of Protein]',
		'https://ensure.ca/en/ensure-high-protein-16g',
		'',
		'https://ensure.ca/static/img/ensure-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		18,
		'Ensure Protein Max',
		'https://ensure.ca/en/ensure-protein-max',
		'',
		'https://ensure.ca/static/img/ensure-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid14} and {cid15} and {cid18} and {cid19} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		19,
		'Ensure Plus Calories',
		'https://ensure.ca/en/ensure-plus-calories',
		'',
		'https://ensure.ca/static/img/ensure-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid17} and {cid18} and {cid19} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		20,
		'Ensure Scfos Fibre',
		'https://ensure.ca/en/ensure-scfos-fibre',
		'',
		'https://ensure.ca/static/img/ensure-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		21,
		'Glucerna Nutritional Drink',
		'https://glucerna.ca/en/products',
		'',
		'https://static.abbottnutrition.com/cms-prod/ca-glucerna.ca/img/glucerna-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		22,
		'Glucerna Bar',
		'https://glucerna.ca/en/products',
		'',
		'https://static.abbottnutrition.com/cms-prod/ca-glucerna.ca/img/glucerna-logo.png',
		'{cid2} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid21} and {cid22} and {cid25} and {cid27} and {cid28}'
	),
	(
		23,
		23,
		'Slimfast Original Shakes',
		'https://slimfast.ca/products/original/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		24,
		'Slimfast Original Shake Mix',
		'https://slimfast.ca/products/original/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid24} and {cid27} and {cid28}'
	),
	(
		23,
		25,
		'Slimfast Advanced Nutrition Shakes',
		'https://slimfast.ca/products/original/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	),
	(
		23,
		26,
		'Slimfast Advanced Nutrition Shake Mix',
		'https://slimfast.ca/products/original/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid24} and {cid27} and {cid28}'
	),
	(
		23,
		27,
		'Slimfast Keto Shake Mix',
		'https://slimfast.ca/products/keto/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid16} and {cid17} and {cid18} and {cid20} and {cid21} and {cid22} and {cid24} and {cid27} and {cid28}'
	),
	(
		23,
		28,
		'Slimfast Keto Shake Bars',
		'https://slimfast.ca/products/keto/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid16} and {cid17} and {cid18} and {cid20} and {cid21} and {cid22} and {cid25} and {cid27} and {cid28}'
	),
	(
		23,
		29,
		'Slimfast Keto Shake Snacks',
		'https://slimfast.ca/products/keto/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid16} and {cid17} and {cid18} and {cid20} and {cid21} and {cid22} and {cid25} and {cid27} and {cid28}'
	),
	(
		23,
		30,
		'Slimfast Bake Shop Bars',
		'https://slimfast.ca/products/bake-shop/',
		'',
		'https://slimfastcanada.wpenginepowered.com/wp-content/uploads/2018/03/SlimFast-Logo.png',
		'{cid2} and {cid6} and {cid8} and {cid9} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid25} and {cid27} and {cid28}'
	),
	(
		23,
		31,
		'Pediasure Complete',
		'https://pediasure.ca/en/products',
		'',
		'https://static.abbottnutrition.com/cms-prod/Pediasure.ca/img/PediaSure_Shadow_221x82_tcm135-116251.png',
		'{cid1} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid18} and {cid19} and {cid20} and {cid21} and {cid22} and {cid23} and {cid27} and {cid28}'
	);
