INSERT INTO ailments VALUES 
	(
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
	(
		13, 
		1, 
		'Tinactin® Athlete''s Foot Cream', 
		'https://www.tinactin.com/tinactin-products/tinactin-athlete-foot-cream', 
		'This odorless cream is clinically proven to cure most athlete''s foot and prevent it from recurring when used daily.', 
		'https://www.tinactin.com/sites/g/files/vrxlpx39616/files/tinactin-logo_1.png'
	), 
	(
		13, 
		2, 
		'Tinactin® Athlete''s Foot Liquid Spray', 
		'https://www.tinactin.com/tinactin-products/tinactin-athlete-foot-liquid-spray', 
		'A formula clinically proven to cure most athlete''s foot and prevent it from recurring when used daily in a quick, convenient, no-touch application.', 
		'https://www.tinactin.com/sites/g/files/vrxlpx39616/files/tinactin-logo_1.png'
	), 
	(
		13, 
		3, 
		'Tinactin® Athlete''s Foot Powder Spray', 
		'https://www.tinactin.com/tinactin-products/tinactin-athlete-foot-powder-spray', 
		'A formula clinically proven to cure most athlete''s foot and prevent it from recurring when used daily in a quick, convenient, no-touch application.', 
		'https://www.tinactin.com/sites/g/files/vrxlpx39616/files/tinactin-logo_1.png'
	), 
	(
		13, 
		4, 
		'Tinactin® Athlete''s Foot Deodorant Powder Spray', 
		'https://www.tinactin.com/tinactin-products/tinactin-athlete-foot-deodrant-spray', 
		'An odor-fighting formula clinically proven to cure most athlete''s foot and prevent it from recurring when used daily in a quick, convenient, no-touch application.', 
		'https://www.tinactin.com/sites/g/files/vrxlpx39616/files/tinactin-logo_1.png'
	), 
	(
		13, 
		5, 
		'Tinactin®Athlete''s Foot Super Absorbent Powder', 
		'https://www.tinactin.com/', 
		'', 
		'https://www.tinactin.com/sites/g/files/vrxlpx39616/files/tinactin-logo_1.png'
	), 
	(
		13, 
		6, 
		'Tinactin® Jock Itch Cream', 
		'', 
		'', 
		'https://www.tinactin.com/sites/g/files/vrxlpx39616/files/tinactin-logo_1.png'
	), 
	(
		13, 
		7, 
		'Tinactin® Jock Itch Powder Spray', 
		'https://www.tinactin.com/tinactin-products/tinactin-jock-itch-cream', 
		'An odorless cream clinically proven to cure most jock itch when used as directed.', 
		'https://www.tinactin.com/sites/g/files/vrxlpx39616/files/tinactin-logo_1.png'
	), 
	(
		13, 
		8, 
		'Micatin Antifungal Cream', 
		'https://micatin.ca/en/products.php', 
		'With a proven combination of antifungal and antibacterial agents, Micatin antifungal cream not only kills the tinea fungus, but also helps prevent the growth of secondary skin infections.', 
		'https://micatin.ca/en/images/logo.png'
	), 
	(
		13, 
		9, 
		'Micatin Antifungal Spray', 
		'https://micatin.ca/en/products.php', 
		'Available in a convenient spray, Micatin cures while it cools. Apply twice daily to the affected area for quick relief and effective ongoing treatment.', 
		'https://micatin.ca/en/images/logo.png'
	), 
	(
		13, 
		10, 
		'Polysporin® Complete Ointment', 
		'https://www.polysporin.ca/products/complete-antibiotic-ointment', 
		'Our most advanced antibiotic ointment
HEAL-FAST® Formula provides infection protection to speed healing
Contains lidocaine hydrochloride for fast-acting pain relief
Best suited for minor cuts, scrapes and burns
Soothing antibiotic ointment forms a protective coating
#1 Doctor and Pharmacist Recommended anti-infective brand†
Non-staining & odourless
3 antibiotics plus lidocaine hydrochloride
Available in 15 g and 30 g tubes', 
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
	), 
	(
		13, 
		11, 
		'Polysporin® Triple Antibiotic Ointment', 
		'https://www.polysporin.ca/products/triple-antibiotic-ointment', 
		'HEAL-FAST® Formula provides infection protection to speed healing
Best suited for minor cuts, scrapes and burns
Soothing ointment forms protective coating
#1 Doctor and Pharmacist Recommended anti-infective brand†
Non-stinging & odourless
3 antibiotics
Available in 15 g and 30 g tubes
Appropriate for all ages', 
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
	), 
	(
		13, 
		12, 
		'Polysporin® Plus Pain Relief Cream', 
		'https://www.polysporin.ca/products/plus-pain-relief-cream', 
		'HEAL-FAST® Formula provides infection protection to speed healing
Contains lidocaine hydrochloride for fast-acting topical pain relief
Best suited for minor cuts, scrapes and burns
Non-greasy cream absorbs quickly to allow drying
#1 Doctor and Pharmacist Recommended anti-infective brand†
Odourless
2 Antibiotics plus lidocaine hydrochloride
Available in 15 g and 30 g tubes', 
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
	), 
	(
		13, 
		13, 
		'Polysporin® Kids Cream', 
		'https://www.polysporin.ca/products/antibiotic-cream-for-kids', 
		'HEAL-FAST® Formula provides infection protection to speed healing
Contains lidocaine hydrochloride for fast-acting pain relief
Best suited for minor cuts, scrapes and burns
Non-greasy cream absorbs quickly to allow drying
#1 Doctor and Pharmacist Recommended anti-infective brand†
Non-staining & odourless
2 Antibiotics plus lidocaine hydrochloride
Available in 15 g and 30 g tubes
Appropriate for all ages', 
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
	), 
	(
		13, 
		14, 
		'Polysporin® Original Antibiotic Ointment', 
		'https://www.polysporin.ca/products/antibiotic-original-ointment', 
		'HEAL-FAST® Formula provides infection protection to speed healing
Best suited for minor cuts, scrapes and burns
Soothing antibiotic ointment forms protective coating
#1 Doctor and Pharmacist Recommended anti-infective brand†
Non-stinging & odourless
2 Antibiotics
Available in 15 g and 30 g tubes', 
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
	), 
	(
		13, 
		15, 
		'Polysporin® Original Antibiotic Cream', 
		'https://www.polysporin.ca/products/antibiotic-cream', 
		'HEAL-FAST® Formula provides infection protection to speed healing
Best suited for minor cuts, scrapes and burns
Non-greasy antibiotic cream absorbs quickly to allow drying
#1 Doctor and Pharmacist Recommended anti-infective brand†
Non-stinging & odourless
2 antibiotics
Available in 15 g and 30 g tubes', 
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
	), 
	(
		13, 
		16, 
		'Poly To Go® First Aid Antiseptic / Pain Relieving Spray', 
		'https://www.polysporin.ca/', 
		'', 
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png'
	), 
	(
		13, 
		17, 
		'Emtrix®', 
		'https://emtrix.ca/en', 
		'', 
		'https://emtrix.ca/img/emtrix.svg'
	), 
	(
		13, 
		18, 
		'Fungi Nail® Pen', 
		'https://funginail.com/products/fungi-nail-toe-pen/', 
		'Fungi-Nail® Pen goes to work on your toe fungus, eliminating fungal infections on cuticles, around nail edges and tips, and between the toes where if left unchecked it can spread. Fungi-Nail® Pen is formulated with Tolnaftate 1%, a clinically proven antifungal ingredient that cures and prevents fungal infections on the skin around your nail. Plus, it has aloe and tea tree oil to help restore skin health.', 
		'https://funginail.com/wp-content/uploads/2019/05/funginail-logo.jpg'
	), 
	(
		13, 
		19, 
		'Fungi Nail® Liquid', 
		'https://funginail.com/products/fungi-nail-toe-solution/', 
		'Fungi-Nail® Anti-Fungal Liquid is a topical anti-fungal treatment that is ideal for treating toe and foot fungus. It eliminates fungal infections on the skin around cuticles, nail edges, nail tips, and between the toes.', 
		'https://funginail.com/wp-content/uploads/2019/05/funginail-logo.jpg'
	), 
	(
		13, 
		20, 
		'Fungi Nail® Ointment', 
		'https://funginail.com/products/fungi-nail-toe-ointment/', 
		'Fungi-Nail® Ointment is a unique product formulated with tolnaftate, an active ingredient clinically proven to cure and prevent fungal infections. It is formulated with 5 natural oils to help the skin around your toes feel and look better in a non-alcohol formula so you don''t have to worry about alcohol stinging. Fungi-Nail® Ointment eliminates fungal infections on skin around cuticles, nail edges, nail tips, and between the toes and stops it from spreading. This product contains the maximum strength available over-the-counter.  It provides lasting protection as it moisturizes and heals irritated skin while relieving the burning, itching, and cracking associated with athlete''s foot and toe fungus.', 
		'https://funginail.com/wp-content/uploads/2019/05/funginail-logo.jpg'
	), 
	(
		13, 
		21, 
		'Bactine® Max Pain Relieving Cleansing Spray', 
		'https://bactine.com/product/bactine-max-pain-relieving-cleansing-spray-liquid/', 
		'Bactine® MAX Pain Relieving Cleansing Spray & Liquid takes the "ouch" out of cuts, scrapes and minor burns and kills 99.9% of germs* at the same time. Bactine® MAX Pain Relieving Cleansing Spray and Liquid have 4% Lidocaine plus a max strength antiseptic. This easy-to-use spray is America''s #1 selling antiseptic plus pain reliever. And it does''t sting.', 
		'https://bactine.com/wp-content/uploads/2021/05/bactine-logo-positive.svg'
	);

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
