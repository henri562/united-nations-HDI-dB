Rem
Rem cs457_12861_comment.sql
Rem
Rem    NAME
Rem      cs457_12861_comment.sql - Create comments for CS457_12861 schema
Rem
Rem    DESCRIPTION
Rem
Rem    CREATED by Mengchuan Lin - 11/27/15
Rem

REM ***********************************************

COMMENT ON TABLE un_regions
IS 'Region table. Contains region designations and names. Contains 6 rows;
references with un_countries table.';

COMMENT ON COLUMN un_regions.region_id
IS 'Primary key of un_regions table.';

COMMENT ON COLUMN un_regions.region_name
IS 'Names of regions where countries are located in.';

REM ***********************************************

COMMENT ON TABLE un_countries
IS 'Country table. Contains various information on countries. References with
un_hdi_2013 and un_gdp_2013 tables.';

COMMENT ON COLUMN un_countries.country_id
IS 'Primary key of un_countries table.';

COMMENT ON COLUMN un_countries.country_name
IS 'Country name.';

COMMENT ON COLUMN un_countries.indep_date
IS 'Date of independence of country.';

COMMENT ON COLUMN un_countries.region_id
IS 'Region_id for country. Foreign key to region_id column in un_regions table.';

REM ***********************************************

COMMENT ON TABLE un_hdi_2013
IS 'HDI table. Contains various information about the HDI of countries around the
world compiled by the UN in 2013.';

COMMENT ON COLUMN un_hdi_2013.hdi_rank
IS 'Primary key of un_hdi_2013 table. HDI rank of country.';

COMMENT ON COLUMN un_hdi_2013.hdi_rank_change
IS 'HDI ranking change of country from previous year. "U" (UP), "D" (DOWN), null (no
change)';

COMMENT ON COLUMN un_hdi_2013.hdi
IS 'HDI of country.';

COMMENT ON COLUMN un_hdi_2013.hdi_change
IS 'HDI change of country from previous year.';

COMMENT ON COLUMN un_hdi_2013.development
IS 'Development status of country according to HDI.';

COMMENT ON COLUMN un_hdi_2013.country_id
IS 'Country_id for HDI table. Foreign key to country_id column in un_countries table.';

COMMENT ON COLUMN un_hdi_2013.updated_date
IS 'Date on which data in this table is updated.';

COMMENT ON COLUMN un_hdi_2013.updated_by
IS 'Name of user who updated this table.';

REM ***********************************************

COMMENT ON TABLE un_gdp_2013
IS 'GDP table. Contains various information about the GDP of countries around the
world compiled by the UN in 2013';

COMMENT ON COLUMN un_gdp_2013.gdp_rank
IS 'Composite primary key of un_gdp_2013 table. GDP rank of country.';

COMMENT ON COLUMN un_gdp_2013.gdp_per_capita_rank
IS 'Composite primary key of un_gdp_2013 table. GDP per capita rank of country.';

COMMENT ON COLUMN un_gdp_2013.gdp_nominal
IS 'Nominal GDP of country in millions of US dollars.';

COMMENT ON COLUMN un_gdp_2013.gdp_per_capita
IS 'Nominal GDP per capita of country in US dollars.';

COMMENT ON COLUMN un_gdp_2013.country_id
IS 'Country_id for GDP table. Foreign key to country_id column in un_countries table.';

COMMIT;
