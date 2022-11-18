INSERT INTO ailments VALUES (19, 'Lice Product', '');

INSERT INTO questions VALUES 
	(19, 1, 1, 'Are you pregnant or nursing', ''), 
	(19, 2, 1, 'Are you using product on adult or child ≥ 2 yrs old', ''), 
	(19, 3, 1, 'Are you sensitive/allergic to ragweed or chrysanthemum', ''), 
	(19, 4, 1, 'Do you have a sensitivity/allergy to mineral oil', ''), 
	(19, 5, 1, 'Would you like a product with ovocidal & pediculicide activity', ''), 
	(19, 6, 1, 'Would you like a product with pediculicide activity', ''), 
	(19, 7, 1, 'Would you like a pesticide containing product', ''), 
	(19, 8, 1, 'Would you like a pesticide-free product', ''), 
	(19, 9, 1, 'Is there significant pesticide resistance in your area', ''), 
	(19, 10, 1, 'Would you prefer a product with 10min application', ''), 
	(19, 11, 1, 'Would you prefer a product with overnight application', ''), 
	(19, 12, 1, 'Would you prefer to apply to damp hair', ''), 
	(19, 13, 1, 'Would you prefer to apply to dry hair', ''), 
	(19, 14, 1, 'Can you avoid use of a hair conditioner', '');

INSERT INTO criteria VALUES 
	(19, 1, 'Preg/Nurse', ''), 
	(19, 2, 'Pesticide', ''), 
	(19, 3, 'Pesticide-free', ''), 
	(19, 4, 'Mineral Oil', ''), 
	(19, 5, 'wet hair', ''), 
	(19, 6, 'dry hair', ''), 
	(19, 7, 'Resistance-Free', ''), 
	(19, 8, '10min', ''), 
	(19, 9, 'Overnight', ''), 
	(19, 10, 'Nits/Lice', ''), 
	(19, 11, 'Lice', ''), 
	(19, 12, 'No Conditioner', '');

INSERT INTO products VALUES 
	(19, 1, 'Nix® Crème Rinse', '', '', ''), 
	(19, 2, 'Nix Ultra® Shampoo', '', '', ''), 
	(19, 3, 'Resultz®', '', '', ''), 
	(19, 4, 'Nyda ®', '', '', ''), 
	(19, 5, 'R&C® 2In1 Shampoo + Conditioner', '', '', '');

INSERT INTO productCriteria VALUES 
	(19, 1, 'all([{cid1}, {cid2}, {cid5}, {cid7}, {cid8}, {cid10}, {cid12}])'), 
	(19, 2, 'all([{cid1}, {cid3}, {cid4}, {cid6}, {cid7}, {cid8}, {cid10}, {cid12}])'), 
	(19, 3, 'all([{cid1}, {cid3}, {cid6}, {cid7}, {cid8}, {cid11}, {cid12}])'), 
	(19, 4, 'all([{cid1}, {cid3}, {cid6}, {cid7}, {cid9}, {cid10}, {cid12}])'), 
	(19, 5, 'all([{cid1}, {cid2}, {cid6}, {cid7}, {cid8}, {cid10}, {cid12}])');
