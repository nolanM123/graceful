INSERT INTO ailments VALUES (21, 'Infant Formula', '');

INSERT INTO questions VALUES 
	(21, 1, 1, 'Would you like a product with probiotics/immune support', ''), 
	(21, 2, 1, 'Would you like a product with omega fatty acids', ''), 
	(21, 3, 1, 'Would you like a product with dietary fiber', ''), 
	(21, 4, 1, 'Would you like a certified GMO-free product', ''), 
	(21, 5, 1, 'Would you like a product containing cow milk + soy', ''), 
	(21, 6, 1, 'Would you like a certified hormone-free product', ''), 
	(21, 7, 1, 'Would you like a product for lactose-sensitive child', ''), 
	(21, 8, 1, 'Would you like a hypoallergenic product', ''), 
	(21, 9, 1, 'Would you like a soy-only (lactose-free) product', ''), 
	(21, 10, 1, 'Would you like a product with lutein', ''), 
	(21, 11, 1, 'Would you like a product with vitamin E', ''), 
	(21, 12, 1, 'Would you like a low-iron product', ''), 
	(21, 13, 1, 'Would you like a high-iron product', ''), 
	(21, 14, 1, 'Would you like a hydrolysed product', ''), 
	(21, 15, 1, 'Would you like an enriched product', ''), 
	(21, 16, 1, 'Would you like a high calcium product', ''), 
	(21, 17, 1, 'Would you like a step 1 product (0-12 months)', ''), 
	(21, 18, 1, 'Would you like a step 2 product (6-12 months)', ''), 
	(21, 19, 1, 'Would you like a step 3 product (12-36 months)', ''), 
	(21, 20, 1, 'Do you prefer powder formula', ''), 
	(21, 21, 1, 'Do you prefer liquid concentrate formula', ''), 
	(21, 22, 1, 'Do you prefer ready to use formula', ''), 
	(21, 23, 1, 'Do you prefer a kosher or halal product', ''), 
	(21, 24, 1, 'Do you prefer an organic product', '');

INSERT INTO criteria VALUES 
	(21, 1, 'Immune Support', ''), 
	(21, 2, 'DHA', ''), 
	(21, 3, 'Fiber', ''), 
	(21, 4, 'non-GMO', ''), 
	(21, 5, 'Cow Milk', ''), 
	(21, 6, 'Hormone-free', ''), 
	(21, 7, 'lactose-sensitive', ''), 
	(21, 8, 'Hypoallergic', ''), 
	(21, 9, 'Soy', ''), 
	(21, 10, 'Lutein', ''), 
	(21, 11, 'Vit E', ''), 
	(21, 12, 'Low Fe', ''), 
	(21, 13, 'Fe+ Enriched', ''), 
	(21, 14, 'Hydrolate', ''), 
	(21, 15, 'Enriched', ''), 
	(21, 16, 'Ca+ Enriched', ''), 
	(21, 17, '0-12 Mnths', ''), 
	(21, 18, '6-24 Mnths', ''), 
	(21, 19, '12-36 Mnths', ''), 
	(21, 20, 'Powder', ''), 
	(21, 21, 'ReadyUse', ''), 
	(21, 22, 'Con Liq', ''), 
	(21, 23, 'Kosher/Halal', ''), 
	(21, 24, 'Organic', '');

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
	(21, 1, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid21}, {cid23}, {cid24}])'), 
	(21, 2, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 3, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid21}, {cid22}, {cid23}, {cid24}])'), 
	(21, 4, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 5, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 6, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 7, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid22}, {cid23}, {cid24}])'), 
	(21, 8, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid21}, {cid23}, {cid24}])'), 
	(21, 9, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 10, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 11, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid18}, {cid20}, {cid21}, {cid23}, {cid24}])'), 
	(21, 12, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid18}, {cid20}, {cid22}, {cid23}, {cid24}])'), 
	(21, 13, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid18}, {cid20}, {cid23}, {cid24}])'), 
	(21, 14, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid19}, {cid20}, {cid21}, {cid23}, {cid24}])'), 
	(21, 15, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid21}, {cid22}, {cid23}, {cid24}])'), 
	(21, 16, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid21}, {cid23}, {cid24}])'), 
	(21, 17, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid18}, {cid20}, {cid21}, {cid22}, {cid23}, {cid24}])'), 
	(21, 18, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid19}, {cid20}, {cid21}, {cid23}, {cid24}])'), 
	(21, 19, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 20, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid22}, {cid23}, {cid24}])'), 
	(21, 21, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 22, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 23, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid19}, {cid20}, {cid23}, {cid24}])'), 
	(21, 24, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 25, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid21}, {cid23}, {cid24}])'), 
	(21, 26, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid22}, {cid23}, {cid24}])'), 
	(21, 27, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid22}, {cid23}, {cid24}])'), 
	(21, 28, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid18}, {cid20}, {cid23}, {cid24}])'), 
	(21, 29, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 30, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid21}, {cid22}, {cid23}, {cid24}])'), 
	(21, 31, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid18}, {cid20}, {cid21}, {cid22}, {cid23}, {cid24}])'), 
	(21, 32, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid19}, {cid20}, {cid23}, {cid24}])'), 
	(21, 33, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])'), 
	(21, 34, 'all([{cid1}, {cid2}, {cid3}, {cid4}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid20}, {cid23}, {cid24}])');
