INSERT INTO ailments VALUES 
	(
		8, 
		'Vaginal', 
		'Consult your phyisician if patient presents with concomitant symptoms such as fever, pelvic pain, colored or malodourous discharge. There are no substantial benefits to routine vaginal douching. Douching may increase risk of irritation, infection, inflammation, decrease effectiveness of spermicides and hinder detection of vaginal infections. Individuals with uncharacteristic vulvovaginal symptoms or a first occurance of yeast or vaginal infection should consult their physician. Individuals less than 12 years old, pregnant, diabetic or immunocompromised with suspected yeast/vaginal infection should consult their physician. Consult your physician if suspect sexually transmitted infection or less than 2 months since last yeast/vaginal infection.'
	);

INSERT INTO questions VALUES 
	(
		8, 
		1, 
		1, 
		'Are you Pregnant and/or Diabetic', 
		'Avoid vaginal douching in pregnancy. Use of an oral antifungal for yeast infection is contraindicated in pregnancy. Avoid use of boric acid or acid based vaginal products in pregnancy. Topical antifungals may require 7-14 days of therapy in pregnancy.'
	), 
	(
		8, 
		2, 
		1, 
		'Are you an adult ≥ 12 yrs old', 
		'Consult your physician for children with vaginal issues.'
	), 
	(
		8, 
		3, 
		1, 
		'Are you on warfarin therapy', 
		'Some antifungals may increase INR and bleeding risk with use of warfarin.'
	), 
	(
		8, 
		4, 
		1, 
		'Would you like a genital hygiene product', 
		'Normal genital hygiene does not require use of non-prescription products. Perfumes, astringents, emollients and anti-infectives may be irritating. Mild soap and water is preferred for daily cleansing.'
	), 
	(
		8, 
		5, 
		1, 
		'Would you like a vaginal lubricant', 
		'Lubricants are generally short-acting and require frequent re-application. Oil based products are not compatible with use of condoms. Flavored or stimulating (warm sensation) products may be irritating. Consult your pharmacist for further information.'
	), 
	(
		8, 
		6, 
		1, 
		'Would you like a vaginal moisturizer', 
		'Moisturizers contain bioadhesive polymers and provide water and electrolytes to vaginal cells. Generally act for a long duration and may be applied every 3 days or more frequently. '
	), 
	(
		8, 
		7, 
		1, 
		'Do you have a yeast infection', 
		'Typical symptoms include itching, burning, curd-like discharge and/or external dysuria. Consult your physician if first occurance or atypical symptoms. '
	), 
	(
		8, 
		8, 
		1, 
		'Do you have bacterial vaginosis', 
		'Symptoms may include discharge, burning, itching and odour. Consult your physician if this is your first experience. Some non-prescription products may provide relief.'
	), 
	(
		8, 
		9, 
		1, 
		'Would you like to prevent yeast/bacterial infection', 
		'Some products may help restore vaginal health.'
	), 
	(
		8, 
		10, 
		1, 
		'Do you have cystitis (bladder inflammation)', 
		'Symptoms may include frequent urination, urinary urgency, burning, irritation, pain and stinging. Consult your physician for first episode, frequent occurence (>3/yr), persistent or severe symptoms.'
	), 
	(
		8, 
		11, 
		1, 
		'Would you like an oral product', 
		'Oral products may be easier and less intrusive to administer and may require few treatments.'
	), 
	(
		8, 
		12, 
		1, 
		'Would you like a cream/gel', 
		'Topical products may provide localized symptom relief with little or few side effects. Sometimes available in combination with oral or vaginal tabs for relief of external symptoms.'
	), 
	(
		8, 
		13, 
		1, 
		'Would you like a vaginal tablet', 
		'Vaginal tablets may be easier to administer and a less messy option than vaginal creams.'
	);

INSERT INTO criteria VALUES 
	(8, 1, 'Oral', '{qid11}'), 
	(8, 2, 'Topical', '{qid12}'), 
	(8, 3, 'Vag Tab', '{qid13}'), 
	(8, 4, 'Pregnant', 'True'), 
	(8, 5, 'Not Pregnant', 'not {qid1}'), 
	(8, 6, 'Anti-Fungal', '{qid7} and {qid2} and not {qid3}'), 
	(8, 7, 'Moisterizer', '{qid2} and {qid6}'), 
	(8, 8, 'Lubricant', '{qid2} and {qid5}'), 
	(8, 9, 'Probiotic', '{qid2} and {qid9}'), 
	(8, 10, 'Acid', '{qid2} and {qid8}'), 
	(8, 11, 'Base', '{qid2} and {qid10}'), 
	(8, 12, 'Cleanser', '{qid2} and {qid4}'), 
	(8, 13, 'Odor Eliminator', '{qid2} and {qid4}');

INSERT INTO products VALUES 
	(
		8,
		1,
		'Probaclac Vaginal Probiotic',
		'https://www.probaclac.ca/vaginal-probiotics-for-bv',
		'',
		'https://www.probaclac.ca/img/probaclac_white.png',
		'{cid3} and {cid5} and {cid9}'
	),
	(
		8,
		2,
		'Vagisil Prohydrate  Moisturizing Gel',
		'https://www.vagisil.com/prohydrate-natural-feel-internal-moisturizing-gel-personal-lubricant',
		'',
		'https://www.vagisil.com/sites/g/files/sgirzt251/files/vagisil_logo_updated.png',
		'{cid2} and {cid5} and {cid7}'
	),
	(
		8,
		3,
		'Vagistat  3-Day Yeast Infection Treatment Cream',
		'https://www.vagisil.com/vagistat-3-day-yeast-infection-treatment',
		'',
		'https://www.vagisil.com/sites/g/files/sgirzt251/files/vagisil_logo_updated.png',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		4,
		'Vagisil Odor Block  Daily Intimate Wash',
		'https://www.vagisil.com/odor-block-wash',
		'',
		'https://www.vagisil.com/sites/g/files/sgirzt251/files/vagisil_logo_updated.png',
		'{cid2} and {cid5} and {cid13}'
	),
	(
		8,
		5,
		'Vagisil Ph Balance Daily Intimate Wash',
		'https://www.vagisil.com/ph-balance-wash',
		'',
		'https://www.vagisil.com/sites/g/files/sgirzt251/files/vagisil_logo_updated.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		8,
		6,
		'Vagisil Sensitive Plus Daily Intimate Wash',
		'https://www.vagisil.com/sensitive-plus-wash',
		'',
		'https://www.vagisil.com/sites/g/files/sgirzt251/files/vagisil_logo_updated.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		8,
		7,
		'Vagisil Scentsitive Scents  Peach Blossom Daily Intimate Wash',
		'https://www.vagisil.com/scentsitive-scents-peach-blossom-daily-intimate-wash',
		'',
		'https://www.vagisil.com/sites/g/files/sgirzt251/files/vagisil_logo_updated.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		8,
		8,
		'Vagisil Scentsitive Scents  White Jasmine Daily Intimate Wash',
		'https://www.vagisil.com/scentsitive-scents-white-jasmine-daily-intimate-wash',
		'',
		'https://www.vagisil.com/sites/g/files/sgirzt251/files/vagisil_logo_updated.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		8,
		9,
		'Monistat  1-Day Treatment Combination Pack',
		'https://www.monistat.com/yeast-infection-treatment/monistat-1-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid3} and {cid5} and {cid6}'
	),
	(
		8,
		10,
		'Monistat 1-Day Treatment',
		'https://www.monistat.com/yeast-infection-treatment/monistat-1-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		11,
		'Monistat 3-Day Treatment Combination Pack With Ovule ',
		'https://www.monistat.com/yeast-infection-treatment/monistat-3-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid3} and {cid5} and {cid6}'
	),
	(
		8,
		12,
		'Monistat 3-Day Treatment Combination Pack With Suppositories',
		'https://www.monistat.com/yeast-infection-treatment/monistat-3-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid3} and {cid5} and {cid6}'
	),
	(
		8,
		13,
		'Monistat 3-Day Treatment Combination Pack With Prefilled Cream',
		'https://www.monistat.com/yeast-infection-treatment/monistat-3-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		14,
		'Monistat 3-Day Treatment Cream',
		'https://www.monistat.com/yeast-infection-treatment/monistat-3-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		15,
		'Monistat 7-Day Treatment Combination Pack',
		'https://www.monistat.com/yeast-infection-treatment/monistat-7-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid4} and {cid6}'
	),
	(
		8,
		16,
		'Monistat 7-Day Treatment Cream',
		'https://www.monistat.com/yeast-infection-treatment/monistat-7-day-antifungal',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid4} and {cid6}'
	),
	(
		8,
		17,
		'Monistat Care Stay Fresh Gel',
		'https://www.monistat.com/vaginal-complete-care-products/stay-fresh-gel',
		'',
		'https://www.monistat.com/sites/monistat/themes/custom/monistat_theme/images/monistat-logo.svg',
		'{cid2} and {cid5} and {cid13}'
	),
	(
		8,
		18,
		'Canesbalance Bacterial Vaginosis(Bv) Vagina Gel',
		'https://www.canesten.ca/en/bacterial-vaginosis/products/?bv',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid5} and {cid10}'
	),
	(
		8,
		19,
		'Canesten 1-Day Combi-Pak Comfortab',
		'https://www.canesten.ca/en/products/1-day-combi-pak-comfortab-yeast-infection/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid3} and {cid5} and {cid6}'
	),
	(
		8,
		20,
		'Canesten  3-Day Combi-Pak Comfortab ',
		'https://www.canesten.ca/en/products/3-day-combi-pak-comfortab-yeast-infection/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid3} and {cid5} and {cid6}'
	),
	(
		8,
		21,
		'Canesoral Combi-Pak',
		'https://www.canesten.ca/en/products/canesoral-combi-pak-yeast-infection/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid1} and {cid2} and {cid5} and {cid6}'
	),
	(
		8,
		22,
		'Canesoral',
		'https://www.canesten.ca/en/products/canesoral-yeast-infection-pill/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid1} and {cid5} and {cid6}'
	),
	(
		8,
		23,
		'Canesten 1-Day Combi-Pak Cream',
		'https://www.canesten.ca/en/products/1-day-combi-pak-yeast-infection-cream/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		24,
		'Canesten 1-Day Cream',
		'https://www.canesten.ca/en/products/1-day-yeast-infection-cream/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		25,
		'Canesten 3-Day Cream',
		'https://www.canesten.ca/en/products/3-day-yeast-infection-cream/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		26,
		'Canesten 6-Day Cream',
		'https://www.canesten.ca/en/products/6-day-yeast-infection-cream/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid4} and {cid6}'
	),
	(
		8,
		27,
		'Canesten External Cream',
		'https://www.canesten.ca/en/products/external-yeast-infection-cream/',
		'',
		'https://www.canesten.ca/sites/g/files/vrxlpx26356/files/Canesten-logo.png',
		'{cid2} and {cid5} and {cid6}'
	),
	(
		8,
		28,
		'Rephresh Pro-B Probiotic',
		'http://www.rephresh.com/RepHresh-Products/RepHresh-Pro-B.aspx',
		'',
		'https://www.rephresh.com/img/2016RephreshLogo_Gel.png',
		'{cid1} and {cid5} and {cid9}'
	),
	(
		8,
		29,
		'Rephresh Clean Balance ',
		'http://www.rephresh.com/RepHresh-Products/RepHresh-Clean-Balance.aspx',
		'',
		'https://www.rephresh.com/img/2016RephreshLogo_Gel.png',
		'{cid2} and {cid5} and {cid12}'
	),
	(
		8,
		30,
		'Rephresh Vaginal Gel',
		'http://www.rephresh.com/RepHresh-Products/RepHresh-Vaginal-Gel.aspx',
		'',
		'https://www.rephresh.com/img/2016RephreshLogo_Gel.png',
		'{cid2} and {cid5} and {cid13}'
	),
	(
		8,
		31,
		'K-Y Jelly Personal Lubricant',
		'https://www.k-y.ca/en/products/comfort-lubrication/k-y-jelly-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		32,
		'K-Y Silk-E Vaginal Moisturizer And Personal Lubricant',
		'https://www.k-y.ca/en/products/comfort-lubrication/k-y-silk-e-vaginal-moisturizer-and-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		33,
		'K-Y Gentle Sensitive Jelly Personal Lubricant',
		'https://www.k-y.ca/en/products/comfort-lubrication/k-y-gentle-sensitive-jelly-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		34,
		'K-Y Liquid Personal Lubricant',
		'https://www.k-y.ca/en/products/comfort-lubrication/k-y-liquid-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		35,
		'K-Y Sensual Silk Personal Lubricant',
		'https://www.k-y.ca/en/products/comfort-lubrication/k-y-sensual-silk-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		36,
		'K-Y Touch 2-In-1 Warming Oil And Personal Lubricant',
		'https://www.k-y.ca/en/products/sensation-warming/k-y-touch-2-in-1-warming-oil-and-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		37,
		'K-Y Warming Liquid Personal Lubricant',
		'https://www.k-y.ca/en/products/sensation-warming/k-y-warming-liquid-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		38,
		'K-Y Warming Jelly Personal Lubricant',
		'https://www.k-y.ca/en/products/sensation-warming/k-y-warming-jelly-personal-lubricant/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		39,
		'K-Y Yours+Mine Couples Lubricants ',
		'https://www.k-y.ca/en/products/bold-beyond/k-y-yours-mine-couples-lubricants/',
		'',
		'https://cdn.shopify.com/s/files/1/0560/5228/5636/files/KY_ColoredLogo_Transparennt_120x.png?v=1617979777',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		40,
		'Astroglide Liquid',
		'https://astroglide.com/products/astroglide-liquid',
		'',
		'data:image/png;base64,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',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		41,
		'Astroglide Gel',
		'https://astroglide.com/products/astroglide-gel',
		'',
		'data:image/png;base64,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',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		42,
		'Astroglide Ultra Gentle Gel',
		'https://astroglide.com/products/astroglide-ultra-gentle-gel',
		'',
		'data:image/png;base64,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',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		43,
		'Astroglide Glycerin & Paraben Free',
		'https://astroglide.com/products/glycerin-and-paraben-free',
		'',
		'data:image/png;base64,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',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		44,
		'Astroglide Warming Liquid',
		'https://astroglide.com/products/astroglide-warming-liquid',
		'',
		'data:image/png;base64,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',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		45,
		'Astroglide Strawberry Liquid',
		'https://astroglide.com/products/astroglide-strawberry-liquid',
		'',
		'data:image/png;base64,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',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		46,
		'Astroglide X Silicone Gel',
		'https://astroglide.com/products/astroglide-x-silicone-gel',
		'',
		'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAb4AAABxCAMAAACdmjYOAAAAkFBMVEX///9dLIdbKYZOCX5oPY7s6PFYI4RbKIZXIIOLb6dSFIBQDn9WHoJjN4tVHIJNAH3Nwdno4u1qQo/y7/X49vr7+fydibTYz+FiMouVfK7Tyd3g2ee5qcmnk7vPxNq/sc59W52vncLGudOEZaK1pMaYf7B1UJiijLh4VJmPdKo/AHWIa6WCYqCrmL9lOoxzT5YyOzfuAAAVCklEQVR4nO1d6ZaiPBNuiSydYKIioqKN0uLSLu/9390HylJZCPYoTvd8Pj/mzGkCJJVKLU8l+PbWAN/k4Okbj0wVrheVl9RNPfVFz/ebuvvmzVbT3bmTordJ1kHzDZd++9IbwUBvHL+6mWooo/pxqAUIcbk12rj21LxhZBuGANi+tmG4Ok4I17i4Z3od3Zfimrrpm6t6TnqZ4ckuiUf1fdh2GXYto3OBbVFCk4F2eH6w3v/XwdL7vsKyiQc6/tWvfdIMNgvKPyPFUBhzu5+rQPWUd/XIwb3Z9O3ZeXpgTPkEDgvcgXC2Ne2iLqGF2ASgqyRWVHlV1XRGalsYtoPxXr0G5l3i2uINDkpqB+fHn+kEW7bcb3tYtQIdNyb1ktpb1d3d8q99LD372iRVrc5Kesiopnk1nHHaas2Wcf8j6OB6Rb4iYPzd9KRsNptgSW6iJHrqyeWabq5N3y19OwfN5D7MaU0f6FA9SnNMcN2L8LxqBzpOF7WSGjHl3UvNUAxsi+tn3qTjLDUmPh4GX0NqzZg8/xz8jiBzOlc1S1jt5KVjiS5tAtTQsaqp16SCHYOFQhfCLq5VD2ejEndC3PoX0GrGA2AKWL27gYIn5d2mftQG++Cf0m3Q8YuCB19x8JX+aw53mrlL8ekIt+NYbuTvtOLOV3jTiroM++rR181mFhq3DFudAnWwbDMi3eR1LODioVHUiKtrq+4+3bKaKoSsoflFweOvMMAYT972tnb25pIPwh9yq6E4xxycazQyaupY1fQWM8sPe7RpWK9EMJ+jo35VkMqojUBLlfIWgifKu2vCgQoWZxkSrSg7uVXofwUB+kwV+FPjit/eBnIEgWWnc9SpcTmWRqOeAl2b3mJmOUmanaaVnVvlcmATvZiMTtUWdNxw6tMQIHgQ32hisAIIuAHfaZjtq4IPvk7BV5hGt7g+D0hxlg0SEX2OGJqKKIKw4Q2BS24Qp2Ay0jDzCurwnQFOeIC4S4ZtWaLSWwfY5QA1dIaCkAAYRXdcK6oRVd59aPYYLoiG4iann8/1BkfuaHw4fSlsYYlEsWCQmEXx1jqTHA+yzptVf+JkJzeFknDHcXRBvE6G3Niq6TO5ZMFF1nK/P3QZt75AJC/PXpqL8HBZlZhAo4gk3S0Rgc5Vd3MxmHuFqFn2snrKDoxEFqVluZNS6H3PTNjyrR4fpQ0DL2RixgWUs0Px5l3E8XrD+lD+Zc8txH3V9NOTJIGhtYqhJSqd8KgDemDhba5f3hSKzrCqB/GzZ6chwDEZ8wCLDxhFWxXA5tiAwOVY/hXGYNZpccH0zGcrxrlsPgBLwTpKonx/PxQeY0ZYiuNbPTxajNIG0awYA0BZk1NTFnnFEJgjRR4FJOHwGTe0qqUZ2IA/4k+gXVO4/qoE14QJhoF2sZYG9N2qteBAIaDgSWXRgG4XYVnWAy5aMDqlZm1d8Fddr9J+RduFlnPZFWKxl+NKQlRw3pNqdKieT+IA8yjJFvOSEKwVDH9o/rcxTLc4SsiEi7XK43pgsTqTJtoJeiNWH7ioBR+CGIwbCjSSYPrcm/iBm3Aq+8286m0iaQRGp/HrPKb6PGoMQjghuQNJlJUr8wfkOgRCD6hWJaM9VAGd9blio1w/EoBDAwZlqqTR3ngmrTKe8K9Ez9Q2oVKcNOXFNb3gRof1tYgSkNVT5VHgskjxLKu35RbKB3KzlsKTgM0vs/wYLAj38NYEjSmAUAveB++ia+6x4Eqlwkcw2+JYvge/jAdS5fCqMdj/cc0AJWQ1y+IK6C1FU/zGWytBI0Dmb+R0QwKMFhX0BxJ+1mf+N6qYUg2AURQ1F+JY6RWIb6LaocDpKykaaOw1/MAteC+7zUIYOwsaDpyRmgxVYFgbmVwAKF5LSEoB85+7BuhcpMACRu1FKgamu4NvKJeBWgS/fjiY0IJXgofR6Dt3w0xlYmBFhjR3TYOonDC65UxDocU5PkFM00B+F6h151dAFSQ8w+MDWeb5C7Cmop/kZZSTRVDrcf10lOCMYr1zgILHypEKQ4EJRUmEAFft3BpHKGGWvbbP/MuEBQHIScNW1HAUAJGJynqB6MQQ+NgtWHzXZTuDqiAREAuw0vJ8B6ibfRbbKwC8kc45AL0CBmUMDLvF3wD6UYbQMCDHM0/EbTnZBVW6clkfQA4uF9xxtUUDE5fm6B1PNZETjDWwwt5Ca8Wv5xh4vjwNANZJoQrASufhAWSIyA1pjlm/fiBmamIGuFmhSurDbL5QC64ig6Xiv44e41GlUtdCy7TORNZWEQyLsndlltSQR3GS4HzTGq60q38JtLUA6JBy/wIXX69ot+wOBfQKLwrL7Ea9vIDggRZBwyuUCWeK4FtfZtdV+QVUZFlezABJJh+gjHR8OlVGaprIJAMUcGWt/MG8B539XmqsGB50SFdXyUUYxRQNmC3AKNXKql0/EDBEAvETkJot5Jd7yB7lVlFfkdG8XuxNVbTIY7NuLW+kLcxhBXEAJYhkxsMD+mAUq2IyIQgYoo6VaziMchSBE2BX8iwKUiMlB7qVyl0FI8CZAlIfpsI4BJUGBRbbMG+ofXCpDEmHunKzrsovoCTLOiRfagaYPr4jia7UZ1D54cCNqmIHrsxuFKuB1xGnl+srLGQjKSwM5SxKGWEYkgaWagWMokQJAKjL7Iv6GAw6kMKlhtoap+71PFZYvMeDYTHvwD2iW34K4qc+MhElUQe8KxQcBNqidXrjCOt8qX1AqRURhrwRrEzPOaNYH+hwmVBlUEDvXIHMA2bVKFywvsyueX1dZ0oWg0vFhEwtQJrXyqVdToKyPWgus9uszIhCbeACI4FcfGAxlVKDfEmOMj2fK7M5CbCiVLl7aHj57SycWS1fph25uHxr4U+qnKEQCbeLQ1xQ3hQTTPNKpMvX+uXpA8VngQC4YN9QmzZwt1Jv6LSIFMPKgYuvcpWeHDuX6fmwfv1AicGYqmICwEjFMiFcaEXHoT21sQhW/3pBgKVMSgfOLRkF0TQKotUiR9KDEyCtLxiZKPY8+frdTBYawkVmyIwmAAga80oBHEaZnS3YRT5AoGUeBlc3q+f/1cSmpwpy80uQyC6iOximLmd9ETdWAwAfb70n0wuSJaynNz0IVtIl4g5EJqq4JtKmPlbCRaqcCZLqqHM56YJxp1u0+7jiVM1fWWy9scwOBA+0CMZglCdMYD+KSwO9Xt8IE8qv3GABvYNmq9UVwGjJawK4c1U5EsbOV9oBbpsWaihwrqWiLywsFHVIEBbZYs8qYqJMz311NieCK7NXcV2vlpfnLFBhw7f1/No3MGzaF9XsQ7eVzko1CBiZKMrsoUz6BXAnBOGeBz2IJRKCY1nDFbFMCXCtVCuurlVPOKoFH9RHewcV1wACctX2kduwbd6b3sjdAB2XdjXt9eVIKPOCe4JrgKc1/wPRt8jvcGxaPulQOUQOA5jakqm7scwOJ/mGMjtXLmbFatXwa7dj1rw7trHCCQQnpZpwA6CqHOmoyGxI5DLQ2J/U111hZal0W1BErjB9lcMuOz3Q17UKwKdWHC1c6bwNgo91yxx/qd8+chNGimNS0vQ1PRzorETp124AvALGzqi0VrDqAzlsqAtVFnfFDlrcwkjDLE7wfSDGLNUKGkXh8RBLJTETKYeSYgACYntSyKCm2vs96E4ylV1s2BEB9gHJnFj9BsALdkruiTu3A/wlx5YT/rwDnPFI9SBhPQE3WsbD6mxORM3+BhB+c2X2CJJU1RkpWOO0bjsNLGHdvBtf7wXeRh9DKGtRjWCxTTrexasgOOIRq5iuN2H/MvSkfRvu+6zUhJs+wwLkHyhBlrvloFFUbMgpAAXvVCOFrrfssznntomzKpoFxH/t6dcGAM9uEw5w2GXINnB6ElwuzJe8ZEOZfaFeuFCOkHAdcWS5040zwzoK19wpP3dZ3cAfHzBId7yaXxABO1mqFcelncWROor9DSCahUGxcbxgNzQIhc9EVZwDw9SOLNYUncZSe9URe2cOICKYgRY+f0sNCVA8CncP7YyizN5Rk9kc5QMXNM9uGxgxwhiBhSX+VGYoWBfbKbYGKNJzbodvRxxoUbGqITZ97hTD9aiCLQQWCKwy/uCjLFfD1dm8C4DTEqmuWOUGmo6tEamcEOvzqA8oCZBxcHuyYPbcxI9mZ6I5q3fDAbUyPdcfqiyDSTWx2XhMKB0hSO6aDz5qIt/8jZW1JiLDwG2jyi9+NPSQyiHOUhmZlIBldlj9CVX0fIa6I/9VXwVqZdp08hGolf58KBvJgleX2dWwEZRx48FH3QbTC8CpDbkwCHxWycfJZRYOVOYIIatHFGV29REPIVHilrQ+zzGYyF6YjVquLLMrmhXBJCQ23dHN76EdbjU1nWZv3kFbhfSGvNUdWil8Fbypj1Kx4ugAjNEUh2fWdbVpOK98utHXiYk68sawU1NsrSqz65oNpapGhoX+sLHFEs6miz5ZRtPpA0CWITlrBOlaEbprv9BiI1Xw27BdeVJH+sEEQcg6x7UDt9SfctnrJVUygnpvVMbFNRuOtVbBQkvBkTWeZle5GghAdDnv8mXYnZxontT30EJDlaOFkYm8L4WneDkyG7IromFfMFU/DJfta8pzK6ZbGcoyu6JZYcKBM622HerCAhuzgygcvzGi0mwwvQjItooI1XYUCQazqxD2GhMGTBHdpnfbDkZL9a6MT6ds5iiYm71bReW83/Rtu+5S2pEzEUJg2yXOop70NROMqQUeCbtfqlXXUl0vm+WP91H1R7DhHoyUEw0leBnJihsRzbsutzac09xPugU6ikrhyO5WuFZm9r2uCsPluO6kqgce0pG1adSpLk8E8z08l5fO/0l3zvYdhKl7OZBOMaIb/ZHT7I7V4T9l93uFkQpt5fWiWWGgItDpTlVmV97833E8D5XkzVItSyCPG45i/GYM+uvtNEmm23U//MZBgBdeeOGFF1544YUXXnjhhRdeeOGFF1544YUXXnjhhRdeqIE/8rxBGMw+4hL92SwMv/dlqheeCi+cRavt+3J47jiYISKeLycEEWpPhpvPZDXvh+YfnkV44bEYhf1VsrQvE0ZdK9tHUb/vJNv2YDmUYoIY3UwXcXDjqfMXHg5zNp8uO4xkPxFxw8+2yDuPLBcTZu/2848/PVL5wh8hjMYb+4/njV+QtpUuRnuzje/7+vQfD+WvvPVvwR/EySZdce79E8dPoosRWm5v/YTHAwd061eMfz38YH20EXaav7z1h8jm8LyPnrwMk/8D0+0Hiw1OQ8eHrjkVDAsTZx89U6RJ/XdL/gmEqyVS/Cxqm1PIzsnH07LE0/KfTWO8eG8gesO5/UdPoYPpcv4kO9oXf4Tz30C4GjLc+AuIrcGirLd4SmgYssO/xggF2x6iz7OYahgummyfMIOjIfuXPOBs6hD3ry07DoZLOk+YwfHX5h/JAYMkjf5+xtxdka7B86rtYDRmwsnPX4lwOyHNx9ifDpuSZdyudM0uU32z4xfBXE1QGzbTyH4QNzuERoVCBKWu61iW+L109QxikrRr3xKGu7d+9vrHwY+XjD6WC7OcdL4IQ9Z5czxMt4v5PIqijwJxHM3ni21y+Nx1LcSymoWjj3MdNIzaXIJ97JJN0xHHH4kwsfCj0jvDdikmBHffx6t4Fnq3SNz3wlm8Gh96JL2RWnX8jo1p0mI2OFoSi4nn5388/GjIHhKsZPUDRLvH7Xw2+FP62Qvj9XQ3IUT8sfJcNxy2bDHLniPbRsffNIHh2MH3J3i2k5rJ7vuqP3hIBux7QZTsCMIKts4m3fZsqLnBhoWWv8SEjqINunfh2RYm7nAcqc+f34VBf7FzCbaEOUxt6Km14tI89SIW2vwCIi2YkjsXXlblGU7bmLkKg2jaTZchp2QGJeO2UkHviIx0ifd+dhoxOPXIXdFKOnVss/h4So3V628nDHN2wsX7tiawb9FLprL9qcVAbz68K00wHIw3p+CpPIXXn04ILH84rK0J9Lcse4+LPn+gDfXi4110tE3ZOen/FZJ+MF8ikOE4aNrSBA52JJOQRTqnH7UER9ER35PiWRjtnlWJUw+gv6cVKeuQpCXr3Z9cvtBlUNY2X3czvOjI7glWLOy8xz+gNhYknXIGXbZoSbprfP2Km43d/W0/Dd0mBusNuW/dkf3HD9HDbAbdIvKiVktB4mhc8PcWpslfnEF/trXJXf4O48+fxufO9vSqjgaetBRimFOU64jhEGv6vB04AIP5keC7knMHbeY/cUe7Hy+vv8xroGVL/nhwYIXFMizsHp+6De7NjPeTO3c92Ji1XKq5B+bJvcSINmqr3Do4IPCtcMom29lTFqEZJ/a9m40MF21ardI8ALPj5TcMXOlD8I/CYM/gr0u4mOxOrU7hKJwfRJriD2AR6xlbhe6GuXCyD8KTXVsZjZnwv3JhU4yH7ZzMCONkSAm9e4ufjclPJB1qEHdJRjX/4e/gNMM72ZiXaLoKEf1c9B92WtEL5tPsCMkDinc2RbvoB2R430DwiZwOnbRW6/GjLpLyroyztzfJfHZXRGPO5uPdBGF1jfP7c8e6re/tagGDKXNtNG3PVQcHomCKDdvJthf03rfz2fe+STwI+qvxskMec9zu2hmKuqe/yYrdA2+LKbVaTLC906SuTmNY2SYRRrvL92QVxR+haXreCOqSPxp5phnO4mi93R+HNkIPnLcM6bobnn5DsFKL0clNE5023zA7MG0mZtiXPVqYpJPjZBFr75yhl/7PcS5/vZwkt27ZX/cdWOm6W/3WdVdhtEJs0qoKjuYbdGu5jfthgsfOF3yLhfFy/gv9nQr+An+dmpvdg8Gp18qe2D9BGma60+cfTW4Ro+3Xpu3xZDvS//4pHidNQH+3u1PCe3/Csb3wNPwbxx+LqbMwOif/1LIDGGxay+EBzPmRtXjiXzd19LnHyJ+Oj8+nEA/+bNwlTzzIaruY9KbP/ojD38DTtnWY8fQBHHMjDIsSstv2/+lVB/BM3s+Mk152QqOVOcyoHUIm05pf43rhIfCC9eHRc2hkR0cyYjX8R6OUHwZvtp4OGbqbELvQcAgN96vHlTVeuBGD2TrZdCi6MGTfmMfsMGvGnmLr/LmYB/8vbu5nwht8RIuCn87OEzuWJf3AaH76OCNKGbGHx/0i6t92MPKFJ8E3w+AjWp+24/37crepfuJzuNt9vifjxWoez4LXpN2O/wF8UXqlHkNqOwAAAABJRU5ErkJggg==',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		47,
		'Replens Long-Lasting Vaginal Moisturizer',
		'http://www.replens.com/en-ca/Products/Replens-Long-Lasting-Moisturizer/',
		'',
		'https://www.replens.com/en-ca/Image/logo-new.png',
		'{cid2} and {cid5} and {cid7}'
	),
	(
		8,
		48,
		'Replens Silky Smooth Lubricant',
		'http://www.replens.com/en-ca/Products/Replens-Silky-Smooth-Lubricant/',
		'',
		'https://www.replens.com/en-ca/Image/logo-new.png',
		'{cid2} and {cid5} and {cid8}'
	),
	(
		8,
		49,
		'Replens External Comfort Gel',
		'http://www.replens.com/en-ca/Products/Replens-External-Comfort-Gel/',
		'',
		'https://www.replens.com/en-ca/Image/logo-new.png',
		'{cid2} and {cid5} and {cid7}'
	),
	(
		8,
		50,
		'Gynatrof',
		'https://www.gynatrof.com/en/gynatrof/?gclid=EAIaIQobChMI062kpITh5wIVA9RkCh1CKArpEAAYASAAEgIzC_D_BwE',
		'',
		'https://www.gynatrof.com/wp-content/uploads/2018/11/Gynatrof-LogoTagPink-FINAL.png',
		'{cid2} and {cid5} and {cid7}'
	),
	(
		8,
		51,
		'Provacare Probiotic Vaginal Care Ovules',
		'http://provacare.ca/about/provacare-products',
		'',
		'http://provacare.ca/wp-content/themes/provacare/assets/img/logoBG_en.png',
		'{cid3} and {cid5} and {cid9}'
	),
	(
		8,
		52,
		'Prevegyne',
		'https://www.prevegyne.com/en/',
		'',
		'https://prevegyne.com/images/prevegyne-logo-white.svg',
		'{cid3} and {cid5} and {cid10}'
	),
	(
		8,
		53,
		'Cystoplus',
		'https://cystoplus.ca/',
		'',
		'https://www.cystoplus.ca/sites/cystoplus/files/header/Cystoplus%20EN%20G.png',
		'{cid1} and {cid5} and {cid11}'
	);
