/*
At first, new database and table are going to be created
The file in csv format is going to be loaded and added to a new table
In every step the result will be exported in csv or other possible formats to refer to if is needed
All files have similar names but just with some minor variations
The file name to be loaded firstly starts with py, indicating to be an outcome from Python
Then it will be exported with start point of SQL, meaning to be a result of SQL database 
Every file name is an ending of a number, starting with 1, showing the steps relevant to each one
Finally all of them with the file of Python codes will be demonstrated in a repository folder of my Github
*/

/*
CREATE DATABASE PDA_Final_Assessment;
DROP DATABASE databasename;
USE DATABASE databasename;
*/

/* Loading the First Table.
To create a new table, using the below code with the names of columns in different data types such as varchar and intiger*/
CREATE TABLE PY_SCIS (
    PRIMARY KEY (items),
    KEY (items),
    items VARCHAR(6),
    FY_2020_Q2 INT,
    FY_2020_FH INT,
    FY_2021_Q2 INT,
    FY_2021_FH INT,
    FY_2020_Q2VA INT,
    FY_2020_FHVA INT,
    FY_2021_Q2VA INT,
    FY_2021_FHVA INT
);

/*Even though it is possible to introduce engine and default charset in the same line as create table, but just to show another way, it is done separately*/
ALTER TABLE PY_SCIS ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*If we want to add a new column use this code*/
ALTER TABLE PY_SCIS ADD ID INT;

/*In case to move a column to the first position, it is possible in this way with codes, in addition to applying the drag and drop the columns with mouse*/
ALTER TABLE PY_SCIS MODIFY ID INT AFTER items;
ALTER TABLE PY_SCIS MODIFY items  VARCHAR(6) AFTER ID;

/*When it needs, it goes with modify to change the possible length of the string in a column*/
ALTER TABLE PY_SCIS MODIFY items VARCHAR(100);

/*Some times we need to change the primary key, so employ the next code line*/
ALTER TABLE PY_SCIS DROP PRIMARY KEY, ADD PRIMARY KEY (ID);

/*Adding the values in the table by "insert into" command
But it happened by a deliberate mistake to add twice the "Revenue" key data with 1 and 28 ID
Then I tried to check and solve the problem just to learn better
*/
INSERT INTO PY_SCIS (ID, items ,FY_2020_Q2 , FY_2020_FH , FY_2021_Q2 , FY_2021_FH , FY_2020_Q2VA , FY_2020_FHVA , FY_2021_Q2VA , FY_2021_FHVA) VALUES
(1,'Revenue',13784.0,27459.0,14665.0,28736.0,100.0,100.0,100.0,100.0),
(2,'Cost of sales',-8771.0,-17459.0,-9426.0,-18177.0,-63.631746952988976,-63.582067810189734,-64.27548585066485,-63.25515033407573),
(3,'Gross profit',5013.0,10000.0,5239.0,10558.0,36.36825304701103,36.417932189810266,35.72451414933515,36.74136971046771),
(4,'Research and development expenses',-1159.0,-2283.0,-1128.0,-2192.0,-8.408299477655252,-8.314213918933683,-7.6917831571769515,-7.628062360801782),
(5,'Selling and general administrative expenses',-2649.0,-5489.0,-2562.0,-5021.0,-19.21793383633198,-19.989802978986855,-17.470167064439142,-17.472856347438753),
(6,'Other operating income',74.0,329.0,27.0,149.0,0.5368543238537434,1.1981499690447577,0.18411183088987385,0.5185133630289532),
(7,'Other operating expenses',-57.0,-163.0,-102.0,-282.0,-0.4135229251305862,-0.5936122946939073,-0.6955335833617456,-0.9813474387527839),
(8,'Income (loss) from investments accounted for using the equity method net',-3.0,42.0,-29.0,-70.0,-0.02176436448055717,0.1529553151972031,-0.19774974428912376,-0.24359688195991092),
(9,'Interest income',488.0,831.0,348.0,707.0,3.5403366221706327,3.026330164973233,2.372996931469485,2.4603285077951003),
(10,'Interest expenses',-312.0,-454.0,-164.0,-330.0,-2.2634939059779455,-1.653374121417386,-1.118308898738493,-1.1483853006681515),
(11,'Other financial income (expenses) net',-107.0,-69.0,355.0,429.0,-0.7762623331398724,-0.2512837321096908,2.42072962836686,1.492900890868597),
(12,'Income from continuing operations before income taxes',1287.0,2744.0,1984.0,3948.0,9.336912362159024,9.993080592883937,13.528810092055915,13.738864142538976),
(13,'Income tax expenses',-296.0,-564.0,-468.0,-957.0,-2.1474172954149737,-2.0539713755052986,-3.19127173542448,-3.330317371937639),
(14,'Income from continuing operations',992.0,2179.0,1516.0,2991.0,7.196749854904237,7.935467424159656,10.337538356631436,10.408546770601337),
(15,'Income (loss) from discontinued operations net of income taxes',-295.0,-394.0,874.0,897.0,-2.140162507254788,-1.4348665282785242,5.959768155472213,3.1215200445434297),
(16,'Net income',697.0,1786.0,2390.0,3888.0,5.056587347649448,6.5042426891001135,16.29730651210365,13.530066815144767),
(17,'Attributable to:',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0),
(18,'Non-controlling interests',44.0,52.0,125.0,246.0,0.3192106790481718,0.18937324738701336,0.8523695874531197,0.8560690423162585),
(19,'Shareholders of Siemens AG',652.0,1734.0,2265.0,3642.0,4.730121880441091,6.3148694417131,15.444936924650529,12.673997772828507),
(20,'Basic earnings per share',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0),
(21,'Income from continuing operations',1.15,2.52,1.73,3.43,0.008343006384213581,0.009177318911832186,0.011796795090351177,0.011936247216035636),
(22,'Income (loss) from discontinued operations',-0.34,-0.39,1.09,1.12,-0.002466627974463146,-0.0014202993554026002,0.007432662802591204,0.003897550111358575),
(23,'Net income',0.8,2.13,2.82,4.55,0.005803830528148578,0.007757019556429585,0.019229457892942378,0.01583379732739421),
(24,'Diluted earnings per share',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0),
(25,'Income from continuing operations',1.13,2.49,1.71,3.39,0.008197910621009866,0.009068065115262756,0.011660415956358677,0.011797048997772829),
(26,'Income (loss) from discontinued operations',-0.34,-0.38,1.08,1.11,-0.002466627974463146,-0.0013838814232127901,0.007364473235594954,0.003862750556792874),
(27,'Net income',0.79,2.11,2.79,4.49,0.005731282646546721,0.007684183692049965,0.01902488919195363,0.015625),
(28,'Revenue',13784.0,27459.0,14665.0,28736.0,100.0,100.0,100.0,100.0)
;

/*To solve the mentioned problem, utilize the "delete from where" code*/
DELETE FROM PY_SCIS WHERE ID = 28;
SELECT * FROM PY_SCIS; /* The exported file name is: "SQL.Py.Siemens Consolidated Income Statement, 1" */

/* Loading the Second Table
Preparing the second table from a csv file called "Py_Siemens Consolidated Statement of Financial Position"*/
CREATE TABLE Py_scsfp (
    PRIMARY KEY (ID),
    KEY (ID),
    ID INT,
    items VARCHAR(50),
    FY_2017 INT,
    FY_2018 INT,
    FY_2019 INT,
    FY_2020 INT
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*The Output states an error, The items column is short in terms of varchar, so it needs bigger amount*/
ALTER TABLE py_scsfp MODIFY items VARCHAR(63);

/*To load data into the table, we apply the "INSERT INTO" command*/
INSERT INTO Py_scsfp (ID, items ,FY_2017, FY_2018, FY_2019, FY_2020) VALUES
( 3, 'Assets',0,0,0,0),
( 4, 'Cash and cash equivalents ', 1850, 2544, 1871, 2352),
( 5, 'Trade receivables1) ', 4679, 5405, 5097, 4205),
( 6, 'Other current financial assets ', 588, 454, 730, 529),
( 7, 'Contract assets ', 4293, 4593, 5230, 4805),
( 8, 'Receivables from Siemens Group ', 6324, 5138, 3402, 3894),
( 9, 'Inventories ', 7350, 6607, 7148, 7250),
( 10, 'Current income tax assets ', 462, 431, 329, 432),
( 11, 'Other current assets ', 776, 833, 1093, 1023),
( 12, 'Assets classified as held for disposal ', 147, 0, 16, 0),
( 13, 'Total current assets ', 26470, 26006, 24917, 24491),
( 14, 'Goodwill ', 9541, 9462, 9815, 9593),
( 15, 'Other intangible assets ', 5449, 4967, 4743, 4016),
( 16, 'Property, plant and equipment ', 3178, 3085, 3275, 4790),
( 17, 'Investments accounted for using the equity method ', 933, 784, 818, 762),
( 18, 'Other financial assets ', 523, 427, 437, 502),
( 19, 'Other receivables from Siemens Group ', 0, 3, 3, 0),
( 20, 'Deferred tax assets ', 833, 686, 742, 1052),
( 21, 'Other assets ', 365, 342, 291, 217),
( 22, 'Total non-current assets ', 20821, 19757, 20124, 20933),
( 23, 'Total assets ', 47290, 45763, 45041, 45424),
( 24, '',0,0,0,0),
( 25, 'Liabilities and equity',0,0,0,0),
( 26, 'Short-term debt and current maturities of long-term debt', 819, 1000, 359, 787),
( 27, 'Trade payables ', 4175, 4303, 4698, 4595),
( 28, 'Other current financial liabilities ', 287, 375, 614, 483),
( 29, 'Payables to Siemens Group', 2624, 3958, 2960, 979),
( 30, 'Contract liabilities ', 8351, 8077, 9337, 10417),
( 31, 'Current provisions ', 2246, 2089, 1872, 1678),
( 32, 'Current income tax liabilities ', 583, 373, 372, 489),
( 33, 'Other current liabilities ', 3085, 3244, 3267, 3004),
( 34, 'Liabilities associated with assets classified held for disposal', 50, 0, 8, 0),
( 35, 'Total current liabilities ', 22221, 23418, 23487, 22432),
( 36, 'Long-term debt ', 505, 877, 547, 1690),
( 37, 'Provisions for pensions and similar obligations ', 1692, 1622, 1960, 1095),
( 38, 'Deferred tax liabilities ', 1904, 1195, 1102, 586),
( 39, 'Provisions ', 2664, 2400, 2072, 2158),
( 40, 'Other financial liabilities ', 418, 359, 447, 543),
( 41, 'Other liabilities ', 612, 615, 729, 669),
( 42, 'Other liabilities to Siemens Group ', 5957, 4576, 1608, 0),
( 43, 'Total non-current liabilities ', 13752, 11644, 8465, 6741),
( 44, 'Total liabilities ', 35973, 35062, 31952, 29173),
( 45, 'Total equity ', 11318, 10701, 13089, 16250),
( 46, 'Total liabilities and equity', 47290, 45763, 45041, 45424)
;
SELECT * FROM Py_scsfp; /* The exported file name is: "SQL.Py.Siemens Consolidated Statement of Financial Position, 1" */

/* Loading the Third Table
Providing the third table from a csv file called "Py.Siemens Cosolidated Statement of Comprehensive Income.*/
CREATE TABLE Py_scsci (
    PRIMARY KEY (ID),
    KEY (ID),
    ID INT,
    items VARCHAR(90),
    FY2020_Q2 INT,
    FY2020_FH INT,
    FY2021_Q2 INT,
    FY2021_FH INT,
    FY2020_Q2VA INT,
    FY2020_FHVA INT,
    FY2021_Q2VA INT,
    FY2021_FHVA INT
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1;


/*To load data into the table, we apply the "INSERT INTO () VALUES"*/
INSERT INTO py_scsci (ID, items, FY2020_Q2, FY2020_FH, FY2021_Q2, FY2021_FH, FY2020_Q2VA, FY2020_FHVA, FY2021_Q2VA, FY2021_FHVA) VALUES
(5,'Net income',697,1786,2390,3888,100,100,100,100),
(6,'0',0,0,0,0,0,0,0,0),
(7,'Remeasurements of defined benefit plans',41,363,918,1224,5.88235294117647,20.3247480403135,38.4100418410041,31.4814814814814),
(8,'therein: Income tax effects',-250,-416,-311,-56,-35.8680057388809,-23.2922732362821,-13.0125523012552,-1.44032921810699),
(9,'Remeasurements of equity instruments',2,17,18,16,0.286944045911047,0.951847704367301,0.753138075313807,0.411522633744856),
(10,'therein: Income tax effects',0,-3,18,0,0,-0.167973124300111,0.753138075313807,0),
(11,'Income (loss) from investments accounted for using the equity method, net',0,-4,39,44,0,-0.223964165733482,1.63179916317991,1.13168724279835),
(12,'Items that will not be reclassified to profit or loss',42,376,975,1285,6.02582496413199,21.0526315789473,40.7949790794979,33.0504115226337),
(13,'0',0,0,0,0,0,0,0,0),
(14,'Currency translation differences',-254,-1100,1529,612,-36.441893830703,-61.5901455767077,63.9748953974895,15.7407407407407),
(15,'Derivative financial instruments',-45,-18,101,-170,-6.45624103299856,-1.00783874580067,4.22594142259414,-4.37242798353909),
(16,'therein: Income tax effects',20,0,-26,53,2.86944045911047,0,-1.08786610878661,1.36316872427983),
(17,'Income (loss) from investments accounted for using the equity method, net',-42,-33,28,19,-6.02582496413199,-1.84770436730123,1.17154811715481,0.488683127572016),
(18,'Items that may be reclassified subsequently to profit or loss',-340,-1152,1659,462,-48.780487804878,-64.501679731243,69.4142259414225,11.8827160493827),
(19,'Other comprehensive income, net of income taxes',-298,-776,2634,1746,-42.754662840746,-43.4490481522956,110.20920502092,44.9074074074074),
(20,'0',0,0,0,0,0,0,0,0),
(21,'Total comprehensive income',399,1010,5024,5633,57.2453371592539,56.5509518477043,210.20920502092,144.881687242798),
(22,'0',0,0,0,0,0,0,0,0),
(23,'Attributable to:',0,0,0,0,0,0,0,0),
(24,'Non-controlling interests',58,10,238,197,8.32137733142037,0.559910414333706,9.9581589958159,5.06687242798353),
(25,'Shareholders of Siemens AG',341,1000,4786,5437,48.9239598278335,55.9910414333706,200.251046025104,139.840534979423)
;

SELECT * FROM py_scsci; /* The exported file name is: "SQL.Py.Siemens Consolidated Statement of Comprehensive Income , 1" */

/* JOin 
After loading the three dataframes, having the ID for each, the next step is to join them together and have a simultaneous view out of all */

SELECT 
    *
FROM
    py_scis AS cs
        JOIN
    py_scsci AS ci ON cs.id = ci.id; /* The exported file name is: "SQL.Py.Siemens SCIS and SCSCI tables joining based on ID, having wrong result." */
/* But, this join process is not correct, while the items are not in oreder after joining, so the result would mislead us.
To see the problem more clear, let's check the tables again separately and compare with the joined one*/
SELECT * FROM py_scis;
SELECT * FROM py_scsci;

/* To solve the problem, the tables must be merged based on the commmon and most important element, "items".*/
SELECT 
    *
FROM
    py_scis AS cs
        JOIN
    py_scsci AS ci ON cs.items = ci.items; /* The exported file name is: "SQL.Py.Siemens SCIS and SCSCI tables joining based on items, having correct result. 1" */
/* Now we can choose some of the columns appropriately, orderly, and not repeatedly.*/
SELECT 
    cs.id,
    cs.items,
    cs.FY_2020_Q2,
    ci.FY2020_Q2,
    cs.FY_2020_FH,
    ci.FY2020_FH,
    cs.FY_2021_Q2,
    ci.FY2021_Q2,
    cs.FY_2021_FH,
    ci.FY2021_FH,
    ci.id ci_ID
FROM
    py_scis AS cs
        JOIN
    py_scsci AS ci ON cs.items = ci.items; /* The exported file name is: "SQL.Py.Siemens SCIS and SCSCI tables joining based on items, having correct result. 2" */

/* At this step, the third table is going to be joined, although it is not relevant to its items, just to use the join code in SQL*/
SELECT 
    *
FROM
    py_scis cs
        JOIN
    py_scsci ci ON cs.ID = ci.ID
        JOIN
    py_scsfp fp ON cs.ID = fp.ID; /* The exported file name is: "SQL.Py.Siemens SCIS, SCSCI, and SCSFP tables joining based on ID, bringing wrong result.*/

/* Sorting by the first period and the first 5 large amounts*/
SELECT 
    *
FROM
    py_scis
ORDER BY FY_2020_Q2 DESC
LIMIT 5; /* The exported file name is: "Sorting by the first period and the first 5 large amounts"*/


 /* How much is the net income in the period of FH 2020 from both income statement and comprehensive income statement*/
SELECT cs.items, cs.FY_2020_FH, ci.FY2020_FH FROM py_scis cs JOIN py_scsci ci ON cs.items = ci.items WHERE cs.items = "Net income"; /* The exported file name is: "the net income in FH 2020 from both income statement and comprehensive income statement, 1*/
/* To be exact, the first two rows are not necessary, so it is going to modify the command to eliminate them.*/
SELECT cs.items, cs.FY_2020_FH, ci.FY2020_FH FROM py_scis cs JOIN py_scsci ci ON cs.items = ci.items WHERE cs.items = "Net income" AND cs.FY_2020_FH>2; /* The exported file name is: "the net income in FH 2020 from both income statement and comprehensive income statement, 2*/

/* Finding all the items containing "income" while the columns are limited to just those based on ratios for only the first year and considering that those negative ratio results are not our objective */
SELECT * FROM py_scsci;
SELECT ID, items, FY2020_FHVA, FY2020_Q2VA FROM py_scsci WHERE items LIKE "%INCOME%" AND FY2020_FHVA >= 0 AND FY2020_Q2VA >= 0;  /* The exported file name is: "Incomes from just positive ratios in 2020 "*/
