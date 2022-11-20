INSERT INTO ailments VALUES (
	13, 
	'Anti-Infection Skin', 
	'Consult your phyisician if experiencing an infection of unknown or unclear cause. Immunocompromised individuals or those requiring systemic or oral therapy should consult their physician. Consult your physician if you respond poorly or are intolerant of topical therapy.  Consult your physician if experiencing severe, extensive, dissabilitating or inflammatory skin disease. Topical non-prescription antifungal therapy may require 2-4 weeks for benefits while treatment of nail fungal infections may require 6-12 weeks. Non-prescription topical therapy for bacterial infections should be limited to only a few days.'
);

INSERT INTO questions VALUES 
	(
		13, 
		1, 
		1, 
		'Are you trying to prevent a bacterial skin infection', 
		'Non-prescription therapy with polymyxin B and bacitracin/gramicidin should be limited to small recent lesions in healthy individuals to prevent bacterial infection.'
	), 
	(
		13, 
		2, 
		1, 
		'Would you like pain relief', 
		'Some topical antiseptic products are formulated in combination with anesthetics.'
	), 
	(
		13, 
		3, 
		1, 
		'Are you sensitive or allergic to anesthetics', 
		'Anesthetics like benzocaine or lidocaine may be present in some topical products to provide pain relief. Avoid if you are allergic or sensitive to such products.'
	), 
	(
		13, 
		4, 
		1, 
		'Do you have a fungal skin infection', 
		'Non-prescription topical products are available to treat jock itch, athelete"s foot, ringworm and oher fungal skin infections.'
	), 
	(
		13, 
		5, 
		1, 
		'Do you have a fungal nail infection', 
		'Non-prescription antifungal lacquer, liquid or ointment are available for minor fungal nail infection treatment. Fungal nail infections often require prescription and/or systemic therapy.'
	), 
	(
		13, 
		6, 
		1, 
		'Are you diabetic or immunocompromised', 
		'Such conditions place individuals at an increased risk of severe bacterial or fungal infection and should be treated with physician involvement.'
	), 
	(
		13, 
		7, 
		1, 
		'Do you prefer a cream, lotion or ointment', 
		'Generally considered more effective than sprays and powders since can be rubbed into skin. Creams and ointments may be more occulusive than lotions or powders and possibly lead to maceration. Lotions and powders prefered for intertriginous areas.'
	), 
	(
		13, 
		8, 
		1, 
		'Do you prefer a spray or powder', 
		'Powders/sprays often used as adjunctive therapy as considered less effective. Powders may worsen skin maceration. Powders prefered for intertriginous areas as may help absorb skin perspiration and prevent rubbing. Flammable if exposed to heat or flame.'
	), 
	(
		13, 
		9, 
		1, 
		'Do you prefer an azole antifungal', 
		'Azoles (clotrimazole, ketoconazole, miconazole) generally more effective than tolnaftate.'
	), 
	(
		13, 
		10,
		1,
		'Do you prefer a tolnaftate or acid antifungal', 
		'Tolnaftate often used in adjunctive therapy and available as powder or spray products.'
	);

INSERT INTO criteria VALUES 
	(13, 1, 'Azole', '{qid9} and {qid4} and not ({qid6} or {qid5} or {qid10})'), 
	(13, 2, 'Toln-skin', '{qid4} and {qid10} and not ({qid6} or {qid9} or {qid1})'), 
	(13, 3, 'Toln-nail', '{qid5} and {qid10} and not ({qid6} or {qid9} or {qid1})'), 
	(13, 4, 'Undecylenic/lactic acid', '{qid5} and not ({qid6} or {qid4} or {qid1})'), 
	(13, 5, 'Antibiotic', '{qid1} and not ({qid4} or {qid5} or {qid6})'), 
	(13, 6, 'Anesthetic', '{qid2} and not {qid3}'), 
	(13, 7, 'Antiseptic', '{qid1} and not ({qid4} or {qid5} or {qid6})'), 
	(13, 8, 'Pramoxine', '{qid2}'), 
	(13, 9, 'Cream/Ointment', '{qid7} and not {qid8}'), 
	(13, 10, 'Spray/Powder', '{qid8} and not {qid7}');

INSERT INTO products VALUES 
	(13, 1, 'Tinactin® Athlete''s Foot Cream', '', '', ''), 
	(13, 2, 'Tinactin® Athlete''s Foot Liquid Spray', '', '', ''), 
	(13, 3, 'Tinactin® Athlete''s Foot Powder Spray', '', '', ''), 
	(13, 4, 'Tinactin® Athlete''s Foot Deodorant Powder Spray', '', '', ''), 
	(13, 5, 'Tinactin®Athlete''s Foot Super Absorbent Powder', '', '', ''), 
	(13, 6, 'Tinactin® Jock Itch Cream', '', '', ''), 
	(13, 7, 'Tinactin® Jock Itch Powder Spray', '', '', ''), 
	(13, 8, 'Micatin Antifungal Cream', '', '', ''), 
	(13, 9, 'Micatin Antifungal Spray', '', '', ''), 
	(13, 10, 'Polysporin® Complete Ointment', '', '', ''), 
	(13, 11, 'Polysporin® Triple Antibiotic Ointment', '', '', ''), 
	(13, 12, 'Polysporin® Plus Pain Relief Cream', '', '', ''), 
	(13, 13, 'Polysporin® Kids Cream', '', '', ''), 
	(13, 14, 'Polysporin® Original Antibiotic Ointment', '', '', ''), 
	(13, 15, 'Polysporin® Original Antibiotic Cream', '', '', ''), 
	(13, 16, 'Poly To Go® First Aid Antiseptic / Pain Relieving Spray', '', '', ''), 
	(13, 17, 'Emtrix®', '', '', ''), 
	(13, 18, 'Fungi Nail® Pen', '', '', ''), 
	(13, 19, 'Fungi Nail® Liquid', '', '', ''), 
	(13, 20, 'Fungi Nail® Ointment', '', '', ''), 
	(13, 21, 'Bactine® Max Pain Relieving Cleansing Spray', '', '', '');

INSERT INTO productCriteria VALUES 
	(13, 1, '{cid2} and {cid9}'), 
	(13, 2, '{cid2} and {cid10}'), 
	(13, 3, '{cid2} and {cid10}'), 
	(13, 4, '{cid2} and {cid10}'), 
	(13, 5, '{cid2} and {cid10}'), 
	(13, 6, '{cid2} and {cid9}'), 
	(13, 7, '{cid2} and {cid10}'), 
	(13, 8, '{cid1} and {cid9}'), 
	(13, 9, '{cid1} and {cid10}'), 
	(13, 10, '{cid5} and {cid6} and {cid9}'), 
	(13, 11, '{cid5} and {cid9}'), 
	(13, 12, '{cid5} and {cid6} and {cid9}'), 
	(13, 13, '{cid5} and {cid6} and {cid9}'), 
	(13, 14, '{cid5} and {cid9}'), 
	(13, 15, '{cid5} and {cid9}'), 
	(13, 16, '{cid7} and {cid8} and {cid10}'), 
	(13, 17, '{cid4}'), 
	(13, 18, '{cid4}'), 
	(13, 19, '{cid3}'), 
	(13, 20, '{cid3} and {cid9}'), 
	(13, 21, '{cid6} and {cid7}');
