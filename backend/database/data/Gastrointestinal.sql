INSERT INTO ailments VALUES 
	(
		9, 
		'GastroIntestinal', 
		'Consult your phyisician if experiencing abdominal pain in addition to difficulty swallowing, weight loss (>3kg over 6 months), persistent vomitting, bleeding, bloody vomit, dark or bloody stools, fever, chills, anemia, dramatic symptom change or worsening symptoms, localized moderate/severe pain with tenderness, abdominal or rectal mass, drug-induced causes, recent abdominal surgery, alternating diarrhea and constipation or comorbid disease including advanced age, diabetes, heart failure, immunosuppression, eating disorder or renal insufficiency.'
	);

INSERT INTO questions VALUES 
	(
		9, 
		1, 
		1, 
		'Are you Pregnant and/or Breast Feeding', 
		'Use of antacids containing magnesium trisilicate and/or famotidine should be avoided in pregnancy.'
	), 
	(
		9, 
		2, 
		1, 
		'Are you an adult ≥ 12 yrs old', 
		'Children with flu like symptoms or chicken pox should avoid pepto-bismol due to risk of Reye syndrome.'
	), 
	(
		9, 
		3, 
		1, 
		'Do you drink alcohol frequently', 
		'Alcohol may enhance the sedative effects of some medications.'
	), 
	(
		9, 
		4, 
		1, 
		'Are you taking any anticholinergics or CNS depressants ', 
		'Anticholinergic and CNS depressants are medications that cause or enhance drowsiness. Avoid use with dimenhydrinate. Consult your pharmacist if unsure.'
	), 
	(
		9, 
		5, 
		1, 
		'Are you taking any blood thinners', 
		'Blood thinners include warfarin, aspirin, clopidogrel, dipyridamole, ticlopidine, ticagrelor, dabigatran, apixaban, rivaroxaban, dalteparin, etc. Bismuth may increase risk of bleeding. Counsult your pharmacist for further information.'
	), 
	(
		9, 
		6, 
		1, 
		'Are you taking opioids or have a gastrointestinal obstruction', 
		'Avoid use of bulk forming agents if taking opioids, have GI obstruction or inadequate hydration due to increased risk of fecal impaction.'
	), 
	(
		9, 
		7, 
		1, 
		'Do you have hypertension (uncontrolled), glaucoma, hyperthyroidism and/or seizures', 
		'Some medications may worsen hypertension, glaucoma, hyperthyroidism and seizures. Avoid use if you have these conditions. Gravol may worsen glaucoma and prostatic hypertrophy.'
	), 
	(
		9, 
		8, 
		1, 
		'Are you taking an MAOI (within last 2 weeks)', 
		'MAOIs include safinamide, linezolid, procarbazine, amphetamines (ADHD meds), methylene blue, rasagiline, moclobemide, selegiline, phenelzine and tranylcypromine. Consult your pharmacist if unsure.'
	), 
	(
		9, 
		9, 
		1, 
		'Do you have kidney disease, gall stones, dehydration or salt restrictions', 
		'Avoid use of magnesium or aluminum salts due to toxicity risk in presence of kidney disease.'
	), 
	(
		9, 
		10, 
		1, 
		'Are you immunocompromised or immunosupressed', 
		'Some products should be avoided if you have immune supression or are taking immunosuppressive medications.'
	), 
	(
		9, 
		11, 
		1, 
		'Are you lactose intolerant', 
		'Some products may help digest lactose and reduce lactose intolerance symptoms.'
	), 
	(
		9, 
		12, 
		1, 
		'Do you have type I or type II diabetes', 
		'Some products may contain sugar or worsen blood glucose and should be avoided by diabetics.'
	), 
	(
		9, 
		13, 
		2, 
		'Do you have diarrhea', 
		'Consult your physician for worsening/persistent/chronic diarrhea or severe diarrhea (more than 6 times/day for more than 48 hrs). Consult your physician for diarrhea in a child less than 2 yrs old.'
	), 
	(
		9, 
		14, 
		2, 
		'Do you have constipation', 
		'Consult a physician for child < 2 yrs old, constipation > 2 weeks, absence of bowel movement > 7 days. Constipation treatments may reduce/slow absorption/bioavailability of some medications.'
	), 
	(
		9, 
		15, 
		2, 
		'Do you have nausea', 
		'Consult a physician for nausea/vomitting lasting more than 3 days, of unknown cause, lasting more than 6hrs in a child, significant weight loss, dehydration symptoms, fever or abdominal pain, head trauma, altered consciousness or blood in vomitus.'
	), 
	(
		9, 
		16, 
		2, 
		'Do you have heartburn, indigestion and/or upset stomach', 
		'Consult your physician in presence of chest pain, choking or difficult/painful swallowing. Consult your physician for moderate to severe, frequent or persistent heartburn (remain after 14 days or incompletely relieved by medication).'
	), 
	(
		9, 
		17, 
		2, 
		'Would you like to prevent dehydration', 
		'Dehydration symptoms include increased thirst, decreased urination, weakness, light-headedness, dry mouth/tongue/skin, few/no tears when crying, sunken eyes, grayish skin, sunken frontanel in enfants and/or decreased skin turgor. Consult a physician.'
	), 
	(
		9, 
		18, 
		2, 
		'Do you have gas or bloating', 
		'Consult your physician for sudden change in flatulence with moderate to severe abdominal pain, nausea, vomitting, fever or chills. Patients with diabetes, celiac, severe symptoms of gastrointestinal disease should consult their physician.'
	), 
	(
		9, 
		19, 
		3, 
		'Do you prefer an oral tablet or capsule', 
		'Consult your pharmacist if unsure.'
	), 
	(
		9, 
		20, 
		3, 
		'Do you prefer a liquid', 
		'Consult your pharmacist if unsure.'
	), 
	(
		9, 
		21, 
		3, 
		'Would you like fast relief', 
		'Consult your pharmacist if unsure.'
	), 
	(
		9, 
		22, 
		3, 
		'Would you like long acting or overnight relief', 
		'Consult your pharmacist if unsure.'
	), 
	(
		9, 
		23, 
		3, 
		'Would you like a suppository or rectal product', 
		'Consult your pharmacist if unsure.'
	);

INSERT INTO criteria VALUES 
	(9, 1, 'Pregnant', 'True'), 
	(9, 2, 'Non-Preg', 'not {qid1}'), 
	(9, 3, 'Adult', '{qid2}'), 
	(9, 4, 'Kids', 'True'), 
	(9, 5, 'Tab', '{qid19} and not ({qid20} or {qid23})'), 
	(9, 6, 'Liquid', '{qid20} and not ({qid19} or {qid23})'), 
	(9, 7, 'Rectal', '{qid23} and not ({qid19} or {qid20})'), 
	(9, 8, 'Fast-Acting', '{qid21} and not {qid22}'), 
	(9, 9, 'Long-Acting', '{qid22} and not {qid21}'), 
	(9, 10, 'PEG', '{qid13} and not ({qid9} or {qid13} or {qid15} or {qid17})'), 
	(9, 11, 'Fiber', 'not ({qid6} or {qid15} or {qid16} or {qid17}) and ({qid13} or {qid14})'), 
	(9, 12, 'Glycerin', '{qid14} and not ({qid13} or {qid15} or {qid16} or {qid17})'), 
	(9, 13, 'Docusate', '{qid14} and not ({qid13} or {qid15} or {qid16} or {qid17})'), 
	(9, 14, 'Senna', '{qid14} and not ({qid13} or {qid15} or {qid16} or {qid17})'), 
	(9, 15, 'Ginger', '{qid15} and not ({qid9} or {qid13} or {qid14} or {qid16} or {qid17})'), 
	(9, 16, 'Dimenhydrinate', '{qid15} and not ({qid3} or {qid4} or {qid7} or {qid13} or {qid14} or {qid16} or {qid17})'), 
	(9, 17, 'Laxative-Salt', '{qid14} and not ({qid9} or {qid13} or {qid15} or {qid16} or {qid17})'), 
	(9, 18, 'Electrolytes', '{qid17} and not ({qid9} or {qid14} or {qid16})'), 
	(9, 19, 'Antacid-Salt', '{qid16} and not ({qid9} or {qid14} or {qid17})'), 
	(9, 20, 'Loperamide', '{qid13} and not {qid14}'), 
	(9, 21, 'Calcium', '{qid16} and not ({qid9} or {qid14} or {qid17})'), 
	(9, 22, 'H2RA', '{qid16} and not ({qid14} or {qid17})'), 
	(9, 23, 'PPI', '{qid16} and not ({qid14} or {qid17})'), 
	(9, 24, 'Simeticone', '{qid18} and not {qid17}'), 
	(9, 25, 'Enzyme', '{qid11} and ({qid13} or {qid16} or {qid18})'), 
	(9, 26, 'Mineral Oil', '{qid14} and {qid13} and not ({qid15} or {qid16} or {qid17})'), 
	(9, 27, 'Bisacodyl', '{qid14} and {qid13} and not ({qid15} or {qid16} or {qid17})'), 
	(9, 28, 'Probiotic', 'not ({qid10} or {qid14} or {qid17}) and ({qid13} or {qid18} )'), 
	(9, 29, 'Bismuth', 'not ({qid5} or {qid14}) and ({qid13} or {qid15} or {qid16})');

INSERT INTO products VALUES 
	(
		9,
		1,
		'Imodium Liqui-Gels ',
		'https://www.imodium.ca/products/Imodium-liqui-gels',
		'',
		'https://www.imodium.ca/sites/imodium_ca/files/imodiumlogo.png',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid20}'
	),
	(
		9,
		2,
		'Imodium  Calming Liquid',
		'https://www.imodium.ca/products/imodium-calming-liquid',
		'',
		'https://www.imodium.ca/sites/imodium_ca/files/imodiumlogo.png',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid20}'
	),
	(
		9,
		3,
		'Imodium  Quick Dissolve',
		'https://www.imodium.ca/products/imodium-quick-dissolve',
		'',
		'https://www.imodium.ca/sites/imodium_ca/files/imodiumlogo.png',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid20}'
	),
	(
		9,
		4,
		'Imodium  Complete Caplets',
		'https://www.imodium.ca/products/imodium-complete',
		'',
		'https://www.imodium.ca/sites/imodium_ca/files/imodiumlogo.png',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid20} and {cid24}'
	),
	(
		9,
		5,
		'Restoralax',
		'https://www.restoralax.ca/en/why-restoralax/how-restoralax-works/',
		'',
		'https://www.restoralax.ca/sites/g/files/vrxlpx30176/files/restoralax-restorafibre-logos_0.png',
		'{cid1} and {cid3} and {cid6} and {cid9} and {cid10}'
	),
	(
		9,
		6,
		'Metamucil Orange Smooth Powder (6+Yrs)',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/orange-smooth-powder',
		'',
		'data:image/webp;base64,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',
		'{cid1} and {cid4} and {cid6} and {cid9} and {cid11}'
	),
	(
		9,
		7,
		'Metamucil Powder With No Added Sweetener (6+Yrs)',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/no-sweetener-added-powder',
		'',
		'data:image/webp;base64,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',
		'{cid1} and {cid4} and {cid6} and {cid9} and {cid11}'
	),
	(
		9,
		8,
		'Metamucil Fibre Capsules Plus Calcium',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/fibre-capsules-plus-calcium',
		'',
		'data:image/webp;base64,UklGRlQQAABXRUJQVlA4WAoAAAAQAAAAdwAAcAAAQUxQSAsEAAABoIVt+/lG+vLPP07qjm3bKNaujtqz2Yxt255Z297DsW3btpUU0e9bJH/8ft9vjiNiAuDlWHF4qvb0z/1x46nrDwLBYDBw/dDmH6b4O6a77RbC7L6GJV8eC4YiUYaaWTQSCuxZllfVayPJkZa18Fg4hsazWPmeia1SVGqSm027hDzGDg5s6KEk460NyG/Zd91SqahceAw53/peBgUZhcdRwO05SaJ5szahoN82tQlV5xMUt2x0VXFc719FoXd2UgSpOg9FrxiWIkS7LUjgT7UEKLiDJO5rx5s6NIZE3nifL9dMpDPUlyfXR0gpG6Fy4/oIiR1l4URdhNTGBvChTEZ6K4q58CPFd3M4yLpPEh6vY1rNw0gyw9Vuk5x/I9mzFXMGI93hd0xpd48wPF7FBPtaJH2xapilF9Ie6m5YtRvE4WaPQdZJSH6JQU2e0ne+iiG2JSjBvlYjmgVkcK2yAfY5KMUiA2o/lsO+FF2qH/UzRhH21JVywACiP3LraY2yfFpTh22ULBjm6Ug9JQvEX5K0tUV5PqumyTZcIpijKXmlTGY5tGQ+kMneTC3tkEkk3FiDOgjjMqEYP5itwfVJPOMZ48FcpmOAmihpnVm8MhP0LnUnSr8ilxWpiapFxWC6+D2amagLamQ8ifuiRqLXtWhlzCwmDtZOoJQYQ3nbBGo/MZhAryawjRJD5PcT2KeKw4RgWKiIJ+qWPpmWOFPkwpCFf29j+d9MUph5/2d/tVUAknbwwvgwmSGLg/hnK4DX0XTG4pDKLuRB2lGjGEvEK+Pq0rIGynjknhnF9bml9aytUL4vjo2oaYW54TjMNPY/pocJ8vjjnCQAaPbbvcdhlOqf9eD/loy3Plwvl36QWOkrlx4aoJ1UyqpryXwgk03pWpJXymS2U4ttuExyQHMbiTyrpi3tvDx+SdLmmCKPPNDZShpPa+pJOSCLj9x6VL8seoLu2o/lsC9Fn32OHIrAwGYBGVyrbIRtiQz6Wo2AJk/pO1cFDLVOoq8YDK52g7rNHqMsvYgLdQfD7WtpW6waB+3uUXa8Cpg5mLDwO2Cq80+6ZivmQPXDVK1wg9lZ92k6XgvM95N0Nwc4VCYTVFEMXKqLyIkNAE5dH5HCEEdZeAHXR5QgG6ECv66ZhIT6Atfq0BgVN98H3gvu0HCkLfDfbgsFP9UBEavOE65iWAqI6frgolg7OykgbO1PBCobXRVE9mZtEuXbpjYQPKPwuAjrc5OAwMolZ3nb+l460GjJfGsDR2XfdUsFQpObTbvEBTs4sKEHiHWkZS08Fo6ZwGLleya2SlGBYruvYcmXx0pDkSjTxqKRUGDPsryqXhvQrTg8qd39c3/cePBaIBgMBh9eP7T5hyn+juluuwVelgEAVlA4ICIMAADwLgCdASp4AHEAPpk+lkgloyIjsHg9KLATCWwC4AEFEWXPkgY775yFo/wP4s9dfjrzf5s/OnnO/2PqP8wD9Y+lx5gP269b/0Mf2b1AP6Z/vusH9DPy5PZK/tv/Q/cOjrc+/xjckv5z/v2/rw/pe+XbH3oUAXePzO1YagJ40Wgv689g7pU/uqp6svu0sHjltHlGuHB3jSh0yD7efRSt2hqCcgO9gQwdrViM1GBqVBG8LophcRD4LZ5weSyvByDfAPJdFInFCTUszxLyHfc3X1Hq629XKe/kC8uhNQQdzhQillA9VGshI8FHYrDwDj2BUDD/yoVG5iMlzbiamK4i175JiEnt/RfcucIkAwlLypCvrPTls+DPNd9gdMdfWdWIxg/kPDqPUUhvD3Q/YWclAEFukJWdnBidA0IuAwYKFuufK60Lk3HZjCT38YuRTMHO08dlsn1PJ+rd8i1a7epybT3qWeih9kUumFxfAs+tc/j/cGhODTBFgyOB/hWIgmWFKYAA/u16n/6DHHsIolv/Ad54f+IkeVH+jryrcIs21AXJQNQYM0oAeYczpuxIsKPgufHAccOTo57t+COKFfaM6MVNWKrZZeWiVIxaH2objX4XvGZmgnZpYCdqPbXlh95OfnCoEn8Ilt0wqAA3XU/pMcVy2jsRfPyUTeH+2U7LuBFZqqXASto3JRVxyRUReU70Ee/LHhMT4sAZM3KRkAGbHxgmtphHLawubW03daWNkK1mnHQy/dvbg6o5xkOIGs2FupuAWdT0d+qtbXPcGw7u/zC1QjbCw0v/G4vajozZJLj1OokDCIPqmXlRAY0nvC7gku3BNrB6+vQo2V41q9zp9//8nudRhiU5WP/gr15khEAoH52Rd1jWngmyDuOtogf1N6vQ1m29JR+MPbEnFasLi2no9N7SnT0oXM5q7obrOLbPmF4yj4r9ULYE6K2aoF1bUr5SC6mP3SMGOkkOObySHa81A2DrCkXsQUmlKbGUjRbasWl76uOqMPXBId+PWOSv/gZGIDccuzVBOrIgRpLSakmZ/B8sbmWwbWYFEhb57rhDikRljYo69diNazpR0JU5RA/fesMwPhdlxogcfT0X9pzM6AkGuMTc99lv4Kg6qPTyRNG5WSdckZ6L0vUacWrpTPViwDg3YrAP0A16fz0Zjx1qQ4xhCkENyaU357z5zjuUmI85JbBhjccw0fPldDyO2K1k5RcdZUnNFg2JDoVQt+OnfYVzSJfIPUrxe0Mwn0oE+OD3OH7RdSipmJ0yjq563vU8OzDCu4zKfmSyhh77D7IPlWNqb3Occq686SgGH0Yeuud1yP6HkNapaLZ/vfGe4NIzn2vDNf4oDcObBd2lAyUwt+Zel2b2eZZ3vzfjT0eAa/bXWH2977ghbGdtJo5QydE2269K/UJeRlaXEHwfcj43Gt1/7gzkd8E87cZ39WH4+6NEig51OHCHxjQYiPAZZoPmQtN2XxIr3cUAUvj+8SiPA03tyHCffyiamV097zA+0l0cSphoRXDwS/1euxvgPpntqLfTBRCSt7wXWkRuPYd3wFKJRYfFC59NHT2vsKZT73Qs+He3rfLIa4fCOTAIGWgEHvi8kQAa01MoevdcZkwXnMNJsihbra0A9fvlCVjakL52kqvUtQrcMQKrDF++5DaYKY5DAPtyBKilh+jup90rFDADvf+W6bKIOs/3Jv9XhYh0VYYkNyDyB364rxULFFw+rBPSB2jTKjM6fmdjfAwm7h4Bp0Stncn9rt5UZ4uilE3ptHHzAfBR0w2W3pXvwo0gF4tZ1/RE4wca9+58gN1iIdDyhkaipPtBZfWH4TeNL8B3dMb+nZfYykDZEz8BtgNyXirC91ac+lXlMd8Vvc+99ouy6NHSNsLEPKhE2c8kP4QR7617sOpUUAzBCBJ6bF2vdJmHSesCLGLmHCm+RX4kY09suJ6503Ncohk2YSCcpJLAgA6J1GPsqrj8XgvPPrOfBvqO5gkUYvirmcn3Mg1dtQrtkQvgDxHqKwnCWfcYBVcCMH9SBphU5ioPbSaiH+BSNnv4dL9x67E/16/WJL/M4mamRh7mZrd0qPH8uVza3Dz+w1aZ3Yz0rmjsQYzh/VZLVO3nuTk/7BEyVACNgRcRxA3k1ued0+osJFYoLb1SvfQ78gbLWRbljUay5aogULTHmbIb7SXncHsMTxRuL5ZSVeA6wvNfqjwojdMjPEhlGd61IabdGkCLf1wuIw0ux3SQqkFiv8oKZgn0LgTWQFPg4mq1kjc6KvHAHGs7QoHOnaef+YCJBPYd+4v81TvWf83Mcbo9Dtr1SJbhu1inqWXdyrjJlzHL0WaE9hALhpKqLwj0u1Tw9xFlpmOdeEXzh35cDtHsvyMuOiZrwykGxOtvON2CrzT78+Z/bdelbLMiLQ0+FXyRsyw521XFwfizalbe3ZFY5DmKLDCyj5rFG1PhjEJh6sJMiQuahVKBfvxyO1LhbdE9k676z63RoKqE6SKAK/3TDt8oN5FEjrDNaB4j/VEYKckdUwOVjFqjcjrTv6kMqg2QOvl3G9+0C09m6WY1g7aUAE7xrmefIUdjvwH9iWEiBLq8thc86V4j7To6HPGjXXtT6bzTS/uII6ptzWdPgRtWmNgxy6gb6Zn7p9uj3IZ4TxQG6OJORdDV990MUdH1PVq67GajPHju600i6ULYPrIk689iQU1dRaaBXUtP8eedsO7QGL6PQwtk1l1vZkCHKSRS321YAOIZjZJzyHEe27fGj2GrKsG4brwpWA8iyVdrh+9WpohROfhvo1VYRSIK5wt/QUkEr4++Yk8ePAOg7zipg/m8e8kYreBUWXF3w3D8nSMEogx72+E6qWcAvynPEKuiHAO11xrA00tZ4ZOPYJOIhFAUxlOLEB0wh44eIVMxHHDmXIzjTaibyiijN02oiCqA9Ec3NZHsEmMQjpyzl/32EcQ+LD/Va9rFPFj5egQUGiS86guTswSrPH7ajRFOlUjOmQzQ1W2a77Tr5vKCs+VdfYjuuj0OaPvzrZVcVMjR+QHw6mxS6OpD3Z4cJ6QfmkMKAFV0TR6btp6c6/2/WlQa8y26zMWZ+AbBxeGSAm8qupv3P11bJUlfJ/BHbTYrmOx/KVkWc3Etnt0aH+RIjp9LKkyj3tVltly2M2EGOvwjYpcdMmPxVNNbS8gtLh2yqKviE7T4RoTdl1CJE14Ek5WHln+kt7UKqOlWXQOtJ+7cgZfVcnRuig/nsm3S8wNGc1s6oib9XQch1vt4cazUZPPdPXixG08KYkuSV8zyCjfWBO7oMwdQEoadC8Kdz9Lb04cl8MyXLYdYE1vbRHOoimZSEz2Idr1OrYvfCzUKtb18KDQaXJWGm3h/c82GvAZCLKNWEnBeGV9+QoUeWZsoS+R2q3Oc+03yQoaIGrb/+xkENPxNA/7gVQjAvzFqKRrAldtSQyDQSfyUk7if7AkI9C7aqRo6hNDV8342R25XhWILwh4aAWoZF9sYwk9z8/JfThfKr+R1kE3h9i45XeOO5LDKAOpnNMJNZxTA+gB2YW52x2/G4TBOcXr0jF3dfCRjDniN//mXpEfqtusPuOGPbv3Jyw8cQ0CZrEM28YYbvdFlCjSQ0ioJ7Tk1mHEEjOwnvqLuzCribwLF5yrAGHZmpt7IbOzWAdDb2lKVfSNh+lI34x+N7tKxbp0xMZJakfVzzmmxD3nzcfVLxCvqPXALVCOoko/WDz6EAUvmO0ja7LK/JqxFeZ7fpXWVE0SiwZpvX9PbfMNte0rCvR5ymrzHDV8bUYHrfsSjSJPi3BCMBIztg6Dzbmh3pGX4BjTEFWBrW871xOquUTnWoJD1iexLT+4hGMH8bWv2K6HkktJET3KUFf37MbP+ntErRhcATquFd1pndgUht8PybXS2x/cZT4YoIoyWqEdzibYyrC/XMD34OdWwYrTyYJcGUB8cg+ob+5bdNyen/CI5INk6a07r10blq81TOjBYdtYbDxWgbbJosYDVtqGabb0nwpaAKiut1NmE4m99I/8PkGL1ZFckZvAhissIgkaWDSuNOeMxGGW0h9cpVa8cZVPMIvI2acFqRHpNO0VgsBrUGn7nfgFjekAL3/1ST4uQqSFpnTTsCAzAuWAyFpY6phc/zRnMQAAA',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid11}'
	),
	(
		9,
		9,
		'Metamucil Smooth Texture Sugar Free Orange Fibre Powder (6+Yrs)',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/sugar-free-orange-smooth',
		'',
		'data:image/webp;base64,UklGRlQQAABXRUJQVlA4WAoAAAAQAAAAdwAAcAAAQUxQSAsEAAABoIVt+/lG+vLPP07qjm3bKNaujtqz2Yxt255Z297DsW3btpUU0e9bJH/8ft9vjiNiAuDlWHF4qvb0z/1x46nrDwLBYDBw/dDmH6b4O6a77RbC7L6GJV8eC4YiUYaaWTQSCuxZllfVayPJkZa18Fg4hsazWPmeia1SVGqSm027hDzGDg5s6KEk460NyG/Zd91SqahceAw53/peBgUZhcdRwO05SaJ5szahoN82tQlV5xMUt2x0VXFc719FoXd2UgSpOg9FrxiWIkS7LUjgT7UEKLiDJO5rx5s6NIZE3nifL9dMpDPUlyfXR0gpG6Fy4/oIiR1l4URdhNTGBvChTEZ6K4q58CPFd3M4yLpPEh6vY1rNw0gyw9Vuk5x/I9mzFXMGI93hd0xpd48wPF7FBPtaJH2xapilF9Ie6m5YtRvE4WaPQdZJSH6JQU2e0ne+iiG2JSjBvlYjmgVkcK2yAfY5KMUiA2o/lsO+FF2qH/UzRhH21JVywACiP3LraY2yfFpTh22ULBjm6Ug9JQvEX5K0tUV5PqumyTZcIpijKXmlTGY5tGQ+kMneTC3tkEkk3FiDOgjjMqEYP5itwfVJPOMZ48FcpmOAmihpnVm8MhP0LnUnSr8ilxWpiapFxWC6+D2amagLamQ8ifuiRqLXtWhlzCwmDtZOoJQYQ3nbBGo/MZhAryawjRJD5PcT2KeKw4RgWKiIJ+qWPpmWOFPkwpCFf29j+d9MUph5/2d/tVUAknbwwvgwmSGLg/hnK4DX0XTG4pDKLuRB2lGjGEvEK+Pq0rIGynjknhnF9bml9aytUL4vjo2oaYW54TjMNPY/pocJ8vjjnCQAaPbbvcdhlOqf9eD/loy3Plwvl36QWOkrlx4aoJ1UyqpryXwgk03pWpJXymS2U4ttuExyQHMbiTyrpi3tvDx+SdLmmCKPPNDZShpPa+pJOSCLj9x6VL8seoLu2o/lsC9Fn32OHIrAwGYBGVyrbIRtiQz6Wo2AJk/pO1cFDLVOoq8YDK52g7rNHqMsvYgLdQfD7WtpW6waB+3uUXa8Cpg5mLDwO2Cq80+6ZivmQPXDVK1wg9lZ92k6XgvM95N0Nwc4VCYTVFEMXKqLyIkNAE5dH5HCEEdZeAHXR5QgG6ECv66ZhIT6Atfq0BgVN98H3gvu0HCkLfDfbgsFP9UBEavOE65iWAqI6frgolg7OykgbO1PBCobXRVE9mZtEuXbpjYQPKPwuAjrc5OAwMolZ3nb+l460GjJfGsDR2XfdUsFQpObTbvEBTs4sKEHiHWkZS08Fo6ZwGLleya2SlGBYruvYcmXx0pDkSjTxqKRUGDPsryqXhvQrTg8qd39c3/cePBaIBgMBh9eP7T5hyn+juluuwVelgEAVlA4ICIMAADwLgCdASp4AHEAPpk+lkgloyIjsHg9KLATCWwC4AEFEWXPkgY775yFo/wP4s9dfjrzf5s/OnnO/2PqP8wD9Y+lx5gP269b/0Mf2b1AP6Z/vusH9DPy5PZK/tv/Q/cOjrc+/xjckv5z/v2/rw/pe+XbH3oUAXePzO1YagJ40Wgv689g7pU/uqp6svu0sHjltHlGuHB3jSh0yD7efRSt2hqCcgO9gQwdrViM1GBqVBG8LophcRD4LZ5weSyvByDfAPJdFInFCTUszxLyHfc3X1Hq629XKe/kC8uhNQQdzhQillA9VGshI8FHYrDwDj2BUDD/yoVG5iMlzbiamK4i175JiEnt/RfcucIkAwlLypCvrPTls+DPNd9gdMdfWdWIxg/kPDqPUUhvD3Q/YWclAEFukJWdnBidA0IuAwYKFuufK60Lk3HZjCT38YuRTMHO08dlsn1PJ+rd8i1a7epybT3qWeih9kUumFxfAs+tc/j/cGhODTBFgyOB/hWIgmWFKYAA/u16n/6DHHsIolv/Ad54f+IkeVH+jryrcIs21AXJQNQYM0oAeYczpuxIsKPgufHAccOTo57t+COKFfaM6MVNWKrZZeWiVIxaH2objX4XvGZmgnZpYCdqPbXlh95OfnCoEn8Ilt0wqAA3XU/pMcVy2jsRfPyUTeH+2U7LuBFZqqXASto3JRVxyRUReU70Ee/LHhMT4sAZM3KRkAGbHxgmtphHLawubW03daWNkK1mnHQy/dvbg6o5xkOIGs2FupuAWdT0d+qtbXPcGw7u/zC1QjbCw0v/G4vajozZJLj1OokDCIPqmXlRAY0nvC7gku3BNrB6+vQo2V41q9zp9//8nudRhiU5WP/gr15khEAoH52Rd1jWngmyDuOtogf1N6vQ1m29JR+MPbEnFasLi2no9N7SnT0oXM5q7obrOLbPmF4yj4r9ULYE6K2aoF1bUr5SC6mP3SMGOkkOObySHa81A2DrCkXsQUmlKbGUjRbasWl76uOqMPXBId+PWOSv/gZGIDccuzVBOrIgRpLSakmZ/B8sbmWwbWYFEhb57rhDikRljYo69diNazpR0JU5RA/fesMwPhdlxogcfT0X9pzM6AkGuMTc99lv4Kg6qPTyRNG5WSdckZ6L0vUacWrpTPViwDg3YrAP0A16fz0Zjx1qQ4xhCkENyaU357z5zjuUmI85JbBhjccw0fPldDyO2K1k5RcdZUnNFg2JDoVQt+OnfYVzSJfIPUrxe0Mwn0oE+OD3OH7RdSipmJ0yjq563vU8OzDCu4zKfmSyhh77D7IPlWNqb3Occq686SgGH0Yeuud1yP6HkNapaLZ/vfGe4NIzn2vDNf4oDcObBd2lAyUwt+Zel2b2eZZ3vzfjT0eAa/bXWH2977ghbGdtJo5QydE2269K/UJeRlaXEHwfcj43Gt1/7gzkd8E87cZ39WH4+6NEig51OHCHxjQYiPAZZoPmQtN2XxIr3cUAUvj+8SiPA03tyHCffyiamV097zA+0l0cSphoRXDwS/1euxvgPpntqLfTBRCSt7wXWkRuPYd3wFKJRYfFC59NHT2vsKZT73Qs+He3rfLIa4fCOTAIGWgEHvi8kQAa01MoevdcZkwXnMNJsihbra0A9fvlCVjakL52kqvUtQrcMQKrDF++5DaYKY5DAPtyBKilh+jup90rFDADvf+W6bKIOs/3Jv9XhYh0VYYkNyDyB364rxULFFw+rBPSB2jTKjM6fmdjfAwm7h4Bp0Stncn9rt5UZ4uilE3ptHHzAfBR0w2W3pXvwo0gF4tZ1/RE4wca9+58gN1iIdDyhkaipPtBZfWH4TeNL8B3dMb+nZfYykDZEz8BtgNyXirC91ac+lXlMd8Vvc+99ouy6NHSNsLEPKhE2c8kP4QR7617sOpUUAzBCBJ6bF2vdJmHSesCLGLmHCm+RX4kY09suJ6503Ncohk2YSCcpJLAgA6J1GPsqrj8XgvPPrOfBvqO5gkUYvirmcn3Mg1dtQrtkQvgDxHqKwnCWfcYBVcCMH9SBphU5ioPbSaiH+BSNnv4dL9x67E/16/WJL/M4mamRh7mZrd0qPH8uVza3Dz+w1aZ3Yz0rmjsQYzh/VZLVO3nuTk/7BEyVACNgRcRxA3k1ued0+osJFYoLb1SvfQ78gbLWRbljUay5aogULTHmbIb7SXncHsMTxRuL5ZSVeA6wvNfqjwojdMjPEhlGd61IabdGkCLf1wuIw0ux3SQqkFiv8oKZgn0LgTWQFPg4mq1kjc6KvHAHGs7QoHOnaef+YCJBPYd+4v81TvWf83Mcbo9Dtr1SJbhu1inqWXdyrjJlzHL0WaE9hALhpKqLwj0u1Tw9xFlpmOdeEXzh35cDtHsvyMuOiZrwykGxOtvON2CrzT78+Z/bdelbLMiLQ0+FXyRsyw521XFwfizalbe3ZFY5DmKLDCyj5rFG1PhjEJh6sJMiQuahVKBfvxyO1LhbdE9k676z63RoKqE6SKAK/3TDt8oN5FEjrDNaB4j/VEYKckdUwOVjFqjcjrTv6kMqg2QOvl3G9+0C09m6WY1g7aUAE7xrmefIUdjvwH9iWEiBLq8thc86V4j7To6HPGjXXtT6bzTS/uII6ptzWdPgRtWmNgxy6gb6Zn7p9uj3IZ4TxQG6OJORdDV990MUdH1PVq67GajPHju600i6ULYPrIk689iQU1dRaaBXUtP8eedsO7QGL6PQwtk1l1vZkCHKSRS321YAOIZjZJzyHEe27fGj2GrKsG4brwpWA8iyVdrh+9WpohROfhvo1VYRSIK5wt/QUkEr4++Yk8ePAOg7zipg/m8e8kYreBUWXF3w3D8nSMEogx72+E6qWcAvynPEKuiHAO11xrA00tZ4ZOPYJOIhFAUxlOLEB0wh44eIVMxHHDmXIzjTaibyiijN02oiCqA9Ec3NZHsEmMQjpyzl/32EcQ+LD/Va9rFPFj5egQUGiS86guTswSrPH7ajRFOlUjOmQzQ1W2a77Tr5vKCs+VdfYjuuj0OaPvzrZVcVMjR+QHw6mxS6OpD3Z4cJ6QfmkMKAFV0TR6btp6c6/2/WlQa8y26zMWZ+AbBxeGSAm8qupv3P11bJUlfJ/BHbTYrmOx/KVkWc3Etnt0aH+RIjp9LKkyj3tVltly2M2EGOvwjYpcdMmPxVNNbS8gtLh2yqKviE7T4RoTdl1CJE14Ek5WHln+kt7UKqOlWXQOtJ+7cgZfVcnRuig/nsm3S8wNGc1s6oib9XQch1vt4cazUZPPdPXixG08KYkuSV8zyCjfWBO7oMwdQEoadC8Kdz9Lb04cl8MyXLYdYE1vbRHOoimZSEz2Idr1OrYvfCzUKtb18KDQaXJWGm3h/c82GvAZCLKNWEnBeGV9+QoUeWZsoS+R2q3Oc+03yQoaIGrb/+xkENPxNA/7gVQjAvzFqKRrAldtSQyDQSfyUk7if7AkI9C7aqRo6hNDV8342R25XhWILwh4aAWoZF9sYwk9z8/JfThfKr+R1kE3h9i45XeOO5LDKAOpnNMJNZxTA+gB2YW52x2/G4TBOcXr0jF3dfCRjDniN//mXpEfqtusPuOGPbv3Jyw8cQ0CZrEM28YYbvdFlCjSQ0ioJ7Tk1mHEEjOwnvqLuzCribwLF5yrAGHZmpt7IbOzWAdDb2lKVfSNh+lI34x+N7tKxbp0xMZJakfVzzmmxD3nzcfVLxCvqPXALVCOoko/WDz6EAUvmO0ja7LK/JqxFeZ7fpXWVE0SiwZpvX9PbfMNte0rCvR5ymrzHDV8bUYHrfsSjSJPi3BCMBIztg6Dzbmh3pGX4BjTEFWBrW871xOquUTnWoJD1iexLT+4hGMH8bWv2K6HkktJET3KUFf37MbP+ntErRhcATquFd1pndgUht8PybXS2x/cZT4YoIoyWqEdzibYyrC/XMD34OdWwYrTyYJcGUB8cg+ob+5bdNyen/CI5INk6a07r10blq81TOjBYdtYbDxWgbbJosYDVtqGabb0nwpaAKiut1NmE4m99I/8PkGL1ZFckZvAhissIgkaWDSuNOeMxGGW0h9cpVa8cZVPMIvI2acFqRHpNO0VgsBrUGn7nfgFjekAL3/1ST4uQqSFpnTTsCAzAuWAyFpY6phc/zRnMQAAA',
		'{cid1} and {cid4} and {cid6} and {cid9} and {cid11}'
	),
	(
		9,
		10,
		'Metamucil Original Coarse Powder (6+Yrs)',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/original-coarse-powder',
		'',
		'data:image/webp;base64,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',
		'{cid1} and {cid4} and {cid6} and {cid9} and {cid11}'
	),
	(
		9,
		11,
		'Metamucil Pink Lemonade Sugar Free Smooth Powder (6+Yrs)',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/pink-lemonade-sugar-free-smooth',
		'',
		'data:image/webp;base64,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',
		'{cid1} and {cid4} and {cid6} and {cid9} and {cid11}'
	),
	(
		9,
		12,
		'Metamucil Sugar Free Orange Fibre Singles (6+Yrs)',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/sugar-free-orange-fibre-singles',
		'',
		'data:image/webp;base64,UklGRlQQAABXRUJQVlA4WAoAAAAQAAAAdwAAcAAAQUxQSAsEAAABoIVt+/lG+vLPP07qjm3bKNaujtqz2Yxt255Z297DsW3btpUU0e9bJH/8ft9vjiNiAuDlWHF4qvb0z/1x46nrDwLBYDBw/dDmH6b4O6a77RbC7L6GJV8eC4YiUYaaWTQSCuxZllfVayPJkZa18Fg4hsazWPmeia1SVGqSm027hDzGDg5s6KEk460NyG/Zd91SqahceAw53/peBgUZhcdRwO05SaJ5szahoN82tQlV5xMUt2x0VXFc719FoXd2UgSpOg9FrxiWIkS7LUjgT7UEKLiDJO5rx5s6NIZE3nifL9dMpDPUlyfXR0gpG6Fy4/oIiR1l4URdhNTGBvChTEZ6K4q58CPFd3M4yLpPEh6vY1rNw0gyw9Vuk5x/I9mzFXMGI93hd0xpd48wPF7FBPtaJH2xapilF9Ie6m5YtRvE4WaPQdZJSH6JQU2e0ne+iiG2JSjBvlYjmgVkcK2yAfY5KMUiA2o/lsO+FF2qH/UzRhH21JVywACiP3LraY2yfFpTh22ULBjm6Ug9JQvEX5K0tUV5PqumyTZcIpijKXmlTGY5tGQ+kMneTC3tkEkk3FiDOgjjMqEYP5itwfVJPOMZ48FcpmOAmihpnVm8MhP0LnUnSr8ilxWpiapFxWC6+D2amagLamQ8ifuiRqLXtWhlzCwmDtZOoJQYQ3nbBGo/MZhAryawjRJD5PcT2KeKw4RgWKiIJ+qWPpmWOFPkwpCFf29j+d9MUph5/2d/tVUAknbwwvgwmSGLg/hnK4DX0XTG4pDKLuRB2lGjGEvEK+Pq0rIGynjknhnF9bml9aytUL4vjo2oaYW54TjMNPY/pocJ8vjjnCQAaPbbvcdhlOqf9eD/loy3Plwvl36QWOkrlx4aoJ1UyqpryXwgk03pWpJXymS2U4ttuExyQHMbiTyrpi3tvDx+SdLmmCKPPNDZShpPa+pJOSCLj9x6VL8seoLu2o/lsC9Fn32OHIrAwGYBGVyrbIRtiQz6Wo2AJk/pO1cFDLVOoq8YDK52g7rNHqMsvYgLdQfD7WtpW6waB+3uUXa8Cpg5mLDwO2Cq80+6ZivmQPXDVK1wg9lZ92k6XgvM95N0Nwc4VCYTVFEMXKqLyIkNAE5dH5HCEEdZeAHXR5QgG6ECv66ZhIT6Atfq0BgVN98H3gvu0HCkLfDfbgsFP9UBEavOE65iWAqI6frgolg7OykgbO1PBCobXRVE9mZtEuXbpjYQPKPwuAjrc5OAwMolZ3nb+l460GjJfGsDR2XfdUsFQpObTbvEBTs4sKEHiHWkZS08Fo6ZwGLleya2SlGBYruvYcmXx0pDkSjTxqKRUGDPsryqXhvQrTg8qd39c3/cePBaIBgMBh9eP7T5hyn+juluuwVelgEAVlA4ICIMAADwLgCdASp4AHEAPpk+lkgloyIjsHg9KLATCWwC4AEFEWXPkgY775yFo/wP4s9dfjrzf5s/OnnO/2PqP8wD9Y+lx5gP269b/0Mf2b1AP6Z/vusH9DPy5PZK/tv/Q/cOjrc+/xjckv5z/v2/rw/pe+XbH3oUAXePzO1YagJ40Wgv689g7pU/uqp6svu0sHjltHlGuHB3jSh0yD7efRSt2hqCcgO9gQwdrViM1GBqVBG8LophcRD4LZ5weSyvByDfAPJdFInFCTUszxLyHfc3X1Hq629XKe/kC8uhNQQdzhQillA9VGshI8FHYrDwDj2BUDD/yoVG5iMlzbiamK4i175JiEnt/RfcucIkAwlLypCvrPTls+DPNd9gdMdfWdWIxg/kPDqPUUhvD3Q/YWclAEFukJWdnBidA0IuAwYKFuufK60Lk3HZjCT38YuRTMHO08dlsn1PJ+rd8i1a7epybT3qWeih9kUumFxfAs+tc/j/cGhODTBFgyOB/hWIgmWFKYAA/u16n/6DHHsIolv/Ad54f+IkeVH+jryrcIs21AXJQNQYM0oAeYczpuxIsKPgufHAccOTo57t+COKFfaM6MVNWKrZZeWiVIxaH2objX4XvGZmgnZpYCdqPbXlh95OfnCoEn8Ilt0wqAA3XU/pMcVy2jsRfPyUTeH+2U7LuBFZqqXASto3JRVxyRUReU70Ee/LHhMT4sAZM3KRkAGbHxgmtphHLawubW03daWNkK1mnHQy/dvbg6o5xkOIGs2FupuAWdT0d+qtbXPcGw7u/zC1QjbCw0v/G4vajozZJLj1OokDCIPqmXlRAY0nvC7gku3BNrB6+vQo2V41q9zp9//8nudRhiU5WP/gr15khEAoH52Rd1jWngmyDuOtogf1N6vQ1m29JR+MPbEnFasLi2no9N7SnT0oXM5q7obrOLbPmF4yj4r9ULYE6K2aoF1bUr5SC6mP3SMGOkkOObySHa81A2DrCkXsQUmlKbGUjRbasWl76uOqMPXBId+PWOSv/gZGIDccuzVBOrIgRpLSakmZ/B8sbmWwbWYFEhb57rhDikRljYo69diNazpR0JU5RA/fesMwPhdlxogcfT0X9pzM6AkGuMTc99lv4Kg6qPTyRNG5WSdckZ6L0vUacWrpTPViwDg3YrAP0A16fz0Zjx1qQ4xhCkENyaU357z5zjuUmI85JbBhjccw0fPldDyO2K1k5RcdZUnNFg2JDoVQt+OnfYVzSJfIPUrxe0Mwn0oE+OD3OH7RdSipmJ0yjq563vU8OzDCu4zKfmSyhh77D7IPlWNqb3Occq686SgGH0Yeuud1yP6HkNapaLZ/vfGe4NIzn2vDNf4oDcObBd2lAyUwt+Zel2b2eZZ3vzfjT0eAa/bXWH2977ghbGdtJo5QydE2269K/UJeRlaXEHwfcj43Gt1/7gzkd8E87cZ39WH4+6NEig51OHCHxjQYiPAZZoPmQtN2XxIr3cUAUvj+8SiPA03tyHCffyiamV097zA+0l0cSphoRXDwS/1euxvgPpntqLfTBRCSt7wXWkRuPYd3wFKJRYfFC59NHT2vsKZT73Qs+He3rfLIa4fCOTAIGWgEHvi8kQAa01MoevdcZkwXnMNJsihbra0A9fvlCVjakL52kqvUtQrcMQKrDF++5DaYKY5DAPtyBKilh+jup90rFDADvf+W6bKIOs/3Jv9XhYh0VYYkNyDyB364rxULFFw+rBPSB2jTKjM6fmdjfAwm7h4Bp0Stncn9rt5UZ4uilE3ptHHzAfBR0w2W3pXvwo0gF4tZ1/RE4wca9+58gN1iIdDyhkaipPtBZfWH4TeNL8B3dMb+nZfYykDZEz8BtgNyXirC91ac+lXlMd8Vvc+99ouy6NHSNsLEPKhE2c8kP4QR7617sOpUUAzBCBJ6bF2vdJmHSesCLGLmHCm+RX4kY09suJ6503Ncohk2YSCcpJLAgA6J1GPsqrj8XgvPPrOfBvqO5gkUYvirmcn3Mg1dtQrtkQvgDxHqKwnCWfcYBVcCMH9SBphU5ioPbSaiH+BSNnv4dL9x67E/16/WJL/M4mamRh7mZrd0qPH8uVza3Dz+w1aZ3Yz0rmjsQYzh/VZLVO3nuTk/7BEyVACNgRcRxA3k1ued0+osJFYoLb1SvfQ78gbLWRbljUay5aogULTHmbIb7SXncHsMTxRuL5ZSVeA6wvNfqjwojdMjPEhlGd61IabdGkCLf1wuIw0ux3SQqkFiv8oKZgn0LgTWQFPg4mq1kjc6KvHAHGs7QoHOnaef+YCJBPYd+4v81TvWf83Mcbo9Dtr1SJbhu1inqWXdyrjJlzHL0WaE9hALhpKqLwj0u1Tw9xFlpmOdeEXzh35cDtHsvyMuOiZrwykGxOtvON2CrzT78+Z/bdelbLMiLQ0+FXyRsyw521XFwfizalbe3ZFY5DmKLDCyj5rFG1PhjEJh6sJMiQuahVKBfvxyO1LhbdE9k676z63RoKqE6SKAK/3TDt8oN5FEjrDNaB4j/VEYKckdUwOVjFqjcjrTv6kMqg2QOvl3G9+0C09m6WY1g7aUAE7xrmefIUdjvwH9iWEiBLq8thc86V4j7To6HPGjXXtT6bzTS/uII6ptzWdPgRtWmNgxy6gb6Zn7p9uj3IZ4TxQG6OJORdDV990MUdH1PVq67GajPHju600i6ULYPrIk689iQU1dRaaBXUtP8eedsO7QGL6PQwtk1l1vZkCHKSRS321YAOIZjZJzyHEe27fGj2GrKsG4brwpWA8iyVdrh+9WpohROfhvo1VYRSIK5wt/QUkEr4++Yk8ePAOg7zipg/m8e8kYreBUWXF3w3D8nSMEogx72+E6qWcAvynPEKuiHAO11xrA00tZ4ZOPYJOIhFAUxlOLEB0wh44eIVMxHHDmXIzjTaibyiijN02oiCqA9Ec3NZHsEmMQjpyzl/32EcQ+LD/Va9rFPFj5egQUGiS86guTswSrPH7ajRFOlUjOmQzQ1W2a77Tr5vKCs+VdfYjuuj0OaPvzrZVcVMjR+QHw6mxS6OpD3Z4cJ6QfmkMKAFV0TR6btp6c6/2/WlQa8y26zMWZ+AbBxeGSAm8qupv3P11bJUlfJ/BHbTYrmOx/KVkWc3Etnt0aH+RIjp9LKkyj3tVltly2M2EGOvwjYpcdMmPxVNNbS8gtLh2yqKviE7T4RoTdl1CJE14Ek5WHln+kt7UKqOlWXQOtJ+7cgZfVcnRuig/nsm3S8wNGc1s6oib9XQch1vt4cazUZPPdPXixG08KYkuSV8zyCjfWBO7oMwdQEoadC8Kdz9Lb04cl8MyXLYdYE1vbRHOoimZSEz2Idr1OrYvfCzUKtb18KDQaXJWGm3h/c82GvAZCLKNWEnBeGV9+QoUeWZsoS+R2q3Oc+03yQoaIGrb/+xkENPxNA/7gVQjAvzFqKRrAldtSQyDQSfyUk7if7AkI9C7aqRo6hNDV8342R25XhWILwh4aAWoZF9sYwk9z8/JfThfKr+R1kE3h9i45XeOO5LDKAOpnNMJNZxTA+gB2YW52x2/G4TBOcXr0jF3dfCRjDniN//mXpEfqtusPuOGPbv3Jyw8cQ0CZrEM28YYbvdFlCjSQ0ioJ7Tk1mHEEjOwnvqLuzCribwLF5yrAGHZmpt7IbOzWAdDb2lKVfSNh+lI34x+N7tKxbp0xMZJakfVzzmmxD3nzcfVLxCvqPXALVCOoko/WDz6EAUvmO0ja7LK/JqxFeZ7fpXWVE0SiwZpvX9PbfMNte0rCvR5ymrzHDV8bUYHrfsSjSJPi3BCMBIztg6Dzbmh3pGX4BjTEFWBrW871xOquUTnWoJD1iexLT+4hGMH8bWv2K6HkktJET3KUFf37MbP+ntErRhcATquFd1pndgUht8PybXS2x/cZT4YoIoyWqEdzibYyrC/XMD34OdWwYrTyYJcGUB8cg+ob+5bdNyen/CI5INk6a07r10blq81TOjBYdtYbDxWgbbJosYDVtqGabb0nwpaAKiut1NmE4m99I/8PkGL1ZFckZvAhissIgkaWDSuNOeMxGGW0h9cpVa8cZVPMIvI2acFqRHpNO0VgsBrUGn7nfgFjekAL3/1ST4uQqSFpnTTsCAzAuWAyFpY6phc/zRnMQAAA',
		'{cid1} and {cid4} and {cid6} and {cid9} and {cid11}'
	),
	(
		9,
		13,
		'Metamucil Smooth Texture Sugar Free Berry Fibre Powder (6+Yrs)',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/sugar-free-berry-smooth',
		'',
		'data:image/webp;base64,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',
		'{cid1} and {cid4} and {cid6} and {cid9} and {cid11}'
	),
	(
		9,
		14,
		'Metamucil Fibre Capsules',
		'https://www.metamucil.ca/en-ca/products/fibre-supplements/fibre-capsules',
		'',
		'data:image/webp;base64,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',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid11}'
	),
	(
		9,
		15,
		'Senokot  Laxative (6+Yrs)',
		'https://senokot.ca/en/products/',
		'',
		'https://senokot.ca/wp-content/themes/senokot/dist/images/global/logo_dc1c44e1.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid14}'
	),
	(
		9,
		16,
		'Senokot  S Laxative Plus Stool Softener (6+Yrs)',
		'https://senokot.ca/en/products/',
		'',
		'https://senokot.ca/wp-content/themes/senokot/dist/images/global/logo_dc1c44e1.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid13} and {cid14}'
	),
	(
		9,
		17,
		'Senokot  Extra Strength Laxative (6+Yrs)',
		'https://senokot.ca/en/products/',
		'',
		'https://senokot.ca/wp-content/themes/senokot/dist/images/global/logo_dc1c44e1.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid14}'
	),
	(
		9,
		18,
		'Senokot  For Women Coated Laxative (6+Yrs)',
		'https://senokot.ca/en/products/',
		'',
		'https://senokot.ca/wp-content/themes/senokot/dist/images/global/logo_dc1c44e1.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid14}'
	),
	(
		9,
		19,
		'Senokot  Laxative Syrup (6+Yrs)',
		'https://senokot.ca/en/products/',
		'',
		'https://senokot.ca/wp-content/themes/senokot/dist/images/global/logo_dc1c44e1.png',
		'{cid2} and {cid4} and {cid6} and {cid9} and {cid14}'
	),
	(
		9,
		20,
		'Senokot  Ginger Relief For Upset Stomach (6+Yrs)',
		'https://senokot.ca/en/products/',
		'',
		'https://senokot.ca/wp-content/themes/senokot/dist/images/global/logo_dc1c44e1.png',
		'{cid2} and {cid4} and {cid5} and {cid8} and {cid15}'
	),
	(
		9,
		21,
		'Colace  Regular Strength (2+Yrs)',
		'https://colacecapsules.com/products/colace-regular-strength/',
		'',
		'https://www.boydpharma.com/wp-content/uploads/2016/11/colace_all_logo.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid13}'
	),
	(
		9,
		22,
		'Colace  Clear Soft Gels (2+Yrs)',
		'https://colacecapsules.com/products/colace-clear/',
		'',
		'https://www.boydpharma.com/wp-content/uploads/2016/11/colace_all_logo.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid13}'
	),
	(
		9,
		23,
		'Colace  2-In-1 Tablets (2+Yrs)',
		'https://colacecapsules.com/products/colace-2-in-1/',
		'',
		'https://www.boydpharma.com/wp-content/uploads/2016/11/colace_all_logo.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid13} and {cid14}'
	),
	(
		9,
		24,
		'Gravol Immediate Release & Long Acting Caplet',
		'https://gravol.ca/en/product/immediate-release-long-acting-caplets/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid16}'
	),
	(
		9,
		25,
		'Gravol Easy To Swallow Tablets (6+Yrs)',
		'https://gravol.ca/en/product/easy-to-swallow-tablets/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid16}'
	),
	(
		9,
		26,
		'Gravol Liquid Gel Capsules',
		'https://gravol.ca/en/product/liquid-gel-capsules/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid16}'
	),
	(
		9,
		27,
		'Gravol Quick Dissolve Chewable (6+Yrs)',
		'https://gravol.ca/en/product/quick-dissolve-chewable/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid16}'
	),
	(
		9,
		28,
		'Gravol Comfort-Shaped Suppositories',
		'https://gravol.ca/en/product/comfort-shaped-suppositories/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid16}'
	),
	(
		9,
		29,
		'Gravol Kids Quick Dissolve Chewable (2+Yrs)',
		'https://gravol.ca/en/product/quick-dissolve-chewable-for-kids/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid16}'
	),
	(
		9,
		30,
		'Gravol Kids Liquid (2+Yrs)',
		'https://gravol.ca/en/product/kids-liquid/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid16}'
	),
	(
		9,
		31,
		'Gravol Kids Comfort Shaped Suppositories (2+Yrs)',
		'https://gravol.ca/en/product/comfort-shaped-suppositories-for-kids/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid16}'
	),
	(
		9,
		32,
		'Gravol Ginger Liquid Gel Capsules (6+Yrs)',
		'https://gravol.ca/en/product/ginger-liquid-gel-capsules/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid2} and {cid4} and {cid5} and {cid8} and {cid15}'
	),
	(
		9,
		33,
		'Gravol Ginger Tablets (6+Yrs)',
		'https://gravol.ca/en/product/ginger-tablets/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid2} and {cid4} and {cid5} and {cid8} and {cid15}'
	),
	(
		9,
		34,
		'Gravol Ginger Chewable Lozenges (6+Yrs)',
		'https://gravol.ca/en/product/ginger-lozenges/',
		'',
		'https://gravol.ca/wp-content/themes/gravol-wp-theme/images/Gravol_Logo_4C_BIL.png',
		'{cid2} and {cid4} and {cid5} and {cid8} and {cid15}'
	),
	(
		9,
		35,
		'Eno Antacid Effervescing Powder',
		'https://www.enoantacid.ca/products.html',
		'',
		'https://parked.haleon.com/haleon-logo.svg',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid19}'
	),
	(
		9,
		36,
		'Eno Antacid Effervescing Powder Single Dose Packets',
		'https://www.enoantacid.ca/products.html',
		'',
		'https://parked.haleon.com/haleon-logo.svg',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid19}'
	),
	(
		9,
		37,
		'Gas-X Extra Strength Chewables',
		'https://www.gas-x.ca/products/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-gasx/en_US/global/logo/gas-x-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid8} and {cid24}'
	),
	(
		9,
		38,
		'Gas-X Ultra Strength Softgels',
		'https://www.gas-x.ca/products/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-gasx/en_US/global/logo/gas-x-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid8} and {cid24}'
	),
	(
		9,
		39,
		'Tums Extra Strength',
		'https://www.tums.ca/find-your-tums/tums-extra-strength-assorted-berries-100ct/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/wellness-tums/en_CA/tums-logo.png?auto=format',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid21}'
	),
	(
		9,
		40,
		'Tums Smoothies',
		'https://www.tums.ca/find-your-tums/tums-extra-strength-assorted-berries-100ct/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/wellness-tums/en_CA/tums-logo.png?auto=format',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid21}'
	),
	(
		9,
		41,
		'Tums Regular Strength',
		'https://www.tums.ca/find-your-tums/tums-regular-strength-peppermint-3-roll-pack/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/wellness-tums/en_CA/tums-logo.png?auto=format',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid21}'
	),
	(
		9,
		42,
		'Tums Chewies',
		'https://www.tums.ca/find-your-tums/tums-chewies-orange-rush-32ct-bag/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/wellness-tums/en_CA/tums-logo.png?auto=format',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid21}'
	),
	(
		9,
		43,
		'Tums Ultra Strength',
		'https://www.tums.ca/find-your-tums/tums-ultra-strength-peppermint-72ct-bottle/',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/wellness-tums/en_CA/tums-logo.png?auto=format',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid21}'
	),
	(
		9,
		44,
		'Pepto Bismol Original Liquid',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-original-liquid',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid29}'
	),
	(
		9,
		45,
		'Pepto Bismol Cherry Liquid',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-cherry-liquid',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid29}'
	),
	(
		9,
		46,
		'Pepto Bismol Chewable Tablets Original',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-chewable-tablets-original',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid29}'
	),
	(
		9,
		47,
		'Pepto Bismol Chewable Tablets Cherry',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-chewable-tablets-cherry',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid29}'
	),
	(
		9,
		48,
		'Pepto Bismol Original Caplets',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-original-caplets',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid29}'
	),
	(
		9,
		49,
		'Pepto Bismol To-Go Cherry Chewable Tablets',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-to-go-cherry-chewable-tablets',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid29}'
	),
	(
		9,
		50,
		'Pepto-Bismol Extra Strength Liquid',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-extra-strength-liquid',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid29}'
	),
	(
		9,
		51,
		'Pepto Bismol Extra Strength Cherry Liquid',
		'https://pepto-bismol.ca/en-ca/product/pepto-bismol-cherry-extra-liquid',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid29}'
	),
	(
		9,
		52,
		'Kids Chewable Tablets Bubblegum (2+Yrs)',
		'https://pepto-bismol.ca/en-ca/product/kids-chewable-tablets-bubblegum',
		'',
		'https://pepto-bismol.ca/en-ca/_next/static/images/header-logo-d40dc7465de0c1f5c6b91660e3886499.webp',
		'{cid2} and {cid4} and {cid5} and {cid8} and {cid29}'
	),
	(
		9,
		53,
		'Gaviscon Liquid',
		'https://www.gaviscon.com/products/liquid.html',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/gaviscon/en_us/images/gaviscon-logo_new.png?auto=format',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid19}'
	),
	(
		9,
		54,
		'Gaviscon Tablets',
		'https://www.gaviscon.com/products/tablets.html',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/gaviscon/en_us/images/gaviscon-logo_new.png?auto=format',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid19}'
	),
	(
		9,
		55,
		'Zantac 75 Regular Strength',
		'https://www.zantac.ca/en/zantac-75-regular-strength',
		'',
		'https://cdn.freebiesupply.com/logos/large/2x/zantac-logo-png-transparent.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid22}'
	),
	(
		9,
		56,
		'Zantac 150 Maximum Strength Cool Mint',
		'https://www.zantac.ca/en/zantac-150-cool-mint',
		'',
		'https://cdn.freebiesupply.com/logos/large/2x/zantac-logo-png-transparent.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid22}'
	),
	(
		9,
		57,
		'Zantac 150 Maximum Strength',
		'https://www.zantac.ca/en/zantac-150-maximum-strength',
		'',
		'https://cdn.freebiesupply.com/logos/large/2x/zantac-logo-png-transparent.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid22}'
	),
	(
		9,
		58,
		'Pepcid Complete (12+Yrs)',
		'https://www.pepcid.ca/our-products/pepcid-complete',
		'',
		'https://www.pepcid.ca/sites/pepcid_ca/files/logo_0_0-resized_0.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid22}'
	),
	(
		9,
		59,
		'Maximum Strength Pepcid Ac (12+Yrs)',
		'https://www.pepcid.ca/our-products/maximum-strength-pepcid-ac',
		'',
		'https://www.pepcid.ca/sites/pepcid_ca/files/logo_0_0-resized_0.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid22}'
	),
	(
		9,
		60,
		'Original Strength Pepcid Ac (12+Yrs)',
		'https://www.pepcid.ca/our-products/original-strength-pepcid-ac',
		'',
		'https://www.pepcid.ca/sites/pepcid_ca/files/logo_0_0-resized_0.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid22}'
	),
	(
		9,
		61,
		'Nexium 24Hr',
		'https://www.nexium24.ca/about-nexium-24hr',
		'',
		'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/bp-nexium24hr/en_CA/global/logo/nexium24hr-ca-logo.png?auto=format',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid23}'
	),
	(
		9,
		62,
		'Olex Delayed-Release Tablets',
		'https://pendopharm.com/newsroom/olex-20mg-omeprazole-delayed-release-tablets-a-new-option-for-canadians-suffering-from-frequent-heartburn/',
		'',
		'https://pendopharm.com/wp-content/themes/pendo/assets/dist/img/logo.svg?x23525',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid23}'
	),
	(
		9,
		63,
		'Lactaid Fast Act Chewables',
		'https://www.lactaid.com/products/fast-act-chewables',
		'',
		'https://www.lactaid.com/sites/lactaid_us/files/logo.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid25}'
	),
	(
		9,
		64,
		'Lactaid Fast Act Caplets',
		'https://www.lactaid.com/products/lactaid-fast-act-caplets',
		'',
		'https://www.lactaid.com/sites/lactaid_us/files/logo.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid25}'
	),
	(
		9,
		65,
		'Lactaid Original Strength Caplets',
		'https://www.lactaid.com/products/lactaid-original-strength-caplets',
		'',
		'https://www.lactaid.com/sites/lactaid_us/files/logo.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid25}'
	),
	(
		9,
		66,
		'Fleet Saline Enema (12+Yrs)',
		'https://www.fleetlabs.com/constipation-relief-products/enemas/fleet-saline-enema/',
		'',
		'https://www.fleetlabs.com/sites/fleet/themes/custom/fleet_theme/images/fleet-logo.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid17}'
	),
	(
		9,
		67,
		'Fleet Enema Extra (12+Yrs)',
		'https://www.fleetlabs.com/constipation-relief-products/enemas/fleet-enema-extra/',
		'',
		'https://www.fleetlabs.com/sites/fleet/themes/custom/fleet_theme/images/fleet-logo.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid17}'
	),
	(
		9,
		68,
		'Fleet Mineral Oil Enema (12+Yrs)',
		'https://www.fleetlabs.com/constipation-relief-products/enemas/fleet-mineral-oil-enema/',
		'',
		'https://www.fleetlabs.com/sites/fleet/themes/custom/fleet_theme/images/fleet-logo.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid26}'
	),
	(
		9,
		69,
		'Fleet Bisacodyl Enema (12+Yrs)',
		'https://www.fleetlabs.com/constipation-relief-products/enemas/fleet-bisacodyl-enema/',
		'',
		'https://www.fleetlabs.com/sites/fleet/themes/custom/fleet_theme/images/fleet-logo.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid27}'
	),
	(
		9,
		70,
		'Fleet Liquid Glycerin Suppositories (6+Yrs)',
		'https://www.fleetlabs.com/constipation-relief-products/suppositories/fleet-liquid-glycerin-suppositories/',
		'',
		'https://www.fleetlabs.com/sites/fleet/themes/custom/fleet_theme/images/fleet-logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid12}'
	),
	(
		9,
		71,
		'Fleet Glycerin Suppositories (6+Yrs)',
		'https://www.fleetlabs.com/constipation-relief-products/suppositories/fleet-glycerin-suppositories/',
		'',
		'https://www.fleetlabs.com/sites/fleet/themes/custom/fleet_theme/images/fleet-logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid12}'
	),
	(
		9,
		72,
		'Pedia-Lax Glycerin Suppositories (2-6Yrs)',
		'https://www.pedia-lax.com/childrens-constipation-relief-products/pedia-lax-glycerin-suppositories',
		'',
		'https://www.pedia-lax.com/sites/pedialax/themes/custom/pedialax_theme/images/pedia-lax-logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid12}'
	),
	(
		9,
		73,
		'Pedia-Lax Chewable Tablets (2-12Yrs)',
		'https://www.pedia-lax.com/childrens-constipation-relief-products/pedia-lax-chewable-tablets',
		'',
		'https://www.pedia-lax.com/sites/pedialax/themes/custom/pedialax_theme/images/pedia-lax-logo.png',
		'{cid1} and {cid4} and {cid5} and {cid8} and {cid17}'
	),
	(
		9,
		74,
		'Pedia-Lax Liquid Stool Softener (2-12Yrs)',
		'https://www.pedia-lax.com/childrens-constipation-relief-products/pedia-lax-liquid-stool-softener',
		'',
		'https://www.pedia-lax.com/sites/pedialax/themes/custom/pedialax_theme/images/pedia-lax-logo.png',
		'{cid2} and {cid4} and {cid6} and {cid9} and {cid13}'
	),
	(
		9,
		75,
		'Pedia-Lax Liquid Glycerin Suppositories (2-6Yrs)',
		'https://www.pedia-lax.com/childrens-constipation-relief-products/pedia-lax-liquid-glycerin-suppositories',
		'',
		'https://www.pedia-lax.com/sites/pedialax/themes/custom/pedialax_theme/images/pedia-lax-logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid12}'
	),
	(
		9,
		76,
		'Pedia-Lax Enema (2-12Yrs)',
		'https://www.pedia-lax.com/childrens-constipation-relief-products/pedia-lax-enema-for-kids',
		'',
		'https://www.pedia-lax.com/sites/pedialax/themes/custom/pedialax_theme/images/pedia-lax-logo.png',
		'{cid1} and {cid4} and {cid7} and {cid8} and {cid17}'
	),
	(
		9,
		77,
		'Pedia-Lax Probiotic Yums  (2-12Yrs)',
		'https://www.pedia-lax.com/childrens-constipation-relief-products/pedia-lax-probiotic-yums',
		'',
		'https://www.pedia-lax.com/sites/pedialax/themes/custom/pedialax_theme/images/pedia-lax-logo.png',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid28}'
	),
	(
		9,
		78,
		'Dulcolax  Suppositories',
		'https://www.dulcolax.ca/en/dulcolax-suppositories',
		'',
		'https://www.dulcolax.ca/dam/jcr:682ee684-702f-4d46-8734-f3270e6086ec/Dulcolax%20logo.png',
		'{cid2} and {cid3} and {cid7} and {cid8} and {cid27}'
	),
	(
		9,
		79,
		'Dulcolax Laxative Tablets (6+Yrs)',
		'https://www.dulcolax.ca/en/dulcolax-laxative-tablets',
		'',
		'https://www.dulcolax.ca/dam/jcr:682ee684-702f-4d46-8734-f3270e6086ec/Dulcolax%20logo.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid27}'
	),
	(
		9,
		80,
		'Dulcolax For Women Laxative Tablets',
		'https://www.dulcolax.ca/en/dulcolax-for-women-laxative-tablets',
		'',
		'https://www.dulcolax.ca/dam/jcr:682ee684-702f-4d46-8734-f3270e6086ec/Dulcolax%20logo.png',
		'{cid2} and {cid3} and {cid5} and {cid9} and {cid27}'
	),
	(
		9,
		81,
		'Dulcocomfort Stool Softener (6+Yrs)',
		'https://www.dulcolax.ca/en/dulcocomfort-stool-softener',
		'',
		'https://www.dulcolax.ca/dam/jcr:682ee684-702f-4d46-8734-f3270e6086ec/Dulcolax%20logo.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid13}'
	),
	(
		9,
		82,
		'Beano Tablets',
		'https://www.beanogas.com/anti-gas-pills/beano-tablets/',
		'',
		'https://www.beanogas.com/sites/beano/themes/custom/beano_theme/images/beano_logo.png',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid25}'
	),
	(
		9,
		83,
		'Citro-Mag - Lemon/Lime',
		'https://www.tevacanada.com/en/canada/our-products/over-the-counter-products/search-results/product/?pn=Citro-Mag%C2%AE%20-%20Lemon/Lime',
		'',
		'',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid17}'
	),
	(
		9,
		84,
		'Citro-Mag - Cherry',
		'https://www.tevacanada.com/en/canada/our-products/over-the-counter-products/search-results/product/?pn=Citro-Mag%C2%AE%20-%20Cherry',
		'',
		'',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid17}'
	),
	(
		9,
		85,
		'Phillips''  Fiber Good  Gummies (4+Yrs)',
		'https://www.phillipsdigestive.com/products/fiber-gummies/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid11}'
	),
	(
		9,
		86,
		'Phillips''  Fiber Good  Gummies Plus Energy Support',
		'https://www.phillipsdigestive.com/products/phillips-fiber-good-gummies-plus-energy-support/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid11}'
	),
	(
		9,
		87,
		'Phillips''  Fiber Good  Gummies Plus Metabolism Support',
		'https://www.phillipsdigestive.com/products/phillips-fiber-good-gummies-plus-metabolism-support/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid11}'
	),
	(
		9,
		88,
		'Phillips''  Milk Of Magnesia (6+Yrs)',
		'https://www.phillipsdigestive.com/products/milk-magnesia/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid2} and {cid4} and {cid6} and {cid8} and {cid17}'
	),
	(
		9,
		89,
		'Phillips''  Laxative Caplets',
		'https://www.phillipsdigestive.com/products/phillips-laxative-caplets/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid2} and {cid3} and {cid5} and {cid8} and {cid17}'
	),
	(
		9,
		90,
		'Phillips''  Stool Softener Liquid Gels (6+Yrs)',
		'https://www.phillipsdigestive.com/products/stool-softener-liquid-gels/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid2} and {cid4} and {cid5} and {cid9} and {cid13}'
	),
	(
		9,
		91,
		'Phillips''  Colon Health  Probiotic Capsules',
		'https://www.phillipsdigestive.com/products/colon-health-probiotic-caps/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid28}'
	),
	(
		9,
		92,
		'Phillips''  Colon Health  Probiotic Gummies',
		'https://www.phillipsdigestive.com/products/colon-health-probiotic-gummies/',
		'',
		'https://www.phillipsdigestive.com/sites/g/files/vrxlpx31236/files/phillips-white-logo5.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid28}'
	),
	(
		9,
		93,
		'Pediatric Electrolyte For Children',
		'https://pendorehydration.com/en/pediatric-electrolyte-for-children/',
		'',
		'https://www.electrolytegastro.com/sites/egastro/files/header/Egastro-head.svg',
		'{cid1} and {cid4} and {cid6} and {cid8} and {cid18}'
	),
	(
		9,
		94,
		'Electrolyte Gastro For Adults',
		'https://pendorehydration.com/en/products/electrolyte-gastro-drink-powder/',
		'',
		'https://www.electrolytegastro.com/sites/egastro/files/header/Egastro-head.svg',
		'{cid2} and {cid3} and {cid6} and {cid8} and {cid18}'
	),
	(
		9,
		95,
		'Align Probiotic Supplement Chewables For Adults',
		'https://www.aligngi.ca/en-ca/products/probiotic-chewables/align-probiotic-supplement-chewables-for-adults',
		'',
		'https://images.ctfassets.net/iixu8n1snh6y/4HRKgnHW2rSWu6PrPz8Cnb/0a4e45413fe5c6e3291aa44bd3a86395/ALIGN_US_LOGO_noSpirals2.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid28}'
	),
	(
		9,
		96,
		'Align Jr. Probiotic Supplement Chewables For Kids (6+Yrs)',
		'https://www.aligngi.ca/en-ca/products/probiotic-chewables/align-jr-probiotic-supplement-chewables-for-kids',
		'',
		'https://images.ctfassets.net/iixu8n1snh6y/4HRKgnHW2rSWu6PrPz8Cnb/0a4e45413fe5c6e3291aa44bd3a86395/ALIGN_US_LOGO_noSpirals2.png',
		'{cid1} and {cid4} and {cid5} and {cid9} and {cid28}'
	),
	(
		9,
		97,
		'Align Probiotic Supplement',
		'https://www.aligngi.ca/en-ca/products/probiotic-capsules/align-probiotic-supplement',
		'',
		'https://images.ctfassets.net/iixu8n1snh6y/4HRKgnHW2rSWu6PrPz8Cnb/0a4e45413fe5c6e3291aa44bd3a86395/ALIGN_US_LOGO_noSpirals2.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid28}'
	),
	(
		9,
		98,
		'Align Advanced Probiotic Supplement',
		'https://www.aligngi.ca/en-ca/products/probiotic-capsules/align-advanced-probiotic-supplement',
		'',
		'https://images.ctfassets.net/iixu8n1snh6y/4HRKgnHW2rSWu6PrPz8Cnb/0a4e45413fe5c6e3291aa44bd3a86395/ALIGN_US_LOGO_noSpirals2.png',
		'{cid1} and {cid3} and {cid5} and {cid9} and {cid28}'
	);
