INSERT INTO ailments VALUES 
	(
		3, 
		'Diabetes Meter', 
		'Consult immediate medical attention for hypoglycemia symptoms including irregular/fast heartbeat, fatigue, pale skin, shakiness, anxiety, sweating, hunger, irritability, tingling in a non-diabetic individual. Consult emergency medical attention for diabetics experiencing severe hypoglycemia symptoms including confusion, abnormal behaviour, visual disturbances, seizures or loss of consciousness. Consult immediate medical attention if hypoglycemia is unresponsive to glucose administration.'
	);

INSERT INTO questions VALUES 
	(
		3, 
		1, 
		1, 
		'Would you like a meter with quasi lab level accuracy', 
		'While all blood glucose meters are calibrated for accuracy and precision, some meters are slightly more acurate than others. However, these differences typically would not affect individual therapy and clinical outcomes.'
	), 
	(
		3, 
		2, 
		1, 
		'Would you like an easy to use meter', 
		'Some meters are preprogrammed in order to simplify operation and make it easier to obtain blood glucose readings.'
	), 
	(
		3, 
		3, 
		1, 
		'Would you like a meter with color coded readings', 
		'Some meters provide color coded blood glucose results in order to simply interpretation of blood glucose levels. May be helpful for individuals requiring assistance or new users.'
	), 
	(
		3, 
		4, 
		1, 
		'Do you have issues drawing sufficient blood', 
		'Some meters will inform user that an insufficient amount of blood has been assayed and will permit application of more blood to a strip in use. May be helpful for individuals who have difficulties drawing blood consistently.'
	), 
	(
		3, 
		5, 
		1, 
		'Would you like a large display', 
		'Some meters have a larger display with larger font size making use easier for individuals with limited visual acuity.'
	), 
	(
		3, 
		6, 
		1, 
		'Would you like a backlighted meter', 
		'Some meters have a lighted display making use easier for individuals with limited visual acuity or for reading blood glucose in low light conditions.'
	), 
	(
		3, 
		7, 
		1, 
		'Are you computer savvy', 
		'Some meters connect to electronic devices in order to display, interpret and share blood glucose results. Ideal for individuals who are computer savvy or highly engaged in there health management.'
	), 
	(
		3, 
		8, 
		1, 
		'Would you like a talking device', 
		'Some meters provide audio guidance, cues or instruction during blood glucose measurement. May be helpful for individuals with limited vision or requiring assistance.'
	), 
	(
		3, 
		9, 
		1, 
		'Would you like to measure ketones', 
		'Ketone measurement is recommended in acute illness, elevated sugars or presence of ketoacidosis symptoms including thirst, dry mouth, frequent urination, nausea,vomiting, blurred vision, fruity breath, abdominal pain. May be useful for certain diets.'
	), 
	(
		3, 
		10, 
		1, 
		'Would you prefer an implanted sensor instead of strips', 
		'Eliminate finger pricks, more economical  with frequent or continuous measuring, provide immediate feedback and measurement. Ideal for T1DM. Dexcom (CGM) used for kids/adults over 2 yrs old. 14 day Freestyle Libre (FGM) and 10 day Dexcom sensor.'
	), 
	(
		3, 
		11, 
		1, 
		'Would you like assistance with insulin dosing', 
		'Some meters may assist user in making insulin dose adjustments. May be helpful for individuals requiring assistance or first time users.'
	), 
	(
		3, 
		12, 
		1, 
		'Would you like a meter designed around insulin pump', 
		'Some meters are developed to facilitate use of insulin pumps.'
	), 
	(
		3, 
		13, 
		1, 
		'Would you like a discrete or small sized meter', 
		'Some meters are designed to be small, portable and discreet devices.'
	);

INSERT INTO criteria VALUES 
	(3, 1, 'Accurate', 'not {qid1}'), 
	(3, 2, 'Simple/Automated', 'not {qid2}'), 
	(3, 3, 'Color', 'not {qid3}'), 
	(3, 4, '2nd Chance', 'not {qid4}'), 
	(3, 5, 'Light Display', 'not {qid6}'), 
	(3, 6, 'Large Display', 'not {qid5}'), 
	(3, 7, 'Smart Phone', 'not {qid7}'), 
	(3, 8, 'Pump Compatible', 'not {qid12}'), 
	(3, 9, 'Talking', 'not {qid8}'), 
	(3, 10, 'Ketone', 'not {qid9}'), 
	(3, 11, 'Sensor', 'not {qid10}'), 
	(3, 12, 'Dose Calulator', 'not {qid11}'), 
	(3, 13, 'Portable', 'not {qid13}');

INSERT INTO products VALUES 
	(
		3,
		1,
		'Contour Next',
		'https://www.ascensiadiabetes.ca/products/contour-next/',
		'',
		'https://www.ascensiadiabetes.ca/globalassets/refactored-navbar/contour_logo_blue.png',
		'{cid3} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		2,
		'Contour Next One',
		'https://www.contournextone.ca/',
		'',
		'https://www.ascensiadiabetes.ca/globalassets/refactored-navbar/contour_logo_blue.png',
		'{cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		3,
		'Contour Next Link',
		'https://www.ascensiadiabetes.ca/products/contour-next-link/',
		'',
		'https://www.ascensiadiabetes.ca/globalassets/refactored-navbar/contour_logo_blue.png',
		'{cid2} and {cid3} and {cid6} and {cid7} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		4,
		'Contour Next Ez',
		'https://www.ascensiadiabetes.ca/products/contour-next-ez/',
		'',
		'https://www.ascensiadiabetes.ca/globalassets/refactored-navbar/contour_logo_blue.png',
		'{cid3} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		5,
		'Ez Health Oracle',
		'https://www.oraclediabetes.com/products.html',
		'',
		'https://www.oraclediabetes.com/images/logo.png',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		6,
		'Bg Star',
		'https://www.diabetes.co.uk/blood-glucose-meters/sanofi-aventis-bgstar.html',
		'',
		'',
		'{cid1} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		7,
		'Accu-Chek Guide',
		'https://www.accu-chek.ca/en/meter-systems/guide',
		'',
		'https://www.accu-chek.ca/sites/g/files/iut106/f/accu-chek-logo-header_1.png',
		'{cid1} and {cid3} and {cid4} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		8,
		'Accu-Chek Aviva',
		'https://www.accu-chek.ca/en/meter-systems/aviva',
		'',
		'https://www.accu-chek.ca/sites/g/files/iut106/f/accu-chek-logo-header_1.png',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		9,
		'Accu-Chek Aviva Connect',
		'https://www.accu-chek.ca/en/meter-systems/aviva-connect',
		'',
		'https://www.accu-chek.ca/sites/g/files/iut106/f/accu-chek-logo-header_1.png',
		'{cid1} and {cid3} and {cid4} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		10,
		'Accu-Chek Aviva Nano',
		'https://www.accu-chek.ca/en/meter-systems/aviva-nano',
		'',
		'https://www.accu-chek.ca/sites/g/files/iut106/f/accu-chek-logo-header_1.png',
		'{cid1} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		11,
		'Dexcom G6 Cgm',
		'https://www.dexcom.com/en-CA',
		'',
		'https://www.dexcom.com/sites/all/themes/dexcom/images/logo/dexcom-category-logo-green.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid9} and {cid10} and {cid12} and {cid13}'
	),
	(
		3,
		12,
		'Onetouch Verio Reflect ',
		'https://www.onetouch.ca/products/glucose-meters/onetouch-verio-reflect',
		'',
		'https://www.onetouch.ca/sites/onetouch_ca/files/2021-05/onetouch-logo_0.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		13,
		'Onetouch Verio Flex ',
		'https://www.onetouch.ca/products/glucose-meters/onetouch-verio-flex',
		'',
		'https://www.onetouch.ca/sites/onetouch_ca/files/2021-05/onetouch-logo_0.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		14,
		'Onetouch Verio ',
		'https://www.onetouch.ca/products/glucose-meters/onetouch-verio',
		'',
		'https://www.onetouch.ca/sites/onetouch_ca/files/2021-05/onetouch-logo_0.png',
		'{cid1} and {cid4} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		15,
		'Onetouch Verio  Iq',
		'https://www.onetouch.ca/products/glucose-meters/onetouch-verio-iq',
		'',
		'https://www.onetouch.ca/sites/onetouch_ca/files/2021-05/onetouch-logo_0.png',
		'{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		16,
		'Onetouch Ultramini ',
		'https://www.onetouch.ca/products/glucose-meters/onetouch-ultramini',
		'',
		'https://www.onetouch.ca/sites/onetouch_ca/files/2021-05/onetouch-logo_0.png',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12}'
	),
	(
		3,
		17,
		'Onetouch Ultra 2',
		'https://www.onetouch.ca/products/glucose-meters/onetouch-ultra2',
		'',
		'https://www.onetouch.ca/sites/onetouch_ca/files/2021-05/onetouch-logo_0.png',
		'{cid1} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		18,
		'Freestyle Libre',
		'https://www.freestyle.abbott/ca/en/products/libre.html',
		'',
		'https://www.freestyle.abbott/content/dam/adc/freestyle/countries/ca-en/images/logo-images/FreeStyle-logo.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid8} and {cid9} and {cid10} and {cid12} and {cid13}'
	),
	(
		3,
		19,
		'Freestyle Precision Neo',
		'https://www.freestyle.abbott/ca/en/products/precision_neo.html',
		'',
		'https://www.freestyle.abbott/content/dam/adc/freestyle/countries/ca-en/images/logo-images/FreeStyle-logo.png',
		'{cid1} and {cid2} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid11} and {cid12} and {cid13}'
	),
	(
		3,
		20,
		'Freestyle Lite',
		'https://www.freestyle.abbott/ca/en/products/lite.html',
		'',
		'https://www.freestyle.abbott/content/dam/adc/freestyle/countries/ca-en/images/logo-images/FreeStyle-logo.png',
		'{cid1} and {cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12}'
	),
	(
		3,
		21,
		'Freestyle Insulix',
		'https://www.freestyle.abbott/ca/en/products/insulinx.html',
		'',
		'https://www.freestyle.abbott/content/dam/adc/freestyle/countries/ca-en/images/logo-images/FreeStyle-logo.png',
		'{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid13}'
	);
