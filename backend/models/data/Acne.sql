INSERT INTO ailments VALUES (
		14, 
		'Acne', 
		'Consult your phyisician for potential drug-induced or endocrine-disease induced acne. Consult your physician for moderate to severe acne or for acne non-responsive to 8-12 week over-the-counter therapy. Refer to your physician if acne is causing moderate to severe scarring. Avoid acne triggers, exacerbating factors, moisturizers, oil-based cosmetics and manipulating lesions. Wash areas no more than twice daily with mild nonalkaline soap, control/reduce stress and favor a healthy diet.'
	);

INSERT INTO questions VALUES 
	(
		14, 
		1, 
		1, 
		'Would you prefer a cream', 
		'Creams are more emolient and preferable for dry or sensitive skin.'
	), 
	(
		14, 
		2, 
		1, 
		'Would you prefer a gel', 
		'Gels are better for oily skin, are oil-free but more drying, may cause burning, irritation and prevent cosmetics from adhering to skin. Alcohol/acetone gels provide better penetration of active ingredients but are more drying than non-alcohol gels.'
	), 
	(
		14, 
		3, 
		1, 
		'Would you prefer a lotion', 
		'Gels are better for oily skin, are oil-free but more drying, may cause burning, irritation and prevent cosmetics from adhering to skin. Alcohol/acetone gels provide better penetration of active ingredients but are more drying than non-alcohol gels.  '
	), 
	(
		14, 
		4, 
		1, 
		'Would you prefer a solution', 
		'Solutions, especially with high alcohol or acetone content, are best for oily skin but are most drying and irritating.'
	), 
	(
		14, 
		5, 
		1, 
		'Would you prefer a cleanser', 
		'Cleansers are ideal for removing oils, dirt and treating large surface areas.'
	), 
	(
		14, 
		6, 
		1, 
		'Would you prefer a spot treatment', 
		'Allow treatment of individualized lesions and may provide a more portable option.'
	), 
	(
		14, 
		7, 
		2, 
		'Would you prefer benzoyl peroxide', 
		'Peroxide has bactericidal activity, may decrease inflammed lesions and sebum production. Comedone activity may be less than salicylic acid. May cause irritation fading with use, bleach hair/clothing and odour. Potential allergic/sensitivity reactions.  '
	), 
	(
		14, 
		8, 
		2, 
		'Would you prefer salicylic acid', 
		'Salicylic acid has comedolytic activity which may prevent inflamed lesions and slight anti-inflammatory activity. May cause some local peeling, discomfort, burning, irritation and redness. Helps ingredient penetration.'
	), 
	(
		14, 
		9, 
		2, 
		'Are you using retinoic acid or dapsone', 
		'Benzoyl peroxide products are chemically incompatible with retinoic acid and decrease their activity. Benzoyl peroxide may temporarily turn skin and hair yellow/orange with use of dapsone.'
	);

INSERT INTO criteria VALUES 
	(14, 1, 'Salicylic Acid', '{qid8} and not {qid7}'), 
	(14, 2, 'Peroxide', '{qid7} and not ({qid8} or {qid9})'), 
	(14, 3, 'Cream', '{qid1} and not ({qid2} or {qid3} or {qid4})'), 
	(14, 4, 'Lotion', '{qid3} and not ({qid1} or {qid2})'), 
	(14, 5, 'Gel', '{qid2} and not {qid1}'), 
	(14, 6, 'Solution', '{qid4} and not ({qid1} or {qid2} or {qid3})'), 
	(14, 7, 'Cleanser', '{qid5} and not {qid6}'), 
	(14, 8, 'Spot Treatment', '{qid6} and not {qid5}');

INSERT INTO products VALUES 
	(
		14, 
		1, 
		'Oxy® Total Care™ Creamy Facial Cleanser', 
		'https://oxyskincare.com/pages/oxy%C2%AE-total-care%C2%AE-creamy-facial-cleanser', 
		'OXY® Total Care™ Creamy Facial Cleanser is designed to deep-clean and moisturize all skin types. The soothing, creamy cleanser nourishes and moisturizes your skin with hydrating Hyaluronic Acid as a gentle level of a clinically proven acne medication clears your skin and helps prevent future breakouts. The light and luxuriously foaming cleanser has a fresh scent that helps awaken your senses and will leave your face feeling clean and refreshed without stripping or over-drying your face. Perfect for daily control of mild-to-moderate acne at any age.', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		2, 
		'Oxy® Total Care™ Vitamin C Serum', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		3, 
		'Oxy® Total Care™ Clarifying Moisturizer', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		4, 
		'Oxy Acne Cleanser', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		5, 
		'Oxy 3-In-1 Acne Pads', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		6, 
		'Oxy Sensitive Face Wash', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		7, 
		'Oxy Rapid Spot Treatment', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		8, 
		'Oxy On-The-Go Acne Stick', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		9, 
		'Oxy Deep Pore Cleansing Pads', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		10, 
		'Oxy Overnight Acne Reducing Patches', 
		'', 
		'', 
		'https://m.media-amazon.com/images/S/gladiator-image-upload-prod/5/ATVPDKIKX0DER/da2166fe156ba6268b5dad6d3bc4096a.jpg'
	), 
	(
		14, 
		11, 
		'Clearasil Rapid Rescue Spot Treatment Cream', 
		'', 
		'', 
		''
	), 
	(
		14, 
		12, 
		'Clearasil Rapid Rescue Spot Treatment Gel', 
		'', 
		'', 
		''
	), 
	(
		14, 
		13, 
		'Clearasil Stubborn Acne Control 5In1 Exfoliating Wash', 
		'', 
		'', 
		''
	), 
	(
		14, 
		14, 
		'Clearasil Stubborn Acne Control 5In1 Daily Pads', 
		'', 
		'', 
		''
	), 
	(
		14, 
		15, 
		'Clearasil Rapid Rescue Deep Treatment Scrub', 
		'', 
		'', 
		''
	), 
	(
		14, 
		16, 
		'Clearsail Rapid Rescue Deep Treatment Pads', 
		'', 
		'', 
		''
	), 
	(
		14, 
		17, 
		'Clearsil Rapid Rescue Deep Treatment Wash', 
		'', 
		'', 
		''
	), 
	(
		14, 
		18, 
		'Clearasil Stubborn Acne Control 5In1 Weekly Scrub', 
		'', 
		'', 
		''
	), 
	(
		14, 
		19, 
		'Clearasil Rapid Action Treatment Lotion', 
		'', 
		'', 
		''
	), 
	(
		14, 
		20, 
		'Clearasil Stubborn Acne Control 5In1 Concealing Treatment Cream', 
		'', 
		'', 
		''
	), 
	(
		14, 
		21, 
		'Clearasil Stubborn Acne Control 5In1 Spot Treatment Cream', 
		'', 
		'', 
		''
	), 
	(
		14, 
		22, 
		'Clearasil Stubborn Acne Control 5In1 One Minute Mask', 
		'', 
		'', 
		''
	), 
	(
		14, 
		23, 
		'Clearasil Gentle Prevention Daily Clean Wash', 
		'', 
		'', 
		''
	), 
	(
		14, 
		24, 
		'Clearasil Gentle Prevention Daily Clean Pads', 
		'', 
		'', 
		''
	), 
	(
		14, 
		25, 
		'Clean & Clear® Acne Triple Clear™ Clay Mask', 
		'', 
		'', 
		''
	), 
	(
		14, 
		26, 
		'Acne Triple Clear™ Bubble Foam Cleanser', 
		'', 
		'', 
		''
	), 
	(
		14, 
		27, 
		'Acne Triple Clear™ Exfoliating Scrub', 
		'', 
		'', 
		''
	), 
	(
		14, 
		28, 
		'Acne Triple Clear™ Gel Cleanser', 
		'', 
		'', 
		''
	), 
	(
		14, 
		29, 
		'Clean & Clear® Persa-Gel® 5', 
		'', 
		'', 
		''
	), 
	(
		14, 
		30, 
		'Clean & Clear® Continuous Control® Acne Cleanser', 
		'', 
		'', 
		''
	), 
	(
		14, 
		31, 
		'Clean & Clear Advantage® Acne Control Moisturizer', 
		'', 
		'', 
		''
	), 
	(
		14, 
		32, 
		'Clean & Clear Advantage® Acne Control 3-In-1 Foaming Wash', 
		'', 
		'', 
		''
	), 
	(
		14, 
		33, 
		'Clean & Clear Advantage® Acne Spot Treatment', 
		'', 
		'', 
		''
	), 
	(
		14, 
		34, 
		'Clean & Clear® Blackhead Clearing Astringent', 
		'', 
		'', 
		''
	), 
	(
		14, 
		35, 
		'Clean & Clear Essentials® Dual Action Moisturizer', 
		'', 
		'', 
		''
	), 
	(
		14, 
		36, 
		'Clean & Clear Essentials® Deep Cleaning Astringent', 
		'', 
		'', 
		''
	), 
	(
		14, 
		37, 
		'Clean & Clear Essentials® Deep Cleaning Astringent For Sensitive Skin', 
		'', 
		'', 
		''
	), 
	(
		14, 
		38, 
		'Clean & Clear® Blackhead Eraser® Scrub', 
		'', 
		'', 
		''
	);

INSERT INTO productCriteria VALUES 
	(14, 1, '{cid1} and {cid7}'), 
	(14, 2, '{cid1} and {cid3} and {cid7}'), 
	(14, 3, '{cid2} and {cid4} and {cid7}'), 
	(14, 4, '{cid2} and {cid7}'), 
	(14, 5, '{cid1} and {cid6} and {cid8}'), 
	(14, 6, '{cid2} and {cid7}'), 
	(14, 7, '{cid2} and {cid8}'), 
	(14, 8, '{cid2} and {cid8}'), 
	(14, 9, '{cid1} and {cid6} and {cid8}'), 
	(14, 10, '{cid1} and {cid8}'), 
	(14, 11, '{cid2} and {cid3} and {cid8}'), 
	(14, 12, '{cid1} and {cid5} and {cid8}'), 
	(14, 13, '{cid1} and {cid7}'), 
	(14, 14, '{cid1} and {cid6} and {cid8}'), 
	(14, 15, '{cid1} and {cid7}'), 
	(14, 16, '{cid1} and {cid6} and {cid8}'), 
	(14, 17, '{cid1} and {cid7}'), 
	(14, 18, '{cid1} and {cid7}'), 
	(14, 19, '{cid1} and {cid4} and {cid7}'), 
	(14, 20, '{cid2} and {cid3} and {cid7}'), 
	(14, 21, '{cid2} and {cid3} and {cid8}'), 
	(14, 22, '{cid1} and {cid7}'), 
	(14, 23, '{cid1} and {cid7}'), 
	(14, 24, '{cid1} and {cid6} and {cid8}'), 
	(14, 25, '{cid1} and {cid7}'), 
	(14, 26, '{cid1} and {cid7}'), 
	(14, 27, '{cid1} and {cid7}'), 
	(14, 28, '{cid1} and {cid5} and {cid7}'), 
	(14, 29, '{cid2} and {cid5} and {cid7}'), 
	(14, 30, '{cid2} and {cid7}'), 
	(14, 31, '{cid1} and {cid3} and {cid7}'), 
	(14, 32, '{cid1} and {cid7}'), 
	(14, 33, '{cid1} and {cid8}'), 
	(14, 34, '{cid1} and {cid6} and {cid7}'), 
	(14, 35, '{cid1} and {cid3} and {cid7}'), 
	(14, 36, '{cid1} and {cid6} and {cid7}'), 
	(14, 37, '{cid1} and {cid6} and {cid7}'), 
	(14, 38, '{cid1} and {cid7}');
