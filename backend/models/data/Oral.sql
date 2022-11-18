INSERT INTO ailments VALUES (24, 'Oral', '');

INSERT INTO questions VALUES 
	(24, 1, 1, 'Are you an adult > 12 years old', ''), 
	(24, 2, 1, 'Would you like a product for cold sores', ''), 
	(24, 3, 1, 'Would you like a product to relieve oral or canker pain', ''), 
	(24, 4, 1, 'Are you allergic or sensitive to anethetics', ''), 
	(24, 5, 1, 'Are you allergic or sensitive to preservatives (benzalkonium chloride or parabens)', ''), 
	(24, 6, 1, 'Would you like a homeopathic  product', ''), 
	(24, 7, 1, 'Would you prefer a product with an astringent', ''), 
	(24, 8, 1, 'Would you prefer a product with menthol', ''), 
	(24, 9, 1, 'Would you like a product with antiviral', ''), 
	(24, 10, 1, 'Would you like a product with Lysine', '');

INSERT INTO criteria VALUES 
	(24, 1, 'Kids', ''), 
	(24, 2, 'Adult', ''), 
	(24, 3, 'Cold Sore', ''), 
	(24, 4, 'Pain/Canker', ''), 
	(24, 5, 'Anesthetic', ''), 
	(24, 6, 'AntiViral', ''), 
	(24, 7, 'Lysine', ''), 
	(24, 8, 'Homeopathic', ''), 
	(24, 9, 'BAC/Paraben', ''), 
	(24, 10, 'Menthol/camphor/phenol', ''), 
	(24, 11, 'Astringent (zinc)', '');

INSERT INTO products VALUES 
	(24, 1, 'Orajel™ Natural Source Homeopathic Nighttime Teething Gel', '', '', ''), 
	(24, 2, 'Orajel™ Natural Source Homeopathic Teething Gel', '', '', ''), 
	(24, 3, 'Orajel™ Touch-Free Cold Sore Treatment', '', '', ''), 
	(24, 4, 'Orajel™ 3X Medicated Severe Toothache & Gum Relief Plus', '', '', ''), 
	(24, 5, 'Orajel™ Double Action Toothache And Gum Relief', '', '', ''), 
	(24, 6, 'Orajel™ Maximum Strength Toothache Pain Relief Gel', '', '', ''), 
	(24, 7, 'Orajel™ Maximum Toothache Relief Liquid', '', '', ''), 
	(24, 8, 'Orajel™ Maximum Strength Pm Toothache & Gum Relief Paste', '', '', ''), 
	(24, 9, 'Orajel™ Regular Strength Toothache Pain Relief Gel', '', '', ''), 
	(24, 10, 'Orajel™ Canker Sore Gel', '', '', ''), 
	(24, 11, 'Anbesol® Regular Strength Cool Mint Gel', '', '', ''), 
	(24, 12, 'Anbesol® Regular Strength Cool Mint Liquid', '', '', ''), 
	(24, 13, 'Anbesol® Cold Sore Therapy', '', '', ''), 
	(24, 14, 'Anbesol® Maximum Strength Gel', '', '', ''), 
	(24, 15, 'Anbesol® Maximum Strength Liquid', '', '', ''), 
	(24, 16, 'Kank-A® Softbrush®', '', '', ''), 
	(24, 17, 'Kank-A® Mouth Pain Liquid', '', '', ''), 
	(24, 18, 'Abreva Cream', '', '', ''), 
	(24, 19, 'Lip Clear® Lysine+® Ointment', '', '', ''), 
	(24, 20, 'Superlysine+® Ointment', '', '', ''), 
	(24, 21, 'Gum® Canker-X® Pain Relief Gel', '', '', ''), 
	(24, 22, 'Canker Sores Begone Stick™', '', '', ''), 
	(24, 23, 'Cold Sores Begone Stick™', '', '', ''), 
	(24, 24, 'Blistex Lip Ointment', '', '', '');

INSERT INTO productCriteria VALUES 
	(24, 1, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 2, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 3, 'all([{cid2}, {cid3}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 4, 'all([{cid2}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 5, 'all([{cid2}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 6, 'all([{cid2}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 7, 'all([{cid2}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 8, 'all([{cid2}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 9, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 10, 'all([{cid2}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 11, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 12, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 13, 'all([{cid1}, {cid3}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 14, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 15, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 16, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 17, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 18, 'all([{cid2}, {cid3}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 19, 'all([{cid1}, {cid3}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 20, 'all([{cid1}, {cid3}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 21, 'all([{cid2}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 22, 'all([{cid1}, {cid4}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 23, 'all([{cid1}, {cid3}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])'), 
	(24, 24, 'all([{cid1}, {cid3}, {cid5}, {cid6}, {cid7}, {cid8}, {cid9}, {cid10}, {cid11}])');
