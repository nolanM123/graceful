INSERT INTO ailments VALUES 
	(
		19, 
		'Lice Product', 
		'Consult your heath care provider for recurrent head lice or lice unresponsive to non-prescription therapy. Treatment with head lice products should be repeated after 7 days. Avoid close contact and sharing personal items (clothing, combs, bedding) with an infected individual.'
	);

INSERT INTO questions VALUES 
	(
		19, 
		1, 
		1, 
		'Are you pregnant or nursing', 
		'Most lice products are considered compatible with pregnancy and nursing but caution should still be used. Avoid use of Resultz as little data is available for use in pregnant or nursing women.'
	), 
	(
		19, 
		2, 
		1, 
		'Are you using product on adult or child ≥ 2 yrs old', 
		'Lice products are not recommended for use in children less than 2 years old. Avoid applying products to eyes or mucous membranes.'
	), 
	(
		19, 
		3, 
		1, 
		'Are you sensitive/allergic to ragweed or chrysanthemum', 
		'Lice products containing permethrin should be avoided by individuals with sensitivity or allergies to ragweed or chrysanthemum plants.'
	), 
	(
		19, 
		4, 
		1, 
		'Do you have a sensitivity/allergy to mineral oil', 
		'Avoid use of some lice products if you are sensitive or allergic to mineral oil.'
	), 
	(
		19, 
		5, 
		1, 
		'Would you like a product with ovocidal & pediculicide activity', 
		'Ovocidal products kill the nits/eggs of head lice and pediculicide products kill adult lice to reduce infestations.'
	), 
	(
		19, 
		6, 
		1, 
		'Would you like a product with pediculicide activity', 
		'Pediculicide products kill lice and reduce infestations but may not eliminate eggs/nits.'
	), 
	(
		19, 
		7, 
		1, 
		'Would you like a pesticide containing product', 
		'Some products reduce lice and/or nit infestations though use of pesticides and are recommended as first-line therapy.'
	), 
	(
		19, 
		8, 
		1, 
		'Would you like a pesticide-free product', 
		'Some products reduce lice and or nit/egg infectations with pesticide-free, non-toxic ingredients that sufficate or dehydrate the pests.'
	), 
	(
		19, 
		9, 
		1, 
		'Is there significant pesticide resistance in your area', 
		'Head lice may develop resistance to pesticide products leading to potential treatment failure with the use of pesticide containing products.'
	), 
	(
		19, 
		10, 
		1, 
		'Would you prefer a product with 10min application', 
		'Some products require a 10min application period of treatment before washing out of hair.'
	), 
	(
		19, 
		11, 
		1, 
		'Would you prefer a product with overnight application', 
		'Some products require an 8 hour or overnight application period of treatment before washing out of hair. Such products may stain linens.'
	), 
	(
		19, 
		12, 
		1, 
		'Would you prefer to apply to damp hair', 
		'Some head lice products are best used when applied to towel dried hair and then washed out.'
	), 
	(
		19, 
		13, 
		1, 
		'Would you prefer to apply to dry hair', 
		'Some head lice products are best applied to dry hair and washed out following a treatment period.'
	), 
	(
		19, 
		14, 
		1, 
		'Can you avoid use of a hair conditioner', 
		'Conditioner or shampoo with conditioner can reduce effectiveness of pesticides and are not compatible with some head lice products.'
	);

INSERT INTO criteria VALUES 
	(19, 1, 'Preg/Nurse', 'not {qid1}'), 
	(19, 2, 'Pesticide', '{qid2} and {qid7} and not ({qid3} or {qid8} or {qid9})'), 
	(19, 3, 'Pesticide-free', '{qid2} and {qid8} and not {qid7}'), 
	(19, 4, 'Mineral Oil', 'not {qid4}'), 
	(19, 5, 'wet hair', '{qid12} and not {qid13}'), 
	(19, 6, 'dry hair', '{qid13} and not {qid12}'), 
	(19, 7, 'Resistance-Free', 'not {qid9}'), 
	(19, 8, '10min', '{qid10} and not {qid11}'), 
	(19, 9, 'Overnight', '{qid11} and not {qid10}'), 
	(19, 10, 'Nits/Lice', '{qid5} and not {qid6}'), 
	(19, 11, 'Lice', '{qid6} and not {qid5}'), 
	(19, 12, 'No Conditioner', '{qid14}');

INSERT INTO products VALUES 
	(19, 1, 'Nix® Crème Rinse', '', '', ''), 
	(19, 2, 'Nix Ultra® Shampoo', '', '', ''), 
	(19, 3, 'Resultz®', '', '', ''), 
	(19, 4, 'Nyda ®', '', '', ''), 
	(19, 5, 'R&C® 2In1 Shampoo + Conditioner', '', '', '');

INSERT INTO productCriteria VALUES 
	(19, 1, '{cid2} and {cid5} and {cid7} and {cid8} and {cid10} and {cid12}'), 
	(19, 2, '{cid3} and {cid4} and {cid6} and {cid8} and {cid10}'), 
	(19, 3, '{cid1} and {cid3} and {cid6} and {cid8} and {cid11}'), 
	(19, 4, '{cid1} and {cid3} and {cid6} and {cid9} and {cid10}'), 
	(19, 5, '{cid2} and {cid6} and {cid7} and {cid8} and {cid10} and {cid12}');
