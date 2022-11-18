INSERT INTO ailments VALUES (1, 'Dry Mouth', '');

INSERT INTO questions VALUES 
	(1, 1, 1, 'Would you like a saliva substitute'), 
	(1, 2, 1, 'Would you like a saliva stimulator'), 
	(1, 3, 1, 'Would you like an mucous thinner'), 
	(1, 4, 1, 'Are you sensitive/allergic to parabens'), 
	(1, 5, 1, 'Do you prefer a product for "as needed use"'), 
	(1, 6, 1, 'Do you prefer a long-acting or overnight product'), 
	(1, 7, 1, 'Do you prefer a spray'), 
	(1, 8, 1, 'Do you prefer a mouth wash'), 
	(1, 9, 1, 'Do you prefer a gel'), 
	(1, 10, 1, 'Do you prefer lozenges or gum'), 
	(1, 11, 1, 'Do you prefer an oral patch');

INSERT INTO criteria VALUES 
	(1, 1, 'Xylitol', ''), 
	(1, 2, 'Saliva Substitute', ''), 
	(1, 3, 'PRN', ''), 
	(1, 4, 'Overnight', ''), 
	(1, 5, 'Parabens', ''), 
	(1, 6, 'Yerba Santa', ''), 
	(1, 7, 'Spray', ''), 
	(1, 8, 'Wash', ''), 
	(1, 9, 'Gel', ''), 
	(1, 10, 'Lozenge/Gum', ''), 
	(1, 11, 'Patch', '');

INSERT INTO products VALUES 
	(1, 1, 'Biotène Dry Mouthmoisturizing Mouthwash', '', '', ''), 
	(1, 2, 'Biotène Dry Mouthmoisturizing Spray', '', '', ''), 
	(1, 3, 'Biotène Dry Mouth Oralbalance Moisturizing Gel', '', '', ''), 
	(1, 4, 'Biotène® Dry Mouth Lozenges', '', '', ''), 
	(1, 5, 'Moi-Stir Spray', '', '', ''), 
	(1, 6, 'Mouth Kote Dry Mouth Spray', '', '', ''), 
	(1, 7, 'Xylimelts', '', '', ''), 
	(1, 8, 'X-Pur Gum', '', '', ''), 
	(1, 9, 'X-Pur Pastille', '', '', ''), 
	(1, 10, 'Dentek™ Oramoist® Dry Mouth Relief Patch', '', '', '');

INSERT INTO productCriteria VALUES 
	(1, 1, 'all([{cid1}, {cid2}, {cid3}, {cid5}, {cid6}, {cid8}])'), 
	(1, 2, 'all([{cid1}, {cid2}, {cid3}, {cid5}, {cid6}, {cid7}])'), 
	(1, 3, 'all([{cid1}, {cid2}, {cid4}, {cid5}, {cid6}, {cid9}])'), 
	(1, 4, 'all([{cid1}, {cid2}, {cid3}, {cid5}, {cid6}, {cid10}])'), 
	(1, 5, 'all([{cid1}, {cid2}, {cid3}, {cid5}, {cid6}, {cid7}])'), 
	(1, 6, 'all([{cid1}, {cid2}, {cid3}, {cid5}, {cid6}, {cid7}])'), 
	(1, 7, 'all([{cid1}, {cid2}, {cid4}, {cid5}, {cid6}, {cid11}])'), 
	(1, 8, 'all([{cid1}, {cid2}, {cid3}, {cid5}, {cid6}, {cid10}])'), 
	(1, 9, 'all([{cid1}, {cid2}, {cid3}, {cid5}, {cid6}, {cid10}])'), 
	(1, 10, 'all([{cid1}, {cid2}, {cid4}, {cid5}, {cid6}, {cid11}])');
