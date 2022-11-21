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
	(3, 1, 'Contour Next', '', '', ''), 
	(3, 2, 'Contour Next One', '', '', ''), 
	(3, 3, 'Contour Next Link', '', '', ''), 
	(3, 4, 'Contour Next Ez', '', '', ''), 
	(3, 5, 'Ez Health Oracle', '', '', ''), 
	(3, 6, 'Bg Star', '', '', ''), 
	(3, 7, 'Accu-Chek Guide', '', '', ''), 
	(3, 8, 'Accu-Chek Aviva', '', '', ''), 
	(3, 9, 'Accu-Chek Aviva Connect', '', '', ''), 
	(3, 10, 'Accu-Chek Aviva Nano', '', '', ''), 
	(3, 11, 'Dexcom G6 Cgm', '', '', ''), 
	(3, 12, 'Onetouch Verio Reflect™', '', '', ''), 
	(3, 13, 'Onetouch Verio Flex®', '', '', ''), 
	(3, 14, 'Onetouch Verio®', '', '', ''), 
	(3, 15, 'Onetouch Verio® Iq', '', '', ''), 
	(3, 16, 'Onetouch Ultramini®', '', '', ''), 
	(3, 17, 'Onetouch Ultra®2', '', '', ''), 
	(3, 18, 'Freestyle Libre', '', '', ''), 
	(3, 19, 'Freestyle Precision Neo', '', '', ''), 
	(3, 20, 'Freestyle Lite', '', '', ''), 
	(3, 21, 'Freestyle Insulix', '', '', '');

INSERT INTO productCriteria VALUES 
    (3, 1, '{cid3} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 2, '{cid2} and {cid3} and {cid4} and {cid5} and {cid6} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 3, '{cid2} and {cid3} and {cid6} and {cid7} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 4, '{cid3} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 5, '{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid11} and {cid12} and {cid13}'), 
    (3, 6, '{cid1} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 7, '{cid1} and {cid3} and {cid4} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 8, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 9, '{cid1} and {cid3} and {cid4} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 10, '{cid1} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 11, '{cid1} and {cid2} and {cid3} and {cid4} and {cid9} and {cid10} and {cid12} and {cid13}'), 
    (3, 12, '{cid1} and {cid4} and {cid5} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'), 
    (3, 13, '{cid1} and {cid4} and {cid5} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'),
    (3, 14, '{cid1} and {cid4} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'),
    (3, 15, '{cid1} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'),
    (3, 16, '{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12}'),
    (3, 17, '{cid1} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12} and {cid13}'),
    (3, 18, '{cid1} and {cid2} and {cid3} and {cid4} and {cid8} and {cid9} and {cid10} and {cid12} and {cid13}'),
    (3, 19, '{cid1} and {cid2} and {cid3} and {cid4} and {cid7} and {cid8} and {cid9} and {cid11} and {cid12} and {cid13}'),
    (3, 20, '{cid1} and {cid3} and {cid4} and {cid6} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid12}'),
    (3, 21, '{cid1} and {cid3} and {cid4} and {cid5} and {cid7} and {cid8} and {cid9} and {cid10} and {cid11} and {cid13}');
