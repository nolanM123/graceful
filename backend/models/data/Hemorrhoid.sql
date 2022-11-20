INSERT INTO ailments VALUES (
	2, 
	'Hemorrhoid', 
	'Consult your physician if hemorrhoids associated with rectal bleeding, painful defecation, dark blood, profuse bleeding or recurrent bleeding. Individuals at high risk of colorectal cancer, individuals under the age of 12 or individuals with a prolapse that must be manually replaced should consult their health care provider immediately. Seek medical attention for symptoms that persist more than 7 days. Daily fibre, avoiding straining and Sitz baths may help relieve symptoms.'
);

INSERT INTO questions VALUES 
	(2, 1, 1, 'Are you experiencing itch', ''), 
	(2, 2, 1, 'Are you experiencing inflammation', ''), 
	(2, 3, 1, 'Are you experiencing pain', ''), 
	(2, 4, 1, 'Do you prefer a cream/gel', ''), 
	(2, 5, 1, 'Do you prefer an ointment', ''), 
	(2, 6, 1, 'Do you prefer a suppository', ''), 
	(2, 7, 1, 'Would you prefer a wipes', ''), 
	(2, 8, 1, 'Would you prefer an oral product', ''), 
	(2, 9, 1, 'Would you like an astringent', ''), 
	(2, 10, 1, 'Would you like an anesthetic', ''), 
	(2, 11, 1, 'Would you like a protectant/lubricant', ''), 
	(2, 12, 1, 'Would you like a steroid', ''), 
	(2, 13, 1, 'Would you like a vasoconstrictor', ''), 
	(2, 14, 1, 'Are you allergic/sensitive to wool', ''), 
	(2, 15, 1, 'Are you allergic/sensitive to parabens or anesthetics', '');

INSERT INTO criteria VALUES 
	(2, 1, 'Pramoxine/Lidocaine', ''), 
	(2, 2, 'Zinc/Witch Hazel', ''), 
	(2, 3, 'Steroid', ''), 
	(2, 4, 'Vasoconstrictor', ''), 
	(2, 5, 'Petrolatum/Mineral/Veg', ''), 
	(2, 6, 'Paraben', ''), 
	(2, 7, 'Lanolin', ''), 
	(2, 8, 'Oral/Flav', ''), 
	(2, 9, 'Supp', ''), 
	(2, 10, 'Ointment', ''), 
	(2, 11, 'Cream/Gel', ''), 
	(2, 12, 'Wipe', '');

INSERT INTO products VALUES 
	(2, 1, 'Anusol Plus Ointment', '', '', ''), 
	(2, 2, 'Anusol Multi-Symptom Ointment', '', '', ''), 
	(2, 3, 'Anusol Cleansing Wipes', '', '', ''), 
	(2, 4, 'Anusol Plus Suppository', '', '', ''), 
	(2, 5, 'Anusol Multi-Symptom Suppository', '', '', ''), 
	(2, 6, 'Preparationh Soothing Relief Cleansing & Cooling Wipes', '', '', ''), 
	(2, 7, 'Preparationh Soothing Relief Anti-Itch Cream', '', '', ''), 
	(2, 8, 'Preparationh Rapid Relief With Lidocaine Cream', '', '', ''), 
	(2, 9, 'Preparartionh Rapid Relief Totables Wipes', '', '', ''), 
	(2, 10, 'Preparationh Ointment', '', '', ''), 
	(2, 11, 'Preparationh Multi-Symptom Pain Relief Cream', '', '', ''), 
	(2, 12, 'Preparationh Cooling Gel', '', '', ''), 
	(2, 13, 'Preparationh Anti-Itch Cream', '', '', ''), 
	(2, 14, 'Preparationh Suppositories', '', '', ''), 
	(2, 15, 'Preparationh Totables', '', '', ''), 
	(2, 16, 'Preparationh Medicated Wipes', '', '', ''), 
	(2, 17, 'Preparationh Medicated Wipes For Women', '', '', ''), 
	(2, 18, 'Tucks® Medicated Cooling Pads', '', '', ''), 
	(2, 19, 'Hemovel', '', '', ''), 
	(2, 20, 'Venixxa', '', '', '');

INSERT INTO productCriteria VALUES 
	(2, 1, '{cid1} and {cid2} and {cid5} and {cid6} and {cid7} and {cid10}'), 
	(2, 2, '{cid2} and {cid5} and {cid6} and {cid7} and {cid10}'), 
	(2, 3, '{cid2} and {cid6} and {cid7} and {cid12}'), 
	(2, 4, '{cid1} and {cid2} and {cid5} and {cid6} and {cid7} and {cid9}'), 
	(2, 5, '{cid2} and {cid5} and {cid6} and {cid7} and {cid9}'), 
	(2, 6, '{cid2} and {cid6} and {cid7} and {cid12}'), 
	(2, 7, '{cid3} and {cid5} and {cid6} and {cid7} and {cid11}'), 
	(2, 8, '{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid11}'), 
	(2, 9, '{cid1} and {cid4} and {cid6} and {cid7} and {cid12}'), 
	(2, 10, '{cid4} and {cid5} and {cid6} and {cid7} and {cid10}'), 
	(2, 11, '{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid11}'), 
	(2, 12, '{cid2} and {cid4} and {cid5} and {cid6} and {cid7} and {cid11}'), 
	(2, 13, '{cid3} and {cid5} and {cid6} and {cid7} and {cid11}'), 
	(2, 14, '{cid4} and {cid5} and {cid6} and {cid7} and {cid9}'), 
	(2, 15, '{cid2} and {cid6} and {cid7} and {cid12}'), 
	(2, 16, '{cid2} and {cid6} and {cid7} and {cid12}'), 
	(2, 17, '{cid2} and {cid6} and {cid7} and {cid12}'), 
	(2, 18, '{cid2} and {cid6} and {cid7}'), 
	(2, 19, '{cid6} and {cid7} and {cid8}'), 
	(2, 20, '{cid6} and {cid7} and {cid8}');
