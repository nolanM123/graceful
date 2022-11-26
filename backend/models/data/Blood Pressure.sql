INSERT INTO ailments VALUES 
	(
		25, 
		'Blood Pressure', 
		'Consult your heath care provider if you are experiencing dizziness, low blood pressure, falls, irregular heart beat or untreated high blood pressure. Immediately seek emergency medical care for blood pressure of ≥200mmHg, chest pain, chest tightness or symptoms of stroke/heart attack.'
	);

INSERT INTO questions VALUES 
	(
		25, 
		1, 
		1, 
		'Would you like a battery operated device', 
		'Battery operated monitors provide a portable option but may require purchase of batteries for continued operation.'
	), 
	(
		25, 
		2, 
		1, 
		'Would you like batteries included', 
		'Some battery operated monitors are sold with/without batteries.'
	), 
	(
		25, 
		3, 
		1, 
		'Would you like a plug in (AC or USB) and battery operated device', 
		'Some monitors are powered by electric outlet or usb plug-in power supply and also work with batteries. These are the most common type of monitors.'
	), 
	(
		25, 
		4, 
		1, 
		'Would you like an AC adapter included', 
		'Some plug-in monitors are sold with/without AC adapter to allow use of electric outlet as a power source.'
	), 
	(
		25, 
		5, 
		1, 
		'Would you like a wireless device (links to phone/tablet)', 
		'Some monitors can link to your phone and/or computer allowing yourself or multiple users to store and/or share unlimited readings. Best for electronically savvy individuals.'
	), 
	(
		25, 
		6, 
		1, 
		'Would you like to log data for multiple separate users', 
		'Some monitors allow seperate recording/saving readings for multiple users. Ideal for use of multiple individuals in the same household or institution but are a more complex option.'
	), 
	(
		25, 
		7, 
		1, 
		'Would you like log data for single user ', 
		'Single user monitor is easy and simple to use and can store user readngs but will not distinguish between multiple users.'
	), 
	(
		25, 
		8, 
		1, 
		'Would you like a wide size range cuff', 
		'Some monitors come with an arm cuff which can adjust to a wide range of sizes. Ideal for use by multiple users. Many monitors come with wide range cuffs.'
	), 
	(
		25, 
		9, 
		1, 
		'Would you like a sized cuff', 
		'Some monitors come with an arm cuff fitted to a specific arm size. Ideal for use by a single user or multiple users of near similar arm size.'
	), 
	(
		25, 
		10, 
		1, 
		'Would you like a motion and fit sensor', 
		'Some monitors can detect improperly fit cuff or excessive user motion thereby reducing recording error.'
	), 
	(
		25, 
		11, 
		1, 
		'Would you like an irregular heart rate sensor', 
		'Some monitors can detect abnormal heart beats and can be useful for individuals with conditions such as atrial fibrillation.'
	), 
	(
		25, 
		12, 
		1, 
		'Would you like one-touch operation', 
		'Simplest user friendly monitors allow operation by the touch of a single button.'
	), 
	(
		25, 
		13, 
		1, 
		'Would you like a device with verbal assistance ', 
		'Some monitors can provide verbal asistance to the user during reading providing guidance to simplify use.'
	), 
	(
		25, 
		14, 
		1, 
		'Would you like a device with measurement reminders', 
		'Some monitors can be programed to remind the user to preform a reading at a specific time. May be beneficial for individuals with memory issues.'
	);

INSERT INTO criteria VALUES 
	(25, 1, 'Battery', '{qid1} and not {qid3}'), 
	(25, 2, 'Plug-In', '{qid3} and not {qid1}'), 
	(25, 3, 'Battery+', 'not {qid2}'), 
	(25, 4, 'Adapt+', 'not {qid4}'), 
	(25, 5, 'Wireless', 'not {qid5}'), 
	(25, 6, 'Single User', '{qid7} and not {qid6}'), 
	(25, 7, 'Multi-User', '{qid6} and not {qid7}'), 
	(25, 8, 'Motion/Fit Sensor', 'not {qid10}'), 
	(25, 9, 'Irregular Beat indicator', 'not {qid11}'), 
	(25, 10, 'Wide Cuff', '{qid8} and not {qid9}'), 
	(25, 11, 'Size Cuff', '{qid9} and not {qid8}'), 
	(25, 12, 'One Touch Button', 'not {qid12}'), 
	(25, 13, 'Verbal Assist', 'not {qid13}'), 
	(25, 14, 'Reading Reminder', 'not {qid14}');

INSERT INTO products VALUES 
	(
		25, 
		1, 
		'Lifesource Premium Blood Pressure Monitor', 
		'https://lifesourcecanada.com/product/premium-blood-pressure-monitor/', 
		'Advanced, multi-user blood pressure monitor that provides trusted accuracy and reliable measurements every time.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		2, 
		'Lifesource Blood Pressure Monitor With Large Cuff', 
		'https://lifesourcecanada.com/product/blood-pressure-monitor-large-cuff/', 
		'Advanced Premium, 90 memory blood pressure monitor that provides trusted accuracy and reliable measurements every time.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		3, 
		'Lifesource Blood Pressure Monitor', 
		'https://lifesourcecanada.com/product/blood-pressure-monitor/', 
		'A classic blood pressure monitor with the benefits of speed and accuracy at a touch of a button.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		4, 
		'Lifesourece Premium Wireless Blood Pressure Monitor', 
		'https://lifesourcecanada.com/product/premium-wireless-blood-pressure-monitor/', 
		'A wireless blood pressure monitor that automatically records and tracks measurements via mobile app to enable trending and sharing.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		5, 
		'Lifesource Premium Blood Pressure Monitor With Verbal Assistance', 
		'https://lifesourcecanada.com/product/premium-blood-pressure-monitor-with-verbal-assistance/', 
		'A premium talking blood pressure monitor with advanced inflation technology that provides audible readings and instructions in multiple languages.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		6, 
		'Lifesource Premium Blood Pressure Monitor With Pre-Formed Cuff', 
		'https://lifesourcecanada.com/product/premium-blood-pressure-monitor-with-pre-formed-cuff/', 
		'Quick response blood pressure monitor with advanced technology and an easy to use wide range pre-formed cuff.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		7, 
		'Lifesource Premium Blood Pressure Monitor With Extra Large Cuff', 
		'https://lifesourcecanada.com/product/premium-blood-pressure-monitor-with-extra-large-cuff/', 
		'The only home blood pressure monitor designed to provide accurate readings for people with larger arms.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		8, 
		'Lifesource Ultraconnect Premium Wireless Blood Pressure Monitor', 
		'https://lifesourcecanada.com/product/ultraconnect-premium-wireless-blood-pressure-monitor/', 
		'The next generation of blood pressure monitoring, providing the ultimate user experience and accuracy.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		9, 
		'Lifesource Blood Pressure Monitor With Small Cuff', 
		'https://lifesourcecanada.com/product/blood-pressure-monitor-with-small-cuff/', 
		'Advanced Premium, 90 memory blood pressure monitor that provides trusted accuracy and reliable measurements every time.', 
		'https://lifesourcecanada.com/wp-content/uploads/2020/06/New-LS-logo-white_159.png'
	), 
	(
		25, 
		10, 
		'Omron Bronze Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/bronze-upper-arm-blood-pressure-monitor-bp5100/', 
		'The OMRON Bronze Upper Arm home blood pressure monitor is designed for accuracy and stores 14 blood pressure readings for one user, and includes a wide-range D-ring cuff (fits arms 9″ to 17″ (22-42 cm) in circumference).', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		11, 
		'Omron 3 Series Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/3-series-upper-arm-blood-pressure-monitor-bp7100can/', 
		'The OMRON 3 Series Upper Arm home blood pressure monitor is designed for accuracy and stores 14 blood pressure readings for one user, and includes a wide-range D-ring cuff.', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		12, 
		'Omron Silver Wireless Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/silver-wireless-upper-arm-blood-pressure-monitor-bp5250/', 
		'The OMRON Silver Wireless Bluetooth® Upper Arm home blood pressure monitor will measure, store and let you review 80 readings for one user, and includes a pre-formed Comfit cuff (fits arms 9″ to 17″ (22-42 cm) in circumference).', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		13, 
		'Omron 5 Series Wireless Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/5-series-wireless-upper-arm-blood-pressure-monitor-bp7250can/', 
		'The OMRON 5 Series Wireless Bluetooth® Upper Arm home blood pressure monitor will measure, store and let you review 60 readings for one user, and includes a wide-range D-ring cuff (fits arms 9″ to 17″ (22-42 cm) in circumference).', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		14, 
		'Omron Gold Wireless Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/gold-wireless-upper-arm-blood-pressure-monitor-bp5350/', 
		'The OMRON Gold Wireless Bluetooth® Upper Arm home blood pressure monitor is a horizontally designed, dual-display monitor, that stores up to 120 readings for two users (60 readings each) and features a Morning Hypertension Indicator and Averaging feature; includes a wide-range D-ring cuff (fits arms 9″ to 17″ (22-42 cm) in circumference).', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		15, 
		'Omron Platinum Wireless Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/platinum-wireless-upper-arm-blood-pressure-monitor-bp5450/', 
		'The OMRON Platinum Wireless Bluetooth® Upper Arm home blood pressure monitor has a horizontally designed, dual-display monitor, stores up to 200 readings for two users (100 readings each) and TruRead technology plus a Morning Hypertension Indicator and Averaging feature; includes a wide-range D-ring cuff (fits arms 9″ to 17″ (22-42 cm) in circumference).', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		16, 
		'Omron 7 Series Wireless Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/7-series-wireless-upper-arm-blood-pressure-monitor-bp7350can/', 
		'The OMRON 7 Series Wireless Bluetooth® Upper Arm home blood pressure monitor has a horizontally designed dual-display monitor and stores up to 120 readings (60 readings per each of two users), and includes a pre-formed Easy-Wrap ComFit Cuff (fits arms 9″ to 17″ (22-42 cm) in circumference).', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		17, 
		'Omron 10 Series Wireless Upper Arm Blood Pressure Monitor', 
		'https://www.omronhealthcare.ca/products/10-series-wireless-upper-arm-blood-pressure-monitor-bp7450can/', 
		'The OMRON 10 Series Wireless Bluetooth® Upper Arm home blood pressure monitor has a horizontally designed dual-display monitor and stores up to 200 readings for two users (100 per user), and includes a pre-formed Easy-Wrap Comfit Cuff (fits arms 9″ to 17″ (22-42 cm) in circumference).', 
		'https://www.omronhealthcare.ca/wp-content/uploads/omron-logo_r.svg'
	), 
	(
		25, 
		18, 
		'Panasonic Portable Blood Pressure Monitor', 
		'https://shop.panasonic.com/', 
		'', 
		'https://shop.panasonic.com/themes/custom/pna2018/logo.svg'
	);

INSERT INTO productCriteria VALUES 
	(25, 1, '{cid2} and {cid4} and {cid5} and {cid7} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 2, '{cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14}'), 
	(25, 3, '{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid8} and {cid11} and {cid13} and {cid14}'), 
	(25, 4, '{cid1} and {cid4} and {cid6} and {cid8} and {cid11} and {cid13} and {cid14}'), 
	(25, 5, '{cid2} and {cid5} and {cid6} and {cid11} and {cid14}'), 
	(25, 6, '{cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid10} and {cid13}'), 
	(25, 7, '{cid2} and {cid3} and {cid5} and {cid6} and {cid11} and {cid13}'), 
	(25, 8, '{cid2} and {cid7} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 9, '{cid2} and {cid3} and {cid5} and {cid6} and {cid8} and {cid11} and {cid12} and {cid13} and {cid14}'), 
	(25, 10, '{cid1} and {cid4} and {cid5} and {cid6} and {cid8} and {cid10} and {cid13} and {cid14}'), 
	(25, 11, '{cid1} and {cid3} and {cid4} and {cid5} and {cid6} and {cid8} and {cid10} and {cid13} and {cid14}'), 
	(25, 12, '{cid2} and {cid4} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 13, '{cid2} and {cid4} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 14, '{cid2} and {cid4} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 15, '{cid2} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 16, '{cid2} and {cid4} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 17, '{cid2} and {cid7} and {cid8} and {cid10} and {cid12} and {cid13} and {cid14}'), 
	(25, 18, '{cid2} and {cid4} and {cid5} and {cid6} and {cid8} and {cid9} and {cid11} and {cid13} and {cid14}');
