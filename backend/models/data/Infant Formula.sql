INSERT INTO ailments VALUES (
	21, 
	'Infant Formula', 
	'Health Canada, the Canadian Paediatric Society, and the Dietitians of Canada recommend that you exclusively breastfeed your baby for the first 6 months and that you continue to breastfeed for up to 2 years or longer along with complementary foods. Infant formulas may not be an ideal alternative or substitute for a mother''s natural breast milk. Finding the right formula for your child may require a trial and error approach.'
);

INSERT INTO questions VALUES 
	(
		21, 
		1, 
		1, 
		'Would you like a product with probiotics/immune support', 
		'Some products have ingredients to support immune health of the developing child, protect against harmful bacteria or feed good bacteria in the baby''gut.'
	), 
	(
		21, 
		2, 
		1, 
		'Would you like a product with omega fatty acids', 
		'Omega fatty acids such as DHA help support the development of the baby''s brain and eyes.'
	), 
	(
		21, 
		3, 
		1, 
		'Would you like a product with dietary fiber', 
		'Some products contain dietary fiber which help regulate baby''s bowel movements and soften stools.'
	), 
	(
		21, 
		4, 
		1, 
		'Would you like a certified GMO-free product', 
		'GMO-free products are made without genetic engineering and not derived from GMOs. Products are compliant with Non-GMO standard which includes stringent provisions for testing, traceability, and segregation. Generally, Similac and Nestle brands are non-GMO.'
	), 
	(
		21, 
		5, 
		1, 
		'Would you like a product containing cow milk + soy', 
		'Some products contain both milk and soy products or derivatives as essential ingredients.'
	), 
	(
		21, 
		6, 
		1, 
		'Would you like a certified hormone-free product', 
		'Some products are made with milk from cows not treated with artificial growth hormones. The Similac line of products is generally made with milk from cows not treated with hormones.'
	), 
	(
		21, 
		7, 
		1, 
		'Would you like a product for lactose-sensitive child', 
		'Some products are formulated for lactose-sensitive babies. Ideal option for babies with frequent gas or fussiness. Not recommended for babies with milk protein allergies.'
	), 
	(
		21, 
		8, 
		1, 
		'Would you like a hypoallergenic product', 
		'Some products are hypoallergenic and are suitable for babies with milk protein allergies, colic symptoms due to protein sensitivity or for babies with severe food allergies.'
	), 
	(
		21, 
		9, 
		1, 
		'Would you like a soy-only (lactose-free) product', 
		'Some products contain soy products or derivatives as an essential ingredient and contain no milk. Can be used for babies with milk protein sensitivities. Ideal for those who wish to avoid milk for health, culturla or religious reasons.'
	), 
	(
		21, 
		10, 
		1, 
		'Would you like a product with lutein', 
		'Lutein is an antioxidant found in solid foods like leafy greens, corn, and eggs. Antoixidants including lutein and vitamin E help protect fatty acids from oxidation.'
	), 
	(
		21, 
		11, 
		1, 
		'Would you like a product with vitamin E', 
		'Vitamin E is an antioxidant foud in solid foods like dark leafy greens, eggs, fish, nuts, and seeds. Antoixidants including lutein and vitamin E help protect fatty acids from oxidation. Similac and Nestle products generally contain vitamin E.'
	), 
	(
		21, 
		12, 
		1, 
		'Would you like a low-iron product', 
		'Some products are formulated with low iron levels to reduce the iron related gastrointestinal adverse effects. Iron can sometimes cause nausea, vomitting, constipation, diarrhea, dark stools and heart burn.'
	), 
	(
		21, 
		13, 
		1, 
		'Would you like a high-iron product', 
		'As your baby grows, their nutritional needs and requirments change. Some products are fortified with iron to help with their development. Iron plays essential role in enzyme reactions and oxygen transportation.'
	), 
	(
		21, 
		14, 
		1, 
		'Would you like a hydrolysed product', 
		'Some products are made using partially broken down milk proteins. These products are easier to digest by babies leading to less fussiness, tummy aches, gas, spit-up and discomfort.'
	), 
	(
		21, 
		15, 
		1, 
		'Would you like an enriched product', 
		'Some products are enriched with more calories, protein, and select vitamins and minerals. These products may promote the catch-up growth and development of preterm babies or alternatively support the increasing nutritional needs older children.'
	), 
	(
		21, 
		16, 
		1, 
		'Would you like a high calcium product', 
		'Some products are enriched with calcium to support the development of growing bones and muscles.'
	), 
	(
		21, 
		17, 
		1, 
		'Would you like a step 1 product (0-12 months)', 
		'Some products are formulated to be an alternative or substitute to breast milk for nursing newborns.'
	), 
	(
		21, 
		18, 
		1, 
		'Would you like a step 2 product (6-12 months)', 
		'Some products are enriched to support the growth of babies 6-24 months as they transition to a variety of solid foods and cow’s milk.'
	), 
	(
		21, 
		19, 
		1, 
		'Would you like a step 3 product (12-36 months)', 
		'Some products are formulated to complement the nutrition of toddlers in addition to solid foods and breast milk.'
	), 
	(
		21, 
		20, 
		1, 
		'Do you prefer powder formula', 
		'Some products are available as a powder formula that can be easily prepared into ready to use formula. Such products are easily stored, may represent a cost savings and be more environmentally friendly (less waste).'
	), 
	(
		21, 
		21, 
		1, 
		'Do you prefer liquid concentrate formula', 
		'Some products may be available as a liquid concentrate. These products retain most advantages of powder formula but are more easily prepared for use.'
	), 
	(
		21, 
		22, 
		1, 
		'Do you prefer ready to use formula', 
		'Some products are available in ready to use formula. Such products are easy to administer and highly mobile. May be more costly than other options, produce more waste and have shorter expiry dates.'
	), 
	(
		21, 
		23, 
		1, 
		'Do you prefer a kosher or halal product', 
		'Some products are formulated to qualify as kosher or halal and meet the food preparation requirements of the Jewsih, Muslim or Islamic faith and law.'
	), 
	(
		21, 
		24, 
		1, 
		'Do you prefer an organic product', 
		'Some products are made with natural ingredients grown without the use of chemical fertilizers, pesticides, or other artificial agents.'
	);

INSERT INTO criteria VALUES 
	(21, 1, 'Immune Support', 'not {qid1}'), 
	(21, 2, 'DHA', 'not {qid2}'), 
	(21, 3, 'Fiber', 'not {qid3}'), 
	(21, 4, 'non-GMO', 'not {qid4}'), 
	(21, 5, 'Cow Milk', '{qid5} and not {qid9}'), 
	(21, 6, 'Hormone-free', 'not {qid6}'), 
	(21, 7, 'lactose-sensitive', 'not {qid7}'), 
	(21, 8, 'Hypoallergic', 'not {qid8}'), 
	(21, 9, 'Soy', '{qid9} and not {qid5}'), 
	(21, 10, 'Lutein', 'not {qid10}'), 
	(21, 11, 'Vit E', 'not {qid11}'), 
	(21, 12, 'Low Fe', 'not {qid12}'), 
	(21, 13, 'Fe+ Enriched', 'not {qid13}'), 
	(21, 14, 'Hydrolate', 'not {qid14}'), 
	(21, 15, 'Enriched', 'not {qid15}'), 
	(21, 16, 'Ca+ Enriched', 'not {qid16}'), 
	(21, 17, '0-12 Mnths', '{qid17} and not ({qid18} or {qid19})'), 
	(21, 18, '6-24 Mnths', '{qid18} and not ({qid17} or {qid19})'), 
	(21, 19, '12-36 Mnths', '{qid19} and not ({qid17} or {qid18})'), 
	(21, 20, 'Powder', '{qid20}'), 
	(21, 21, 'ReadyUse', '{qid22}'), 
	(21, 22, 'Con Liq', '{qid21}'), 
	(21, 23, 'Kosher/Halal', 'not {qid23}'), 
	(21, 24, 'Organic', 'not {qid24}');

INSERT INTO products VALUES 
	(21, 1, 'Similac Pro-Advance® Step 1', '', '', ''), 
	(21, 2, 'Similac® Simply Nurture', '', '', ''), 
	(21, 3, 'Similac® Advance® Step 1', '', '', ''), 
	(21, 4, 'Similac® Step 1', '', '', ''), 
	(21, 5, 'Similac® Lower Iron', '', '', ''), 
	(21, 6, 'Similac Total Comfort', '', '', ''), 
	(21, 7, 'Similac® Sensitive® Lactose Sensitivity', '', '', ''), 
	(21, 8, 'Similac® Alimentum®', '', '', ''), 
	(21, 9, 'Similac® Isomil® With Dha', '', '', ''), 
	(21, 10, 'Similac® Neosure®', '', '', ''), 
	(21, 11, 'Similac Pro-Advance® Step 2', '', '', ''), 
	(21, 12, 'Similac® Advance® Step 2', '', '', ''), 
	(21, 13, 'Similac® Step 2', '', '', ''), 
	(21, 14, 'Go & Grow By Similactm Step 3', '', '', ''), 
	(21, 15, 'Enfamil A+® Infant Formula', '', '', ''), 
	(21, 16, 'Enfamil A+ Gentlease', '', '', ''), 
	(21, 17, 'Enfamil A+ 2 Infant Formula', '', '', ''), 
	(21, 18, 'Enfagrow A+ Toddler Drink', '', '', ''), 
	(21, 19, 'Enfamil A+ For Frequent Spit Up', '', '', ''), 
	(21, 20, 'Enfamil A+ Soy', '', '', ''), 
	(21, 21, 'Nutramigen® A+® With Lgg®', '', '', ''), 
	(21, 22, 'Puramino A+ ®', '', '', ''), 
	(21, 23, 'Puramino A+ Junior', '', '', ''), 
	(21, 24, 'Pregestimil A+', '', '', ''), 
	(21, 25, 'Enfamil A+ Enfacare', '', '', ''), 
	(21, 26, 'Enfamil Infant Formula', '', '', ''), 
	(21, 27, 'Enfamil Lower Iron Infant Formula', '', '', ''), 
	(21, 28, 'Enfamil 2 Infant Formula', '', '', ''), 
	(21, 29, 'Good Start Soothe Baby Formula', '', '', ''), 
	(21, 30, 'Stage 1 Baby Formula | Nestlé® Good Start®', '', '', ''), 
	(21, 31, 'Stage 2 Baby Formula | Nestle Good Start', '', '', ''), 
	(21, 32, 'Nestle® Good Grow Stage 3 Nutritional Toddler Drink', '', '', ''), 
	(21, 33, 'Organic Baby Formula | Good Start', '', '', ''), 
	(21, 34, 'Lactose Free Formula | Good Start Alsoy Baby Formula', '', '', '');

INSERT INTO productCriteria VALUES 
    (21, 1, '{cid3} and {cid5} and {cid7} and {cid8} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid21} and {cid23} and {cid24}'),
    (21, 2, '{cid1} and {cid3} and {cid5} and {cid7} and {cid8} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),
    (21, 3, '{cid1} and {cid3} and {cid5} and {cid7} and {cid8} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid21} and {cid22} and {cid23} and {cid24}'),    
    (21, 4, '{cid1} and {cid2} and {cid3} and {cid5} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),     
    (21, 5, '{cid1} and {cid2} and {cid3} and {cid5} and {cid7} and {cid8} and {cid10} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),
    (21, 6, '{cid1} and {cid3} and {cid5} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),
    (21, 7, '{cid1} and {cid2} and {cid3} and {cid5} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid22} and {cid23} and {cid24}'),    
    (21, 8, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid21} and {cid23} and {cid24}'),    
    (21, 9, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),     
    (21, 10, '{cid1} and {cid3} and {cid5} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),
    (21, 11, '{cid3} and {cid5} and {cid7} and {cid8} and {cid12} and {cid13} and {cid14} and {cid15} and {cid18} and {cid20} and {cid21} and {cid23} and {cid24}'),
    (21, 12, '{cid1} and {cid3} and {cid5} and {cid7} and {cid8} and {cid12} and {cid13} and {cid14} and {cid15} and {cid18} and {cid20} and {cid22} and {cid23} and {cid24}'),
    (21, 13, '{cid1} and {cid2} and {cid3} and {cid5} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid18} and {cid20} and {cid23} and {cid24}'),
    (21, 14, '{cid1} and {cid3} and {cid5} and {cid7} and {cid8} and {cid12} and {cid14} and {cid15} and {cid19} and {cid20} and {cid21} and {cid23} and {cid24}'),
    (21, 15, '{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid21} and {cid22} and {cid23} and {cid24}'),
    (21, 16, '{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17} and {cid20} and {cid21} and {cid23} and {cid24}'),
    (21, 17, '{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid18} and {cid20} and {cid21} and {cid22} and {cid23} and {cid24}'),
    (21, 18, '{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid19} and {cid20} and {cid21} and {cid24}'),
    (21, 19, '{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),
    (21, 20, '{cid1} and {cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid22} and {cid23} and {cid24}'),
    (21, 21, '{cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid10} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),    
    (21, 22, '{cid1} and {cid3} and {cid4} and {cid6} and {cid7} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),
    (21, 23, '{cid1} and {cid3} and {cid4} and {cid6} and {cid7} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid19} and {cid20} and {cid23} and {cid24}'),
    (21, 24, '{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid10} and {cid11} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),    
    (21, 25, '{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid13} and {cid14} and {cid16} and {cid17} and {cid20} and {cid21} and {cid23} and {cid24}'),
    (21, 26, '{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid22} and {cid23} and {cid24}'),
    (21, 27, '{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid22} and {cid23} and {cid24}'),
    (21, 28, '{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid11} and {cid12} and {cid14} and {cid15} and {cid18} and {cid20} and {cid23} and {cid24}'),
    (21, 29, '{cid3} and {cid5} and {cid6} and {cid8} and {cid10} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17} and {cid20} and {cid23} and {cid24}'),
    (21, 30, '{cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid15} and {cid16} and {cid17} and {cid20} and {cid21} and {cid22} and {cid23} and {cid24}'),
    (21, 31, '{cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid12} and {cid15} and {cid18} and {cid20} and {cid21} and {cid22} and {cid23} and {cid24}'),
    (21, 32, '{cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid10} and {cid12} and {cid14} and {cid15} and {cid19} and {cid20} and {cid24}'),
    (21, 33, '{cid1} and {cid3} and {cid5} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20}'),
    (21, 34, '{cid1} and {cid3} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid12} and {cid13} and {cid14} and {cid15} and {cid16} and {cid17} and {cid20} and {cid24}');