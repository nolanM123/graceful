INSERT INTO ailments VALUES (22, 'Meal Replacement', '');

INSERT INTO questions VALUES 
	(22, 1, 1, 'Would you like a product for weight loss', ''), 
	(22, 2, 1, 'Would you like a product for weight gain/maintenance', ''), 
	(22, 3, 1, 'Would you like a product for men (specifically)', ''), 
	(22, 4, 1, 'Would you like a product for women (specifically)', ''), 
	(22, 5, 1, 'Would you like a product for children', ''), 
	(22, 6, 1, 'Would you like a product for adults (general)', ''), 
	(22, 7, 1, 'Would you like a poduct with multiple flavour options', ''), 
	(22, 8, 1, 'Would you like a product promoting bone/muscle strength', ''), 
	(22, 9, 1, 'Woul you like a product for diabetics (low sugar)', ''), 
	(22, 10, 1, 'Would you like a product for fluid-restricted or low sodium diet', ''), 
	(22, 11, 1, 'Would you like a high protein product', ''), 
	(22, 12, 1, 'Would you like a high fiber product', ''), 
	(22, 13, 1, 'Would you like a soy-free product', ''), 
	(22, 14, 1, 'Would you like a gluten-free product', ''), 
	(22, 15, 1, 'Would you like a product free of colouring agents', ''), 
	(22, 16, 1, 'Would you like a sweetner-free product', ''), 
	(22, 17, 1, 'Would you like a lactose-free product', ''), 
	(22, 18, 1, 'Would you like a product with prebiotics', ''), 
	(22, 19, 1, 'Would you like a product with antioxidants', ''), 
	(22, 20, 1, 'Would you like a keto product', ''), 
	(22, 21, 1, 'Would you like a kosher product', ''), 
	(22, 22, 1, 'Would you like a halal product', ''), 
	(22, 23, 1, 'Do you prefer a shake/drink product', ''), 
	(22, 24, 1, 'Do you prefer a shake mix/powder product', ''), 
	(22, 25, 1, 'Do you prefer a bar/candy or snack product', ''), 
	(22, 26, 1, 'Do you prefer a pudding product', ''), 
	(22, 27, 1, 'Would you like a soothing product (mouth pain)', ''), 
	(22, 28, 1, 'Would you like a clear product', '');

INSERT INTO criteria VALUES 
	(22, 1, 'Flavours', ''), 
	(22, 2, 'Adult', ''), 
	(22, 3, 'Women', ''), 
	(22, 4, 'Men', ''), 
	(22, 5, 'Kids', ''), 
	(22, 6, 'Weight Loss', ''), 
	(22, 7, 'Gain/Maintain Weight', ''), 
	(22, 8, 'Bone/Mobility', ''), 
	(22, 9, 'Diabetic', ''), 
	(22, 10, 'Fiber', ''), 
	(22, 11, 'High Protein', ''), 
	(22, 12, 'Soy-Free', ''), 
	(22, 13, 'Gluten-Free', ''), 
	(22, 14, 'Color-Free', ''), 
	(22, 15, 'Sweeter-Free', ''), 
	(22, 16, 'Lactose-free', ''), 
	(22, 17, 'Prebiotic', ''), 
	(22, 18, 'Antioxidants', ''), 
	(22, 19, 'Keto', ''), 
	(22, 20, 'Kosher', ''), 
	(22, 21, 'Halal', ''), 
	(22, 22, 'Fluid Restricted', ''), 
	(22, 23, 'Drink', ''), 
	(22, 24, 'Powder', ''), 
	(22, 25, 'Bar/Snack', ''), 
	(22, 26, 'Pudding', ''), 
	(22, 27, 'Clear', ''), 
	(22, 28, 'Soothe', '');

INSERT INTO products VALUES 
	(22, 1, 'Boost® Original', '', '', ''), 
	(22, 2, 'Boost® High Protein', '', '', ''), 
	(22, 3, 'Boost Plus®', '', '', ''), 
	(22, 4, 'Boost® Very High Calorie', '', '', ''), 
	(22, 5, 'Boost Glucose Control®', '', '', ''), 
	(22, 6, 'Boost Max™ Nutritional Shake', '', '', ''), 
	(22, 7, 'Boost® Mobility', '', '', ''), 
	(22, 8, 'Boost® Women', '', '', ''), 
	(22, 9, 'Boost® Men', '', '', ''), 
	(22, 10, 'Boost Breeze®', '', '', ''), 
	(22, 11, 'Boost Glucose Control® High Protein', '', '', ''), 
	(22, 12, 'Boost® High Protein Drink Mix', '', '', ''), 
	(22, 13, 'Boost® Pudding', '', '', ''), 
	(22, 14, 'Boost® Soothe', '', '', ''), 
	(22, 15, 'Ensure® High Protein', '', '', ''), 
	(22, 16, 'Ensure® Regular', '', '', ''), 
	(22, 17, 'Ensure® High Protein [16 G Of Protein]', '', '', ''), 
	(22, 18, 'Ensure® Protein Max', '', '', ''), 
	(22, 19, 'Ensure® Plus Calories', '', '', ''), 
	(22, 20, 'Ensure® Scfos Fibre', '', '', ''), 
	(22, 21, 'Glucerna® Nutritional Drink', '', '', ''), 
	(22, 22, 'Glucerna® Bar', '', '', ''), 
	(22, 23, 'Slimfast Original Shakes', '', '', ''), 
	(22, 24, 'Slimfast Original Shake Mix', '', '', ''), 
	(22, 25, 'Slimfast Advanced Nutrition Shakes', '', '', ''), 
	(22, 26, 'Slimfast Advanced Nutrition Shake Mix', '', '', ''), 
	(22, 27, 'Slimfast Keto Shake Mix', '', '', ''), 
	(22, 28, 'Slimfast Keto Shake Bars', '', '', ''), 
	(22, 29, 'Slimfast Keto Shake Snacks', '', '', ''), 
	(22, 30, 'Slimfast Bake Shop Bars', '', '', ''), 
	(22, 31, 'Pediasure Complete®', '', '', '');

INSERT INTO productCriteria VALUES 
	(22, 1, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 2, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 3, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 4, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 5, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 6, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 7, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 8, 'all([{cid1}, {cid3}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 9, 'all([{cid1}, {cid4}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 10, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 11, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 12, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid24}, {cid27}, {cid28}])'), 
	(22, 13, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid26}, {cid27}, {cid28}])'), 
	(22, 14, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 15, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 16, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 17, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 18, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 19, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 20, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 21, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 22, 'all([{cid1}, {cid2}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid25}, {cid27}, {cid28}])'), 
	(22, 23, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 24, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid24}, {cid27}, {cid28}])'), 
	(22, 25, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])'), 
	(22, 26, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid24}, {cid27}, {cid28}])'), 
	(22, 27, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid24}, {cid27}, {cid28}])'), 
	(22, 28, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid25}, {cid27}, {cid28}])'), 
	(22, 29, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid25}, {cid27}, {cid28}])'), 
	(22, 30, 'all([{cid1}, {cid2}, {cid6}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid25}, {cid27}, {cid28}])'), 
	(22, 31, 'all([{cid1}, {cid5}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}, {cid12}, {cid13}, {cid14}, {cid15}, {cid16}, {cid17}, {cid18}, {cid19}, {cid20}, {cid21}, {cid22}, {cid23}, {cid27}, {cid28}])');
