INSERT INTO ailments VALUES 
	(
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
		'Oxy  Total Care  Creamy Facial Cleanser',
		'https://oxyskincare.com/pages/oxy%C2%AE-total-care%C2%AE-creamy-facial-cleanser',
		'OXY Total Care Creamy Facial Cleanser is designed to deep-clean and moisturize all skin types. The soothing, creamy cleanser nourishes and moisturizes your skin with hydrating Hyaluronic Acid as a gentle level of a clinically proven acne medication clears your skin and helps prevent future breakouts. The light and luxuriously foaming cleanser has a fresh scent that helps awaken your senses and will leave your face feeling clean and refreshed without stripping or over-drying your face. Perfect for daily control of mild-to-moderate acne at any age.',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid1} and {cid7}'
	),
	(
		14,
		2,
		'Oxy  Total Care  Vitamin C Serum',
		'https://oxyskincare.com/products/00310742928969',
		'OXY Total Care Vitamin C Serum has a unique combination of ingredients for clear skin that glows at any age. OXY Total Care Vitamin C Serum brightens and smooths with highly stable Vitamin C that deeply penetrates to even skin tone and to fade acne marks. Skin-quenching Hyaluronic Acid hydrates and replenishes for soft, rejuvenated skin that glows. Plus clinically proven acne medication that gently eliminates acne and helps prevent breakouts - without irritating dry or sensitive skin.  This clear and light serum absorbs quickly and leaves your skin feeling hydrated, clear and glowing with a healthy bounce. For all skin types at any age. Plus, it has K-Beauty fermented-mushroom extract, shown to help speed up the skin''s natural regenerating and healing properties. Rejuvenates skin and improves the skin''s appearance.',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid1} and {cid3} and {cid7}'
	),
	(
		14,
		3,
		'Oxy  Total Care  Clarifying Moisturizer',
		'https://oxyskincare.com/products/00310742928983',
		'Healthy skin is soft, clear, and glowing with a youthful bounce.  OXY Total Care Clarifying Moisturizer provides clinically-proven moisturization, oil control, and reduction of acne pimples - all in a soothing, gentle formula that hydrates your skin with skin-quenching Hyaluronic Acid. This all-in-one moisturizer combines highly effective, dermatologist-recommended benzoyl peroxide to treat and help prevent acne with hydrating Hyaluronic Acid in a clinically proven formula that leaves your skin clearer, less red and irritated, and more moisturized than before. Plus proven oil control so people see your healthy glow - not your facial oil.  OXY Total Care Clarifying Moisturizer is oil-free and won''t clog your pores. It is designed to treat and moisturize all skin types - from dry to oily - and is perfect for mild-to-moderate acne at any age.',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid2} and {cid4} and {cid7}'
	),
	(
		14,
		4,
		'Oxy Acne Cleanser',
		'https://oxy.ca/product/emergency-acne-cleanser/',
		'OXY Emergency Acne Cleanser rapidly removes dirt, oil and dead skin to let oxygen through, helping your skin breathe. It penetrates deep into pores to help control acne pimples. Now formulated with 5% Benzoyl Peroxide, it kills acne bacteria on contact to quickly help heal acne blemishes and prevent new breakouts. OXY Emergency Acne Cleanser also contains SymCalmin to soothe skin by moisturizing in a fragrance-free formula. Dermatologist tested.',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid2} and {cid7}'
	),
	(
		14,
		5,
		'Oxy 3-In-1 Acne Pads',
		'https://oxyskincare.com/products/00310742923223',
		'OXY 3-in-1 Maximum Strength Acne Treatment Pads combine three skin-clearing benefits into one convenient daily acne and pore treatment pad. This 2% salicylic acid acne medication face pad is formulated to unclog pores, help with oil control and retexturize skin for a clearer, smoother complexion. Acne medication is infused into pads, allowing for easy use at home or on the go. These maximum strength 2% salicylic acid acne treatment face pads exfoliate skin and unclog pores to fight blackheads, whiteheads and pimples. OXY pads for acne are also formulated to be gentle and prevent irritation. Regular use of this salicylic acid acne treatment helps to keep pores clear, and it also controls oil to prevent new blemishes from forming. Use one pore cleanser pad to cover the affected area with a thin layer of acne medication 1 to 3 times daily.',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid1} and {cid6} and {cid8}'
	),
	(
		14,
		6,
		'Oxy Sensitive Face Wash',
		'https://oxyskincare.com/pages/oxy%C2%AE-sensitive-skin-face-wash',
		'Inactive ingredients: anhydrous citric acid, butylene glycol, capryl/capramidopropyl betaine, cetostearyl alcohol, cocamidopropyl betaine, diazolidinyl urea, disodium PEG-5 laurylcitrate sulfosuccinate, fragrance, hydrolyzed soy protein, hydroxyphenyl propamidobenzoic acid, methylparaben, PEG-8 dimethicone, pentylene glycol, propylparaben, purified water, sodium citrate, sodium lauroyl sarcosinate, xanthan gum',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid2} and {cid7}'
	),
	(
		14,
		7,
		'Oxy Rapid Spot Treatment',
		'https://oxyskincare.com/products/rapid-spot-treatment/',
		'',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid2} and {cid8}'
	),
	(
		14,
		8,
		'Oxy On-The-Go Acne Stick',
		'https://oxyskincare.com/products/on-the-go-acne-stick/',
		'',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid2} and {cid8}'
	),
	(
		14,
		9,
		'Oxy Deep Pore Cleansing Pads',
		'https://oxyskincare.com/products/deep-pore-cleansing-pads/',
		'',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid1} and {cid6} and {cid8}'
	),
	(
		14,
		10,
		'Oxy Overnight Acne Reducing Patches',
		'https://oxyskincare.com/products/overnight-patches/',
		'',
		'https://oxy.ca/wp-content/uploads/2021/07/header-logo-600x132.png',
		'{cid1} and {cid8}'
	),
	(
		14,
		11,
		'Clearasil Rapid Rescue Spot Treatment Cream',
		'https://www.clearasil.us/collections/all-products/products/clearasil-ultra-rapid-action-vanishing-acne-treatment-cream-1-ounce',
		'Clearasil Ultra Rapid Action Vanishing Treatment Cream treats problem areas fast, visibly reducing redness and spot size in as little as four hours. Scientifically formulated with maximum-strength medication, Rapid Action Vanishing Treatment Cream penetrates your pores to fight breakouts. ',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid2} and {cid3} and {cid8}'
	),
	(
		14,
		12,
		'Clearasil Rapid Rescue Spot Treatment Gel',
		'https://www.clearasil.us/collections/all-products/products/clearasil-ultra-rapid-action-vanishing-acne-treatment-4-hour-relief-gel-1-ounce',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid5} and {cid8}'
	),
	(
		14,
		13,
		'Clearasil Stubborn Acne Control 5In1 Exfoliating Wash',
		'https://www.clearasil.us/collections/all-products/products/clearasil-ultra-5in1-exfoliating-wash-6-78-oz',
		'With a complex of ingredients, Clearasil Stubborn Acne Control 5in1 Exfoliating Wash is one simple step to fight 5 pimple problems: 1. Reduces pimple size 2. Reduces excess oil & shine 3. Unblocks pores 4. Helps prevent the appearance of new acne marks. 5. Helps reduce the appearance of blackheads. Visibly clearer skin in just one simple step.',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid7}'
	),
	(
		14,
		14,
		'Clearasil Stubborn Acne Control 5In1 Daily Pads',
		'https://www.clearasil.us/collections/all-products/products/clearasil-stubborn-acne-control-ultra-5-in-1-acne-face-wash-pads-90-count',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid6} and {cid8}'
	),
	(
		14,
		15,
		'Clearasil Rapid Rescue Deep Treatment Scrub',
		'https://www.clearasil.us/collections/all-products/products/clearasil-ultra-rapid-action-scrub-5-oz',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid7}'
	),
	(
		14,
		16,
		'Clearsail Rapid Rescue Deep Treatment Pads',
		'https://www.clearasil.us/collections/all-products/products/clearasil-ultra-rapid-action-acne-treatment-pore-cleansing-pads-90-count',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid6} and {cid8}'
	),
	(
		14,
		17,
		'Clearsil Rapid Rescue Deep Treatment Wash',
		'https://www.clearasil.us/collections/all-products/products/clearasil-ultra-daily-face-wash-6-78-oz',
		'Clearasil Rapid Rescue Deep Treatment Daily Face Wash deposits maximum strength acne medication into pores to fight pimples and breakouts. For visibly clearer skin in as fast as 12 hours!',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid7}'
	),
	(
		14,
		18,
		'Clearasil Stubborn Acne Control 5In1 Weekly Scrub',
		'https://www.clearasil.us/collections/all-products/products/clearasil-stubborn-acne-control-5in1-weekly-face-scrub-5-oz',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid7}'
	),
	(
		14,
		19,
		'Clearasil Rapid Action Treatment Lotion',
		'https://www.clearasil.us/collections/all-products/products/clearasil-ultra-rapid-action-facial-treatment-moisturizing-lotion-4-ounces',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid4} and {cid7}'
	),
	(
		14,
		20,
		'Clearasil Stubborn Acne Control 5In1 Concealing Treatment Cream',
		'https://www.clearasil.us/collections/all-products/products/clearasil-stubborn-acne-control-5in1-concealing-treatment-cream-1-oz-benzoyl-peroxide-acne-medication',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid2} and {cid3} and {cid7}'
	),
	(
		14,
		21,
		'Clearasil Stubborn Acne Control 5In1 Spot Treatment Cream',
		'https://www.clearasil.us/collections/all-products/products/clearasil-daily-clear-vanishing-acne-treatment-cream-1-ounce',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid2} and {cid3} and {cid8}'
	),
	(
		14,
		22,
		'Clearasil Stubborn Acne Control 5In1 One Minute Mask',
		'https://www.clearasil.us/collections/all-products/products/clearasil-stubborn-acne-control-one-minute-mask-6-78-oz',
		'Clearasil Ultra Acne + Marks Face Wash and Mask opens up blocked pores. and helps keep them unblocked. Formulated with maximum-strength acne medication, the formula also helps reduce the appearance of acne marks. Acne + Marks Face Wash contains Salicylic Acid 2% Acne Medication.',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid7}'
	),
	(
		14,
		23,
		'Clearasil Gentle Prevention Daily Clean Wash',
		'https://www.clearasil.us/collections/all-products/products/clearasil-gentle-prevention-daily-clear-acne-face-wash-hydra-blast-oil-free-face-wash-6-5-ounce',
		'',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid7}'
	),
	(
		14,
		24,
		'Clearasil Gentle Prevention Daily Clean Pads',
		'https://www.clearasil.us/collections/all-products/products/clearasil-gentle-prevention-daily-clean-pads',
		'Clearasil Gentle Prevention Daily Clean Pads are pleasantly gentle yet effective . The exfoliating pads gently wipe away dirt, oil, and bacteria and help keep skin clear of breakouts with an anti-acne active. For clearer skin, everyday.',
		'https://cdn.shopify.com/s/files/1/0115/9600/5434/files/a837477c6226c4aebb6185942659b467.w3000.h600_896a214c-29ba-4ac6-8c10-c4121030ca1a_400x.jpg?v=1613735286',
		'{cid1} and {cid6} and {cid8}'
	),
	(
		14,
		25,
		'Clean & Clear Acne Triple Clear Clay Mask',
		'https://www.cleanandclear.ca/products/treatments/clean-clear-acne-triple-clear-clay-mask',
		'',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid7}'
	),
	(
		14,
		26,
		'Acne Triple Clear Bubble Foam Cleanser',
		'https://www.cleanandclear.ca/products/cleansers/acne-triple-clear-bubble-foam-cleanser',
		'',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid7}'
	),
	(
		14,
		27,
		'Acne Triple Clear Exfoliating Scrub',
		'https://www.cleanandclear.ca/products/scrubs/acne-triple-clear-exfoliating-scrub',
		'CLEAN & CLEAR Acne Triple Clear Exfoliating Scrub, with acne-fighting medicine salicylic acid, is designed to make your oily and acne-prone skin clearer and happier by exfoliating and fighting pimples in three ways...',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid7}'
	),
	(
		14,
		28,
		'Acne Triple Clear Gel Cleanser',
		'https://www.cleanandclear.ca/products/cleansers/acne-triple-clear-gel-cleanser',
		'',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid5} and {cid7}'
	),
	(
		14,
		29,
		'Clean & Clear Persa-Gel 5',
		'https://www.cleanandclear.ca/products/treatments/clean-clear-persa-gel-5',
		'CLEAN & CLEAR PERSA-GEL 5 is a unique formula that goes to work immediately, releasing the medicine deep into the pores where breakouts and pimples start and helps prevent them from coming back. This maximum strength Benzoyl Peroxide acne medication is the same ingredient recommended by doctors. Get clear and beautiful skin with this proven treatment.',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid2} and {cid5} and {cid7}'
	),
	(
		14,
		30,
		'Clean & Clear  Continuous Control  Acne Cleanser',
		'https://www.cleanandclear.ca/products/facial-cleansers/continuous-control-acne-cleanser',
		'CLEAN & CLEAR CONTINUOUS CONTROL Acne Cleanser not only removes dirt and oil, it also features a pore-penetrating acne medicine to help fight and help prevent pimples and breakouts on your face. Your skin is clean and becomes noticeably clearer with continued use. Delivers the acne-fighting ingredient, Benzoyl Peroxide, directly into pores where pimples start.',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid2} and {cid7}'
	),
	(
		14,
		31,
		'Clean & Clear Advantage  Acne Control Moisturizer',
		'https://www.cleanandclear.ca/products/moisturizers/advantage-acne-control-moisturizer',
		'',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid3} and {cid7}'
	),
	(
		14,
		32,
		'Clean & Clear Advantage  Acne Control 3-In-1 Foaming Wash',
		'https://www.cleanandclear.ca/products/facial-cleansers/advantage-3-in-1-foaming-acne-wash',
		'',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid7}'
	),
	(
		14,
		33,
		'Clean & Clear Advantage  Acne Spot Treatment',
		'https://www.cleanandclear.ca/products/acne-treatments/advantage-acne-spot-treatment',
		'The second you put it on, this effective gel with breakthrough technology starts to dissolve surface oil on the skin. With oil out of the way, the clinically proven acne medicine can then penetrate pores. The medication starts working to clear pimples immediately, with maximum strength* 2% Salicylic acid. Pimples are reduced in size, swelling and redness, and the formula won''t over-dry your skin. Voila! Pimple looks better. Now get out there and have some fun! * Maximum strength available without a prescription',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid8}'
	),
	(
		14,
		34,
		'Clean & Clear  Blackhead Clearing Astringent',
		'https://www.cleanandclear.ca/products/astringents/clean-clear-blackhead-clearing-astringent',
		'Tackle your blackheads with the Blackhead Clearing Astringent. This astringent is specially formulated to reach deep down to the pores to remove dirt and oil from your skin – the facial impurities that can lead to blackheads, pimples and acne.',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid6} and {cid7}'
	),
	(
		14,
		35,
		'Clean & Clear Essentials  Dual Action Moisturizer',
		'https://www.cleanandclear.ca/products/moisturizers/essentials-dual-action-moisturizer',
		'CLEAN & CLEAR ESSENTIALS Dual Action Moisturizer combines oil-free moisture with a proven acne-fighting ingredient. It can help to moisturize dry skin while treating and helping to prevent breakouts. It leaves your skin feeling soft and smooth.',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid3} and {cid7}'
	),
	(
		14,
		36,
		'Clean & Clear Essentials  Deep Cleaning Astringent',
		'https://www.cleanandclear.ca/products/astringents-toners/essentials-deep-cleaning-astringent',
		'CLEAN & CLEAR ESSENTIALS Deep Cleaning Astringent contains a maximum-strength* acne-fighting medication that treats and helps prevent pimples. * Maximum strength available without a prescription',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid6} and {cid7}'
	),
	(
		14,
		37,
		'Clean & Clear Essentials  Deep Cleaning Astringent For Sensitive Skin',
		'https://www.cleanandclear.ca/products/astringents-toners/essentials-deep-cleaning-toner-sensitive-skin',
		'',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid6} and {cid7}'
	),
	(
		14,
		38,
		'Clean & Clear  Blackhead Eraser  Scrub',
		'https://www.cleanandclear.ca/products/facial-scrubs/blackhead-eraser-scrub',
		'CLEAN & CLEAR BLACKHEAD ERASER Scrub has unique exfoliating multi-action beads that work to gently remove the trapped dirt, oil, and dead skin that can clog pores and lead to breakouts. Three sizes of multi-action beads allow surface exfoliation and a deep down clean. Salicylic Acid, an acne fighting medicine, clears blackheads and helps prevent new ones from forming.',
		'https://www.cleanandclear.ca/sites/cleanandclear_ca/files/clean_and_clear_logo_1.png',
		'{cid1} and {cid7}'
	);
