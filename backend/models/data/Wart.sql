INSERT INTO ailments VALUES (
	12, 
	'Wart', 
	'Consult your phyisician if uncertain a lesion is a wart. Consult your physician should a wart lesion show a change in colour, appearance or pain. Consult your physician prior to treating a lesion that appears inflamed, irritated, infected or hairy. Consult your physician for warts located on the face, genitals or muscous membranes. Over-the-counter wart treatments should not be applied to moles or birth marks.'
);

INSERT INTO questions VALUES 
	(12, 1, 1, 'Do you have diabetes, immunosuppression or poor/reduced circulation', ''), 
	(12, 2, 1, 'Are you sensitive/allergic to rubber or wool', ''), 
	(12, 3, 1, 'Would you prefer cryotherapy system', ''), 
	(12, 4, 1, 'Would you prefer a topical liquid or gel', ''), 
	(12, 5, 1, 'Would you prefer a topical pad, patch or strip', ''), 
	(12, 6, 1, 'Would you like to treat a common wart', ''), 
	(12, 7, 1, 'Would you like to treat a plantar wart', '');

INSERT INTO criteria VALUES 
	(12, 1, 'Salicylic Acid', ''), 
	(12, 2, 'Cryogenic', ''), 
	(12, 3, 'Lanolin', ''), 
	(12, 4, 'Rubber', ''), 
	(12, 5, 'Pad', ''), 
	(12, 6, 'Liquid/Gel', ''), 
	(12, 7, 'Common Warts', ''), 
	(12, 8, 'Plantar', '');

INSERT INTO products VALUES 
	(12, 1, 'Compound W® Nitrofreeze™ (4+Yrs)', '', '', ''), 
	(12, 2, 'Compound W Freeze Off® Wart Removal (4+Yrs)', '', '', ''), 
	(12, 3, 'Compound W® Complete Wart Kit', '', '', ''), 
	(12, 4, 'Compound W® 2-In-1 Treatment Kit', '', '', ''), 
	(12, 5, 'Compound W Freeze Off® Plantar Wart Removal Kit', '', '', ''), 
	(12, 6, 'Compound W Freeze Off® Advanced Wart Remover', '', '', ''), 
	(12, 7, 'Compound W® One Step Strips For Kids (3+Yrs)', '', '', ''), 
	(12, 8, 'Compound W® One Step Invisible Strips', '', '', ''), 
	(12, 9, 'Compound W® One Step Plantar Foot Pads', '', '', ''), 
	(12, 10, 'Compound W® One Step Pads', '', '', ''), 
	(12, 11, 'Compound W® Fast Acting Wart Removal Gel', '', '', ''), 
	(12, 12, 'Compound W® Fast Acting Wart Removal Liquid', '', '', ''), 
	(12, 13, 'Dr. Scholl''s® Dual Action Freeze Away® Wart Remover', '', '', ''), 
	(12, 14, 'Dr. Scholl''s® Clear Away® Wart Remover', '', '', ''), 
	(12, 15, 'Dr. Scholl''s® Clear Away® Wart Remover Fast Acting Liquid', '', '', '');

INSERT INTO productCriteria VALUES 
	(12, 1, '{cid2} and {cid7} and {cid8}'), 
	(12, 2, '{cid2} and {cid7} and {cid8}'), 
	(12, 3, '{cid2} and {cid7} and {cid8}'), 
	(12, 4, '{cid1} and {cid2} and {cid6} and {cid7} and {cid8}'), 
	(12, 5, '{cid2} and {cid8}'), 
	(12, 6, '{cid2} and {cid7} and {cid8}'), 
	(12, 7, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'), 
	(12, 8, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'), 
	(12, 9, '{cid1} and {cid3} and {cid4} and {cid5} and {cid8}'), 
	(12, 10, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8}'), 
	(12, 11, '{cid1} and {cid6} and {cid7} and {cid8}'), 
	(12, 12, '{cid1} and {cid6} and {cid7} and {cid8}'), 
	(12, 13, '{cid1} and {cid2} and {cid6} and {cid7} and {cid8}'), 
	(12, 14, '{cid1} and {cid5} and {cid8}'), 
	(12, 15, '{cid1} and {cid6} and {cid7} and {cid8}');
