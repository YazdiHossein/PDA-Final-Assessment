

/* Providing another table from a larger financial data called "20170401-asx200" associated with "Financial Data Scraping and Analysis - Fundamentals and Prices
An overview of some financial data scraping techniques using SQL databases. osted by Clint Howard on April 29, 2017" */
CREATE TABLE ASX200 (
    PRIMARY KEY (code),
    KEY (code),
    Code VARCHAR(10),
    Company VARCHAR(50),
    Sector VARCHAR(30),
    Market_Cap INT,
    Weight_Percentage FLOAT,
    Null_Cl VARCHAR(10),
    Total_Index_Market_Cap INT
);

/* Adding the date column in case it would be forgotten initially */
ALTER TABLE asx200 ADD Date DATE AFTER Code;

/* Increasing the value range of "Sector" and "Company" columns because the data needs more space */
ALTER TABLE asx200 MODIFY Sector VARCHAR(60);
ALTER TABLE asx200 MODIFY Company VARCHAR(100);

/* Modifying the columns named "Total_Index_Market_Cap" and "Market_Cap" as their ranges are stricted by maximum value of MySQL, so we need more space for the larger values */
ALTER TABLE asx200 MODIFY Total_Index_Market_Cap BIGINT;
ALTER TABLE asx200 MODIFY Market_Cap BIGINT;

INSERT INTO asx200 (Code, Date, Company, Sector, Market_Cap, Weight_Percentage, Null_Cl, Total_Index_Market_Cap) VALUES
('A2M', '2016-4-1', 'The A2 Milk Company Limited NZ', 'Consumer Staples', 1964410000, 0.12, "Null", 26196187), 
('AAC', '2016-4-1', 'Australian Agricultural Company Limited', 'Consumer Staples', 927459000, 0.06, "Null", 33986772), 
('AAD', '2016-4-1', 'Ardent Leisure Group Stapled', 'Consumer Discretionary', 858443000, 0.05, "Null", 15775360), 
('ABC', '2016-4-1', 'Adelaide Brighton Limited', 'Materials', 3690040000, 0.22, "Null", 22283791), 
('ABP', '2016-4-1', 'Abacus Property Group Stapled', 'Real Estate', 1864850000, 0.11, "Null", 22339859), 
('ACX', '2016-4-1', 'Aconex Limited', 'Information Technology', 779031000, 0.05, "Null", 15359144), 
('AGL', '2016-4-1', 'AGL Energy Limited', 'Utilities', 17651200000, 1.06, "Null", 18306588), 
('AHG', '2016-4-1', 'Automotive Holdings Group Limited', 'Consumer Discretionary', 1366290000, 0.08, "Null", 29832105), 
('AHY', '2016-4-1', 'Asaleo Care Limited', 'Consumer Staples', 965307000, 0.06, "Null", 18414473), 
('ALL', '2016-4-1', 'Aristocrat Leisure Limited', 'Consumer Discretionary', 11474600000, 0.69, "Null", 29185453), 
('ALQ', '2016-4-1', 'Als Limited', 'Industrials', 3095920000, 0.19, "Null", 30638213), 
('ALU', '2016-4-1', 'Altium Limited', 'Information Technology', 989640000, 0.06, "Null", 17366687), 
('AMC', '2016-4-1', 'Amcor Limited', 'Materials', 17441600000, 1.05, "Null", 19688815), 
('AMP', '2016-4-1', 'AMP Limited', 'Financials', 15321100000, 0.92, "Null", 33855664), 
('ANN', '2016-4-1', 'Ansell Limited', 'Health Care', 3551570000, 0.21, "Null", 27701216), 
('ANZ', '2016-4-1', 'Australia And New Zealand Banking Group Limited', 'Financials', 93424700000, 5.6, "Null", 17612164), 
('AOG', '2016-4-1', 'Aveo Group Stapled', 'Real Estate', 1866090000, 0.11, "Null", 26860334), 
('APA', '2016-4-1', 'APA Group Stapled', 'Utilities', 9984190000, 0.6, "Null", 30037727), 
('API', '2016-4-1', 'Australian Pharmaceutical Industries Limited', 'Health Care', 999193000, 0.06, "Null", 29784239), 
('APN', '2016-4-1', 'APN News & Media Limited', 'Consumer Discretionary', 854834000, 0.05, "Null", 16562953), 
('APO', '2016-4-1', 'Apn Outdoor Group Limited', 'Consumer Discretionary', 949703000, 0.06, "Null", 27315482), 
('ARB', '2016-4-1', 'ARB Corporation Limited', 'Consumer Discretionary', 1165590000, 0.07, "Null", 16137397), 
('AST', '2016-4-1', 'Ausnet Services Limited', 'Utilities', 6071320000, 0.36, "Null", 19931265), 
('ASX', '2016-4-1', 'ASX Limited', 'Financials', 9772680000, 0.59, "Null", 14354150), 
('AWC', '2016-4-1', 'Alumina Limited', 'Materials', 5154920000, 0.31, "Null", 24803538), 
('AZJ', '2016-4-1', 'Aurizon Holdings Limited', 'Industrials', 10771700000, 0.65, "Null", 25401672), 
('BAL', '2016-4-1', 'Bellamys Australia Limited', 'Consumer Staples', 406083000, 0.02, "Null", 30918079), 
('BAP', '2016-4-2', 'Bapcor Limited', 'Consumer Discretionary', 1619670000, 0.1, "Null", 22878183), 
('BEN', '2016-4-2', 'Bendigo And Adelaide Bank Limited', 'Financials', 5738350000, 0.34, "Null", 30901815), 
('BGA', '2016-4-2', 'Bega Cheese Limited', 'Consumer Staples', 965977000, 0.06, "Null", 22693059), 
('BHP', '2016-4-2', 'BHP Billiton Limited', 'Materials', 77209100000, 4.63, "Null", 23921450), 
('BKL', '2016-4-2', 'Blackmores Limited', 'Consumer Staples', 1938590000, 0.12, "Null", 15424857), 
('BKW', '2016-4-2', 'Brickworks Limited', 'Materials', 2188870000, 0.13, "Null", 31947069), 
('BLD', '2016-4-2', 'Boral Limited', 'Materials', 6846420000, 0.41, "Null", 17086118), 
('BOQ', '2016-4-2', 'Bank of Queensland Limited', 'Financials', 4709870000, 0.28, "Null", 20961776), 
('BPT', '2016-4-2', 'Beach Energy Limited', 'Energy', 1492080000, 0.09, "Null", 23680218), 
('BRG', '2016-4-2', 'Breville Group Limited', 'Consumer Discretionary', 1343880000, 0.08, "Null", 32708233), 
('BSL', '2016-4-2', 'Bluescope Steel Limited', 'Materials', 7035930000, 0.42, "Null", 25397006), 
('BTT', '2016-4-2', 'BT Investment Management Limited', 'Financials', 3132890000, 0.19, "Null", 27791735), 
('BWP', '2016-4-2', 'BWP Trust Ord Units', 'Real Estate', 1830790000, 0.11, "Null", 28287407), 
('BXB', '2016-4-2', 'Brambles Limited', 'Industrials', 14853800000, 0.89, "Null", 14637229), 
('CAR', '2016-4-2', 'Carsales.com Limited', 'Information Technology', 2694300000, 0.16, "Null", 14441056), 
('CBA', '2016-4-2', 'Commonwealth Bank of Australia', 'Financials', 148038000000, 8.88, "Null", 23062784), 
('CCL', '2016-4-2', 'Coca-cola Amatil Limited', 'Consumer Staples', 8262050000, 0.5, "Null", 21465439), 
('CCP', '2016-4-2', 'Credit Corp Group Limited', 'Financials', 818742000, 0.05, "Null", 33352828), 
('CGC', '2016-4-2', 'Costa Group Holdings Limited', 'Consumer Staples', 1388870000, 0.08, "Null", 18834661), 
('CGF', '2016-4-2', 'Challenger Limited', 'Financials', 7178620000, 0.43, "Null", 31693741), 
('CHC', '2016-4-2', 'Charter Hall Group Forus', 'Real Estate', 2278200000, 0.14, "Null", 21210061), 
('CIM', '2016-4-2', 'Cimic Group Limited', 'Industrials', 11650500000, 0.7, "Null", 29034169), 
('CMW', '2016-4-2', 'Cromwell Property Group Stapled', 'Real Estate', 1681620000, 0.1, "Null", 27947028), 
('COH', '2016-4-3', 'Cochlear Limited', 'Health Care', 7765810000, 0.47, "Null", 17622523), 
('CPU', '2016-4-3', 'Computershare Limited', 'Information Technology', 7681340000, 0.46, "Null", 29499353), 
('CQR', '2016-4-3', 'Charter Hall Retail Reit Unit', 'Real Estate', 1762860000, 0.11, "Null", 22563714), 
('CSL', '2016-4-3', 'CSL Limited', 'Health Care', 57047600000, 3.42, "Null", 15877428), 
('CSR', '2016-4-3', 'CSR Limited', 'Materials', 2275210000, 0.14, "Null", 29022709), 
('CTD', '2016-4-3', 'Corporate Travel Management Limited', 'Consumer Discretionary', 2107490000, 0.13, "Null", 29326570), 
('CTX', '2016-4-3', 'Caltex Australia Limited', 'Energy', 7691300000, 0.46, "Null", 15810313), 
('CWN', '2016-4-3', 'Crown Resorts Limited', 'Consumer Discretionary', 8602340000, 0.52, "Null", 17448918), 
('CWY', '2016-4-3', 'Cleanaway Waste Management Limited', 'Industrials', 1909120000, 0.11, "Null", 17906023), 
('CYB', '2016-4-3', 'CYBG PLC Cdi 1:1', 'Financials', 3292460000, 0.2, "Null", 25622343), 
('DLX', '2016-4-3', 'Duluxgroup Limited', 'Materials', 2541800000, 0.15, "Null", 16281321), 
('DMP', '2016-4-3', 'Dominos Pizza Enterprises Limited', 'Consumer Discretionary', 5165210000, 0.31, "Null", 26006390), 
('DOW', '2016-4-3', 'Downer Edi Limited', 'Industrials', 2459510000, 0.15, "Null", 22499950), 
('DUE', '2016-4-3', 'Duet Group Forus', 'Utilities', 6893450000, 0.41, "Null", 30516312), 
('DXS', '2016-4-3', 'Dexus Property Group Stapled', 'Real Estate', 9456850000, 0.57, "Null", 22576338), 
('ECX', '2016-4-3', 'Eclipx Group Limited', 'Financials', 1037320000, 0.06, "Null", 28129043), 
('EHE', '2016-4-3', 'Estia Health Limited', 'Health Care', 805262000, 0.05, "Null", 31870250), 
('EVN', '2016-4-3', 'Evolution Mining Limited', 'Materials', 3533880000, 0.21, "Null", 31473026), 
('FBU', '2016-4-3', 'Fletcher Building Limited NZX', 'Materials', 5239590000, 0.31, "Null", 19419488), 
('FLT', '2016-4-3', 'Flight Centre Travel Group Limited', 'Consumer Discretionary', 2917940000, 0.18, "Null", 26727009), 
('FMG', '2016-4-3', 'Fortescue Metals Group LTD', 'Materials', 19399000000, 1.16, "Null", 19517516), 
('FPH', '2016-4-3', 'Fisher & Paykel Healthcare Corporation Limited NZX', 'Health Care', 5018000000, 0.3, "Null", 22751676), 
('FXJ', '2016-4-3', 'Fairfax Media Limited', 'Consumer Discretionary', 2356960000, 0.14, "Null", 32180003), 
('FXL', '2016-4-3', 'Flexigroup Limited', 'Financials', 860132000, 0.05, "Null", 26256829), 
('GEM', '2016-4-3', 'G8 Education Limited', 'Consumer Discretionary', 1639920000, 0.1, "Null", 30532395), 
('GMA', '2016-4-3', 'Genworth Mortgage Insurance Australia Limited', 'Financials', 1599410000, 0.1, "Null", 17965353), 
('GMG', '2016-4-3', 'Goodman Group Stapled', 'Real Estate', 13847800000, 0.83, "Null", 28962371), 
('GNC', '2016-4-3', 'Graincorp Limited', 'Consumer Staples', 2080300000, 0.12, "Null", 28093765), 
('GOZ', '2016-4-3', 'Growthpoint Properties Australia Stapled', 'Real Estate', 2096450000, 0.13, "Null", 30617468), 
('GPT', '2016-4-3', 'GPT Group Stapled', 'Real Estate', 9278390000, 0.56, "Null", 20985398), 
('GTY', '2016-4-3', 'Gateway Lifestyle Group Stapled', 'Real Estate', 625741000, 0.04, "Null", 26875301), 
('GUD', '2016-4-3', 'G.u.d. Holdings Limited', 'Consumer Discretionary', 1015160000, 0.06, "Null", 29599469), 
('GWA', '2016-4-3', 'GWA Group Limited', 'Industrials', 765448000, 0.05, "Null", 24074116), 
('GXL', '2016-4-3', 'Greencross Limited', 'Consumer Discretionary', 836296000, 0.05, "Null", 22578274), 
('GXY', '2016-4-3', 'Galaxy Resources Limited', 'Materials', 898940000, 0.05, "Null", 31437888), 
('HGG', '2016-4-3', 'Henderson Group PLC Cdi 1:1', 'Financials', 2786180000, 0.17, "Null", 20173784), 
('HSO', '2016-4-3', 'Healthscope Limited', 'Health Care', 3940810000, 0.24, "Null", 23131245), 
('HVN', '2016-4-3', 'Harvey Norman Holdings Limited', 'Consumer Discretionary', 5042140000, 0.3, "Null", 14604792), 
('IAG', '2016-4-3', 'Insurance Australia Group Limited', 'Financials', 14323500000, 0.86, "Null", 32357731), 
('IFL', '2016-4-3', 'Ioof Holdings Limited', 'Financials', 2560140000, 0.15, "Null", 33718466), 
('IFN', '2016-4-3', 'Infigen Energy Stapled', 'Utilities', 784480000, 0.05, "Null", 24772737), 
('IGO', '2016-4-3', 'Independence Group NL', 'Materials', 2100550000, 0.13, "Null", 16001684), 
('ILU', '2016-4-3', 'Iluka Resources Limited', 'Materials', 3190500000, 0.19, "Null", 16087740), 
('INM', '2016-4-3', 'Iron Mountain Incorporated Cdi 1:1', 'Real Estate', 2213420000, 0.13, "Null", 23762612), 
('IOF', '2016-4-3', 'Investa Office Fund Stapled', 'Real Estate', 2916730000, 0.17, "Null", 19711612), 
('IPH', '2016-4-3', 'IPH Limited', 'Industrials', 933502000, 0.06, "Null", 28806967), 
('IPL', '2016-4-3', 'Incitec Pivot Limited', 'Materials', 6343760000, 0.38, "Null", 24403825), 
('IRE', '2016-4-3', 'Iress Limited', 'Information Technology', 1990780000, 0.12, "Null", 28516251), 
('ISD', '2016-4-3', 'Isentia Group Limited', 'Information Technology', 300000000, 0.02, "Null", 16415816), 
('IVC', '2016-4-3', 'Invocare Limited', 'Consumer Discretionary', 1555830000, 0.09, "Null", 15614155), 
('JBH', '2016-4-3', 'JB Hi-fi Limited', 'Consumer Discretionary', 2826210000, 0.17, "Null", 31664929), 
('JHC', '2016-4-3', 'Japara Healthcare Limited', 'Health Care', 532931000, 0.03, "Null", 33371855), 
('JHX', '2016-4-3', 'James Hardie Industries PLC Cdi 1:1', 'Materials', 9068150000, 0.54, "Null", 29839840), 
('LLC', '2016-4-3', 'Lendlease Group Stapled', 'Real Estate', 9082980000, 0.54, "Null", 19761800), 
('LNK', '2016-4-3', 'Link Administration Holdings Limited', 'Information Technology', 2781230000, 0.17, "Null", 18961322), 
('MFG', '2016-4-3', 'Magellan Financial Group Limited', 'Financials', 4066170000, 0.24, "Null", 15917137), 
('MGR', '2016-4-3', 'Mirvac Group Stapled', 'Real Estate', 8115180000, 0.49, "Null", 27156603), 
('MIN', '2016-4-3', 'Mineral Resources Limited', 'Materials', 2010640000, 0.12, "Null", 17449201), 
('MMS', '2016-4-3', 'Mcmillan Shakespeare Limited', 'Industrials', 1099970000, 0.07, "Null", 21315351), 
('MND', '2016-4-3', 'Monadelphous Group Limited', 'Industrials', 1157100000, 0.07, "Null", 16871308), 
('MPL', '2016-4-3', 'Medibank Private Limited', 'Financials', 7766290000, 0.47, "Null", 33259905), 
('MQA', '2016-4-3', 'Macquarie Atlas Roads Group Stapled', 'Industrials', 2909570000, 0.17, "Null", 32825758), 
('MQG', '2016-4-3', 'Macquarie Group Limited', 'Financials', 30699700000, 1.84, "Null", 31740911), 
('MTR', '2016-4-3', 'Mantra Group Limited', 'Consumer Discretionary', 868492000, 0.05, "Null", 32891503), 
('MTS', '2016-4-3', 'Metcash Limited', 'Consumer Staples', 2409840000, 0.14, "Null", 31876052), 
('MYO', '2016-4-3', 'Myob Group Limited', 'Information Technology', 2158930000, 0.13, "Null", 32682971), 
('MYR', '2016-4-3', 'Myer Holdings Limited', 'Consumer Discretionary', 997854000, 0.06, "Null", 25234054), 
('MYX', '2016-4-3', 'Mayne Pharma Group Limited', 'Health Care', 2145230000, 0.13, "Null", 28217898), 
('NAB', '2016-4-3', 'National Australia Bank Limited', 'Financials', 89198600000, 5.35, "Null", 24749983), 
('NAN', '2016-4-3', 'Nanosonics Limited', 'Health Care', 922972000, 0.06, "Null", 22365569), 
('NCM', '2016-4-3', 'Newcrest Mining Limited', 'Materials', 17075200000, 1.02, "Null", 17772866), 
('NEC', '2016-4-3', 'Nine Entertainment Co. Holdings Limited', 'Consumer Discretionary', 1093570000, 0.07, "Null", 21219375), 
('NSR', '2016-4-3', 'National Storage Reit Stapled', 'Real Estate', 725187000, 0.04, "Null", 23171379), 
('NST', '2016-4-3', 'Northern Star Resources LTD', 'Materials', 2438200000, 0.15, "Null", 24373081), 
('NUF', '2016-4-3', 'Nufarm Limited', 'Materials', 2588090000, 0.16, "Null", 28840230), 
('NVT', '2016-4-3', 'Navitas Limited', 'Consumer Discretionary', 1594240000, 0.1, "Null", 16439172), 
('NWS', '2016-4-3', 'News Corporation. B Voting', 'Consumer Discretionary', 796231000, 0.05, "Null", 17488392), 
('NXT', '2016-4-3', 'Nextdc Limited', 'Information Technology', 1159020000, 0.07, "Null", 28667125), 
('ORA', '2016-4-3', 'Orora Limited', 'Materials', 3571790000, 0.21, "Null", 25319316), 
('ORE', '2016-4-3', 'Orocobre Limited', 'Materials', 585247000, 0.04, "Null", 19489686), 
('ORG', '2016-4-3', 'Origin Energy Limited', 'Energy', 12372800000, 0.74, "Null", 23689934), 
('ORI', '2016-4-3', 'Orica Limited', 'Materials', 6620690000, 0.4, "Null", 20710579), 
('OSH', '2016-4-3', 'Oil Search Limited 10T', 'Energy', 10993800000, 0.66, "Null", 24624100), 
('OZL', '2016-4-3', 'Oz Minerals Limited', 'Materials', 2338540000, 0.14, "Null", 15706058), 
('PGH', '2016-4-3', 'Pact Group Holdings LTD', 'Materials', 2094640000, 0.13, "Null", 21099372), 
('PMV', '2016-4-3', 'Premier Investments Limited', 'Consumer Discretionary', 2254430000, 0.14, "Null", 31498599), 
('PPT', '2016-4-3', 'Perpetual Limited', 'Financials', 2428860000, 0.15, "Null", 31492697), 
('PRY', '2016-4-3', 'Primary Health Care Limited', 'Health Care', 1861520000, 0.11, "Null", 23395894), 
('PTM', '2016-4-3', 'Platinum Asset Management Limited', 'Financials', 3009660000, 0.18, "Null", 34275885), 
('QAN', '2016-4-3', 'Qantas Airways Limited', 'Industrials', 7096570000, 0.43, "Null", 23916397), 
('QBE', '2016-4-3', 'QBE Insurance Group Limited', 'Financials', 17679800000, 1.06, "Null", 17649020), 
('QUB', '2016-4-3', 'Qube Holdings Limited', 'Industrials', 3716900000, 0.22, "Null", 20111636), 
('REA', '2016-4-3', 'REA Group LTD', 'Consumer Discretionary', 7814630000, 0.47, "Null", 19618839), 
('REG', '2016-4-3', 'Regis Healthcare Limited', 'Health Care', 1342600000, 0.08, "Null", 32796869), 
('RFG', '2016-4-3', 'Retail Food Group Limited', 'Consumer Discretionary', 938368000, 0.06, "Null", 17136299), 
('RHC', '2016-4-3', 'Ramsay Health Care Limited', 'Health Care', 14123500000, 0.85, "Null", 17480685), 
('RIO', '2016-4-3', 'RIO Tinto Limited', 'Materials', 25646700000, 1.54, "Null", 21613111), 
('RMD', '2016-4-3', 'Resmed Inc Cdi 10:1', 'Health Care', 13155700000, 0.79, "Null", 32791687), 
('RRL', '2016-4-3', 'Regis Resources Limited', 'Materials', 1653280000, 0.1, "Null", 24454999), 
('RSG', '2016-4-3', 'Resolute Mining Limited', 'Materials', 958078000, 0.06, "Null", 33768443), 
('RWC', '2016-4-3', 'Reliance Worldwide Corporation Limited', 'Industrials', 1512000000, 0.09, "Null", 16819512), 
('S32', '2016-4-3', 'SOUTH32 Limited', 'Materials', 14693600000, 0.88, "Null", 23377672), 
('SAR', '2016-4-3', 'Saracen Mineral Holdings Limited', 'Materials', 795436000, 0.05, "Null", 21828498), 
('SBM', '2016-4-3', 'ST Barbara Limited', 'Materials', 1183650000, 0.07, "Null", 32896764), 
('SCG', '2016-4-3', 'Scentre Group Stapled', 'Real Estate', 22841200000, 1.37, "Null", 14431506), 
('SCP', '2016-4-3', 'Shopping Centres Australasia Property Group Stapled', 'Real Estate', 1663760000, 0.1, "Null", 22700584), 
('SDF', '2016-4-3', 'Steadfast Group Limited', 'Financials', 1904370000, 0.11, "Null", 29333617), 
('SEK', '2016-4-3', 'Seek Limited', 'Industrials', 5537070000, 0.33, "Null", 24293151), 
('SFR', '2016-4-3', 'Sandfire Resources NL', 'Materials', 1006350000, 0.06, "Null", 18374373), 
('SGM', '2016-4-3', 'Sims Metal Management Limited', 'Materials', 2442640000, 0.15, "Null", 14431745), 
('SGP', '2016-4-3', 'Stockland Stapled', 'Real Estate', 11221400000, 0.67, "Null", 25405863), 
('SGR', '2016-4-3', 'The Star Entertainment Group Limited', 'Consumer Discretionary', 4516430000, 0.27, "Null", 23921248), 
('SHL', '2016-4-3', 'Sonic Healthcare Limited', 'Health Care', 9232290000, 0.55, "Null", 25648869), 
('SIP', '2016-4-3', 'Sigma Pharmaceuticals Limited', 'Health Care', 1387060000, 0.08, "Null", 19190681), 
('SKC', '2016-4-3', 'Skycity Entertainment Group Limited NZX', 'Consumer Discretionary', 2473930000, 0.15, "Null", 32292503), 
('SKI', '2016-4-3', 'Spark Infrastructure Group Forus', 'Utilities', 3986370000, 0.24, "Null", 19902180), 
('SKT', '2016-4-3', 'SKY Network Television Limited NZ', 'Consumer Discretionary', 1365880000, 0.08, "Null", 26197333), 
('SPK', '2016-4-3', 'Spark New Zealand Limited NZX', 'Telecommunication Services', 5827590000, 0.35, "Null", 17585384), 
('SPO', '2016-4-3', 'Spotless Group Holdings Limited', 'Industrials', 1191640000, 0.07, "Null", 25964942), 
('SRX', '2016-4-3', 'Sirtex Medical Limited', 'Health Care', 1032770000, 0.06, "Null", 16883700), 
('STO', '2016-4-3', 'Santos Limited', 'Energy', 7915060000, 0.47, "Null", 21124934), 
('SUL', '2016-4-3', 'Super Retail Group Limited', 'Consumer Discretionary', 2021710000, 0.12, "Null", 30179674), 
('SUN', '2016-4-3', 'Suncorp Group Limited', 'Financials', 17043500000, 1.02, "Null", 22053474), 
('SVW', '2016-4-3', 'Seven Group Holdings Limited', 'Industrials', 3012090000, 0.18, "Null", 26587579), 
('SWM', '2016-4-3', 'Seven West Media Limited', 'Consumer Discretionary', 1183810000, 0.07, "Null", 31388355), 
('SXL', '2016-4-3', 'Southern Cross Media Group Limited', 'Consumer Discretionary', 1076620000, 0.06, "Null", 22072309), 
('SYD', '2016-4-3', 'Sydney Airport Forus', 'Industrials', 15231300000, 0.91, "Null", 16162390), 
('SYR', '2016-4-3', 'Syrah Resources Limited', 'Materials', 746611000, 0.04, "Null", 22651560), 
('TAH', '2016-4-3', 'Tabcorp Holdings Limited', 'Consumer Discretionary', 3967520000, 0.24, "Null", 26103009), 
('TCL', '2016-4-3', 'Transurban Group Stapled', 'Industrials', 23950100000, 1.44, "Null", 33525595), 
('TGR', '2016-4-3', 'Tassal Group Limited', 'Consumer Staples', 760425000, 0.05, "Null", 23968386), 
('TLS', '2016-4-4', 'Telstra Corporation Limited', 'Telecommunication Services', 55422800000, 3.32, "Null", 19428442), 
('TME', '2016-4-4', 'Trade Me Group Limited NZX', 'Consumer Discretionary', 1850770000, 0.11, "Null", 19443735), 
('TNE', '2016-4-4', 'Technology One Limited', 'Information Technology', 1607740000, 0.1, "Null", 25937154), 
('TPM', '2016-4-4', 'TPG Telecom Limited', 'Telecommunication Services', 5913860000, 0.35, "Null", 21949002), 
('TTS', '2016-4-4', 'Tatts Group Limited', 'Consumer Discretionary', 6505540000, 0.39, "Null", 32212216), 
('TWE', '2016-4-4', 'Treasury Wine Estates Limited', 'Consumer Staples', 9027390000, 0.54, "Null", 20933331), 
('VCX', '2016-4-4', 'Vicinity Centres Stapled', 'Real Estate', 11203000000, 0.67, "Null", 21988821), 
('VOC', '2016-4-4', 'Vocus Group Limited', 'Telecommunication Services', 2679920000, 0.16, "Null", 18240726), 
('VRT', '2016-4-5', 'Virtus Health Limited', 'Health Care', 464577000, 0.03, "Null", 15117179), 
('VVR', '2016-4-5', 'Viva Energy Reit Stapled', 'Real Estate', 1642560000, 0.1, "Null", 26970547), 
('WBC', '2016-4-5', 'Westpac Banking Corporation', 'Financials', 117683000000, 7.06, "Null", 28605745), 
('WEB', '2016-4-5', 'Webjet Limited', 'Consumer Discretionary', 1123930000, 0.07, "Null", 16206254), 
('WES', '2016-4-5', 'Wesfarmers Limited', 'Consumer Staples', 50971400000, 3.06, "Null", 26310241), 
('WFD', '2016-4-5', 'Westfield Corporation Stapled', 'Real Estate', 18453400000, 1.11, "Null", 28615199), 
('WHC', '2016-4-5', 'Whitehaven Coal Limited', 'Energy', 3067880000, 0.18, "Null", 20002080), 
('WOR', '2016-4-5', 'Worleyparsons Limited', 'Energy', 2719150000, 0.16, "Null", 16266542), 
('WOW', '2016-4-5', 'Woolworths Limited', 'Consumer Staples', 34136300000, 2.05, "Null", 26915888), 
('WPL', '2016-4-5', 'Woodside Petroleum Limited', 'Energy', 27025600000, 1.62, "Null", 24552982), 
('WSA', '2016-4-5', 'Western Areas Limited', 'Materials', 628959000, 0.04, "Null", 31061424)
;

SELECT * FROM asx200; /* The name for the exported data is "asx200, 1" */

/* Extracting the date from "asx200" in different columns separately */
SELECT 
    EXTRACT(DAY FROM Date) AS D_Date,
    EXTRACT(MONTH FROM Date) AS M_Date,
    EXTRACT(YEAR FROM Date) AS Y_Date
FROM
    asx200; /* The name for exported file is "Extracting the date separately" */

/* Extracting the different date between now and the date of all rows */
SELECT 
    TIMESTAMPDIFF(DAY, Date, CURDATE()) AS TD, Code, Company
FROM
    asx200;

/* We need to have all companies with the date of 1 April 2016, with a market cap between 400 million and 1.5 billion, Weight_Percentage between 20 and 80 percent 
in either of these sectors: "Consumer Staples", "Materials", "Health Care". */

 SELECT 
    *
FROM
    asx200
WHERE
    Date = '2016-04-01'
        AND Market_Cap BETWEEN 400000000 AND 5000000000
        AND Sector = 'Consumer Staples'
        OR Sector = 'Materials'
        OR Sector = 'Health Care'
        AND Weight_Percentage BETWEEN 0.2 AND 0.8; /* The exported file is "DMSW Filters" */

	
/* Return the number of rows from the last command and call the result as "Three Market Caps" */  
SELECT 
    count(*) as "Three Market Caps"
FROM
    asx200
WHERE
    Date = '2016-04-01'
	AND Market_Cap BETWEEN 400000000 AND 5000000000
	AND Sector = 'Consumer Staples'
	OR Sector = 'Materials'
	OR Sector = 'Health Care'
	AND Weight_Percentage BETWEEN 0.2 AND 0.8;


/* Return sum, average, maximum, and minimum of some columns arbitrarily and round some of them. For one make it limited greater or smaller than a specific figure. The exported file name is "SAMXMN Filters" */
 SELECT 
    SUM(Weight_Percentage) TWP,
    ROUND(SUM(Weight_Percentage)) RTWP,
    AVG(Market_Cap) AMC,
    ROUND(AVG(Market_Cap)) RAMC,
    MAX(Total_Index_Market_Cap) MXTI,
    ROUND(MAX(Total_Index_Market_Cap)) RMXTI,
    MIN(Total_Index_Market_Cap) MNTI,
    ROUND(MIN(Total_Index_Market_Cap)) RMNTI,
    MIN(Market_Cap)
FROM
    asx200
WHERE
    Market_Cap > 1500000000; 
    SELECT * FROM asx200;
/* Choose those companies starting with A, sort them in ascending order based on "Market Cap", and select only those with "weight_percentage" greater than 10 percent. The exported file is called "A Companies with good enough weight percentages" */
SELECT * FROM asx200 WHERE Company LIKE 'A%' AND Weight_Percentage > 0.10 ORDER BY Market_Cap ASC; 

/* Group the sector with total of all numeric columns, specifically companies starting with F. The exported file is called: "Sector Grouping with total of data" */
SELECT Sector, SUM(Market_Cap), SUM(Total_Index_Market_Cap), SUM(Weight_Percentage) FROM asx200 WHERE Company LIKE "F%" GROUP BY Sector ORDER BY Sector;

/* Provide a new column to categorize the data based on weight_percentage in 5 different categories. The limitations are free to choose. The exported name is: "Weight Categories" */
SELECT *, 
	CASE 
		WHEN Weight_Percentage <= 0.5 THEN 'Very Weak'
        WHEN Weight_Percentage <= 1   THEN 'Weak'
        WHEN Weight_Percentage <= 3   THEN 'Good'
		WHEN Weight_Percentage <= 6   THEN 'Strong'
        WHEN Weight_Percentage >  6   THEN 'Very Strong'
	End AS WP_Strength
FROM asx200;

/* Provide another format like the last one, this time for Market Cap. The name for exported file is: "Market Cap Categories" */

SELECT *,
    CASE 
		WHEN Market_Cap <= 500000000  THEN 'Very Weak'
        WHEN Market_Cap <= 1000000000 THEN 'Weak'
        WHEN Market_Cap <= 2000000000 THEN 'Good'
		WHEN Market_Cap <= 5000000000 THEN 'Strong'
        WHEN Market_Cap >  5000000000 THEN 'Very Strong'
	End AS MC_Strength
FROM asx200;

/*This time combine the last two categorizations together. This time some of companies are not classified, so name them "out of range". The name for exported file is: "Combined Categories" */
SELECT *, 
	CASE 
		WHEN Weight_Percentage <= 0.5 AND Market_Cap <= 500000000  THEN 'Very Weak'
        WHEN Weight_Percentage <= 1   AND Market_Cap <= 1000000000 THEN 'Weak'
        WHEN Weight_Percentage <= 3   AND Market_Cap <= 2000000000 THEN 'Good'
		WHEN Weight_Percentage <= 6   AND Market_Cap <= 5000000000 THEN 'Strong'
        WHEN Weight_Percentage >  6   AND Market_Cap <= 5000000000 THEN 'Very Strong'
        ELSE 'Out of Range'
	End AS CMB_Strength
FROM asx200;




	
  
  