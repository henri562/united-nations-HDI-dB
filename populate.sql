Rem
Rem cs457_12861_populate.sql
Rem
Rem   NAME
Rem     cs457_12861_populate.sql - Populate script for CS457_12861 schema
Rem
Rem   DESCRIPTION
Rem
Rem
Rem
Rem   NOTES
Rem
Rem   CREATED by Mengchuan Lin - 11/27/2015
Rem

SET VERIFY OFF;
ALTER SESSION SET NLS_LANGUAGE = American;

REM *************************insert data into the UN_REGIONS table

Prompt ****** Populating UN_REGIONS table ....

INSERT INTO un_regions VALUES
        ( 1
        , 'Europe'
        );

INSERT INTO un_regions VALUES
        ( 2
        , 'North America'
        );

INSERT INTO un_regions VALUES
        ( 3
        , 'South America'
        );

INSERT INTO un_regions VALUES
        ( 4
        , 'Asia'
        );

INSERT INTO un_regions VALUES
        ( 5
        , 'Africa'
        );

INSERT INTO un_regions VALUES
        ( 6
        , 'Oceania'
        );

REM *************************insert data into the UN_COUNTRIES table

Prompt ****** Populating UN_COUNTRIES table ....

INSERT INTO un_countries VALUES
        ( 'NO'
        , 'Norway'
        , TO_DATE('7-JUN-1905', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'AU'
        , 'Australia'
        , TO_DATE('1-JAN-1901', 'dd-MON-yyyy')
        , 6
        );

INSERT INTO un_countries VALUES
        ( 'CH'
        , 'Switzerland'
        , TO_DATE('1-JUL-1815', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'NL'
        , 'Netherlands'
        , TO_DATE('1-DEC-1954', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'US'
        , 'United States'
        , TO_DATE('4-JUL-1776', 'dd-MON-yyyy')
        , 2
        );

INSERT INTO un_countries VALUES
        ( 'SG'
        , 'Singapore'
        , TO_DATE('9-AUG-1965', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'IT'
        , 'Italy'
        , TO_DATE('1-JAN-1948', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'ES'
        , 'Spain'
        , TO_DATE('6-DEC-1978', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'CZ'
        , 'Czech Republic'
        , TO_DATE('20-SEP-1968', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'GR'
        , 'Greece'
        , TO_DATE('11-JUN-1975', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'BN'
        , 'Brunei'
        , TO_DATE('1-JAN-1984', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'UY'
        , 'Uruguay'
        , TO_DATE('27-AUG-1828', 'dd-MON-yyyy')
        , 3
        );

INSERT INTO un_countries VALUES
        ( 'BS'
        , 'Bahamas'
        , TO_DATE('10-JUL-1973', 'dd-MON-yyyy')
        , 2
        );

INSERT INTO un_countries VALUES
        ( 'ME'
        , 'Montenegro'
        , TO_DATE('13-JUL-1878', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'BY'
        , 'Belarus'
        , TO_DATE('27-JUL-1990', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'RO'
        , 'Romania'
        , TO_DATE('13-JUL-1878', 'dd-MON-yyyy')
        , 1
        );

INSERT INTO un_countries VALUES
        ( 'CN'
        , 'China'
        , TO_DATE('1-OCT-1949', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'MV'
        , 'Maldives'
        , TO_DATE('26-JUL-1965', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'MN'
        , 'Mongolia'
        , TO_DATE('29-DEC-1911', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'TM'
        , 'Turkmenistan'
        , TO_DATE('27-OCT-1991', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'WS'
        , 'Samoa'
        , TO_DATE('1-JUN-1962', 'dd-MON-yyyy')
        , 6
        );

INSERT INTO un_countries VALUES
        ( 'PS'
        , 'Palestine'
        , TO_DATE('15-NOV-1988', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'IN'
        , 'India'
        , TO_DATE('15-AUG-1947', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'NP'
        , 'Nepal'
        , TO_DATE('28-MAY-2008', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'PK'
        , 'Pakistan'
        , TO_DATE('14-AUG-1947', 'dd-MON-yyyy')
        , 4
        );

INSERT INTO un_countries VALUES
        ( 'KE'
        , 'Kenya'
        , TO_DATE('12-DEC-1963', 'dd-MON-yyyy')
        , 5
        );

INSERT INTO un_countries VALUES
        ( 'SZ'
        , 'Swaziland'
        , TO_DATE('6-SEP-1968', 'dd-MON-yyyy')
        , 5
        );

INSERT INTO un_countries VALUES
        ( 'AO'
        , 'Angola'
        , TO_DATE('11-NOV-1975', 'dd-MON-yyyy')
        , 5
        );

INSERT INTO un_countries VALUES
        ( 'TG'
        , 'Togo'
        , TO_DATE('27-APR-1960', 'dd-MON-yyyy')
        , 5
        );

REM *************************insert data into the UN_HDI_2013 table

Prompt ****** Populating UN_HDI_2013 table ....

INSERT INTO un_hdi_2013 VALUES
        ( 1
        , NULL
        , 0.944
        , 0.001
        , 'Very high'
        , 'NO'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 2
        , NULL
        , 0.933
        , 0.002
        , 'Very high'
        , 'AU'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 3
        , NULL
        , 0.917
        , 0.001
        , 'Very high'
        , 'CH'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 4
        , NULL
        , 0.915
        , NULL
        , 'Very high'
        , 'NL'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 5
        , NULL
        , 0.914
        , 0.002
        , 'Very high'
        , 'US'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 9
        , 'U'
        , 0.901
        , 0.003
        , 'Very high'
        , 'SG'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 26
        , NULL
        , 0.872
        , NULL
        , 'Very high'
        , 'IT'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 27
        , NULL
        , 0.869
        , NULL
        , 'Very high'
        , 'ES'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 28
        , NULL
        , 0.861
        , NULL
        , 'Very high'
        , 'CZ'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 29
        , NULL
        , 0.853
        , -0.001
        , 'Very high'
        , 'GR'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 30
        , NULL
        , 0.852
        , NULL
        , 'Very high'
        , 'BN'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 50
        , 'U'
        , 0.790
        , 0.003
        , 'High'
        , 'UY'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 51
        , NULL
        , 0.789
        , 0.001
        , 'High'
        , 'BS'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 52
        , 'U'
        , 0.789
        , 0.002
        , 'High'
        , 'ME'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 53
        , 'U'
        , 0.786
        , 0.001
        , 'High'
        , 'BY'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 54
        , 'U'
        , 0.785
        , 0.003
        , 'High'
        , 'RO'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 91
        , 'U'
        , 0.719
        , 0.004
        , 'High'
        , 'CN'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 103
        , NULL
        , 0.698
        , 0.003
        , 'Medium'
        , 'MV'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 104
        , 'U'
        , 0.698
        , 0.006
        , 'Medium'
        , 'MN'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 105
        , 'U'
        , 0.698
        , 0.005
        , 'Medium'
        , 'TM'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 106
        , 'D'
        , 0.694
        , 0.001
        , 'Medium'
        , 'WS'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 107
        , NULL
        , 0.686
        , 0.003
        , 'Medium'
        , 'PS'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 135
        , NULL
        , 0.586
        , 0.003
        , 'Medium'
        , 'IN'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 145
        , NULL
        , 0.540
        , 0.003
        , 'Low'
        , 'NP'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 146
        , NULL
        , 0.537
        , 0.002
        , 'Low'
        , 'PK'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 147
        , NULL
        , 0.535
        , 0.004
        , 'Low'
        , 'KE'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 148
        , NULL
        , 0.530
        , 0.001
        , 'Low'
        , 'SZ'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 149
        , NULL
        , 0.526
        , 0.002
        , 'Low'
        , 'AO'
        , NULL
        , NULL
        );

INSERT INTO un_hdi_2013 VALUES
        ( 166
        , 'U'
        , 0.473
        , 0.003
        , 'Low'
        , 'TG'
        , NULL
        , NULL
        );

REM *************************insert data into the UN_GDP_2013 table

Prompt ****** Populating UN_GDP_2013 table ....

INSERT INTO un_gdp_2013 VALUES
        ( 25
        , 4
        , 522349
        , 103586
        , 'NO'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 12
        , 7
        , 1531282
        , 65600
        , 'AU'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 20
        , 6
        , 685434
        , 84854
        , 'CH'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 17
        , 15
        , 853539
        , 50930
        , 'NL'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 1
        , 12
        , 16768050
        , 52392
        , 'US'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 36
        , 11
        , 295744
        , 54649
        , 'SG'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 8
        , 30
        , 2149485
        , 35243
        , 'IT'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 13
        , 31
        , 1393040
        , 29685
        , 'ES'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 47
        , 43
        , 208796
        , 19510
        , 'CZ'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 42
        , 41
        , 242230
        , 21768
        , 'GR'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 113
        , 27
        , 16111
        , 38563
        , 'BN'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 74
        , 47
        , 55708
        , 16351
        , 'UY'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 139
        , 39
        , 8420
        , 22313
        , 'BS'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 154
        , 85
        , 4417
        , 7109
        , 'ME'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 67
        , 81
        , 71710
        , 7664
        , 'BY'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 52
        , 75
        , 192094
        , 8853
        , 'RO'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 2
        , 89
        , 9181204
        , 6626
        , 'CN'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 162
        , 76
        , 2836
        , 8220
        , 'MV'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 113
        , 85
        , 11516
        , 4056
        , 'MN'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 88
        , 77
        , 41851
        , 7987
        , 'TM'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 183
        , 119
        , 691
        , 3632
        , 'WS'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 126
        , 131
        , 12579
        , 2908
        , 'PS'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 10
        , 149
        , 1937797
        , 1548
        , 'IN'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 109
        , 177
        , 18179
        , 654
        , 'NP'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 45
        , 157
        , 225419
        , 1238
        , 'PK'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 77
        , 158
        , 54443
        , 1227
        , 'KE'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 158
        , 133
        , 3523
        , 2819
        , 'SZ'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 59
        , 98
        , 121692
        , 5668
        , 'AO'
        );

INSERT INTO un_gdp_2013 VALUES
        ( 156
        , 181
        , 4158
        , 610
        , 'TG'
        );

COMMIT;
