INSERT INTO ailments VALUES 
	(
		11, 
		'Dry Skin', 
		'Consult your phyisician if suspect dry skin/xeroderma resulting from medication or medical condition. Consult your physician if severe itching and inflammation are present and when flexural areas, neck, feet or large surface areas are involved. Consult your physician if signs of infection present or dry skin affecting a child less than 2 years old. Consult your physician if less than 50% improvement or worsening dry skin following 7-10 days of non-prescription therapy.'
	);

INSERT INTO questions VALUES 
	(
		11, 
		1, 
		1, 
		'Do you have itchy skin', 
		'Products with hydrocortisone, colloidal oat, zinc, pramoxine, zinc,calamine and menthol can help sooth itchy skin.'
	), 
	(
		11, 
		2, 
		1, 
		'Do you have mild dry skin', 
		'Non-prescription dry skin products may require 3-4 daily applications for 7-10 days for relief. May consider use of more than 1 product formulation or product with urea/lactic acid for severe dry skin.'
	), 
	(
		11, 
		3, 
		1, 
		'Do you have severe dry skin', 
		'severe dry skin may require products with urea or other humectants which help draw water back into the skin. Should select humectant along with this option.'
	), 
	(
		11, 
		4, 
		1, 
		'Do you have acne or acne-prone skin', 
		'Occlusive products or ointments may block skin pores and worsen acne. Such products should be avoided in those prone to acne. Use of non-comedogenic formulations is preferred in the presence of acne. ***Note, may limit options available***'
	), 
	(
		11, 
		5, 
		1, 
		'Do you have sensitive skin', 
		'Those with sensitive skin should consider more gentle or hypoallergic options to treat dry skin. ***Note, may limit options available***'
	), 
	(
		11, 
		6, 
		1, 
		'Are you allergic or sensitive to fragrances', 
		'Avoid fragrances or select fragrance-free products should you have sensitivity or irritation when exposed to fragrances. ***Note, may limit options available***'
	), 
	(
		11, 
		7, 
		1, 
		'Are you allergic or sensitive to lanolin', 
		'Those who are sensitive to wool or experience irritation with use of wool products should avoid products which contain lanolin. ***Note, may limit options available***'
	), 
	(
		11, 
		8, 
		1, 
		'Are you allergic or sensitive to parabens', 
		'Those who are sensitive or experience irritation with parabens should select paraben-free products. ***Note, may limit options available***'
	), 
	(
		11, 
		9, 
		1, 
		'Do you need an emollient', 
		'Emollients smoothen and soften the skin. Usually combined with occlusive to decrease water loss.'
	), 
	(
		11, 
		10, 
		1, 
		'Do you need a humectant', 
		'Humectants help retain and draw moisture. Should be used in combination with occlusive. Urea and lactic acid should be used for severe dry skin and help remove dead skin. May cause stinging/burning on open lesions.'
	), 
	(
		11, 
		11, 
		1, 
		'Do you need an occlusive', 
		'Occlusives block skin surface and prevent further water loss. Generally not as well tolerated on facial skin or in hot/humid climate due to greasy feel. May be less cosmetically appealing and more difficult to spread/remove.'
	), 
	(
		11, 
		12, 
		1, 
		'Do you need a bath oil', 
		'Bath oils provide oil layer on skin and prevent water evaporation. Best applied after bathing. Can increase risk of slipping and falls if applied to bath water or feet.'
	), 
	(
		11, 
		13, 
		1, 
		'Would you like a colloidal oat product', 
		'Colloidal oat sooth itchy dry skin and can help restore barrier properties of the skin. May leave skin with an oily feel after application. ***Colloidal oat are a type of bath oil, please select both***'
	), 
	(
		11, 
		14, 
		1, 
		'Would you prefer a cream', 
		'Creams help prevent moisture evaporation and provide better barrier protection than lotions. More easily applied, spread and cosmetically appealing than ointments but shorter acting and less effective.'
	), 
	(
		11, 
		15, 
		1, 
		'Would you prefer an ointment/balm', 
		'Ointments provide most barrier protection and minimize water loss. Generally longer acting but greasy feel, difficult to spread and less cosmetically appealing. Not ideal for facial skin.'
	), 
	(
		11, 
		16, 
		1, 
		'Would you prefer a lotion', 
		'Lotions are easiest to apply/spread and well absorbed by skin. Cosmetically appealing but shorter acting than creams and ointments.'
	);

INSERT INTO criteria VALUES 
	(11, 1, 'Occlusive', '{qid11}'), 
	(11, 2, 'Humectant', '{qid10}'), 
	(11, 3, 'Emollient', '{qid9}'), 
	(11, 4, 'Bath Oil', '{qid12}'), 
	(11, 5, 'Colloidal Oat', '{qid13} and {qid1}'),
	(11, 6, 'Urea', '{qid3} and not {qid2}'), 
	(11, 7, 'Lanolin', 'not {qid7}'), 
	(11, 8, 'Paraben', 'not {qid8}'), 
	(11, 9, 'steroid', '{qid1} and {qid3} and not {qid2}'), 
	(11, 10, 'Itch', '{qid1}'), 
	(11, 11, 'Cream', '{qid14} and not ({qid15} or {qid16})'), 
	(11, 12, 'Ointment', '{qid15} and not ({qid14} or {qid16})'), 
	(11, 13, 'Lotion', '{qid16} and not ({qid14} or {qid15})'), 
	(11, 14, 'Balm', '{qid15} and not ({qid14} or {qid16})'), 
	(11, 15, 'Hypoallergic', 'not {qid5}'), 
	(11, 16, 'Fragrancy-Free', 'not {qid6}'), 
	(11, 17, 'Non-comedogenic', 'not {qid4}'),
	(11, 18, 'Colloidal Oat', 'not {qid13}'),
	(11, 19, 'Urea', 'not {qid3}'),
	(11, 20, 'steroid', 'not {qid3}');

INSERT INTO products VALUES 
	(
		11,
		1,
		'Polysporin  Eczema Essentials  Flare-Up Relief Cream',
		'https://www.polysporin.ca/products/eczema-essentials-flare-up-cream',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		2,
		'Polysporin  Eczema Essentials  1% Hydrocortisone Anti-Itch Cream',
		'https://www.polysporin.ca/products/eczema-essentials-hydrocortisone-anti-itch-cream',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid8} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		3,
		'Polysporin  1% Hydrocortisone Anti-Itch Cream',
		'https://www.polysporin.ca/products/hydrocortisone-anti-itch-cream',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid8} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		4,
		'Polysporin  Itch Relief Lotion',
		'https://www.polysporin.ca/products/itch-relief-lotion',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid2} and {cid5} and {cid6} and {cid8} and {cid9} and {cid10} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		5,
		'Polysporin  Cracked Skin Healing Ointment',
		'https://www.polysporin.ca/products/cracked-skin-healing-ointment',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid12} and {cid15} and {cid17}'
	),
	(
		11,
		6,
		'Polysporin  Cracked Skin Healing Balm',
		'https://www.polysporin.ca/products/cracked-skin-healing-balm',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid14} and {cid17}'
	),
	(
		11,
		7,
		'Polysporin  Visible Lip Health Overnight Renewal Therapy',
		'https://www.polysporin.ca/products/visible-lip-health-overnight-renewal',
		'',
		'https://www.polysporin.ca/sites/polysporin_ca/files/polysporin_logo_0.png',
		'{cid1} and {cid3} and {cid5} and {cid6} and {cid7} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		8,
		'Goldbond Eczema Relief 1% Hydrocortisone Cream',
		'https://www.goldbond.ca/en/products/eczema-relief-1-hydrocortisone-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid9} and {cid11} and {cid17}'
	),
	(
		11,
		9,
		'Goldbond Anti-Itch Cream',
		'https://www.goldbond.ca/en/products/anti-itch-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid3} and {cid5} and {cid6} and {cid9} and {cid10} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		10,
		'Goldbond Anti-Itch Lotion',
		'https://www.goldbond.ca/en/products/anti-itch-lotion#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid5} and {cid6} and {cid9} and {cid10} and {cid13} and {cid15} and {cid17}'
	),
	(
		11,
		11,
		'Goldbond Pain Relieving Foot Cream',
		'https://www.goldbond.ca/en/products/pain-relieving-foot-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid3} and {cid5} and {cid6} and {cid9} and {cid10} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		12,
		'Goldbond Moisturizing Foot Cream',
		'https://www.goldbond.ca/en/products/moisturizing-foot-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid3} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		13,
		'Goldbond Extra-Strength Body Lotion',
		'https://www.goldbond.ca/en/products/extra-strength-body-lotion#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid3} and {cid5} and {cid6} and {cid9} and {cid10} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		14,
		'Goldbond Original Strength Body Lotion',
		'https://www.goldbond.ca/en/products/original-strength-body-lotion#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid3} and {cid5} and {cid6} and {cid9} and {cid10} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		15,
		'Goldbond Diabetic''s Dry Skin Relief Foot Cream',
		'https://www.goldbond.ca/en/products/diabetics-dry-skin-relief-foot-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid11} and {cid17}'
	),
	(
		11,
		16,
		'Goldbond Eczema Relief Skin Protectant Lotion',
		'https://www.goldbond.ca/en/products/eczema-relief-skin-proctectant-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid17}'
	),
	(
		11,
		17,
		'Goldbond Eczema Relief Skin Protectant Cream',
		'https://www.goldbond.ca/en/products/eczema-relief-skin-proctectant-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid17}'
	),
	(
		11,
		18,
		'Goldbond Healing Hand Cream',
		'https://www.goldbond.ca/en/products/healing-hand-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid11} and {cid16} and {cid17}'
	),
	(
		11,
		19,
		'Goldbond Restoring Skin Therapy Lotion',
		'https://www.goldbond.ca/en/products/restoring-skin-therapy-lotion#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		20,
		'Goldbond Moisturizing Skin Therapy Lotion',
		'https://www.goldbond.ca/en/products/moisturizing-skin-therapy-lotion-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		21,
		'Goldbond Moisturizing Skin Therapy Cream',
		'https://www.goldbond.ca/en/products/moisturizing-skin-therapy-lotion-cream#tab=TabDetails',
		'',
		'https://www.goldbond.ca/img/en/logos/goldbond-logo-tablet.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		22,
		'Neutrogena  Hydro Boost Body Gel Cream',
		'https://www.neutrogena.ca/body/moisturizer/neutrogena-hydro-boost-body-gel-cream#ingredients',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		23,
		'Neutrogena  Hydro Boost Body Gel Cream, Fragrance-Free',
		'https://www.neutrogena.ca/body/moisturizer/neutrogena-hydro-boost-body-gel-cream-fragrance-free',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		24,
		'Neutrogena  Hydro Boost Gel Cream Eye',
		'https://www.neutrogena.ca/face/eye-treatment/neutrogena-hydro-boost-gel-cream-eye',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15}'
	),
	(
		11,
		25,
		'Neutrogena Naturals  Multi-Vitamin Nourishing Night Cream',
		'https://www.neutrogena.ca/face/moisturizer-hydration-serum/neutrogena-naturals-multi-vitamin-nourishing-night-cream',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		26,
		'Neutrogena  Deep Moisture Night Cream',
		'https://www.neutrogena.ca/face/moisturizer-hydration-serum/neutrogena-deep-moisture-night-cream',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16}'
	),
	(
		11,
		27,
		'Neutrogena  Hydro Boost Gel Cream Extra-Dry Skin',
		'https://www.neutrogena.ca/face/moisturizer-hydration-serum/neutrogena-hydro-boost-gel-cream-extra-dry-skin',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15}'
	),
	(
		11,
		28,
		'Neutrogena  Hydro Boost Gel Cream',
		'https://www.neutrogena.ca/face/moisturizer-hydration-serum/neutrogena-hydro-boost-gel-cream',
		'',
		'https://www.neutrogena.ca/sites/neutrogena_ca/files/ntg_logo_172x38_vb.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16}'
	),
	(
		11,
		29,
		'Aveeno  Cracked Skin Relief Cica Balm',
		'https://www.aveeno.com/products/cracked-skin-relief-cica-balm',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid14} and {cid17}'
	),
	(
		11,
		30,
		'Aveeno  Cracked Skin Relief Cica Ointment',
		'https://www.aveeno.com/products/cracked-skin-relief-cica-ointment',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid12} and {cid15} and {cid17}'
	),
	(
		11,
		31,
		'Aveeno  Stress Relief Moisturizing Lotion',
		'https://www.aveeno.ca/products/stress-relief-moisturizing-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		32,
		'Aveeno  Skin Relief Moisturizing Lotion',
		'https://www.aveeno.ca/products/skin-relief-moisturizing-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid17}'
	),
	(
		11,
		33,
		'Aveeno  Intense Relief Moisture Repair Cream For Extra Dry Skin',
		'https://www.aveeno.ca/products/intense-relief-moisture-repair-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15}'
	),
	(
		11,
		34,
		'Aveeno  Anti-Itch Lotion',
		'https://www.aveeno.ca/products/anti-itch-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid10} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		35,
		'Aveeno  Daily Moisturizing Body Yogurt Apricot & Honey Lotion',
		'https://www.aveeno.ca/products/daily-moisturizing-honey-and-apricot-body-yogurt-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		36,
		'Aveeno  Daily Moisturizing Body Yogurt Vanilla & Oats Lotion',
		'https://www.aveeno.ca/products/daily-moisturizing-vanilla-body-yogurt-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		37,
		'Aveeno  Daily Moisturizing Lotion',
		'https://www.aveeno.ca/products/daily-moisturizing-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid17}'
	),
	(
		11,
		38,
		'Aveeno  Daily Moisturizing Lotion Sheer Hydration',
		'https://www.aveeno.ca/products/daily-moisturizing-lotion-sheer-hydration',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15}'
	),
	(
		11,
		39,
		'Aveeno  Eczema Care Hand Cream',
		'https://www.aveeno.ca/products/eczema-care-hand-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		40,
		'Aveeno  Eczema Care Itch Relief Balm',
		'https://www.aveeno.ca/products/eczema-care-itch-relief-balm',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid14} and {cid17}'
	),
	(
		11,
		41,
		'Aveeno  Positively Radiant  Body Lotion',
		'https://www.aveeno.ca/products/positively-radiant-body-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid13} and {cid16} and {cid17}'
	),
	(
		11,
		42,
		'Aveeno  Skin Relief Moisturizing Lotion Diabetics'' Dry Skin',
		'https://www.aveeno.ca/products/skin-relief-moisturizing-lotion-diabetics-dry-skin',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid17}'
	),
	(
		11,
		43,
		'Aveeno  Skin Relief Gentle Scent  Moisturizing Lotion Coconut',
		'https://www.aveeno.ca/products/skin-relief-gentle-scent-coconut-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid17}'
	),
	(
		11,
		44,
		'Aveeno  Skin Relief Gentle Scent  Moisturizing Lotion Chamomile',
		'https://www.aveeno.ca/products/skin-relief-gentle-scent-chamomile-lotion',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid17}'
	),
	(
		11,
		45,
		'Aveeno  Skin Relief Hand Cream',
		'https://www.aveeno.ca/products/skin-relief-hand-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		46,
		'Aveeno  Intense Relief Overnight Cream',
		'https://www.aveeno.ca/products/intense-relief-overnight-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		47,
		'Aveeno  Positively Radiant  Intensive Night Cream',
		'https://www.aveeno.ca/products/positively-radiant-intensive-night-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid5} and {cid6} and {cid11} and {cid16}'
	),
	(
		11,
		48,
		'Aveeno  Intense Relief Hand Cream',
		'https://www.aveeno.ca/products/intense-relief-hand-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		49,
		'Aveeno  Skin Relief Moisturizing Cream',
		'https://www.aveeno.ca/products/skin-relief-moisturizing-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15}'
	),
	(
		11,
		50,
		'Aveeno  Daily Moisturizing Hand Cream',
		'https://www.aveeno.ca/products/daily-moisturizing-hand-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		51,
		'Aveeno  Skin Relief Moisturizing Lotion Cooling Menthol',
		'https://www.aveeno.ca/products/skin-relief-moisturizing-lotion-cooling-menthol',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid9} and {cid10} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		52,
		'Aveeno  Eczema Care Moisturizing Cream',
		'https://www.aveeno.ca/products/eczema-care-moisturizing-cream',
		'',
		'https://www.aveeno.com/sites/aveeno_us_2/files/logo2x.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		53,
		'Uremol  10% Cream',
		'https://odanlab.com/product/uremol-10/',
		'',
		'https://odanlab.com/wp-content/uploads/2018/09/odan_logo_350x50_optimized-1.png',
		'{cid2} and {cid5} and {cid6} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		54,
		'Uremol  10% Lotion',
		'https://odanlab.com/product/uremol-10/',
		'',
		'https://odanlab.com/wp-content/uploads/2018/09/odan_logo_350x50_optimized-1.png',
		'{cid2} and {cid5} and {cid6} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		55,
		'Uremol  20% Cream',
		'https://odanlab.com/product/uremol-20/',
		'',
		'https://odanlab.com/wp-content/uploads/2018/09/odan_logo_350x50_optimized-1.png',
		'{cid2} and {cid5} and {cid6} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		56,
		'Cerave Moisturizing Cream',
		'https://www.cerave.ca/our-products/moisturizers/moisturizing-cream',
		'',
		'https://www.cerave.ca/-/media/project/loreal/brand-sites/cerave/americas/ca/logo/cerave/standard/cerave-logo-master-ol-bil.svg?rev=-1?w=0&hash=CECFDDF79C278DA18FD5D5E1A6FEA814',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid11}'
	),
	(
		11,
		57,
		'Cerave Moisturizing Lotion ',
		'https://www.cerave.ca/our-products/moisturizers/moisturizing-lotion',
		'',
		'https://www.cerave.ca/-/media/project/loreal/brand-sites/cerave/americas/ca/logo/cerave/standard/cerave-logo-master-ol-bil.svg?rev=-1?w=0&hash=CECFDDF79C278DA18FD5D5E1A6FEA814',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		58,
		'Cerave Pm Facial Moisturizing Lotion',
		'https://www.cerave.ca/our-products/moisturizers/pm-facial-moisturizing-lotion',
		'',
		'https://www.cerave.ca/-/media/project/loreal/brand-sites/cerave/americas/ca/logo/cerave/standard/cerave-logo-master-ol-bil.svg?rev=-1?w=0&hash=CECFDDF79C278DA18FD5D5E1A6FEA814',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid13} and {cid15} and {cid16}'
	),
	(
		11,
		59,
		'Cetaphil Moisturizing Lotion',
		'https://www.cetaphil.ca/en/products/moisturizers/moisturizing-lotion',
		'',
		'https://www.cetaphil.ca/on/demandware.static/Sites-Galderma-CA-Site/-/default/dw44ec329b/images/logo.svg',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		60,
		'Cetaphil Dailyadvance Lotion',
		'https://www.cetaphil.ca/en/products/moisturizers/dailyadvance-lotion',
		'',
		'https://www.cetaphil.ca/on/demandware.static/Sites-Galderma-CA-Site/-/default/dw44ec329b/images/logo.svg',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15}'
	),
	(
		11,
		61,
		'Cetaphil Moisturizing Cream',
		'https://www.cetaphil.ca/en/products/moisturizers/moisturizing-cream',
		'',
		'https://www.cetaphil.ca/on/demandware.static/Sites-Galderma-CA-Site/-/default/dw44ec329b/images/logo.svg',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15}'
	),
	(
		11,
		62,
		'Cetaphil Barrier Cream',
		'https://www.cetaphil.ca/en/products/moisturizers/barrier-cream',
		'',
		'https://www.cetaphil.ca/on/demandware.static/Sites-Galderma-CA-Site/-/default/dw44ec329b/images/logo.svg',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		63,
		'Cetaphil Daily Hydrating Lotion',
		'https://www.cetaphil.ca/en/products/moisturizers/daily-hydrating-lotion',
		'',
		'https://www.cetaphil.ca/on/demandware.static/Sites-Galderma-CA-Site/-/default/dw44ec329b/images/logo.svg',
		'{cid2} and {cid5} and {cid6} and {cid13}'
	),
	(
		11,
		64,
		'Cetaphil Hydrating Night Cream',
		'https://www.cetaphil.ca/en/products/moisturizers/hydrating-night-cream',
		'',
		'https://www.cetaphil.ca/on/demandware.static/Sites-Galderma-CA-Site/-/default/dw44ec329b/images/logo.svg',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid11}'
	),
	(
		11,
		65,
		'Cetaphil Pro Restoraderm Eczema Soothing Moisturizer',
		'https://www.cetaphil.ca/en/products/moisturizers/cetaphil-pro-eczema-soothing-moisturizer',
		'',
		'https://www.cetaphil.ca/on/demandware.static/Sites-Galderma-CA-Site/-/default/dw44ec329b/images/logo.svg',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid17}'
	),
	(
		11,
		66,
		'Glaxal* Base Moisturizing Cream',
		'https://glaxalbase.ca/moisturizing-cream/',
		'',
		'https://glaxalbase.ca/wp-content/uploads/2020/11/glaxalbase-logo.svg',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid17}'
	),
	(
		11,
		67,
		'Glaxal* Base Moisturizing Lotion Vite',
		'https://glaxalbase.ca/moisturizing-lotion/',
		'',
		'https://glaxalbase.ca/wp-content/uploads/2020/11/glaxalbase-logo.svg',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid13} and {cid17}'
	),
	(
		11,
		68,
		'Vaseline  Petroleum Jelly Original',
		'https://www.vaseline.com/ca/en/products/petroleum-jelly/vaseline-jelly-original.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid5} and {cid6} and {cid9} and {cid12} and {cid16}'
	),
	(
		11,
		69,
		'Vaseline  Petroleum Jelly Cocoa Butter',
		'https://www.vaseline.com/ca/en/products/petroleum-jelly/vaseline-jelly-cocoa.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid3} and {cid5} and {cid6} and {cid9} and {cid12} and {cid15} and {cid16}'
	),
	(
		11,
		70,
		'Vaseline  Intensive Care  Dry Skin Repair Lotion',
		'https://www.vaseline.com/ca/en/products/lotions-and-moisturizers/vaseline-lotion-dry.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid8} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		71,
		'Vaseline  Intensive Care  Cocoa Radiant Lotion',
		'https://www.vaseline.com/ca/en/products/lotions-and-moisturizers/vaseline-lotion-cocoa.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		72,
		'Vaseline  Intensive Care  Cocoa Radiant Body Butter',
		'https://www.vaseline.com/ca/en/products/lotions-and-moisturizers/vaseline-butter-cocoa.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid12} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		73,
		'Vaseline  Intensive Care  Aloe Vera Lotion',
		'https://www.vaseline.com/ca/en/products/lotions-and-moisturizers/vaseline-lotion-aloe.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid2} and {cid4} and {cid5} and {cid6} and {cid8} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		74,
		'Vaseline Clinical Care  Extremely Dry Skin Rescue Lotion',
		'https://www.vaseline.com/ca/en/products/lotions-and-moisturizers/vaseline-lotion-edsr.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		75,
		'Vaseline Clinical Care  Extremely Dry Skin Rescue Overnight Cream',
		'https://www.vaseline.com/ca/en/products/lotions-and-moisturizers/vaseline-lotion-overnight.html',
		'',
		'https://www.vaseline.com/sk-eu/content/dam/brands/vaseline/global_use/1228921-new-vaseline-logo.png.rendition.380.380.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		76,
		'Glysomed Body Lotion',
		'https://www.glysomed.com/products/#toggle-id-1',
		'',
		'https://www.glysomed.com/wp-content/uploads/Logo_Glysomed-1-1.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid9} and {cid13} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		77,
		'Glysomed Eczema Control',
		'https://www.glysomed.com/products/#toggle-id-1',
		'',
		'https://www.glysomed.com/wp-content/uploads/Logo_Glysomed-1-1.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		78,
		'Glysomed Foot Balm',
		'https://www.glysomed.com/products/#toggle-id-1',
		'',
		'https://www.glysomed.com/wp-content/uploads/Logo_Glysomed-1-1.png',
		'{cid1} and {cid3} and {cid5} and {cid6} and {cid9} and {cid10} and {cid14} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		79,
		'Glysomed Hand Cream',
		'https://www.glysomed.com/products/#toggle-id-1',
		'',
		'https://www.glysomed.com/wp-content/uploads/Logo_Glysomed-1-1.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	),
	(
		11,
		80,
		'Glysomed Fragrance-Free Hand Cream',
		'https://www.glysomed.com/products/#toggle-id-1',
		'',
		'https://www.glysomed.com/wp-content/uploads/Logo_Glysomed-1-1.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid11} and {cid15} and {cid17}'
	),
	(
		11,
		81,
		'Glysomed Extreme Repair',
		'https://www.glysomed.com/products/#toggle-id-1',
		'',
		'https://www.glysomed.com/wp-content/uploads/Logo_Glysomed-1-1.png',
		'{cid1} and {cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid9} and {cid11} and {cid15} and {cid16} and {cid17}'
	);
